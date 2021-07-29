
#include <iostream>
#include <algorithm>
#include <functional>
#include <memory>
#include <vector>
#include <string>
  using VoidFunc = std::function<void()>;
  using CreateRoutineFunc = std::function<VoidFunc()>;

void voidfunc(){
    std::cout << "voidfunc()\n";
}

int voidfunc2(){
    std::cout << "voidfunc2()\n";
    return 0;
}

int main(){
    VoidFunc func1 = voidfunc2;
    func1();
    CreateRoutineFunc routine = [](){
             VoidFunc func = [](){std::cout << " a func of routine!" << "\n";};
             return func;};
    routine()();
    auto func = routine();
    func();
    return 0;
}
