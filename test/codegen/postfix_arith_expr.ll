; ModuleID = 'postfix_arith_expr'
source_filename = "postfix_arith_expr"

@__builtin_print_format = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @__builtin_print(i32)

declare i32 @printf(ptr, i32)

define i32 @main() {
body:
  %0 = alloca i32, align 4
  store i32 0, ptr %0, align 4
  %1 = load i32, ptr %0, align 4
  %2 = add i32 %1, 1
  store i32 %2, ptr %0, align 4
  %3 = call i32 @printf(ptr @__builtin_print_format, i32 %1)
  %4 = load i32, ptr %0, align 4
  %5 = sub i32 %4, 1
  store i32 %5, ptr %0, align 4
  %6 = call i32 @printf(ptr @__builtin_print_format, i32 %4)
  %7 = alloca i32, align 4
  %8 = load i32, ptr %0, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %0, align 4
  store i32 %8, ptr %7, align 4
  %10 = load i32, ptr %7, align 4
  %11 = add i32 %10, 1
  store i32 %11, ptr %7, align 4
  %12 = call i32 @printf(ptr @__builtin_print_format, i32 %10)
  ret i32 0
}
