#include <iostream>
#include <string>
constexpr int make_value(int base, wchar_t const* val, std::size_t n){
    return n ? make_value(base*10+val[0]-L'0',val+1,n-1):base;
}
constexpr int operator"" _decode(wchar_t const* val, std::size_t n){
    return make_value(0,val,n);
}

std::string operator"" _decode2(wchar_t const* val, std::size_t n){
    return "fun" + std::to_string(make_value(0,val,n));
}

#define CONCAT(V,S) V ## S
#define DECODE(d) CONCAT(d,_decode)
#define FUN(i) i ## _decode
#define fun(i) fun##i
#define DECODE(d) CONCAT(d,_decode)

std::string con(const std::string& base, const int& i){
    return base + std::to_string(i);
}
void fun0(){ std::cout << "call function : fun0() " <<  std::endl; }

#define xstr(s) str(s)
#define str(s) #s
#define foo 0

int main(){
    ///auto value = DECODE(L"123");
    ///int a = make_value(0,L"123",3);
    ///std::cout << "value = " << value << std::endl;
    ///std::cout << "value = " << make_value(0,L"123",3)<< std::endl;
    //std::cout << "value = " << CONCAT(L"1",_decode)<< std::endl;
    std::cout << "value = " << L"1"_decode << std::endl;
    std::cout << "value = " << L"0"_decode2 << std::endl;

    enum{ value = DECODE(L"0") };

    std::cout << "value = " << value << std::endl;

    //fun(value)();

    std::string fooo = "4";
 
    std::cout << str(foo) << std::endl;
    std::cout << xstr(foo) << std::endl;

    fun(0)();
    fun(xstr(foo))();
    
    return 0;
}
