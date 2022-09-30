; ModuleID = 'rave'
source_filename = "rave"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux"

declare dso_local void @exit(i32)

define dso_local void @"_RaveF11std::assert"(i1 %0) {
entry:
  br i1 %0, label %then, label %end

then:                                             ; preds = %entry
  call void @exit(i32 2)
  br label %end

end:                                              ; preds = %entry, %then
  ret void
}

; Function Attrs: nounwind
declare void @llvm.stackprotector(i8*, i8**) #0

attributes #0 = { nounwind }
