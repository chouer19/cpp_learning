#include <iostream>

int test(){
    int a = 10;
    return a--;
}

int main(){
    std::cout << test() << std::endl;
    return 1;
}
