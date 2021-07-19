#include <vector>
#include <deque>
#include <iostream>
#include <string>

template <typename T>
void print(T t){
    for(int i=0; i<t.size(); i++){
        std::cout << t[i] << "\t" ;
    }
    std::cout << std::endl;
}

int main(){
    print(std::vector<int>{0,1,2,3,4,5,6,7,8,9});
    print(std::deque<int>{0,1,2,3,4,5,6,7,8,9});

    print(std::vector<std::string>{"hello", "world", ",", "vector of string!"});
    return 0;
}
