#include <iostream>

class Base{
public:
    Base(){
        std::cout << "Constructor of Base!\n";
    }
    ~Base(){
        std::cout << "DeConstructor of Base!\n";
    }
};

int main(){
    Base base;
    base.~Base();
    delete base;
    return 1;
}
