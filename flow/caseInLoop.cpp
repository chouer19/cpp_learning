#include <iostream>
int main(){
    for(int i=0; i<10; i++){
        switch(i){
            case 0:
                std::cout << "i : " << i << std::endl;
                break;
            case 1:
                std::cout << "i : " << i << std::endl;
                break;
            case 2:
                std::cout << "i : " << i << std::endl;
                break;
            case 3:
                std::cout << "i : " << i << std::endl;
                break;
            case 4:
                std::cout << "i : " << i << std::endl;
                break;
            case 5:
                std::cout << "i : " << i << std::endl;
                continue;
                break;
            case 6:
                std::cout << "i : " << i << std::endl;
                break;
            case 7:
                std::cout << "i : " << i << std::endl;
                break;
            case 8:
                std::cout << "i : " << i << std::endl;
                break;
            case 9:
                std::cout << "i : " << i << std::endl;
                break;
        }
    }
    return 1;
}
