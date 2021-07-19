#include <limits>
#include <iostream>
#include <algorithm>

int main(){
    std::cout << "double max is : " << std::numeric_limits<double>::max() << std::endl;
    std::cout << "double min is : " << std::numeric_limits<double>::min() << std::endl;
    std::cout << "int max is : " << std::numeric_limits<int>::max() << std::endl;
    std::cout << "int min is : " << std::numeric_limits<int>::min() << std::endl;
    std::cout << "float max is : " << std::numeric_limits<float>::max() << std::endl;
    std::cout << "float min is : " << std::numeric_limits<float>::min() << std::endl;
    std::cout << "float lowest is : " << std::numeric_limits<float>::lowest() << std::endl;
    std::cout << "short max is : " << std::numeric_limits<short>::max() << std::endl;
    std::cout << "short min is : " << std::numeric_limits<short>::min() << std::endl;
    std::cout << "long max is : " << std::numeric_limits<long>::max() << std::endl;
    std::cout << "long min is : " << std::numeric_limits<long>::min() << std::endl;

    float a = -0.5;
    std::cout << "max ( -0.5 , float::min()) : " << std::max(a, std::numeric_limits<float>::min()) << std::endl; 
    std::cout << "float min +1 is : " << 1 + std::numeric_limits<float>::min() << std::endl;
    float b = 0.1;
    
    std::cout << "float min (-0.5, 0.1)" << std::min(a,b) << std::endl;
    return 1;
}
