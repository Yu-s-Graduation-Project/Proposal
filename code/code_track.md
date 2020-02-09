# 代码追踪过程

```AsmWriter.cpp```

```cpp
if (APFloat(APFloat::IEEEdouble(), StrVal).convertToDouble() == Val) {
                    Out << StrVal;
                    std::cout << "APFloat StrVal: " <<  Val << std::endl;
                    return;
                }
```



```sqrt_minus10_add.cpp```

```cpp
#include "cmath" 
using namespace std;
int main() {
   double x = 0;
   double a = x+11;
   double b = x+10;
   double result = sqrt(a) - sqrt(b);
   return 0;
}
```



```Result```

```asm
~(const)
1.100000e+01APFloat StrVal: 11
~(const*)

 ~(const)
1.000000e+01APFloat StrVal: 10
~(const*)
```

