; ModuleID = 'rave'
source_filename = "rave"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux"

%"std::vector" = type { i8**, i32, i32 }
%"std::string" = type { i8*, i32 }

@_str = private unnamed_addr constant [5 x i8] c"true\00", align 1
@_str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1

declare dso_local void @exit(i32)

declare dso_local void @"_RaveF11std::assert"(i1)

declare dso_local i8* @malloc(i32)

declare dso_local void @free(i8*)

declare dso_local i8* @realloc(i8*, i32)

declare dso_local i8* @memcpy(i8*, i8*, i32)

declare dso_local i8* @memmove(i8*, i8*, i32)

declare dso_local i1 @memcmp(i8*, i8*, i32)

declare dso_local i8* @memset(i8*, i32)

declare dso_local %"std::vector"* @"_RaveF11std::vector"(i32)

declare dso_local void @"_RaveM18std::vector.resize"(%"std::vector"*, i32)

declare dso_local void @"_RaveM15std::vector.add"(%"std::vector"*, i8*)

declare dso_local void @"_RaveM15std::vector.set"(%"std::vector"*, i32, i8*)

declare dso_local i8* @"_RaveM15std::vector.get"(%"std::vector"*, i32)

declare dso_local void @"_RaveM18std::vector.remove"(%"std::vector"*, i32)

declare dso_local void @"_RaveM19std::vector.destroy"(%"std::vector"*)

declare dso_local i32 @strlen(i8*)

define dso_local i8* @"_RaveF10libc::btos"(i1 %0) {
entry:
  %toret = alloca i8*, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @_str, i32 0, i32 0), i8** %toret, align 8
  %icmp = icmp eq i1 %0, false
  br i1 %icmp, label %then, label %end

then:                                             ; preds = %entry
  %loadLocaltoret = load i8*, i8** %toret, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @_str.1, i32 0, i32 0), i8** %toret
  br label %end

end:                                              ; preds = %entry, %then
  %loadLocaltoret1 = load i8*, i8** %toret, align 8
  ret i8* %loadLocaltoret1
}

define dso_local %"std::string"* @"_RaveF11std::string"(i8* %0) {
entry:
  %this = alloca %"std::string"*, align 8
  %"CallFuncstd::malloc" = call i8* @malloc(i32 ptrtoint (%"std::string"* getelementptr (%"std::string", %"std::string"* null, i32 1) to i32))
  %ppcast = bitcast i8* %"CallFuncstd::malloc" to %"std::string"*
  %loadLocalthis = load %"std::string"*, %"std::string"** %this, align 8
  store %"std::string"* %ppcast, %"std::string"** %this
  %"CallFunclibc::strlen" = call i32 @strlen(i8* %0)
  %load = load %"std::string"*, %"std::string"** %this
  %sgep = getelementptr inbounds %"std::string", %"std::string"* %load, i32 0, i32 1
  store i32 %"CallFunclibc::strlen", i32* %sgep
  %load1 = load %"std::string"*, %"std::string"** %this
  %sgep2 = getelementptr inbounds %"std::string", %"std::string"* %load1, i32 0, i32 1
  %load3 = load i32, i32* %sgep2
  %Sum = add i32 %load3, 1
  %"CallFuncstd::malloc4" = call i8* @malloc(i32 %Sum)
  %load5 = load %"std::string"*, %"std::string"** %this
  %sgep626 = bitcast %"std::string"* %load5 to i8**
  store i8* %"CallFuncstd::malloc4", i8** %sgep626
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %cond

cond:                                             ; preds = %while, %entry
  %loadLocali = load i32, i32* %i, align 4
  %load8 = load %"std::string"*, %"std::string"** %this
  %sgep9 = getelementptr inbounds %"std::string", %"std::string"* %load8, i32 0, i32 1
  %load10 = load i32, i32* %sgep9
  %icmp = icmp slt i32 %loadLocali, %load10
  br i1 %icmp, label %while, label %exit7

while:                                            ; preds = %cond
  %loadLocali11 = load i32, i32* %i, align 4
  %gep = getelementptr i8, i8* %0, i32 %loadLocali11
  %load12 = load i8, i8* %gep
  %loadLocali13 = load i32, i32* %i, align 4
  %load14 = load %"std::string"*, %"std::string"** %this
  %sgep1527 = bitcast %"std::string"* %load14 to i8**
  %load16 = load i8*, i8** %sgep1527
  %gep17 = getelementptr i8, i8* %load16, i32 %loadLocali13
  store i8 %load12, i8* %gep17
  %loadLocali18 = load i32, i32* %i, align 4
  %Sum19 = add i32 %loadLocali18, 1
  store i32 %Sum19, i32* %i
  br label %cond

exit7:                                            ; preds = %cond
  %loadLocali20 = load i32, i32* %i, align 4
  %load21 = load %"std::string"*, %"std::string"** %this
  %sgep2228 = bitcast %"std::string"* %load21 to i8**
  %load23 = load i8*, i8** %sgep2228
  %gep24 = getelementptr i8, i8* %load23, i32 %loadLocali20
  store i8 0, i8* %gep24
  %loadLocalthis25 = load %"std::string"*, %"std::string"** %this, align 8
  ret %"std::string"* %loadLocalthis25
}

define dso_local i1 @"_RaveM21std::string.isDeleted"(%"std::string"* %0) {
entry:
  %sgep1 = bitcast %"std::string"* %0 to i8**
  %load = load i8*, i8** %sgep1
  %ptoi = ptrtoint i8* %load to i32
  %1 = icmp eq i32 %ptoi, 0
  ret i1 %1
}

define dso_local i8 @"_RaveM18std::string.toChar"(%"std::string"* %0) {
entry:
  %sgep2 = bitcast %"std::string"* %0 to i8**
  %load = load i8*, i8** %sgep2
  %gep3 = bitcast i8* %load to i8*
  %load1 = load i8, i8* %gep3
  ret i8 %load1
}

define dso_local i1 @"_RaveM15std::string.has"(%"std::string"* %0, i8 %1) {
entry:
  %_has = alloca i1, align 1
  store i1 false, i1* %_has, align 1
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %cond

cond:                                             ; preds = %end, %entry
  %loadLocali = load i32, i32* %i, align 4
  %sgep = getelementptr inbounds %"std::string", %"std::string"* %0, i32 0, i32 1
  %load = load i32, i32* %sgep
  %icmp = icmp slt i32 %loadLocali, %load
  br i1 %icmp, label %while, label %exit1

while:                                            ; preds = %cond
  %loadLocali2 = load i32, i32* %i, align 4
  %sgep312 = bitcast %"std::string"* %0 to i8**
  %load4 = load i8*, i8** %sgep312
  %gep = getelementptr i8, i8* %load4, i32 %loadLocali2
  %load5 = load i8, i8* %gep
  %icmp6 = icmp eq i8 %load5, %1
  br i1 %icmp6, label %then, label %end

exit1:                                            ; preds = %cond
  %loadLocal_has11 = load i1, i1* %_has, align 1
  ret i1 %loadLocal_has11

then:                                             ; preds = %while
  %loadLocal_has = load i1, i1* %_has, align 1
  store i1 true, i1* %_has
  %sgep7 = getelementptr inbounds %"std::string", %"std::string"* %0, i32 0, i32 1
  %load8 = load i32, i32* %sgep7
  %loadLocali9 = load i32, i32* %i, align 4
  store i32 %load8, i32* %i
  br label %end

end:                                              ; preds = %while, %then
  %loadLocali10 = load i32, i32* %i, align 4
  %Sum = add i32 %loadLocali10, 1
  store i32 %Sum, i32* %i
  br label %cond
}

define dso_local void @"_RaveM19std::string.replace"(%"std::string"* %0, i8 %1, i8 %2) {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %cond

cond:                                             ; preds = %end, %entry
  %loadLocali = load i32, i32* %i, align 4
  %sgep = getelementptr inbounds %"std::string", %"std::string"* %0, i32 0, i32 1
  %load = load i32, i32* %sgep
  %icmp = icmp slt i32 %loadLocali, %load
  br i1 %icmp, label %while, label %exit1

while:                                            ; preds = %cond
  %loadLocali2 = load i32, i32* %i, align 4
  %sgep312 = bitcast %"std::string"* %0 to i8**
  %load4 = load i8*, i8** %sgep312
  %gep = getelementptr i8, i8* %load4, i32 %loadLocali2
  %load5 = load i8, i8* %gep
  %icmp6 = icmp eq i8 %load5, %1
  br i1 %icmp6, label %then, label %end

exit1:                                            ; preds = %cond
  ret void

then:                                             ; preds = %while
  %loadLocali7 = load i32, i32* %i, align 4
  %sgep813 = bitcast %"std::string"* %0 to i8**
  %load9 = load i8*, i8** %sgep813
  %gep10 = getelementptr i8, i8* %load9, i32 %loadLocali7
  store i8 %2, i8* %gep10
  br label %end

end:                                              ; preds = %while, %then
  %loadLocali11 = load i32, i32* %i, align 4
  %Sum = add i32 %loadLocali11, 1
  store i32 %Sum, i32* %i
  br label %cond
}

define dso_local void @"_RaveM19std::string.destroy"(%"std::string"* %0) {
entry:
  %sgep4 = bitcast %"std::string"* %0 to i8**
  %load = load i8*, i8** %sgep4
  call void @free(i8* %load)
  %sgep15 = bitcast %"std::string"* %0 to i8**
  %load2 = load i8*, i8** %sgep15
  %ptoi = ptrtoint i8* %load2 to i32
  %pcmp = icmp ne i32 %ptoi, 0
  br i1 %pcmp, label %then, label %end

then:                                             ; preds = %entry
  %sgep36 = bitcast %"std::string"* %0 to i8**
  store i8* null, i8** %sgep36
  br label %end

end:                                              ; preds = %entry, %then
  ret void
}

define dso_local void @"_RaveM15std::string.set"(%"std::string"* %0, i8* %1) {
entry:
  call void @"_RaveM19std::string.destroy"(%"std::string"* %0)
  %"CallFuncstd::string" = call %"std::string"* @"_RaveF11std::string"(i8* %1)
  %load = load %"std::string", %"std::string"* %"CallFuncstd::string"
  store %"std::string" %load, %"std::string"* %0
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind
declare void @llvm.stackprotector(i8*, i8**) #0

attributes #0 = { nounwind }
