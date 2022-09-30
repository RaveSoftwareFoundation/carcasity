; ModuleID = 'rave'
source_filename = "rave"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux"

%"std::vector" = type { i8**, i32, i32 }
%"std::string" = type { i8*, i32 }
%"std::file::File" = type { i32, i8*, i8*, i32 (i8*)*, i8*, i8*, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i32, i32)*, i8*, i32, i8*, i8*, i32, i32, i64, i32, i32, i32, i8*, i32, i8*, i8*, i8*, i32, i32, i8*, i8*, i8* }

@_str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@_str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

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

declare dso_local i8* @"_RaveF10libc::btos"(i1)

declare dso_local %"std::string"* @"_RaveF11std::string"(i8*)

declare dso_local i1 @"_RaveM21std::string.isDeleted"(%"std::string"*)

declare dso_local i8 @"_RaveM18std::string.toChar"(%"std::string"*)

declare dso_local i1 @"_RaveM15std::string.has"(%"std::string"*, i8)

declare dso_local void @"_RaveM19std::string.replace"(%"std::string"*, i8, i8)

declare dso_local void @"_RaveM19std::string.destroy"(%"std::string"*)

declare dso_local void @"_RaveM15std::string.set"(%"std::string"*, i8*)

declare dso_local %"std::file::File"* @fopen(i8*, i8*)

declare dso_local i32 @fclose(%"std::file::File"*)

declare dso_local i32 @ferror(%"std::file::File"*)

declare dso_local i32 @fprintf(...)

declare dso_local i32 @fflush(%"std::file::File"*)

declare dso_local i32 @fscanf(...)

declare dso_local i32 @printf(...)

define dso_local i32 @"_RaveF10std::print"(%"std::string"* %0, ...) {
entry:
  %toret = alloca i32, align 4
  %sgep1 = bitcast %"std::string"* %0 to i8**
  %load = load i8*, i8** %sgep1
  %"CallFuncstd::printf" = call i32 (...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @_str, i32 0, i32 0), i8* %load)
  store i32 %"CallFuncstd::printf", i32* %toret, align 4
  %loadLocaltoret = load i32, i32* %toret, align 4
  ret i32 %loadLocaltoret
}

define dso_local i32 @"_RaveF12std::println"(%"std::string"* %0, ...) {
entry:
  %toret = alloca i32, align 4
  %sgep1 = bitcast %"std::string"* %0 to i8**
  %load = load i8*, i8** %sgep1
  %"CallFuncstd::printf" = call i32 (...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @_str.1, i32 0, i32 0), i8* %load)
  store i32 %"CallFuncstd::printf", i32* %toret, align 4
  %loadLocaltoret = load i32, i32* %toret, align 4
  ret i32 %loadLocaltoret
}

declare dso_local i32 @scanf(...)

declare dso_local i32 @putchar(i8)

declare dso_local i32 @puts(i8*)

; Function Attrs: nounwind
declare void @llvm.stackprotector(i8*, i8**) #0

attributes #0 = { nounwind }
