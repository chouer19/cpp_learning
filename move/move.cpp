#include <utility>
#include <iostream>
#include <string>

struct EData;
struct Data;
int test1();
int test2();
int test3();

struct EData{
    EData(){};
    std::string txt;
    EData(EData&& e){
        e.txt = "I am moved in some other's move constructor!\n";
        std::cout << "EData move constructor!\n";
    }

    EData& operator=(EData&& e){
        e.txt = "I am moved in some other's move assignment!\n";
        std::cout << "EData move assignment!\n";
    }
    //EData& operator=(EData&& e) = delete;

    EData(const EData& e){
        std::cout << "EData copy constructor!\n";
    }

    EData& operator=(const EData& e){
        std::cout << "EData copy assignment!\n";
    }

    ~EData(){
        std::cout << "EData deconstructor!\n";
    }
};

struct Data{
    int id;
    float fd;
    EData sd;
};

Data getData(){
    Data A;
    return A;
}

int main(){
    test2();
    return 1;
}

EData getEData(){
    EData A;
    return A;
}

int test2(){
    //auto B = getEData();
    auto B = std::move(getEData());
    EData C{std::move(B)};
    //std::cout << B.txt << std::endl;
    C = std::move(B);
    //std::cout << B.txt << std::endl;
    C = getEData();
    //std::cout << C.txt << std::endl;
    return 1;
}

int test1(){
    Data A;
    A.sd.txt = "aaaaaaaaaaaaaaaaaa";
    std::cout << "before moving, address of a " << &A << std::endl;
    std::cout << "before moving, value of a " << A.id << "," <<A.fd << "," << A.sd.txt << std::endl;
    Data B;
    B = std::move(A);
    std::cout << "after moving, address of A " << &A << std::endl;
    std::cout << "after moving, value of A " << A.id << "," <<A.fd << "," << A.sd.txt << std::endl;
    std::cout << "after moving, value of B " << B.id << "," <<B.fd << "," << B.sd.txt << std::endl;

    std::cout << "get Data's contents : " << getData().sd.txt << std::endl;
    B = getData();
    std::cout << " B =  get Data's contents : " << B.sd.txt << std::endl;

    return 1;
}
