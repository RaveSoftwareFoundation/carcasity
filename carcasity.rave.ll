; ModuleID = 'rave'
source_filename = "rave"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux"

%"rc::VideoMode" = type { i32, i32, i32 }
%"std::vector" = type { i8**, i32, i32 }
%"std::string" = type { i8*, i32 }
%"std::file::File" = type { i32, i8*, i8*, i32 (i8*)*, i8*, i8*, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i32, i32)*, i8*, i32, i8*, i8*, i32, i32, i64, i32, i32, i32, i8*, i32, i8*, i8*, i8*, i32, i32, i8*, i8*, i8* }
%"rc::RenderWindow" = type { i64* }

@"_Ravegrci::createWindow" = dso_local global i64* (%"rc::VideoMode"*, i8*, i32, i64*)* null, align 8
@"_Ravegrc::libgraphics" = dso_local global i8* null, align 8
@_str = private unnamed_addr constant [22 x i8] c"./libsfml/graphics.so\00", align 1
@_str.1 = private unnamed_addr constant [20 x i8] c"dlopen() error: %s\0A\00", align 1
@_str.2 = private unnamed_addr constant [22 x i8] c"sfRenderWindow_create\00", align 1

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

declare dso_local i8* @dlopen(i8*, i32)

declare dso_local i32 @dlclose(i8*)

declare dso_local i8* @dlsym(i8*, i8*)

declare dso_local i8* @dlerror()

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

define dso_local %"rc::VideoMode"* @"_RaveF13rc::VideoMode"(i32 %0, i32 %1, i32 %2) {
entry:
  %this = alloca %"rc::VideoMode"*, align 8
  %"CallFuncstd::malloc" = call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i64 3) to i32))
  %ppcast = bitcast i8* %"CallFuncstd::malloc" to %"rc::VideoMode"*
  %loadLocalthis = load %"rc::VideoMode"*, %"rc::VideoMode"** %this, align 8
  store %"rc::VideoMode"* %ppcast, %"rc::VideoMode"** %this
  %load = load %"rc::VideoMode"*, %"rc::VideoMode"** %this
  %sgep6 = bitcast %"rc::VideoMode"* %load to i32*
  store i32 %0, i32* %sgep6
  %load1 = load %"rc::VideoMode"*, %"rc::VideoMode"** %this
  %sgep2 = getelementptr inbounds %"rc::VideoMode", %"rc::VideoMode"* %load1, i32 0, i32 1
  store i32 %1, i32* %sgep2
  %load3 = load %"rc::VideoMode"*, %"rc::VideoMode"** %this
  %sgep4 = getelementptr inbounds %"rc::VideoMode", %"rc::VideoMode"* %load3, i32 0, i32 2
  store i32 %2, i32* %sgep4
  %loadLocalthis5 = load %"rc::VideoMode"*, %"rc::VideoMode"** %this, align 8
  ret %"rc::VideoMode"* %loadLocalthis5
}

define dso_local void @"_RaveF17rc::carcasityInit"() {
entry:
  %"CallFuncstd::library::open" = call i8* @dlopen(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @_str, i32 0, i32 0), i32 1)
  %"loadGlobalrc::libgraphics" = load i8*, i8** @"_Ravegrc::libgraphics", align 8
  store i8* %"CallFuncstd::library::open", i8** @"_Ravegrc::libgraphics"
  %"loadGlobalrc::libgraphics1" = load i8*, i8** @"_Ravegrc::libgraphics", align 8
  %ptoi = ptrtoint i8* %"loadGlobalrc::libgraphics1" to i32
  %pcmp = icmp eq i32 %ptoi, 0
  br i1 %pcmp, label %then, label %end

then:                                             ; preds = %entry
  %"CallFuncstd::library::error" = call i8* @dlerror()
  %"CallFuncstd::printf" = call i32 (...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @_str.1, i32 0, i32 0), i8* %"CallFuncstd::library::error")
  call void @exit(i32 1)
  br label %end

end:                                              ; preds = %entry, %then
  %"loadGlobalrc::libgraphics2" = load i8*, i8** @"_Ravegrc::libgraphics", align 8
  %"CallFuncstd::library::sym" = call i8* @dlsym(i8* %"loadGlobalrc::libgraphics2", i8* getelementptr inbounds ([22 x i8], [22 x i8]* @_str.2, i32 0, i32 0))
  %ppcast = bitcast i8* %"CallFuncstd::library::sym" to i64* (%"rc::VideoMode"*, i8*, i32, i64*)*
  %"loadGlobalrci::createWindow" = load i64* (%"rc::VideoMode"*, i8*, i32, i64*)*, i64* (%"rc::VideoMode"*, i8*, i32, i64*)** @"_Ravegrci::createWindow", align 8
  store i64* (%"rc::VideoMode"*, i8*, i32, i64*)* %ppcast, i64* (%"rc::VideoMode"*, i8*, i32, i64*)** @"_Ravegrci::createWindow"
  ret void
}

define dso_local void @"_RaveF16rc::carcasityEnd"() {
entry:
  %"loadGlobalrc::libgraphics" = load i8*, i8** @"_Ravegrc::libgraphics", align 8
  %"CallFuncstd::library::close" = call i32 @dlclose(i8* %"loadGlobalrc::libgraphics")
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

define dso_local %"rc::RenderWindow"* @"_RaveF16rc::RenderWindow"(%"rc::VideoMode"* %0, i8* %1, i32 %2) {
entry:
  %this = alloca %"rc::RenderWindow"*, align 8
  %"CallFuncstd::malloc" = call i8* @malloc(i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32))
  %ppcast = bitcast i8* %"CallFuncstd::malloc" to %"rc::RenderWindow"*
  %loadLocalthis = load %"rc::RenderWindow"*, %"rc::RenderWindow"** %this, align 8
  store %"rc::RenderWindow"* %ppcast, %"rc::RenderWindow"** %this
  %"loadGlobalrci::createWindow" = load i64* (%"rc::VideoMode"*, i8*, i32, i64*)*, i64* (%"rc::VideoMode"*, i8*, i32, i64*)** @"_Ravegrci::createWindow", align 8
  %"loadGlobalrci::createWindow1" = load i64* (%"rc::VideoMode"*, i8*, i32, i64*)*, i64* (%"rc::VideoMode"*, i8*, i32, i64*)** @"_Ravegrci::createWindow", align 8
  %"CallVarrci::createWindow" = call i64* %"loadGlobalrci::createWindow1"(%"rc::VideoMode"* %0, i8* %1, i32 %2, i64* null)
  %load = load %"rc::RenderWindow"*, %"rc::RenderWindow"** %this
  %sgep3 = bitcast %"rc::RenderWindow"* %load to i64**
  store i64* %"CallVarrci::createWindow", i64** %sgep3
  %loadLocalthis2 = load %"rc::RenderWindow"*, %"rc::RenderWindow"** %this, align 8
  ret %"rc::RenderWindow"* %loadLocalthis2
}

; Function Attrs: nounwind
declare void @llvm.stackprotector(i8*, i8**) #0

attributes #0 = { nounwind }
