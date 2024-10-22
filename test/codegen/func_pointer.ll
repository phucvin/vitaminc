; ModuleID = 'func_pointer'
source_filename = "func_pointer"

@__builtin_print_format = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @__builtin_print(i32)

declare i32 @printf(ptr, i32)

define i32 @add(i32 %a, i32 %b) {
body:
  %0 = alloca i32, align 4
  store i32 %a, ptr %0, align 4
  %1 = alloca i32, align 4
  store i32 %b, ptr %1, align 4
  %2 = load i32, ptr %0, align 4
  %3 = load i32, ptr %1, align 4
  %4 = add i32 %2, %3
  ret i32 %4
}

define i32 @main() {
body:
  %0 = alloca ptr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr @add, ptr %0, align 8
  %2 = alloca i32, align 4
  %3 = load ptr, ptr %0, align 8
  %4 = call i32 %3(i32 2, i32 3)
  store i32 %4, ptr %2, align 4
  %5 = load i32, ptr %2, align 4
  %6 = call i32 @printf(ptr @__builtin_print_format, i32 %5)
  %7 = load ptr, ptr %0, align 8
  store ptr @add, ptr %0, align 8
  %8 = alloca i32, align 4
  %9 = load ptr, ptr %0, align 8
  %10 = call i32 %9(i32 1, i32 2)
  store i32 %10, ptr %8, align 4
  %11 = load i32, ptr %8, align 4
  %12 = call i32 @printf(ptr @__builtin_print_format, i32 %11)
  ret i32 0
}
