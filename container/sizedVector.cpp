#include <iostream>
#include <vector>

int main(){
    std::vector<double,4> dVec;
    dVec.at(0) = 1.1;
    dVec.at(1) = 2.2;
    dVec.at(2) = 3.3;
    dVec.at(3) = 4.4;
    for(auto d: dVec){
        std::cout << d << std::endl;
    }
    return 0;
}
