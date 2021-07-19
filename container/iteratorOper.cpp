#include <deque>
#include <iostream>

struct Test{
    int data;
};

void changeData(Test& test, int data){
    test.data = data;
}

int main(){
    std::deque<Test> deq{{1},{2},{3},{4},{5},{6},{7},{8},{9},{0}};
    //for(auto it = deq.begin(); it < deq.end() -1; it++){
    //    std::cout << " it is : " << (it+1)->data << std::endl;
    //    std::cout << " it is : " << (*(it+1)).data << std::endl;
    //    //std::cout << " it is : " << *(it+1).data << std::endl;
    //}
    int count  = 10;
    for(auto it = deq.begin(); it < deq.end() ; it++){
        std::cout << " it is : " << it->data << std::endl;
        //deq.erase(it);
        count += 10;
        auto &test = *it;
        changeData(test,count );
    }
    for(auto it = deq.begin(); it < deq.end() ; it++){
        std::cout << " it is : " << it->data << std::endl;
        //deq.erase(it);
    }
    return 1;
}
