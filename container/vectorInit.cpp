#include <vector>
#include <iostream>

int main(){
    std::vector<int> aa;
    aa = std::vector<int>{};
    aa.push_back(0);
    aa.push_back(1);
    aa.push_back(2);
    aa.push_back(3);
    aa.push_back(4);
    aa.push_back(5);
    std::cout << aa[2] << std::endl;
    std::cout << aa.size() << std::endl;
    aa.insert(aa.end(),aa.begin(), aa.end());
    std::cout << aa.size() << std::endl;
    std::vector<int> bb(aa);
    bb.push_back(100);
    std::cout << aa.size() << std::endl;
    std::cout << bb.size() << std::endl;
    
    return 1;
}
