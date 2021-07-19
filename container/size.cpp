#include <iostream>
#include <vector>

int main(){
    std::vector<int> grids;
    std::cout << grids.size() << std::endl;
    std::cout << grids.size()-1 << std::endl;
    std::cout << static_cast<int> (grids.size()-1) << std::endl;
}
