#include <memory>
#include <iostream>

class Base{
public:
    Base(){}
    ~Base(){}

    int base{0};
};

class Derived : public Base{
public:
    int derived{10};
};


std::shared_ptr<Base> generateBaseptr(){
    //std::shared_ptr<Base> ptr(new Base());
    //auto myPtr = std::static_pointer_cast<Derived>(ptr);
    ////basePtr = new Base();
    //myPtr->derived = 10;
    std::shared_ptr<Derived> myPtr;
    myPtr = std::shared_ptr<Derived>(new Derived());
    myPtr->derived = 90;
    auto ptr = std::static_pointer_cast<Base>(myPtr);
    return ptr;
}

void useBaseptr(std::shared_ptr<Base> ptr){
    auto myPtr = std::static_pointer_cast<Derived>(ptr);
    std::cout << "derived in useBaseptr function : " << myPtr->derived << std::endl;
    myPtr->derived = 1000;
}

int main(){
    auto ptr = generateBaseptr();
    useBaseptr(ptr);
    auto myPtr = std::static_pointer_cast<Derived>(ptr);
    std::cout << "derived in main function : " << myPtr->derived << std::endl;
    return 1;
};
