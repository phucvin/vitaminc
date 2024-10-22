; ModuleID = 'cond_expr'
source_filename = "cond_expr"

@__builtin_print_format = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @__builtin_print(i32)

declare i32 @printf(ptr, i32)

define i32 @main() {
body:
  %0 = alloca i32, align 4
  store i32 0, ptr %0, align 4
  %1 = alloca i32, align 4
  store i32 5, ptr %1, align 4
  %2 = load i32, ptr %0, align 4
  br i1 false, label %cond_second, label %cond_third

cond_second:                                      ; preds = %body
  %3 = load i32, ptr %0, align 4
  %4 = add i32 %3, 1
  br label %cond_end

cond_third:                                       ; preds = %body
  %5 = load i32, ptr %0, align 4
  %6 = sub i32 %5, 1
  br label %cond_end

cond_end:                                         ; preds = %cond_third, %cond_second
  %7 = phi i32 [ %4, %cond_second ], [ %6, %cond_third ]
  store i32 %7, ptr %0, align 4
  %8 = load i32, ptr %0, align 4
  %9 = call i32 @printf(ptr @__builtin_print_format, i32 %8)
  %10 = load i32, ptr %1, align 4
  br i1 true, label %cond_second1, label %cond_third2

cond_second1:                                     ; preds = %cond_end
  %11 = load i32, ptr %1, align 4
  %12 = add i32 %11, 1
  br label %cond_end3

cond_third2:                                      ; preds = %cond_end
  %13 = load i32, ptr %1, align 4
  %14 = sub i32 %13, 1
  br label %cond_end3

cond_end3:                                        ; preds = %cond_third2, %cond_second1
  %15 = phi i32 [ %12, %cond_second1 ], [ %14, %cond_third2 ]
  store i32 %15, ptr %1, align 4
  %16 = load i32, ptr %1, align 4
  %17 = call i32 @printf(ptr @__builtin_print_format, i32 %16)
  ret i32 0
}
