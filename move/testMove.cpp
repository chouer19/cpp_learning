#include <iostream>

class Base{
public:
    Base()
    {};
    Base(Base&& base){
        base.data = 8;
        data = 8;
        std::cout << "a move constructor called!\n";
    };

    Base& operator=(Base&& base){
        base.data = -9;
        //data = -8;
        std::cout << "a move assignment called!\n";
        return *this;
    }
    int data{6};
};

int main(){
    Base a;
    std::cout << "a's data is : " << a.data << std::endl;
    Base b(std::move(a));
    std::cout << "a's data is : " << a.data << std::endl;
    std::cout << "b's data is : " << b.data << std::endl;

    Base c;
    Base d;
    std::cout << "c's data is : " << c.data << std::endl;
    c = std::move(c);
    std::cout << "c's data is : " << c.data << std::endl;
    
    return 0;
}
