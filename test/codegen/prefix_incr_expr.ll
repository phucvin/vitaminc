; ModuleID = 'prefix_incr_expr'
source_filename = "prefix_incr_expr"

@__builtin_print_format = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @__builtin_print(i32)

declare i32 @printf(ptr, i32)

define i32 @main() {
body:
  %0 = alloca i32, align 4
  store i32 1, ptr %0, align 4
  %1 = load i32, ptr %0, align 4
  %2 = add i32 %1, 1
  store i32 %2, ptr %0, align 4
  %3 = call i32 @printf(ptr @__builtin_print_format, i32 %2)
  %4 = load i32, ptr %0, align 4
  %5 = call i32 @printf(ptr @__builtin_print_format, i32 %4)
  ret i32 0
}
