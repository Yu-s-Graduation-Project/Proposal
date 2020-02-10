clang -O0 -emit-llvm /Users/py/GitHub/Proposal/code/data/test/1.cpp -S -o /Users/py/GitHub/Proposal/code/data/test/1.ll
llvm-as /Users/py/GitHub/Proposal/code/data/test/1.ll  -o /Users/py/GitHub/Proposal/code/data/test/1.bc
cd /Users/py/LLVM_EXTRACTOR
/Users/py/LLVM_EXTRACTOR/bin/lli /Users/py/GitHub/Proposal/code/data/test/1.bc
