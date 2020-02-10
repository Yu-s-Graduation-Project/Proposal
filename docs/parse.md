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

