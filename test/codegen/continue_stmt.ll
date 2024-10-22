; ModuleID = 'continue_stmt'
source_filename = "continue_stmt"

@__builtin_print_format = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @__builtin_print(i32)

declare i32 @printf(ptr, i32)

define i32 @main() {
body:
  %0 = alloca i32, align 4
  store i32 0, ptr %0, align 4
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %2 = load i32, ptr %0, align 4
  store i32 0, ptr %0, align 4
  %3 = load i32, ptr %1, align 4
  store i32 0, ptr %1, align 4
  br label %while_pred

while_body:                                       ; preds = %while_pred
  %4 = load i32, ptr %0, align 4
  %5 = load i32, ptr %0, align 4
  %6 = add i32 %5, 1
  store i32 %6, ptr %0, align 4
  %7 = load i32, ptr %0, align 4
  %8 = icmp sgt i32 %7, 3
  %9 = icmp ne i1 %8, false
  br i1 %9, label %if_then, label %if_end

while_pred:                                       ; preds = %if_end, %if_then, %body
  %10 = load i32, ptr %0, align 4
  %11 = icmp slt i32 %10, 10
  br i1 %11, label %while_body, label %while_end

while_end:                                        ; preds = %while_pred
  %12 = load i32, ptr %1, align 4
  %13 = call i32 @printf(ptr @__builtin_print_format, i32 %12)
  %14 = load i32, ptr %0, align 4
  store i32 0, ptr %0, align 4
  %15 = load i32, ptr %1, align 4
  store i32 0, ptr %1, align 4
  br label %do_body

if_then:                                          ; preds = %while_body
  br label %while_pred

if_end:                                           ; preds = %while_body
  %16 = load i32, ptr %1, align 4
  %17 = load i32, ptr %1, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %1, align 4
  br label %while_pred

do_body:                                          ; preds = %do_pred, %while_end
  %19 = load i32, ptr %0, align 4
  %20 = load i32, ptr %0, align 4
  %21 = add i32 %20, 1
  store i32 %21, ptr %0, align 4
  %22 = load i32, ptr %0, align 4
  %23 = icmp sgt i32 %22, 5
  %24 = icmp ne i1 %23, false
  br i1 %24, label %if_then1, label %if_end2

do_pred:                                          ; preds = %if_end2, %if_then1
  %25 = load i32, ptr %0, align 4
  %26 = icmp slt i32 %25, 10
  br i1 %26, label %do_body, label %do_end

do_end:                                           ; preds = %do_pred
  %27 = load i32, ptr %1, align 4
  %28 = call i32 @printf(ptr @__builtin_print_format, i32 %27)
  %29 = load i32, ptr %0, align 4
  store i32 0, ptr %0, align 4
  %30 = load i32, ptr %1, align 4
  store i32 0, ptr %1, align 4
  br label %for_pred

if_then1:                                         ; preds = %do_body
  br label %do_pred

if_end2:                                          ; preds = %do_body
  %31 = load i32, ptr %1, align 4
  %32 = load i32, ptr %1, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %1, align 4
  br label %do_pred

for_pred:                                         ; preds = %for_step, %do_end
  %34 = load i32, ptr %0, align 4
  %35 = icmp slt i32 %34, 10
  br i1 %35, label %for_body, label %for_end

for_body:                                         ; preds = %for_pred
  %36 = load i32, ptr %0, align 4
  %37 = icmp sge i32 %36, 7
  %38 = icmp ne i1 %37, false
  br i1 %38, label %if_then3, label %if_end4

for_step:                                         ; preds = %if_end4, %if_then3
  %39 = load i32, ptr %0, align 4
  %40 = load i32, ptr %0, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %0, align 4
  br label %for_pred

for_end:                                          ; preds = %for_pred
  %42 = load i32, ptr %1, align 4
  %43 = call i32 @printf(ptr @__builtin_print_format, i32 %42)
  %44 = load i32, ptr %0, align 4
  store i32 0, ptr %0, align 4
  %45 = load i32, ptr %1, align 4
  store i32 0, ptr %1, align 4
  br label %while_pred6

if_then3:                                         ; preds = %for_body
  br label %for_step

if_end4:                                          ; preds = %for_body
  %46 = load i32, ptr %1, align 4
  %47 = load i32, ptr %1, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %1, align 4
  br label %for_step

while_body5:                                      ; preds = %while_pred6
  %49 = alloca i32, align 4
  store i32 0, ptr %49, align 4
  br label %while_pred9

while_pred6:                                      ; preds = %while_end10, %for_end
  %50 = load i32, ptr %0, align 4
  %51 = icmp slt i32 %50, 10
  br i1 %51, label %while_body5, label %while_end7

while_end7:                                       ; preds = %while_pred6
  %52 = load i32, ptr %1, align 4
  %53 = call i32 @printf(ptr @__builtin_print_format, i32 %52)
  %54 = load i32, ptr %0, align 4
  store i32 0, ptr %0, align 4
  %55 = load i32, ptr %1, align 4
  store i32 0, ptr %1, align 4
  br label %do_body13

while_body8:                                      ; preds = %while_pred9
  %56 = load i32, ptr %49, align 4
  %57 = load i32, ptr %49, align 4
  %58 = add i32 %57, 1
  store i32 %58, ptr %49, align 4
  %59 = load i32, ptr %49, align 4
  %60 = icmp sgt i32 %59, 3
  %61 = icmp ne i1 %60, false
  br i1 %61, label %if_then11, label %if_end12

while_pred9:                                      ; preds = %if_end12, %if_then11, %while_body5
  %62 = load i32, ptr %49, align 4
  %63 = icmp slt i32 %62, 10
  br i1 %63, label %while_body8, label %while_end10

while_end10:                                      ; preds = %while_pred9
  %64 = load i32, ptr %0, align 4
  %65 = load i32, ptr %0, align 4
  %66 = add i32 %65, 1
  store i32 %66, ptr %0, align 4
  br label %while_pred6

if_then11:                                        ; preds = %while_body8
  br label %while_pred9

if_end12:                                         ; preds = %while_body8
  %67 = load i32, ptr %1, align 4
  %68 = load i32, ptr %1, align 4
  %69 = add i32 %68, 1
  store i32 %69, ptr %1, align 4
  br label %while_pred9

do_body13:                                        ; preds = %do_pred14, %while_end7
  %70 = alloca i32, align 4
  store i32 0, ptr %70, align 4
  br label %do_body16

do_pred14:                                        ; preds = %do_end18
  %71 = load i32, ptr %0, align 4
  %72 = icmp slt i32 %71, 10
  br i1 %72, label %do_body13, label %do_end15

do_end15:                                         ; preds = %do_pred14
  %73 = load i32, ptr %1, align 4
  %74 = call i32 @printf(ptr @__builtin_print_format, i32 %73)
  %75 = load i32, ptr %0, align 4
  store i32 0, ptr %0, align 4
  %76 = load i32, ptr %1, align 4
  store i32 0, ptr %1, align 4
  br label %for_pred21

do_body16:                                        ; preds = %do_pred17, %do_body13
  %77 = load i32, ptr %70, align 4
  %78 = load i32, ptr %70, align 4
  %79 = add i32 %78, 1
  store i32 %79, ptr %70, align 4
  %80 = load i32, ptr %70, align 4
  %81 = icmp sgt i32 %80, 5
  %82 = icmp ne i1 %81, false
  br i1 %82, label %if_then19, label %if_end20

do_pred17:                                        ; preds = %if_end20, %if_then19
  %83 = load i32, ptr %70, align 4
  %84 = icmp slt i32 %83, 10
  br i1 %84, label %do_body16, label %do_end18

do_end18:                                         ; preds = %do_pred17
  %85 = load i32, ptr %0, align 4
  %86 = load i32, ptr %0, align 4
  %87 = add i32 %86, 1
  store i32 %87, ptr %0, align 4
  br label %do_pred14

if_then19:                                        ; preds = %do_body16
  br label %do_pred17

if_end20:                                         ; preds = %do_body16
  %88 = load i32, ptr %1, align 4
  %89 = load i32, ptr %1, align 4
  %90 = add i32 %89, 1
  store i32 %90, ptr %1, align 4
  br label %do_pred17

for_pred21:                                       ; preds = %for_step23, %do_end15
  %91 = load i32, ptr %0, align 4
  %92 = icmp slt i32 %91, 10
  br i1 %92, label %for_body22, label %for_end24

for_body22:                                       ; preds = %for_pred21
  %93 = alloca i32, align 4
  store i32 0, ptr %93, align 4
  br label %for_pred25

for_step23:                                       ; preds = %for_end28
  %94 = load i32, ptr %0, align 4
  %95 = load i32, ptr %0, align 4
  %96 = add i32 %95, 1
  store i32 %96, ptr %0, align 4
  br label %for_pred21

for_end24:                                        ; preds = %for_pred21
  %97 = load i32, ptr %1, align 4
  %98 = call i32 @printf(ptr @__builtin_print_format, i32 %97)
  ret i32 0

for_pred25:                                       ; preds = %for_step27, %for_body22
  %99 = load i32, ptr %93, align 4
  %100 = icmp slt i32 %99, 10
  br i1 %100, label %for_body26, label %for_end28

for_body26:                                       ; preds = %for_pred25
  %101 = load i32, ptr %93, align 4
  %102 = icmp sge i32 %101, 7
  %103 = icmp ne i1 %102, false
  br i1 %103, label %if_then29, label %if_end30

for_step27:                                       ; preds = %if_end30, %if_then29
  %104 = load i32, ptr %93, align 4
  %105 = load i32, ptr %93, align 4
  %106 = add i32 %105, 1
  store i32 %106, ptr %93, align 4
  br label %for_pred25

for_end28:                                        ; preds = %for_pred25
  br label %for_step23

if_then29:                                        ; preds = %for_body26
  br label %for_step27

if_end30:                                         ; preds = %for_body26
  %107 = load i32, ptr %1, align 4
  %108 = load i32, ptr %1, align 4
  %109 = add i32 %108, 1
  store i32 %109, ptr %1, align 4
  br label %for_step27
}
