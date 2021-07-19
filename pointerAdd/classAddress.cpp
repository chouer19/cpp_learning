#include <iostream>
using namespace std;

class Base
{
public:
    Base(){};
    virtual void fun1()
    {
        cout << "Base::fun1()" << endl;
        cout << "data1 is :  " << data1 << endl;
    }
    virtual void fun2()
    {
        cout << "Base::fun2()" << endl;
    }
    virtual void fun3(){}
    ~Base(){};
    int data1;
    int data2;
};
class Derived: public Base
{
    public:
        Derived(){};
        void fun1()
        {
            cout << "Derived::fun1()" << endl;
        }
        void fun2()
        {
            cout << "DerivedClass::fun2()" << endl;
        }
        ~Derived(){};
};

typedef void (*Fun)();
Fun getAddr(void* obj,unsigned int offset)
{
    cout<<"======================="<<endl;
    void* vptr_addr = (void *)*(unsigned long *)obj;  //64位操作系统，占8字节，通过*(unsigned long *)obj取出前8字节，即vptr指针
    printf("vptr_addr:%p\n",vptr_addr);
    
    /**
     * @brief 通过vptr指针访问virtual table，因为虚表中每个元素(虚函数指针)在64位编译器下是8个字节，因此通过*(unsigned long *)vptr_addr取出前8字节，
     * 后面加上偏移量就是每个函数的地址！
     */
    void* func_addr = (void *)*((unsigned long *)vptr_addr+offset);
    printf("func_addr:%p\n",func_addr);
    return (Fun)func_addr;
}
using Func=void (Base::*)();

void fun1(){
    std::cout << "shabi!\n";
}

int main(){
    Base base;
    Base base2;
    std::cout << "Base's fun1 address is : " << (void(*))&Base::fun1 << std::endl;

auto p = &Base::fun1;
    std::cout << "&Base::fun1 is : " << &p << std::endl;
    std::cout << "sizeof (&Base::fun1) is : " << sizeof(p) << std::endl;
    //std::cout << "sizeof *(&Base::fun1) is : " << sizeof(*p) << std::endl;

typedef void (Base::*caller_type)();
caller_type caller = &Base::fun1;
std::cout << "value of caller  is : " << caller << std::endl;
//std::cout << "address of caller  is : " << &caller << std::endl;

caller_type caller2 = &Base::fun1;
caller_type* caller3 = &caller2;
std::cout << "address of caller2 is : " << &caller2 << std::endl;

*caller3 = &Base::fun2;

base.data1 = 100;
(base.*caller)();
(base.*caller2)();
(base.*(&Base::fun1))();
(base.*p)();

    //Fun fun1 = (void(*)()) (void*)&Base::fun1;
    //fun1();
    //(*fun1)();
    //(base.*fun1)();

    //Fun basefun1 = getAddr(&base,0);
    //Fun base2fun1 = getAddr(&base2,0);


    return 1;
}
