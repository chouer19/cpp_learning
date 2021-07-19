#include <deque>
#include <vector>
#include <iostream>
#include <queue>

int main(){
    std::vector<int> injector{1,2,3,4,5,6};
    std::deque<int> bucket(injector.begin(), injector.end());
    for(int i=0; i< bucket.size();i++){
        std::cout << bucket[i] << ",";
    }
    std::cout << std::endl;
    bucket.insert(bucket.end(), injector.begin(), injector.end());
    for(int i=0; i< bucket.size();i++){
        std::cout << bucket[i] << ",";
    }
    std::cout << std::endl;
    std::queue<int> ccc(injector.begin(), injector.end());
    return 0;
}
