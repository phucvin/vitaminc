; ModuleID = 'func_call_stmt'
source_filename = "func_call_stmt"

@__builtin_print_format = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @__builtin_print(i32)

declare i32 @printf(ptr, i32)

define i32 @five() {
body:
  ret i32 5
}

define i32 @sum(i32 %a, i32 %b, i32 %c) {
body:
  %0 = alloca i32, align 4
  store i32 %a, ptr %0, align 4
  %1 = alloca i32, align 4
  store i32 %b, ptr %1, align 4
  %2 = alloca i32, align 4
  store i32 %c, ptr %2, align 4
  %3 = load i32, ptr %0, align 4
  %4 = load i32, ptr %1, align 4
  %5 = add i32 %3, %4
  %6 = load i32, ptr %2, align 4
  %7 = add i32 %5, %6
  ret i32 %7
}

define i32 @add_five(i32 %d) {
body:
  %0 = alloca i32, align 4
  store i32 %d, ptr %0, align 4
  %1 = load i32, ptr %0, align 4
  %2 = call i32 @five()
  %3 = add i32 %1, %2
  ret i32 %3
}

define i32 @main() {
body:
  %0 = call i32 @sum(i32 1, i32 2, i32 3)
  %1 = add i32 %0, 4
  %2 = call i32 @add_five(i32 %1)
  %3 = call i32 @printf(ptr @__builtin_print_format, i32 %2)
  ret i32 0
}
