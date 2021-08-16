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

#ifndef CYBER_SCHEDULER_SCHEDULER_H_
#define CYBER_SCHEDULER_SCHEDULER_H_

#include <unistd.h>

#include <atomic>
#include <map>
#include <memory>
#include <mutex>
#include <string>
#include <thread>
#include <unordered_map>
#include <vector>

#include "dox/proto/choreography_conf.pb.h"

#include "dox/base/atomic_hash_map.h"
#include "dox/base/atomic_rw_lock.h"
#include "dox/common/log.h"
#include "dox/common/macros.h"
#include "dox/common/types.h"
#include "dox/croutine/croutine.h"
#include "dox/croutine/routine_factory.h"
#include "dox/scheduler/common/mutex_wrapper.h"
#include "dox/scheduler/common/pin_thread.h"

namespace senior {
namespace dox {
namespace scheduler {

using senior::dox::base::AtomicHashMap;
using senior::dox::base::AtomicRWLock;
using senior::dox::base::ReadLockGuard;
using senior::dox::croutine::CRoutine;
using senior::dox::croutine::RoutineFactory;
using senior::dox::data::DataVisitorBase;
using senior::dox::proto::InnerThread;

class Processor;
class ProcessorContext;

class Scheduler {
 public:
  virtual ~Scheduler() {}
  static Scheduler* Instance();

  bool CreateTask(const RoutineFactory& factory, const std::string& name);
  bool CreateTask(std::function<void()>&& func, const std::string& name,
                  std::shared_ptr<DataVisitorBase> visitor = nullptr);
  bool NotifyTask(uint64_t crid);

  void Shutdown();
  uint32_t TaskPoolSize() { return task_pool_size_; }

  virtual bool RemoveTask(const std::string& name) = 0;

  void ProcessLevelResourceControl();
  void SetInnerThreadAttr(const std::string& name, std::thread* thr);

  virtual bool DispatchTask(const std::shared_ptr<CRoutine>&) = 0;
  virtual bool NotifyProcessor(uint64_t crid) = 0;
  virtual bool RemoveCRoutine(uint64_t crid) = 0;

  void CheckSchedStatus();

  void SetInnerThreadConfs(
      const std::unordered_map<std::string, InnerThread>& confs) {
    inner_thr_confs_ = confs;
  }

 protected:
  Scheduler() : stop_(false) {}

  AtomicRWLock id_cr_lock_;
  AtomicHashMap<uint64_t, MutexWrapper*> id_map_mutex_;
  std::mutex cr_wl_mtx_;

  std::unordered_map<uint64_t, std::shared_ptr<CRoutine>> id_cr_;
  std::vector<std::shared_ptr<ProcessorContext>> pctxs_;
  std::vector<std::shared_ptr<Processor>> processors_;

  std::unordered_map<std::string, InnerThread> inner_thr_confs_;

  std::string process_level_cpuset_;
  uint32_t proc_num_ = 0;
  uint32_t task_pool_size_ = 0;
  std::atomic<bool> stop_;
};

}  // namespace scheduler
}  // namespace dox
}  // namespace senior

#endif  // CYBER_SCHEDULER_SCHEDULER_H_
