#include <iostream>
#include <vector>
#include <algorithm>
#include <type_traits>

struct Point2d{
    double x;
    double y;
};

int main(){
    std::vector<Point2d> points{{2,2},{5,5},{4,4},{1,1},{3,3}};
    std::sort(points.begin(), points.end(), 
              [&](decltype(points[0]) left, decltype(points[0]) right){
                  return left.x * left.x + left.y * left.y < right.x*right.x+right.y*right.y;
              }
             );
    for(auto point: points){
        std::cout << point.x << "," << point.y << "\t";
    }
    std::cout << std::endl;
    return 1;
}
