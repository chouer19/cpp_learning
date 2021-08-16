#include "dox/croutine/croutine.h"

#include <algorithm>
#include <utility>

namespace senior {
namespace dox {
namespace croutine {

thread_local CRoutine *CRoutine::current_routine_ = nullptr;

CRoutine::CRoutine(const std::function<void()> &func) : func_(func) {
  state_ = RoutineState::READY;
  updated_.test_and_set(std::memory_order_release);
}

CRoutine::~CRoutine() { ; }

void CRoutine::Stop() { force_stop_ = true; }

}  // namespace croutine
}  // namespace dox
}  // namespace senior
