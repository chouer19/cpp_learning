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

#ifndef CYBER_SCHEDULER_SCHEDULER_FACTORY_H_
#define CYBER_SCHEDULER_SCHEDULER_FACTORY_H_

#include "dox/scheduler/scheduler_factory.h"

#include <atomic>
#include <string>
#include <unordered_map>

#include "dox/common/environment.h"
#include "dox/common/file.h"
#include "dox/common/global_data.h"
#include "dox/common/util.h"
#include "dox/scheduler/policy/scheduler_choreography.h"
#include "dox/scheduler/policy/scheduler_classic.h"
#include "dox/scheduler/scheduler.h"

namespace senior {
namespace dox {
namespace scheduler {

using senior::dox::common::GetAbsolutePath;
using senior::dox::common::GetProtoFromFile;
using senior::dox::common::GlobalData;
using senior::dox::common::PathExists;
using senior::dox::common::WorkRoot;

namespace {
std::atomic<Scheduler*> instance = {nullptr};
std::mutex mutex;
}  // namespace

Scheduler* Instance() {
  Scheduler* obj = instance.load(std::memory_order_acquire);
  if (obj == nullptr) {
    std::lock_guard<std::mutex> lock(mutex);
    obj = instance.load(std::memory_order_relaxed);
    if (obj == nullptr) {
      std::string policy("classic");
      std::string conf("conf/");
      conf.append(GlobalData::Instance()->ProcessGroup()).append(".conf");
      auto cfg_file = GetAbsolutePath(WorkRoot(), conf);
      senior::dox::proto::CyberConfig cfg;
      if (PathExists(cfg_file) && GetProtoFromFile(cfg_file, &cfg)) {
        policy = cfg.scheduler_conf().policy();
      } else {
        AWARN << "No sched conf found, use default conf.";
      }
      if (!policy.compare("classic")) {
        obj = new SchedulerClassic();
      } else if (!policy.compare("choreography")) {
        obj = new SchedulerChoreography();
      } else {
        AWARN << "Invalid scheduler policy: " << policy;
        obj = new SchedulerClassic();
      }
      instance.store(obj, std::memory_order_release);
    }
  }
  return obj;
}

void CleanUp() {
  Scheduler* obj = instance.load(std::memory_order_acquire);
  if (obj != nullptr) {
    obj->Shutdown();
  }
}

}  // namespace scheduler
}  // namespace dox
}  // namespace senior

#endif  // CYBER_SCHEDULER_SCHEDULER_FACTORY_H_
