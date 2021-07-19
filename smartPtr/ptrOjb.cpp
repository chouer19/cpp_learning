#include <memory>
#include <iostream>

struct A{
    int data;
};

void changeInt(std::shared_ptr<A> obj, const int& new_value){
    obj->data = new_value;
}

int main(){
    A a{100};
    std::cout << "starting moment, a value is : " << a.data << std::endl;

    //auto aPtr = std::make_shared<int> (a);
    auto aPtr = std::shared_ptr<A> (&a);
    changeInt(aPtr, 1000);

    std::cout << "pPtr changed to 1000 , a value is : " << a.data << std::endl;
    return 1;
}
