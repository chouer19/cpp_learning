#include <iostream>

void change(int& basic, const int& value);
void change1(int& basic, const int& value);
void change2(int& basic, const int& value);
void change3(int& basic, const int& value);

void change(int& basic, const int& value){
    change1(basic, value);
}
void change1(int& basic, const int& value){
    change2(basic, value);
}
void change2(int& basic, const int& value){
    change3(basic, value);
}
void change3(int& basic, const int& value){
    basic = value;
}

int main(){
    int a = 10;
    std::cout << "changed before, a is : " << a << std::endl;
    change(a, 20);
    std::cout << "changed, a is : " << a << std::endl;
    return 1;
}
