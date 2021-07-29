#include <iostream>

class NonCopyable{
public:
    NonCopyable(){}
private:
    NonCopyable(const NonCopyable& );
};

class Test{
public:
    Test(){}
    Test(Test&& ){}
private:
    NonCopyable non_copy_;
};

int main(){
    Test test_ = Test();
    return 0;
}
