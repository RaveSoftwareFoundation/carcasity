; ModuleID = 'rave'
source_filename = "rave"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux"

%"rc::VideoMode" = type { i32, i32, i32 }
%"std::vector" = type { i8**, i32, i32 }
%"std::string" = type { i8*, i32 }
%"std::file::File" = type { i32, i8*, i8*, i32 (i8*)*, i8*, i8*, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i32, i32)*, i8*, i32, i8*, i8*, i32, i32, i64, i32, i32, i32, i8*, i32, i8*, i8*, i8*, i32, i32, i8*, i8*, i8* }
%"rc::RenderWindow" = type { i64* }
%"rc::Event" = type { i32 }

@"_Ravegrci::createWindow" = external dso_local global i64* (%"rc::VideoMode"*, i8*, i32, i64*)*, align 8
@"_Ravegrc::libgraphics" = external dso_local global i8*, align 8
@_str = private unnamed_addr constant [7 x i8] c"Window\00", align 1
@_str.1 = private unnamed_addr constant [12 x i8] c"Passed init\00", align 1

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

declare dso_local i32 @"_RaveF10std::print"(%"std::string"*, ...)

declare dso_local i32 @"_RaveF12std::println"(%"std::string"*, ...)

declare dso_local i32 @scanf(...)

declare dso_local i32 @putchar(i8)

declare dso_local i32 @puts(i8*)

declare dso_local i8* @dlopen(i8*, i32)

declare dso_local i32 @dlclose(i8*)

declare dso_local i8* @dlsym(i8*, i8*)

declare dso_local i8* @dlerror()

declare dso_local %"rc::VideoMode"* @"_RaveF13rc::VideoMode"(i32, i32, i32)

declare dso_local void @"_RaveF17rc::carcasityInit"()

declare dso_local void @"_RaveF16rc::carcasityEnd"()

declare dso_local %"rc::RenderWindow"* @"_RaveF16rc::RenderWindow"(%"rc::VideoMode"*, i8*, i32)

define dso_local i32 @main() {
entry:
  call void @"_RaveF17rc::carcasityInit"()
  %mode = alloca %"rc::VideoMode"*, align 8
  %"CallFuncrc::VideoMode" = call %"rc::VideoMode"* @"_RaveF13rc::VideoMode"(i32 800, i32 600, i32 32)
  store %"rc::VideoMode"* %"CallFuncrc::VideoMode", %"rc::VideoMode"** %mode, align 8
  %window = alloca %"rc::RenderWindow"*, align 8
  %loadLocalmode = load %"rc::VideoMode"*, %"rc::VideoMode"** %mode, align 8
  %"CallFuncrc::RenderWindow" = call %"rc::RenderWindow"* @"_RaveF16rc::RenderWindow"(%"rc::VideoMode"* %loadLocalmode, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_str, i32 0, i32 0), i32 4)
  store %"rc::RenderWindow"* %"CallFuncrc::RenderWindow", %"rc::RenderWindow"** %window, align 8
  %event = alloca %"rc::Event", align 4
  %getStructElement21 = bitcast %"rc::Event"* %event to i32*
  store i32 1, i32* %getStructElement21
  %"CallFuncstd::printf" = call i32 (...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @_str.1, i32 0, i32 0))
  call void @"_RaveF16rc::carcasityEnd"()
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.stackprotector(i8*, i8**) #0

attributes #0 = { nounwind }
