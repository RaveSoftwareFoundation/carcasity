; ModuleID = 'rave'
source_filename = "rave"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux"

%"std::vector" = type { i8**, i32, i32 }

declare dso_local i8* @malloc(i32)

declare dso_local void @free(i8*)

declare dso_local i8* @realloc(i8*, i32)

declare dso_local i8* @memcpy(i8*, i8*, i32)

declare dso_local i8* @memmove(i8*, i8*, i32)

declare dso_local i1 @memcmp(i8*, i8*, i32)

declare dso_local i8* @memset(i8*, i32)

define dso_local %"std::vector"* @"_RaveF11std::vector"(i32 %0) {
entry:
  %this = alloca %"std::vector"*, align 8
  %"CallFuncstd::malloc" = call i8* @malloc(i32 ptrtoint (%"std::vector"* getelementptr (%"std::vector", %"std::vector"* null, i32 1) to i32))
  %ppcast = bitcast i8* %"CallFuncstd::malloc" to %"std::vector"*
  %loadLocalthis = load %"std::vector"*, %"std::vector"** %this, align 8
  store %"std::vector"* %ppcast, %"std::vector"** %this
  %load = load %"std::vector"*, %"std::vector"** %this
  %sgep = getelementptr inbounds %"std::vector", %"std::vector"* %load, i32 0, i32 1
  store i32 %0, i32* %sgep
  %load1 = load %"std::vector"*, %"std::vector"** %this
  %sgep2 = getelementptr inbounds %"std::vector", %"std::vector"* %load1, i32 0, i32 2
  store i32 0, i32* %sgep2
  %"CallFuncstd::malloc3" = call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 4))
  %ppcast4 = bitcast i8* %"CallFuncstd::malloc3" to i8**
  %load5 = load %"std::vector"*, %"std::vector"** %this
  %sgep68 = bitcast %"std::vector"* %load5 to i8***
  store i8** %ppcast4, i8*** %sgep68
  %loadLocalthis7 = load %"std::vector"*, %"std::vector"** %this, align 8
  ret %"std::vector"* %loadLocalthis7
}

define dso_local void @"_RaveM18std::vector.resize"(%"std::vector"* %0, i32 %1) {
entry:
  %sgep2 = bitcast %"std::vector"* %0 to i8***
  %load = load i8**, i8*** %sgep2
  %ppcast = bitcast i8** %load to i8*
  %Mul = mul i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), %1
  %"CallFuncstd::realloc" = call i8* @realloc(i8* %ppcast, i32 %Mul)
  %sgep1 = getelementptr inbounds %"std::vector", %"std::vector"* %0, i32 0, i32 1
  store i32 %1, i32* %sgep1
  ret void
}

define dso_local void @"_RaveM15std::vector.add"(%"std::vector"* %0, i8* %1) {
entry:
  %sgep = getelementptr inbounds %"std::vector", %"std::vector"* %0, i32 0, i32 1
  %load = load i32, i32* %sgep
  %sgep1 = getelementptr inbounds %"std::vector", %"std::vector"* %0, i32 0, i32 2
  %load2 = load i32, i32* %sgep1
  %icmp = icmp eq i32 %load, %load2
  br i1 %icmp, label %then, label %end

then:                                             ; preds = %entry
  %sgep3 = getelementptr inbounds %"std::vector", %"std::vector"* %0, i32 0, i32 1
  %load4 = load i32, i32* %sgep3
  %Mul = mul i32 %load4, 2
  call void @"_RaveM18std::vector.resize"(%"std::vector"* %0, i32 %Mul)
  br label %end

end:                                              ; preds = %entry, %then
  %sgep5 = getelementptr inbounds %"std::vector", %"std::vector"* %0, i32 0, i32 2
  %load6 = load i32, i32* %sgep5
  %sgep712 = bitcast %"std::vector"* %0 to i8***
  %load8 = load i8**, i8*** %sgep712
  %gep = getelementptr i8*, i8** %load8, i32 %load6
  store i8* %1, i8** %gep
  %sgep9 = getelementptr inbounds %"std::vector", %"std::vector"* %0, i32 0, i32 2
  %load10 = load i32, i32* %sgep9
  %Sum = add i32 %load10, 1
  %sgep11 = getelementptr inbounds %"std::vector", %"std::vector"* %0, i32 0, i32 2
  store i32 %Sum, i32* %sgep11
  ret void
}

define dso_local void @"_RaveM15std::vector.set"(%"std::vector"* %0, i32 %1, i8* %2) {
entry:
  %icmp = icmp sgt i32 %1, 0
  %sgep = getelementptr inbounds %"std::vector", %"std::vector"* %0, i32 0, i32 2
  %load = load i32, i32* %sgep
  %icmp1 = icmp slt i32 %1, %load
  %and = and i1 %icmp, %icmp1
  br i1 %and, label %then, label %end

then:                                             ; preds = %entry
  %sgep24 = bitcast %"std::vector"* %0 to i8***
  %load3 = load i8**, i8*** %sgep24
  %gep = getelementptr i8*, i8** %load3, i32 %1
  store i8* %2, i8** %gep
  br label %end

end:                                              ; preds = %entry, %then
  ret void
}

define dso_local i8* @"_RaveM15std::vector.get"(%"std::vector"* %0, i32 %1) {
entry:
  %toret = alloca i8*, align 8
  store i8* null, i8** %toret, align 8
  %icmp = icmp sgt i32 %1, 0
  %sgep = getelementptr inbounds %"std::vector", %"std::vector"* %0, i32 0, i32 2
  %load = load i32, i32* %sgep
  %icmp1 = icmp slt i32 %1, %load
  %and = and i1 %icmp, %icmp1
  br i1 %and, label %then, label %end

then:                                             ; preds = %entry
  %sgep26 = bitcast %"std::vector"* %0 to i8***
  %load3 = load i8**, i8*** %sgep26
  %gep = getelementptr i8*, i8** %load3, i32 %1
  %load4 = load i8*, i8** %gep
  %loadLocaltoret = load i8*, i8** %toret, align 8
  store i8* %load4, i8** %toret
  br label %end

end:                                              ; preds = %entry, %then
  %loadLocaltoret5 = load i8*, i8** %toret, align 8
  ret i8* %loadLocaltoret5
}

define dso_local void @"_RaveM18std::vector.remove"(%"std::vector"* %0, i32 %1) {
entry:
  %sgep35 = bitcast %"std::vector"* %0 to i8***
  %load = load i8**, i8*** %sgep35
  %gep = getelementptr i8*, i8** %load, i32 %1
  store i8* null, i8** %gep
  %i = alloca i32, align 4
  store i32 %1, i32* %i, align 4
  br label %cond

cond:                                             ; preds = %while, %entry
  %loadLocali = load i32, i32* %i, align 4
  %sgep2 = getelementptr inbounds %"std::vector", %"std::vector"* %0, i32 0, i32 2
  %load3 = load i32, i32* %sgep2
  %Sub = sub i32 %load3, 1
  %icmp = icmp slt i32 %loadLocali, %Sub
  br i1 %icmp, label %while, label %exit1

while:                                            ; preds = %cond
  %loadLocali4 = load i32, i32* %i, align 4
  %Sum = add i32 %loadLocali4, 1
  %sgep536 = bitcast %"std::vector"* %0 to i8***
  %load6 = load i8**, i8*** %sgep536
  %gep7 = getelementptr i8*, i8** %load6, i32 %Sum
  %load8 = load i8*, i8** %gep7
  %loadLocali9 = load i32, i32* %i, align 4
  %sgep1037 = bitcast %"std::vector"* %0 to i8***
  %load11 = load i8**, i8*** %sgep1037
  %gep12 = getelementptr i8*, i8** %load11, i32 %loadLocali9
  store i8* %load8, i8** %gep12
  %loadLocali13 = load i32, i32* %i, align 4
  %Sum14 = add i32 %loadLocali13, 1
  %sgep1538 = bitcast %"std::vector"* %0 to i8***
  %load16 = load i8**, i8*** %sgep1538
  %gep17 = getelementptr i8*, i8** %load16, i32 %Sum14
  store i8* null, i8** %gep17
  %loadLocali18 = load i32, i32* %i, align 4
  %Sum19 = add i32 %loadLocali18, 1
  store i32 %Sum19, i32* %i
  br label %cond

exit1:                                            ; preds = %cond
  %sgep20 = getelementptr inbounds %"std::vector", %"std::vector"* %0, i32 0, i32 2
  %load21 = load i32, i32* %sgep20
  %Sub22 = sub i32 %load21, 1
  %sgep23 = getelementptr inbounds %"std::vector", %"std::vector"* %0, i32 0, i32 2
  store i32 %Sub22, i32* %sgep23
  %sgep24 = getelementptr inbounds %"std::vector", %"std::vector"* %0, i32 0, i32 2
  %load25 = load i32, i32* %sgep24
  %icmp26 = icmp sgt i32 %load25, 0
  %sgep27 = getelementptr inbounds %"std::vector", %"std::vector"* %0, i32 0, i32 2
  %load28 = load i32, i32* %sgep27
  %sgep29 = getelementptr inbounds %"std::vector", %"std::vector"* %0, i32 0, i32 1
  %load30 = load i32, i32* %sgep29
  %Div = sdiv i32 %load30, 4
  %icmp31 = icmp eq i32 %load28, %Div
  %and = and i1 %icmp26, %icmp31
  br i1 %and, label %then, label %end

then:                                             ; preds = %exit1
  %sgep32 = getelementptr inbounds %"std::vector", %"std::vector"* %0, i32 0, i32 1
  %load33 = load i32, i32* %sgep32
  %Div34 = sdiv i32 %load33, 2
  call void @"_RaveM18std::vector.resize"(%"std::vector"* %0, i32 %Div34)
  br label %end

end:                                              ; preds = %exit1, %then
  ret void
}

define dso_local void @"_RaveM19std::vector.destroy"(%"std::vector"* %0) {
entry:
  %sgep1 = bitcast %"std::vector"* %0 to i8***
  %load = load i8**, i8*** %sgep1
  %ppcast = bitcast i8** %load to i8*
  call void @free(i8* %ppcast)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.stackprotector(i8*, i8**) #0

attributes #0 = { nounwind }
