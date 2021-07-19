#include <memory>
#include <iostream>

int main(){
    int a = 0;
    //std::shared_ptr<int> aPtr(&a);
    int *aPtr;
    aPtr = &a;
    *aPtr = 100;
    int& b = *aPtr;
    std::cout << "a is : " << a << std::endl;
    b = 1000;
    std::cout << "a is : " << a << std::endl;
    aPtr = NULL;
    b = 10000;
    std::cout << "a is : " << a << std::endl;
    //aPtr.reset();
    return 1;
}
