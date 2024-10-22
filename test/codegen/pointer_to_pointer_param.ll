; ModuleID = 'pointer_to_pointer_param'
source_filename = "pointer_to_pointer_param"

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
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr %3, align 4
  %5 = load ptr, ptr %1, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %4, %7
  ret i32 %8
}

define i32 @main() {
body:
  %0 = alloca i32, align 4
  store i32 3, ptr %0, align 4
  %1 = alloca i32, align 4
  store i32 5, ptr %1, align 4
  %2 = alloca ptr, align 8
  %3 = load i32, ptr %0, align 4
  store ptr %0, ptr %2, align 8
  %4 = alloca ptr, align 8
  %5 = load i32, ptr %1, align 4
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = call i32 @add(ptr %2, ptr %4)
  %9 = call i32 @printf(ptr @__builtin_print_format, i32 %8)
  ret i32 0
}
