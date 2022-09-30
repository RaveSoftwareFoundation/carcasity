; ModuleID = 'rave'
source_filename = "rave"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux"

%"std::vector" = type { i8**, i32, i32 }

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
