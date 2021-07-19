#include <iostream>

using Func=void(*)();

void fun(){
    std::cout << "fun function ! \n";
}

int main(){
    //void *p;
    //std::cout << &p << std::endl;
    //void* p1= (void *)*((unsigned long *)p+1);
    //std::cout << &p1 << std::endl;
    //void* p2= (void *)*((int*)p+1);
    //void* p2= (void *)(p+1);
    //std::cout << &p2 << std::endl;

    int a = 10;
    int* pInt = &a;
    float* pFloat;
    double* pDouble;
    long* pLong;

    void* pVoid;

    std::cout << "size of int* is " << sizeof(pInt) << std::endl;
    std::cout << "size of float* is " << sizeof(pFloat) << std::endl;
    std::cout << "addr of a int (value of pInt) : " << pInt << std::endl;
    std::cout << "addr of (pInt + 1) : " << (pInt+1) << std::endl;
    std::cout << "addr of (float *)(pInt + 1) : " << (float*)(pInt+1) << std::endl;
    std::cout << "addr of (float *)pInt + 1 : " << (float*)pInt+1 << std::endl;
    std::cout << "size of void* is " << sizeof(pVoid) << std::endl;
    std::cout << "addr of void* is : " << pVoid << std::endl;
    //std::cout << "addr of pVoid+1 is : " << pVoid+1 << std::endl;
    std::cout << "addr of (float*)pVoid+1 is : " << (float*)pVoid+1 << std::endl;
    std::cout << "addr of (double*)pVoid+1 is : " << (double*)pVoid+1 << std::endl;
    std::cout << "addr of (long*)pVoid+1 is : " << (long*)pVoid+1 << std::endl;
    std::cout << "addr of (int*)pVoid+1 is : " << (int*)pVoid+1 << std::endl;
    std::cout << "sizeof(int) : " << sizeof(int) << std::endl;
    std::cout << "sizeof(long) : " << sizeof(long) << std::endl;

    Func f;
    Func g;
    std::cout << "addr of f : " << &f << std::endl;
    std::cout << "addr of *f : " << f << std::endl;
    std::cout << "addr of g : " << &g << std::endl;
    f = &fun;
    std::cout << "addr of f : " << &f << std::endl;
    std::cout << "addr of *f : " << f << std::endl;
    std::cout << "addr of fun : " << fun << std::endl;
    std::cout << "addr of &fun : " << &fun << std::endl;
    std::cout << "addr of g : " << &g << std::endl;
    f();
    (f)();
    (*f)();
    //g();
    return 1;
}
