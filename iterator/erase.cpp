#include <iostream>
#include <vector>

int main(){
    std::vector<int> vInt{0,1,2,3,4,5,6,7,8,9,10};
    vInt.erase(vInt.begin());
    vInt.erase(vInt.end()-1);
    //for(auto it=vInt.begin(); it!= vInt.end() && it<vInt.end(); ){
    for(auto it=vInt.rbegin(); it!= vInt.rend() && it<vInt.rend(); ){
        std::cout << *it << std::endl;
        //if(*it %2 ==0){vInt.erase(it);continue;}
        it++;
    }
    return 1;
}
