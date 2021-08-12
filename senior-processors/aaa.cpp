#include <iostream>
#include <thread>
#include <string>
#include <set>
#include <map>
#include <memory>

class ProcessorManager{
public:
    bool TryProcessor(const std::string& processor_name){
        return true;
    }

    bool TryStart(){
        return true;
    }

private:
    std::set<std::string> start_proessors_;
    std::map<std::string,std::vector<std::string>> depend_tables_; 
};

class ProcessorThread{

    void start(){
        if(!processor_manager_->TryProcessor(processor_name_)) return ;
        processor_manager_->DoneProcessor(processor_name_);
    }

private:
    std::shared_ptr<ProcessorManager> processor_mananer_;
    std::string processor_name_{""};
    std::set<std::string> depend_processors_{};
    std::set<std::string> notify_processors_{};
};

int main(){
    std::vector<std::thread> processors_threads(6);
    std::shared_ptr<ProcessorManager> processor_mananer_;
    if(processor_manager_->TryStart()){
        // loop start all processors'thread
    }
    return 0;
}
