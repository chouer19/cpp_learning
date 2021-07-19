#include <ctime>
#include <cmath>
#include <iostream>
#include <set>

int main(){
    std::set<int> intSets;
    srand(time(NULL));
    while(intSets.size() < 10){
    std::cout << rand() % 100 << std::endl;
        intSets.insert(rand() % 100);
    }
    std::cout << rand() % 100 << std::endl;
    std::cout << rand() % 100 << std::endl;
    std::cout << rand() % 100 << std::endl;
    std::cout << rand() % 100 << std::endl;
    std::cout << rand() % 100 << std::endl;
    std::cout << rand() % 100 << std::endl;
    return 1;
}
