; ModuleID = 'comma_expr'
source_filename = "comma_expr"

@__builtin_print_format = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @__builtin_print(i32)

declare i32 @printf(ptr, i32)

define i32 @main() {
body:
  %0 = alloca i32, align 4
  %1 = alloca ptr, align 8
  %2 = load i32, ptr %0, align 4
  store i32 3, ptr %0, align 4
  %3 = load ptr, ptr %1, align 8
  %4 = load i32, ptr %0, align 4
  store ptr %0, ptr %1, align 8
  %5 = load i32, ptr %0, align 4
  %6 = call i32 @printf(ptr @__builtin_print_format, i32 %5)
  %7 = load ptr, ptr %1, align 8
  %8 = load i32, ptr %7, align 4
  %9 = call i32 @printf(ptr @__builtin_print_format, i32 %8)
  ret i32 0
}
