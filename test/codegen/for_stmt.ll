; ModuleID = 'for_stmt'
source_filename = "for_stmt"

@__builtin_print_format = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @__builtin_print(i32)

declare i32 @printf(ptr, i32)

define i32 @main() {
body:
  %0 = alloca i32, align 4
  store i32 0, ptr %0, align 4
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %for_pred

for_pred:                                         ; preds = %for_step, %body
  %2 = load i32, ptr %1, align 4
  %3 = icmp slt i32 %2, 5
  br i1 %3, label %for_body, label %for_end

for_body:                                         ; preds = %for_pred
  %4 = load i32, ptr %0, align 4
  %5 = load i32, ptr %0, align 4
  %6 = add i32 %5, 1
  store i32 %6, ptr %0, align 4
  br label %for_step

for_step:                                         ; preds = %for_body
  %7 = load i32, ptr %1, align 4
  %8 = load i32, ptr %1, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %1, align 4
  br label %for_pred

for_end:                                          ; preds = %for_pred
  %10 = load i32, ptr %0, align 4
  %11 = call i32 @printf(ptr @__builtin_print_format, i32 %10)
  %12 = alloca i32, align 4
  store i32 0, ptr %12, align 4
  %13 = alloca i32, align 4
  store i32 0, ptr %13, align 4
  %14 = alloca i32, align 4
  store i32 5, ptr %14, align 4
  br label %for_pred1

for_pred1:                                        ; preds = %for_step3, %for_end
  %15 = load i32, ptr %13, align 4
  %16 = load i32, ptr %14, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %for_body2, label %for_end4

for_body2:                                        ; preds = %for_pred1
  %18 = alloca i32, align 4
  store i32 0, ptr %18, align 4
  br label %for_pred5

for_step3:                                        ; preds = %for_end8
  %19 = load i32, ptr %13, align 4
  %20 = load i32, ptr %13, align 4
  %21 = add i32 %20, 1
  store i32 %21, ptr %13, align 4
  br label %for_pred1

for_end4:                                         ; preds = %for_pred1
  %22 = load i32, ptr %12, align 4
  %23 = call i32 @printf(ptr @__builtin_print_format, i32 %22)
  ret i32 0

for_pred5:                                        ; preds = %for_step7, %for_body2
  %24 = load i32, ptr %18, align 4
  %25 = icmp slt i32 %24, 5
  br i1 %25, label %for_body6, label %for_end8

for_body6:                                        ; preds = %for_pred5
  %26 = load i32, ptr %12, align 4
  %27 = load i32, ptr %12, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %12, align 4
  br label %for_step7

for_step7:                                        ; preds = %for_body6
  %29 = load i32, ptr %18, align 4
  %30 = load i32, ptr %18, align 4
  %31 = add i32 %30, 1
  store i32 %31, ptr %18, align 4
  br label %for_pred5

for_end8:                                         ; preds = %for_pred5
  br label %for_step3
}
