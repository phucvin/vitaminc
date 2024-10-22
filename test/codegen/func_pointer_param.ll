; ModuleID = 'func_pointer_param'
source_filename = "func_pointer_param"

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

define i32 @call(ptr %p, i32 %a, i32 %b) {
body:
  %0 = alloca ptr, align 8
  store ptr %p, ptr %0, align 8
  %1 = alloca i32, align 4
  store i32 %a, ptr %1, align 4
  %2 = alloca i32, align 4
  store i32 %b, ptr %2, align 4
  %3 = load i32, ptr %1, align 4
  %4 = load i32, ptr %2, align 4
  %5 = load ptr, ptr %0, align 8
  %6 = call i32 %5(i32 %3, i32 %4)
  ret i32 %6
}

define i32 @main() {
body:
  %0 = alloca ptr, align 8
  store ptr @call, ptr %0, align 8
  %1 = load ptr, ptr %0, align 8
  %2 = call i32 %1(ptr @add, i32 1, i32 2)
  %3 = call i32 @printf(ptr @__builtin_print_format, i32 %2)
  ret i32 0
}
