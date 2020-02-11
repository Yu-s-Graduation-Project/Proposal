# 代码追踪过程

## Track

lli.cpp  dump() -> ASMWriter  print() -> 





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





## Code added

### Get Binary Code



```Value.cpp```

```cpp
std::string Value::getBitCode(void *pBuffer, int nSize) const {
  unsigned char *pTemp = (unsigned char *) pBuffer;
  int i, j, nResult;
  std::string res;
  for (i = nSize - 1; i >= 0; i--) {
    for (j = 7; j >= 0; j--) {
      nResult = pTemp[i] & (int) pow(2, j);
      nResult = (0 != nResult);
      res += std::to_string(nResult);
      std::cout << nResult;
    }
  }
  return res;
}
```



```cpp
std::string Value::getInstruction() const {
  struct T {
      unsigned char i;
      unsigned char a : 1;
      unsigned char b : 7;
      unsigned short h;
      unsigned c : 28;
      unsigned d : 1;
      unsigned e : 1;
      unsigned f : 1;
      unsigned g : 1;
  };

  T tmp = {SubclassID, HasValueHandle, SubclassOptionalData, SubclassData, NumUserOperands, IsUsedByMD, HasName, HasHungOffUses, HasDescriptor};
  return getBitCode((void *) &tmp, sizeof(T));
}

```

Useless