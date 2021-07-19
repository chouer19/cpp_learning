#include <vector>
#include <iostream>
struct Test{
    int Idata = 0;
    bool Bdata = false;
    char Cdata = '4';
};
int main(){
    std::vector<Test> vTest;
    for(int i=0; i<10; i++){
        Test test{i,true,'7'};
        vTest.push_back(test);
    }
        std::cout << "begin address  : " << &(*vTest.begin()) << " st\n";
        std::cout << "end address  : " << &(*vTest.end()) << " st\n";
        std::cout << "Itest address 0 : " << &vTest[0] << " st\n";
        std::cout << "Itest address 1 : " << &vTest[1] << " st\n";
    std::cout << "max size : " << vTest.max_size() << std::endl;
    for(int i=0; i<10; i++){
        //if(vTest.size() == 0) continue;
        vTest.erase(vTest.end()); 
        //if(vTest.size() == 0) continue;
        vTest.erase(vTest.begin()); 
    }
    std::cout << "max  size  : " << vTest.max_size() << std::endl;
    std::cout << "real size  : " << vTest.size() << std::endl;
        std::cout << "begin address  : " << &(*vTest.begin()) << " st\n";
        std::cout << "end address  : " << &(*vTest.end()) << " st\n";
    
        std::cout << "size -1  : " << vTest.size() - 1<< " st\n";
        std::cout << "Idata : " << vTest[0].Idata << " st\n";
        std::cout << "Idata : " << vTest[1].Idata << " st\n";
        std::cout << "Itest address 0 : " << &vTest[0] << " st\n";
        std::cout << "Itest address 1 : " << &vTest[1] << " st\n";
        std::cout << "Idata address 0 : " << &vTest[0].Idata << " st\n";
        std::cout << "Idata address 1 : " << &vTest[1].Idata << " st\n";
        vTest[0].Idata = 1000;
        std::cout << "Idata : " << vTest[0].Idata << " st\n";
        std::cout << "Idata : " << vTest.at(0).Idata << " st\n";
        std::cout << "Idata : " << vTest.at(100).Idata << " st\n";
    std::cout << "max size : " << vTest.max_size() << std::endl;
    return 1;
}
