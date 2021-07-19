#include <iostream>

class Base{
public:
    Base(){

    }

    void Output(){
        std::cout << "===================================\n";
        std::cout << "data1 : " << data1 << std::endl;
        std::cout << "data2 : " << data2 << std::endl;
        std::cout << "===================================\n";
    }

int data1 = 10;
int data2 = 20;

};

    Base* bb ;
int main(){
    Base BB;
    bb = &BB;
    bb->Output();
    BB.data1 = 100;
    BB.data2 = 1000;
    bb->Output();
    return 1;
}
