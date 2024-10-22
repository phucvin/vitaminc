; ModuleID = 'decl'
source_filename = "decl"

@__builtin_print_format = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @__builtin_print(i32)

declare i32 @printf(ptr, i32)

define i32 @main() {
body:
  %0 = alloca i32, align 4
  %1 = alloca i32, align 4
  store i32 2, ptr %1, align 4
  %2 = load i32, ptr %1, align 4
  %3 = call i32 @printf(ptr @__builtin_print_format, i32 %2)
  %4 = alloca i32, align 4
  store i32 3, ptr %4, align 4
  %5 = alloca i32, align 4
  %6 = load i32, ptr %4, align 4
  %7 = call i32 @printf(ptr @__builtin_print_format, i32 %6)
  ret i32 0
}
