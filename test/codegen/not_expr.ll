; ModuleID = 'not_expr'
source_filename = "not_expr"

@__builtin_print_format = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @__builtin_print(i32)

declare i32 @printf(ptr, i32)

define i32 @main() {
body:
  %0 = call i32 @printf(ptr @__builtin_print_format, i1 false)
  %1 = call i32 @printf(ptr @__builtin_print_format, i1 false)
  %2 = call i32 @printf(ptr @__builtin_print_format, i1 true)
  ret i32 0
}
