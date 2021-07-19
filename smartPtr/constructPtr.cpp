#include <iostream>
#include <memory>

int main(){
    std::shared_ptr<int> iPtr;
    //iPtr = std::make_shared<int>();
    //iPtr = std::shared_ptr<int>();
    iPtr = std::shared_ptr<int>{};
    std::cout << iPtr.use_count() << std::endl;
    std::cout << *iPtr << std::endl;
    return 1;
}
