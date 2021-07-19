#include <iostream>

int main(){
    int i1 = 1;
    int i2 = 2;
    int i3 = 3;
    int i4 = 4;
    int i5 = 5;
    int i6 = 6;
    //for(auto i : {std::make_pair(i1),i2,i3,i4,i5,i6}){
    for(auto &i : {std::make_pair(&i1, &i1),std::make_pair(&i2, &i2),std::make_pair(&i3, &i3), }){
        std::cout << *(i.first) << "," ;
    }
    std::cout << std::endl;

    return 1;
}
