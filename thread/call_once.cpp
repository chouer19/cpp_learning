#include <atomic>
#include <thread>
#include <chrono>
#include <string>
#include <memory>
#include <iostream>
#include <condition_variable>
#include <mutex>
#include <sched.h>
#include <unistd.h>
#include <sys/resource.h>
#include <sys/syscall.h>
#include <vector>

class Processor{
 public:
  Processor();
  ~Processor();
  void Run();
  void Stop();
  void Bind();
  std::thread thread_;
  std::atomic<bool> running_{false};
  std::atomic<pid_t> tid_{-1};
  std::once_flag thread_flag_;
};

Processor::~Processor(){};

Processor::Processor(){
    running_.store(true);
}

void Processor::Run(){
    tid_.store(static_cast<int>(syscall(SYS_gettid)));
    int count = 10;
    while(running_.load() && count-->0){
        std::cout << "running : " << count << " in pid :" << tid_ << std::endl;
        std::this_thread::sleep_for(std::chrono::milliseconds(500));
    }
}

void Processor::Bind(){
    std::call_once(thread_flag_,
                   [this]() { thread_ = std::thread(&Processor::Run, this); });
}

void Processor::Stop(){
  if (!running_.exchange(false)) {
    return;
  }
  if (thread_.joinable()) {
    thread_.join();
  }
}

int main(){
    std::vector<std::shared_ptr<Processor>> processors_;
    for(int i=0; i< 10; i++){
        processors_.emplace_back(std::make_shared<Processor>());
        processors_.at(i)->Bind();
    }
    std::this_thread::sleep_for(std::chrono::seconds(15));
    for(int i=0; i< 10; i++){
        processors_.at(i)->Stop();
    }
    processors_.clear();
    return 0;
}
