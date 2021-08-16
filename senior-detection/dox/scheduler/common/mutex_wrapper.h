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

#ifndef CYBER_SCHEDULER_COMMON_MUTEX_WRAPPER_H_
#define CYBER_SCHEDULER_COMMON_MUTEX_WRAPPER_H_

#include <mutex>

namespace senior {
namespace dox {
namespace scheduler {

class MutexWrapper {
 public:
  MutexWrapper& operator=(const MutexWrapper& other) = delete;
  std::mutex& Mutex() { return mutex_; }

 private:
  mutable std::mutex mutex_;
};

}  // namespace scheduler
}  // namespace dox
}  // namespace senior

#endif  // CYBER_SCHEDULER_COMMON_MUTEX_WRAPPER_H_
