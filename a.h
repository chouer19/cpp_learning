//#pragma once
#include <iostream>
#include <string>

class A{
public:
    A(const std::string &name){
        std::cout << "class name is : " << name << "\n";
    }
};
