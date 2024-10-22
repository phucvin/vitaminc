; ModuleID = 'while_stmt'
source_filename = "while_stmt"

@__builtin_print_format = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @__builtin_print(i32)

declare i32 @printf(ptr, i32)

define i32 @main() {
body:
  %0 = alloca i32, align 4
  store i32 0, ptr %0, align 4
  br label %while_pred

while_body:                                       ; preds = %while_pred
  %1 = load i32, ptr %0, align 4
  %2 = load i32, ptr %0, align 4
  %3 = sub i32 %2, 1
  store i32 %3, ptr %0, align 4
  br label %while_pred

while_pred:                                       ; preds = %while_body, %body
  %4 = load i32, ptr %0, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %while_body, label %while_end

while_end:                                        ; preds = %while_pred
  %6 = load i32, ptr %0, align 4
  %7 = call i32 @printf(ptr @__builtin_print_format, i32 %6)
  %8 = alloca i32, align 4
  store i32 5, ptr %8, align 4
  br label %while_pred2

while_body1:                                      ; preds = %while_pred2
  %9 = alloca i32, align 4
  store i32 5, ptr %9, align 4
  br label %while_pred5

while_pred2:                                      ; preds = %while_end6, %while_end
  %10 = load i32, ptr %8, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %while_body1, label %while_end3

while_end3:                                       ; preds = %while_pred2
  %12 = load i32, ptr %8, align 4
  %13 = call i32 @printf(ptr @__builtin_print_format, i32 %12)
  %14 = alloca i32, align 4
  store i32 0, ptr %14, align 4
  br label %do_body

while_body4:                                      ; preds = %while_pred5
  %15 = load i32, ptr %9, align 4
  %16 = load i32, ptr %9, align 4
  %17 = sub i32 %16, 1
  store i32 %17, ptr %9, align 4
  br label %while_pred5

while_pred5:                                      ; preds = %while_body4, %while_body1
  %18 = load i32, ptr %9, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %while_body4, label %while_end6

while_end6:                                       ; preds = %while_pred5
  %20 = load i32, ptr %9, align 4
  %21 = call i32 @printf(ptr @__builtin_print_format, i32 %20)
  %22 = load i32, ptr %8, align 4
  %23 = load i32, ptr %8, align 4
  %24 = sub i32 %23, 1
  store i32 %24, ptr %8, align 4
  br label %while_pred2

do_body:                                          ; preds = %do_pred, %while_end3
  %25 = load i32, ptr %14, align 4
  %26 = load i32, ptr %14, align 4
  %27 = add i32 %26, 1
  store i32 %27, ptr %14, align 4
  br label %do_pred

do_pred:                                          ; preds = %do_body
  %28 = load i32, ptr %14, align 4
  %29 = icmp slt i32 %28, 5
  br i1 %29, label %do_body, label %do_end

do_end:                                           ; preds = %do_pred
  %30 = load i32, ptr %14, align 4
  %31 = call i32 @printf(ptr @__builtin_print_format, i32 %30)
  %32 = alloca i32, align 4
  store i32 0, ptr %32, align 4
  br label %do_body7

do_body7:                                         ; preds = %do_pred8, %do_end
  %33 = alloca i32, align 4
  store i32 0, ptr %33, align 4
  br label %do_body10

do_pred8:                                         ; preds = %do_end12
  %34 = load i32, ptr %32, align 4
  %35 = icmp slt i32 %34, 5
  br i1 %35, label %do_body7, label %do_end9

do_end9:                                          ; preds = %do_pred8
  %36 = load i32, ptr %32, align 4
  %37 = call i32 @printf(ptr @__builtin_print_format, i32 %36)
  ret i32 0

do_body10:                                        ; preds = %do_pred11, %do_body7
  %38 = load i32, ptr %33, align 4
  %39 = load i32, ptr %33, align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr %33, align 4
  br label %do_pred11

do_pred11:                                        ; preds = %do_body10
  %41 = load i32, ptr %33, align 4
  %42 = icmp slt i32 %41, 5
  br i1 %42, label %do_body10, label %do_end12

do_end12:                                         ; preds = %do_pred11
  %43 = load i32, ptr %33, align 4
  %44 = call i32 @printf(ptr @__builtin_print_format, i32 %43)
  %45 = load i32, ptr %32, align 4
  %46 = load i32, ptr %32, align 4
  %47 = add i32 %46, 1
  store i32 %47, ptr %32, align 4
  br label %do_pred8
}
