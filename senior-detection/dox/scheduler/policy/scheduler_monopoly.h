#pragma once

#include <memory>
#include <string>
#include <unordered_map>
#include <vector>

#include "dox/croutine/croutine.h"
#include "dox/proto/monopoly_conf.pb.h"
#include "dox/scheduler/scheduler.h"

namespace senior {
namespace dox {
namespace scheduler {

using senior::dox::croutine::CRoutine;
using senior::dox::proto::MonopolyConf;
using senior::dox::proto::MonopolyTask;

class SchedulerMonopoly : public Scheduler {
 public:
  bool RemoveCRoutine(uint64_t crid) override;
  bool RemoveTask(const std::string& name) override;
  bool DispatchTask(const std::shared_ptr<CRoutine>&) override;

 private:
  friend Scheduler* Instance();
  SchedulerMonopoly();

  void CreateProcessor();
  bool NotifyProcessor(uint64_t crid) override;

  std::unordered_map<std::string, MonopolyTask> cr_confs_;

  MonopolyConf monopoly_conf_;
};

}  // namespace scheduler
}  // namespace dox
}  // namespace senior

