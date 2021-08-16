/******************************************************************************
 * Copyright 2018 The Apollo Authors. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *****************************************************************************/

#include "dox/scheduler/policy/monopoly_context.h"

#include <limits>

namespace senior {
namespace dox {
namespace scheduler {

using senior::dox::base::AtomicRWLock;
using senior::dox::base::ReadLockGuard;
using senior::dox::base::WriteLockGuard;
using senior::dox::croutine::CRoutine;
using senior::dox::croutine::RoutineState;

alignas(CACHELINE_SIZE) GRP_WQ_MUTEX MonopolyContext::mtx_wq_;
alignas(CACHELINE_SIZE) GRP_WQ_CV MonopolyContext::cv_wq_;
alignas(CACHELINE_SIZE) RQ_LOCK_GROUP MonopolyContext::rq_locks_;
alignas(CACHELINE_SIZE) CR_GROUP MonopolyContext::cr_group_;
alignas(CACHELINE_SIZE) NOTIFY_GRP MonopolyContext::notify_grp_;

MonopolyContext::MonopolyContext() { InitGroup(DEFAULT_GROUP_NAME); }

MonopolyContext::MonopolyContext(const std::string& group_name) {
  InitGroup(group_name);
}

void MonopolyContext::InitGroup(const std::string& group_name) {
  //multi_pri_rq_ = &cr_group_[group_name];
  cr_ = &cr_group_[group_name];
  lq_ = &rq_locks_[group_name];
  mtx_wrapper_ = &mtx_wq_[group_name];
  cw_ = &cv_wq_[group_name];
  notify_grp_[group_name] = 0;
  current_grp = group_name;
}

std::shared_ptr<CRoutine> MonopolyContext::NextRoutine() {
  if (dox_unlikely(stop_.load())) {
    return nullptr;
  }
  ReadLockGuard<AtomicRWLock> lk(*lq_);
  if (!(*cr_)->Acquire()) {
    return nullptr;
  }
  if ((*cr_)->UpdateState() == RoutineState::READY) {
    return (*cr_);
  }
  (*cr_)->Release();
  return nullptr;
}

void MonopolyContext::Wait() {
  std::unique_lock<std::mutex> lk(mtx_wrapper_->Mutex());
  cw_->Cv().wait_for(lk, std::chrono::milliseconds(1000),
                     [&]() { return notify_grp_[current_grp] > 0; });
  if (notify_grp_[current_grp] > 0) {
    notify_grp_[current_grp]--;
  }
}

void MonopolyContext::Shutdown() {
  stop_.store(true);
  mtx_wrapper_->Mutex().lock();
  notify_grp_[current_grp] = std::numeric_limits<unsigned char>::max();
  mtx_wrapper_->Mutex().unlock();
  cw_->Cv().notify_all();
}

void MonopolyContext::Notify(const std::string& group_name) {
  (&mtx_wq_[group_name])->Mutex().lock();
  notify_grp_[group_name]++;
  (&mtx_wq_[group_name])->Mutex().unlock();
  cv_wq_[group_name].Cv().notify_one();
}

bool MonopolyContext::RemoveCRoutine(const std::shared_ptr<CRoutine>& cr) {
  auto grp = cr->group_name();
  auto prio = cr->priority();
  auto crid = cr->id();
  WriteLockGuard<AtomicRWLock> lk(MonopolyContext::rq_locks_[grp]);
  auto& croutine = MonopolyContext::cr_group_[grp];
  if (croutine->id() != crid) {
    return false;
  }
  croutine->Stop();
  while (!croutine->Acquire()) {
    std::this_thread::sleep_for(std::chrono::microseconds(1));
    AINFO_EVERY(1000) << "waiting for task " << croutine->name() << " completion";
  }
  croutine->Release();
  croutine = nullptr;
  return true;
}

}  // namespace scheduler
}  // namespace dox
}  // namespace senior
