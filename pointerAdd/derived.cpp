

#include <iostream>
#include <stdio.h>
using namespace std;

/**
 * @brief 函数指针
 */
typedef void (*Fun)();

/**
 * @brief 基类
 */
class Base
{
    public:
        Base(){};
        virtual void fun1() {
            cout << "Base::fun1()" << endl;
        }
        virtual void fun2() {
            cout << "Base::fun2()" << endl;
        }
        virtual void fun3(){
            cout << "Base::fun3()" << endl;
        }
        void fun4(){
            cout << "Base::fun4()" << endl;
        }
        ~Base(){};
};

/**
 * @brief 派生类
 */
class Derived: public Base
{
    public:
        Derived(){};
        void fun1() {
            cout << "Derived::fun1()" << endl;
        }
        void fun2() {
            cout << "Derived::fun2()" << endl;
        }
        void fun3() override{
            cout << "Derived::fun3()" << endl;
        }
        ~Derived(){};
};

class Derived2 : public Derived{
public: 
    void fun1() override{}
    void fun4() override {}
};

int main(void)
{
    Base base;
    Derived derived;
    Base *basePtr = new Derived(); 
    Base &pBase = base; // 基类引用指向基类实例
    Base &pDerived = derived; // 基类引用指向派生类实例

    base.fun3();
    derived.fun3();

    basePtr->fun2();
    basePtr->fun3();
    
    delete basePtr;
    return 0;
}
