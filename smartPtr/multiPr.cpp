#include <memory>
#include <iostream>

class Base{
public:
    Base(){ }
    ~Base(){}
};

class Derived: public Base{
public:
    int data = 3;
};

void change1(std::shared_ptr<Base> ptr){
    auto myPtr = std::static_pointer_cast<Derived>(ptr);
    myPtr->data = 999;
}

class Caller{
public:
    Caller(){}
    ~Caller(){}
    void Init(std::shared_ptr<Base> ptr){
        ptr_ = std::static_pointer_cast<Derived>(ptr);
    }

    void Change(){
        ptr_->data = 9090;
    }

    std::shared_ptr<Derived> ptr_;
};

int main(){
    std::shared_ptr<Derived> rawDerived = std::make_shared<Derived>();
    std::cout << "data is : " << rawDerived->data << std::endl;

    change1(rawDerived);

    std::cout << "data is : " << rawDerived->data << std::endl;

    Caller caller;
    caller.Init(rawDerived);
    caller.Change();

    std::cout << "data is : " << rawDerived->data << std::endl;

    return 1;
}
