; ModuleID = '/Users/py/demo/sqrt_minus10_mul.cpp'
source_filename = "/Users/py/demo/sqrt_minus10_mul.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.12.0"

; Function Attrs: norecurse nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store i32 0, i32* %1, align 4
  store double 1.200000e+01, double* %2, align 8
  %6 = load double, double* %2, align 8
  %7 = fmul double %6, 1.100000e+01
  %8 = fadd double %7, 1.000000e+00
  %9 = fsub double %8, 5.000000e+00
  store double %9, double* %3, align 8
  %10 = load double, double* %2, align 8
  %11 = fmul double %10, 1.000000e+01
  store double %11, double* %4, align 8
  %12 = load double, double* %3, align 8
  %13 = call double @sqrt(double %12) #2
  %14 = load double, double* %4, align 8
  %15 = call double @sqrt(double %14) #2
  %16 = fadd double %13, %15
  store double %16, double* %5, align 8
  ret i32 0
}

; Function Attrs: nounwind readnone
declare double @sqrt(double) #1

attributes #0 = { norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 8.1.0 (clang-802.0.42)"}
