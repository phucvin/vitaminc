; ModuleID = 'pointer'
source_filename = "pointer"

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
  %4 = load i32, ptr %0, align 4
  %5 = call i32 @printf(ptr @__builtin_print_format, i32 %4)
  %6 = load ptr, ptr %1, align 8
  %7 = load i32, ptr %6, align 4
  store i32 5, ptr %6, align 4
  %8 = load i32, ptr %0, align 4
  %9 = call i32 @printf(ptr @__builtin_print_format, i32 %8)
  %10 = load ptr, ptr %1, align 8
  %11 = load i32, ptr %10, align 4
  %12 = call i32 @printf(ptr @__builtin_print_format, i32 %11)
  %13 = load ptr, ptr %3, align 8
  %14 = load ptr, ptr %1, align 8
  store ptr %14, ptr %3, align 8
  %15 = load ptr, ptr %3, align 8
  %16 = load i32, ptr %15, align 4
  store i32 4, ptr %15, align 4
  %17 = load i32, ptr %0, align 4
  %18 = call i32 @printf(ptr @__builtin_print_format, i32 %17)
  %19 = load ptr, ptr %3, align 8
  %20 = load i32, ptr %19, align 4
  %21 = call i32 @printf(ptr @__builtin_print_format, i32 %20)
  %22 = alloca ptr, align 8
  %23 = load ptr, ptr %3, align 8
  store ptr %23, ptr %22, align 8
  %24 = load ptr, ptr %22, align 8
  %25 = load i32, ptr %24, align 4
  store i32 3, ptr %24, align 4
  %26 = load i32, ptr %0, align 4
  %27 = call i32 @printf(ptr @__builtin_print_format, i32 %26)
  %28 = load ptr, ptr %22, align 8
  %29 = load i32, ptr %28, align 4
  %30 = call i32 @printf(ptr @__builtin_print_format, i32 %29)
  %31 = alloca i32, align 4
  store i32 1, ptr %31, align 4
  %32 = alloca i32, align 4
  store i32 2, ptr %32, align 4
  %33 = alloca i32, align 4
  %34 = load i32, ptr %31, align 4
  %35 = load i32, ptr %31, align 4
  %36 = load i32, ptr %32, align 4
  %37 = load i32, ptr %32, align 4
  %38 = add i32 %35, %37
  store i32 %38, ptr %33, align 4
  %39 = load i32, ptr %33, align 4
  %40 = call i32 @printf(ptr @__builtin_print_format, i32 %39)
  ret i32 0
}
