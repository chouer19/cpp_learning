#include <iostream>
#include <vector>

int main(){
    std::vector<int> vInt{0,1,2,3,4,5,6,7,8,9,10};
    for(auto it=vInt.begin(); it < vInt.end()-1 ; it++){
        std::cout << *it << std::endl;
        continue;
    }
    return 1;
}
