; ModuleID = 'break_stmt'
source_filename = "break_stmt"

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
  %5 = icmp eq i32 %4, 3
  %6 = icmp ne i1 %5, false
  br i1 %6, label %if_then, label %if_end

while_pred:                                       ; preds = %if_end, %body
  %7 = load i32, ptr %0, align 4
  %8 = icmp slt i32 %7, 10
  br i1 %8, label %while_body, label %while_end

while_end:                                        ; preds = %if_then, %while_pred
  %9 = load i32, ptr %1, align 4
  %10 = call i32 @printf(ptr @__builtin_print_format, i32 %9)
  %11 = load i32, ptr %0, align 4
  store i32 0, ptr %0, align 4
  %12 = load i32, ptr %1, align 4
  store i32 0, ptr %1, align 4
  br label %do_body

if_then:                                          ; preds = %while_body
  br label %while_end

if_end:                                           ; preds = %while_body
  %13 = load i32, ptr %1, align 4
  %14 = load i32, ptr %1, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %1, align 4
  %16 = load i32, ptr %0, align 4
  %17 = load i32, ptr %0, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %0, align 4
  br label %while_pred

do_body:                                          ; preds = %do_pred, %while_end
  %19 = load i32, ptr %0, align 4
  %20 = icmp eq i32 %19, 5
  %21 = icmp ne i1 %20, false
  br i1 %21, label %if_then1, label %if_end2

do_pred:                                          ; preds = %if_end2
  %22 = load i32, ptr %0, align 4
  %23 = icmp slt i32 %22, 10
  br i1 %23, label %do_body, label %do_end

do_end:                                           ; preds = %do_pred, %if_then1
  %24 = load i32, ptr %1, align 4
  %25 = call i32 @printf(ptr @__builtin_print_format, i32 %24)
  %26 = load i32, ptr %0, align 4
  store i32 0, ptr %0, align 4
  %27 = load i32, ptr %1, align 4
  store i32 0, ptr %1, align 4
  br label %for_pred

if_then1:                                         ; preds = %do_body
  br label %do_end

if_end2:                                          ; preds = %do_body
  %28 = load i32, ptr %1, align 4
  %29 = load i32, ptr %1, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %1, align 4
  %31 = load i32, ptr %0, align 4
  %32 = load i32, ptr %0, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %0, align 4
  br label %do_pred

for_pred:                                         ; preds = %for_step, %do_end
  %34 = load i32, ptr %0, align 4
  %35 = icmp slt i32 %34, 10
  br i1 %35, label %for_body, label %for_end

for_body:                                         ; preds = %for_pred
  %36 = load i32, ptr %0, align 4
  %37 = icmp eq i32 %36, 7
  %38 = icmp ne i1 %37, false
  br i1 %38, label %if_then3, label %if_end4

for_step:                                         ; preds = %if_end4
  %39 = load i32, ptr %0, align 4
  %40 = load i32, ptr %0, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %0, align 4
  br label %for_pred

for_end:                                          ; preds = %if_then3, %for_pred
  %42 = load i32, ptr %1, align 4
  %43 = call i32 @printf(ptr @__builtin_print_format, i32 %42)
  %44 = load i32, ptr %0, align 4
  store i32 0, ptr %0, align 4
  %45 = load i32, ptr %1, align 4
  store i32 0, ptr %1, align 4
  br label %while_pred6

if_then3:                                         ; preds = %for_body
  br label %for_end

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
  %57 = icmp eq i32 %56, 3
  %58 = icmp ne i1 %57, false
  br i1 %58, label %if_then11, label %if_end12

while_pred9:                                      ; preds = %if_end12, %while_body5
  %59 = load i32, ptr %49, align 4
  %60 = icmp slt i32 %59, 10
  br i1 %60, label %while_body8, label %while_end10

while_end10:                                      ; preds = %if_then11, %while_pred9
  %61 = load i32, ptr %0, align 4
  %62 = load i32, ptr %0, align 4
  %63 = add i32 %62, 1
  store i32 %63, ptr %0, align 4
  br label %while_pred6

if_then11:                                        ; preds = %while_body8
  br label %while_end10

if_end12:                                         ; preds = %while_body8
  %64 = load i32, ptr %1, align 4
  %65 = load i32, ptr %1, align 4
  %66 = add i32 %65, 1
  store i32 %66, ptr %1, align 4
  %67 = load i32, ptr %49, align 4
  %68 = load i32, ptr %49, align 4
  %69 = add i32 %68, 1
  store i32 %69, ptr %49, align 4
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
  %78 = icmp eq i32 %77, 5
  %79 = icmp ne i1 %78, false
  br i1 %79, label %if_then19, label %if_end20

do_pred17:                                        ; preds = %if_end20
  %80 = load i32, ptr %70, align 4
  %81 = icmp slt i32 %80, 10
  br i1 %81, label %do_body16, label %do_end18

do_end18:                                         ; preds = %do_pred17, %if_then19
  %82 = load i32, ptr %0, align 4
  %83 = load i32, ptr %0, align 4
  %84 = add i32 %83, 1
  store i32 %84, ptr %0, align 4
  br label %do_pred14

if_then19:                                        ; preds = %do_body16
  br label %do_end18

if_end20:                                         ; preds = %do_body16
  %85 = load i32, ptr %1, align 4
  %86 = load i32, ptr %1, align 4
  %87 = add i32 %86, 1
  store i32 %87, ptr %1, align 4
  %88 = load i32, ptr %70, align 4
  %89 = load i32, ptr %70, align 4
  %90 = add i32 %89, 1
  store i32 %90, ptr %70, align 4
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
  %102 = icmp eq i32 %101, 7
  %103 = icmp ne i1 %102, false
  br i1 %103, label %if_then29, label %if_end30

for_step27:                                       ; preds = %if_end30
  %104 = load i32, ptr %93, align 4
  %105 = load i32, ptr %93, align 4
  %106 = add i32 %105, 1
  store i32 %106, ptr %93, align 4
  br label %for_pred25

for_end28:                                        ; preds = %if_then29, %for_pred25
  br label %for_step23

if_then29:                                        ; preds = %for_body26
  br label %for_end28

if_end30:                                         ; preds = %for_body26
  %107 = load i32, ptr %1, align 4
  %108 = load i32, ptr %1, align 4
  %109 = add i32 %108, 1
  store i32 %109, ptr %1, align 4
  br label %for_step27
}
