#include <opencv2/opencv.hpp>
#include <vector>

bool getEgo(std::vector<cv::Point2f>& egoTo){
    double min_x = -0.3;
    double min_y = -100.3;
    double max_x = 80.234;
    double max_y = 9.7601;
    egoTo = {{min_x, min_y},{min_x,max_y},{max_x, min_y},{max_x,max_y}};
    return true;
}

int main(){
    std::vector<cv::Point2f> egoTo;
    getEgo(egoTo);
    for(auto point: egoTo){
        std::cout << point.x << "," << point.y << std::endl;
    }
    return 1;
}

