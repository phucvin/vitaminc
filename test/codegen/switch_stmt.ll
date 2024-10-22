; ModuleID = 'switch_stmt'
source_filename = "switch_stmt"

@__builtin_print_format = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @__builtin_print(i32)

declare i32 @printf(ptr, i32)

define i32 @main() {
body:
  switch i32 3, label %default [
    i32 0, label %case_0
    i32 3, label %case_3
  ]

switch_end:                                       ; preds = %default, %case_3, %case_0
  %0 = call i32 @printf(ptr @__builtin_print_format, i32 4)
  switch i32 3, label %default2 [
    i32 1, label %case_1
    i32 2, label %case_2
  ]

case_0:                                           ; preds = %body
  %1 = call i32 @printf(ptr @__builtin_print_format, i32 1)
  br label %switch_end

case_3:                                           ; preds = %body
  %2 = call i32 @printf(ptr @__builtin_print_format, i32 2)
  br label %switch_end

default:                                          ; preds = %body
  %3 = call i32 @printf(ptr @__builtin_print_format, i32 3)
  br label %switch_end

switch_end1:                                      ; preds = %case_2, %case_1
  %4 = call i32 @printf(ptr @__builtin_print_format, i32 8)
  switch i32 2, label %default14 [
    i32 1, label %case_14
    i32 2, label %case_29
  ]

case_1:                                           ; preds = %switch_end
  %5 = call i32 @printf(ptr @__builtin_print_format, i32 5)
  br label %switch_end1

default2:                                         ; preds = %switch_end
  %6 = call i32 @printf(ptr @__builtin_print_format, i32 6)
  br label %case_2

case_2:                                           ; preds = %switch_end, %default2
  %7 = call i32 @printf(ptr @__builtin_print_format, i32 7)
  br label %switch_end1

switch_end3:                                      ; preds = %switch_end15, %switch_end10, %switch_end5
  %8 = call i32 @printf(ptr @__builtin_print_format, i32 21)
  ret i32 0

case_14:                                          ; preds = %switch_end1
  switch i32 1, label %default8 [
    i32 1, label %case_16
    i32 2, label %case_27
  ]

switch_end5:                                      ; preds = %default8, %case_27, %case_16
  %9 = call i32 @printf(ptr @__builtin_print_format, i32 12)
  br label %switch_end3

case_16:                                          ; preds = %case_14
  %10 = call i32 @printf(ptr @__builtin_print_format, i32 9)
  br label %switch_end5

case_27:                                          ; preds = %case_14
  %11 = call i32 @printf(ptr @__builtin_print_format, i32 10)
  br label %switch_end5

default8:                                         ; preds = %case_14
  %12 = call i32 @printf(ptr @__builtin_print_format, i32 11)
  br label %switch_end5

case_29:                                          ; preds = %switch_end1
  switch i32 1, label %default13 [
    i32 1, label %case_111
    i32 2, label %case_212
  ]

switch_end10:                                     ; preds = %default13, %case_212, %case_111
  %13 = call i32 @printf(ptr @__builtin_print_format, i32 16)
  br label %switch_end3

case_111:                                         ; preds = %case_29
  %14 = call i32 @printf(ptr @__builtin_print_format, i32 13)
  br label %switch_end10

case_212:                                         ; preds = %case_29
  %15 = call i32 @printf(ptr @__builtin_print_format, i32 14)
  br label %switch_end10

default13:                                        ; preds = %case_29
  %16 = call i32 @printf(ptr @__builtin_print_format, i32 15)
  br label %switch_end10

default14:                                        ; preds = %switch_end1
  switch i32 1, label %default18 [
    i32 1, label %case_116
    i32 2, label %case_217
  ]

switch_end15:                                     ; preds = %default18, %case_217, %case_116
  %17 = call i32 @printf(ptr @__builtin_print_format, i32 20)
  br label %switch_end3

case_116:                                         ; preds = %default14
  %18 = call i32 @printf(ptr @__builtin_print_format, i32 17)
  br label %switch_end15

case_217:                                         ; preds = %default14
  %19 = call i32 @printf(ptr @__builtin_print_format, i32 18)
  br label %switch_end15

default18:                                        ; preds = %default14
  %20 = call i32 @printf(ptr @__builtin_print_format, i32 19)
  br label %switch_end15
}
