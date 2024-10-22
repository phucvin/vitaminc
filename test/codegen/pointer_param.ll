; ModuleID = 'pointer_param'
source_filename = "pointer_param"

@__builtin_print_format = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @__builtin_print(i32)

declare i32 @printf(ptr, i32)

define i32 @add(ptr %x, ptr %y) {
body:
  %0 = alloca ptr, align 8
  store ptr %x, ptr %0, align 8
  %1 = alloca ptr, align 8
  store ptr %y, ptr %1, align 8
  %2 = load ptr, ptr %0, align 8
  %3 = load i32, ptr %2, align 4
  %4 = load ptr, ptr %1, align 8
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %3, %5
  ret i32 %6
}

define i32 @main() {
body:
  %0 = alloca i32, align 4
  store i32 3, ptr %0, align 4
  %1 = alloca i32, align 4
  store i32 5, ptr %1, align 4
  %2 = load i32, ptr %0, align 4
  %3 = load i32, ptr %1, align 4
  %4 = call i32 @add(ptr %0, ptr %1)
  %5 = call i32 @printf(ptr @__builtin_print_format, i32 %4)
  ret i32 0
}
