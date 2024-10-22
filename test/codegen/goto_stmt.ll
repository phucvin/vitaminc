; ModuleID = 'goto_stmt'
source_filename = "goto_stmt"

@__builtin_print_format = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @__builtin_print(i32)

declare i32 @printf(ptr, i32)

define i32 @main() {
body:
  br label %first

first:                                            ; preds = %body
  %0 = call i32 @printf(ptr @__builtin_print_format, i32 1)
  br label %second

second:                                           ; preds = %first
  %1 = call i32 @printf(ptr @__builtin_print_format, i32 2)
  br label %third

third:                                            ; preds = %second
  %2 = call i32 @printf(ptr @__builtin_print_format, i32 3)
  ret i32 0
}
