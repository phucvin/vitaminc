; ModuleID = 'if_else_stmt'
source_filename = "if_else_stmt"

@__builtin_print_format = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @__builtin_print(i32)

declare i32 @printf(ptr, i32)

define i32 @main() {
body:
  br i1 true, label %if_then, label %if_end

if_then:                                          ; preds = %body
  %0 = call i32 @printf(ptr @__builtin_print_format, i32 1)
  br label %if_end

if_end:                                           ; preds = %if_then, %body
  %1 = call i32 @printf(ptr @__builtin_print_format, i32 2)
  br i1 true, label %if_then1, label %if_else

if_then1:                                         ; preds = %if_end
  %2 = call i32 @printf(ptr @__builtin_print_format, i32 3)
  br label %if_end2

if_else:                                          ; preds = %if_end
  %3 = call i32 @printf(ptr @__builtin_print_format, i32 4)
  br label %if_end2

if_end2:                                          ; preds = %if_else, %if_then1
  br i1 true, label %if_then3, label %if_else4

if_then3:                                         ; preds = %if_end2
  br i1 true, label %if_then6, label %if_else7

if_else4:                                         ; preds = %if_end2
  %4 = call i32 @printf(ptr @__builtin_print_format, i32 9)
  br i1 true, label %if_then11, label %if_else12

if_end5:                                          ; preds = %if_end15, %if_end10
  %5 = call i32 @printf(ptr @__builtin_print_format, i32 14)
  ret i32 0

if_then6:                                         ; preds = %if_then3
  %6 = call i32 @printf(ptr @__builtin_print_format, i32 5)
  br label %if_end8

if_else7:                                         ; preds = %if_then3
  %7 = call i32 @printf(ptr @__builtin_print_format, i32 6)
  br label %if_end8

if_end8:                                          ; preds = %if_else7, %if_then6
  br i1 true, label %if_then9, label %if_end10

if_then9:                                         ; preds = %if_end8
  %8 = call i32 @printf(ptr @__builtin_print_format, i32 7)
  br label %if_end10

if_end10:                                         ; preds = %if_then9, %if_end8
  %9 = call i32 @printf(ptr @__builtin_print_format, i32 8)
  br label %if_end5

if_then11:                                        ; preds = %if_else4
  %10 = call i32 @printf(ptr @__builtin_print_format, i32 10)
  br label %if_end13

if_else12:                                        ; preds = %if_else4
  %11 = call i32 @printf(ptr @__builtin_print_format, i32 11)
  br label %if_end13

if_end13:                                         ; preds = %if_else12, %if_then11
  br i1 true, label %if_then14, label %if_end15

if_then14:                                        ; preds = %if_end13
  %12 = call i32 @printf(ptr @__builtin_print_format, i32 12)
  br label %if_end15

if_end15:                                         ; preds = %if_then14, %if_end13
  %13 = call i32 @printf(ptr @__builtin_print_format, i32 13)
  br label %if_end5
}
