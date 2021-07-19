#include <deque>
#include <iostream>

int main(){
    std::deque<int> a{1,2,3,4,5,6,7,8,9};
    int count = 1;
    while(true){
        if(a.size()>0) std::cout << a.front() << std::endl;
        //if(a.size()>0) std::cout << a.back() << std::endl;
        std::cout << "pop times : " << count++ << std::endl;
        std::cout << "now size : " << a.size() << std::endl;
        a.pop_front();
        //a.pop_back();
    }
    return 1;
}


