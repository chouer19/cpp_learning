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

#ifndef CYBER_COMMON_GLOBAL_DATA_H_
#define CYBER_COMMON_GLOBAL_DATA_H_

#include <string>
#include <unordered_map>

#include "dox/proto/dox_conf.pb.h"

#include "dox/base/atomic_hash_map.h"
#include "dox/base/atomic_rw_lock.h"
#include "dox/common/log.h"
#include "dox/common/macros.h"
#include "dox/common/util.h"

namespace senior {
namespace dox {
namespace common {

using ::senior::dox::base::AtomicHashMap;
using ::senior::dox::proto::ClockMode;
using ::senior::dox::proto::CyberConfig;
using ::senior::dox::proto::RunMode;

class GlobalData {
 public:
  ~GlobalData();

  int ProcessId() const;

  void SetProcessGroup(const std::string& process_group);
  const std::string& ProcessGroup() const;

  void SetComponentNums(const int component_nums);
  int ComponentNums() const;

  void SetSchedName(const std::string& sched_name);
  const std::string& SchedName() const;

  const std::string& HostIp() const;

  const std::string& HostName() const;

  const CyberConfig& Config() const;

  void EnableSimulationMode();
  void DisableSimulationMode();

  bool IsRealityMode() const;
  bool IsMockTimeMode() const;

  static uint64_t GenerateHashId(const std::string& name) {
    return common::Hash(name);
  }

  static uint64_t RegisterNode(const std::string& node_name);
  static std::string GetNodeById(uint64_t id);

  static uint64_t RegisterChannel(const std::string& channel);
  static std::string GetChannelById(uint64_t id);

  static uint64_t RegisterService(const std::string& service);
  static std::string GetServiceById(uint64_t id);

  static uint64_t RegisterTaskName(const std::string& task_name);
  static std::string GetTaskNameById(uint64_t id);

 private:
  void InitHostInfo();
  bool InitConfig();

  // global config
  CyberConfig config_;

  // host info
  std::string host_ip_;
  std::string host_name_;

  // process info
  int process_id_;
  std::string process_group_;

  int component_nums_ = 0;

  // sched policy info
  std::string sched_name_ = "CYBER_DEFAULT";

  // run mode
  RunMode run_mode_;
  ClockMode clock_mode_;

  static AtomicHashMap<uint64_t, std::string, 512> node_id_map_;
  static AtomicHashMap<uint64_t, std::string, 256> channel_id_map_;
  static AtomicHashMap<uint64_t, std::string, 256> service_id_map_;
  static AtomicHashMap<uint64_t, std::string, 256> task_id_map_;

  DECLARE_SINGLETON(GlobalData)
};

}  // namespace common
}  // namespace dox
}  // namespace senior

#endif  // CYBER_COMMON_GLOBAL_DATA_H_
