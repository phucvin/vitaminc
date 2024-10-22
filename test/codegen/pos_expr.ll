; ModuleID = 'pos_expr'
source_filename = "pos_expr"

@__builtin_print_format = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @__builtin_print(i32)

declare i32 @printf(ptr, i32)

define i32 @main() {
body:
  %0 = call i32 @printf(ptr @__builtin_print_format, i32 1)
  %1 = call i32 @printf(ptr @__builtin_print_format, i32 0)
  %2 = call i32 @printf(ptr @__builtin_print_format, i32 -1)
  ret i32 0
}
