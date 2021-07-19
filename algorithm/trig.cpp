#include <algorithm>
#include <cmath>
#include <iostream>

const float pi = 3.14159257;

int main(){
    std::cout << "asin(0) : " << asin(0) * 180 / pi << std::endl;
    std::cout << "asin(sqrt(2)/2) : " << asin(sqrt(2)/2) * 180 / pi << std::endl;
    std::cout << "asin(1) : " << asin(1) * 180 / pi << std::endl;
    std::cout << "acos(0) : " << acos(0) * 180 / pi << std::endl;
    std::cout << "acos(sqrt(2)/2) : " << acos(sqrt(2)/2) * 180 / pi << std::endl;
    std::cout << "acos(1) : " << acos(1) * 180 / pi << std::endl;
    std::cout << "acos(-sqrt(2)/2) : " << acos(-1.0 * sqrt(2)/2) * 180 / pi << std::endl;
    std::cout << "acos(-1) : " << acos(-1) * 180 / pi << std::endl;
    std::cout << "in rad, acos(-1) : " << acos(-1)<< std::endl;
    return 1;
}
