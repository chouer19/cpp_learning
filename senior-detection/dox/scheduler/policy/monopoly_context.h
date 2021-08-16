#pragma once

#include <array>
#include <functional>
#include <memory>
#include <mutex>
#include <string>
#include <unordered_map>
#include <vector>

#include "dox/base/atomic_rw_lock.h"
#include "dox/croutine/croutine.h"
#include "dox/scheduler/common/cv_wrapper.h"
#include "dox/scheduler/common/mutex_wrapper.h"
#include "dox/scheduler/processor_context.h"

namespace senior {
namespace dox {
namespace scheduler {

static constexpr uint32_t MAX_PRIO = 20;

#define DEFAULT_GROUP_NAME "default_grp"

using CROUTINE_QUEUE = std::vector<std::shared_ptr<CRoutine>>;
using CROUTINE = std::shared_ptr<CRoutine>;
using MULTI_PRIO_QUEUE = std::array<CROUTINE_QUEUE, MAX_PRIO>;
using CR_GROUP = std::unordered_map<std::string, CROUTINE>;
using LOCK_QUEUE = std::array<base::AtomicRWLock, MAX_PRIO>;
using LOCK = base::AtomicRWLock;
using RQ_LOCK_GROUP = std::unordered_map<std::string, LOCK>;

using GRP_WQ_MUTEX = std::unordered_map<std::string, MutexWrapper>;
using GRP_WQ_CV = std::unordered_map<std::string, CvWrapper>;
using NOTIFY_GRP = std::unordered_map<std::string, int>;

class MonopolyContext : public ProcessorContext {
 public:
  MonopolyContext();
  explicit MonopolyContext(const std::string &group_name);

  std::shared_ptr<CRoutine> NextRoutine() override;
  void Wait() override;
  void Shutdown() override;

  static void Notify(const std::string &group_name);
  static bool RemoveCRoutine(const std::shared_ptr<CRoutine> &cr);

  alignas(CACHELINE_SIZE) static CR_GROUP cr_group_;
  alignas(CACHELINE_SIZE) static RQ_LOCK_GROUP rq_locks_;
  alignas(CACHELINE_SIZE) static GRP_WQ_CV cv_wq_;
  alignas(CACHELINE_SIZE) static GRP_WQ_MUTEX mtx_wq_;
  alignas(CACHELINE_SIZE) static NOTIFY_GRP notify_grp_;

 private:
  void InitGroup(const std::string &group_name);

  std::chrono::steady_clock::time_point wake_time_;
  bool need_sleep_ = false;

  ///// MULTI_PRIO_QUEUE *multi_pri_rq_ = nullptr;
  CROUTINE *cr_ = nullptr;
  LOCK *lq_ = nullptr;
  MutexWrapper *mtx_wrapper_ = nullptr;
  CvWrapper *cw_ = nullptr;

  std::string current_grp;
};

}  // namespace scheduler
}  // namespace dox
}  // namespace senior

