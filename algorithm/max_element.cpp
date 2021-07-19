#include <iostream>
#include <algorithm>
#include <vector>

int main(){
    std::vector<int> vInt1{1,2,3,4,5,6,8};
    int a = *std::max_element(vInt1.begin(), vInt1.end());
    std::cout << "a : " << a << std::endl;
    std::vector<int> vInt2;
    int b = *std::max_element(vInt2.begin(), vInt2.end());
    std::cout << "b : " << b << std::endl;
    return 1;
}
