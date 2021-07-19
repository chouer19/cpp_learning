#include <cmath>
#include <algorithm>
#include <iostream>
#include <vector>
#include <deque>
#include <iomanip>

int main(){
    std::cout << pow(2, 1.2) << std::endl;
    std::deque<float> iv;
    auto cell_size = [] (int cell_idx)-> float {
        return pow(2,(cell_idx/160.0 * 2.0)) * 0.2;
    };
    float length = 0.0;
    for(int i=0; i<160;i++){
        length += cell_size(i);
        iv.push_back(length);
        iv.push_front(length * -1.0);
    }
    for(int i=0 ; i<iv.size(); i++){
        std::cout << i << " st:" << std::fixed << std::setw(2) << iv.at(i) << " | \n";
    }
    std::cout << std::endl;
    return 1;
}
