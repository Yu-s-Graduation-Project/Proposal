## Parse .ll file from instruction.dump()

## Slot

```cpp
int SlotNum = Machine.getLocalSlot(&I);
```



## Operator

```cpp
Out << I.getOpcodeName();
```

```assembly
store Opcode: 33

load Opcode: 32
 
fadd Opcode: 14

call Opcode: 56

...
```



## Operand

```cpp
 // Reparse stringized version!
                if (APFloat(APFloat::IEEEdouble(), StrVal).convertToDouble() == Val) {
                    Out << StrVal;
                   std::cout << "APFloat StrVal: " <<  StrVal.c_str() << std::endl;
                    return;
                }
```

