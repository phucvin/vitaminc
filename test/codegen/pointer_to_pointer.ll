; ModuleID = 'pointer_to_pointer'
source_filename = "pointer_to_pointer"

@__builtin_print_format = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @__builtin_print(i32)

declare i32 @printf(ptr, i32)

define i32 @main() {
body:
  %0 = alloca i32, align 4
  store i32 10, ptr %0, align 4
  %1 = alloca ptr, align 8
  %2 = load i32, ptr %0, align 4
  store ptr %0, ptr %1, align 8
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %1, align 8
  store ptr %1, ptr %3, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %6, align 4
  %8 = call i32 @printf(ptr @__builtin_print_format, i32 %7)
  %9 = alloca i32, align 4
  store i32 20, ptr %9, align 4
  %10 = alloca ptr, align 8
  %11 = load i32, ptr %9, align 4
  store ptr %9, ptr %10, align 8
  %12 = load ptr, ptr %3, align 8
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %10, align 8
  store ptr %14, ptr %12, align 8
  %15 = load ptr, ptr %3, align 8
  %16 = load ptr, ptr %15, align 8
  %17 = load i32, ptr %16, align 4
  %18 = call i32 @printf(ptr @__builtin_print_format, i32 %17)
  %19 = load ptr, ptr %3, align 8
  %20 = load ptr, ptr %19, align 8
  %21 = load i32, ptr %20, align 4
  store i32 30, ptr %20, align 4
  %22 = load i32, ptr %9, align 4
  %23 = call i32 @printf(ptr @__builtin_print_format, i32 %22)
  ret i32 0
}
