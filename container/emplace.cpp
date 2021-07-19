
#include <unordered_map>
#include <iostream>
#include <utility>
#include <vector>

int main(){
    std::unordered_multimap<int, std::vector<std::size_t>> obstacle_indices;
    obstacle_indices.emplace(1,std::vector<std::size_t>{1,2,3,4,5});
    obstacle_indices.emplace(1,std::vector<std::size_t>{1,2,3,4,5});
    obstacle_indices.emplace(1,std::vector<std::size_t>{1,2,3,4,5});
    obstacle_indices.emplace(1,std::vector<std::size_t>{1,2,3,4,5});
    obstacle_indices.emplace(1,std::vector<std::size_t>{1,2,3,4,5});
    obstacle_indices.emplace(1,std::vector<std::size_t>{1,2,3,4,5});
    obstacle_indices.emplace(1,std::vector<std::size_t>{1,2,3,4,5});
    for(auto indices : obstacle_indices){
        std::cout << indices.second.size() << std::endl;
    }
    return 1;
}
