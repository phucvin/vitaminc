; ModuleID = 'array'
source_filename = "array"

@__builtin_print_format = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @__builtin_print(i32)

declare i32 @printf(ptr, i32)

define i32 @main() {
body:
  %0 = alloca [4 x i32], align 4
  %1 = load [4 x i32], ptr %0, align 4
  %2 = getelementptr inbounds [4 x i32], ptr %0, i32 0, i32 0
  %3 = load i32, ptr %2, align 4
  store i32 1, ptr %2, align 4
  %4 = load [4 x i32], ptr %0, align 4
  %5 = getelementptr inbounds [4 x i32], ptr %0, i32 0, i32 0
  %6 = load i32, ptr %5, align 4
  %7 = call i32 @printf(ptr @__builtin_print_format, i32 %6)
  %8 = load [4 x i32], ptr %0, align 4
  %9 = getelementptr inbounds [4 x i32], ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  store i32 2, ptr %9, align 4
  %11 = load [4 x i32], ptr %0, align 4
  %12 = getelementptr inbounds [4 x i32], ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = load [4 x i32], ptr %0, align 4
  %15 = getelementptr inbounds [4 x i32], ptr %0, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %12, align 4
  %17 = load [4 x i32], ptr %0, align 4
  %18 = getelementptr inbounds [4 x i32], ptr %0, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = call i32 @printf(ptr @__builtin_print_format, i32 %19)
  %21 = load [4 x i32], ptr %0, align 4
  %22 = getelementptr inbounds [4 x i32], ptr %0, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = load [4 x i32], ptr %0, align 4
  %25 = getelementptr inbounds [4 x i32], ptr %0, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = add i32 2, %26
  store i32 %27, ptr %22, align 4
  %28 = load [4 x i32], ptr %0, align 4
  %29 = getelementptr inbounds [4 x i32], ptr %0, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = call i32 @printf(ptr @__builtin_print_format, i32 %30)
  %32 = alloca i32, align 4
  store i32 2, ptr %32, align 4
  %33 = alloca i32, align 4
  store i32 0, ptr %33, align 4
  %34 = alloca [4 x i32], align 4
  %35 = getelementptr inbounds [4 x i32], ptr %34, i32 0, i32 0
  store i32 1, ptr %35, align 4
  %36 = load i32, ptr %32, align 4
  %37 = getelementptr inbounds [4 x i32], ptr %34, i32 0, i32 1
  store i32 %36, ptr %37, align 4
  %38 = load i32, ptr %33, align 4
  store i32 3, ptr %33, align 4
  %39 = getelementptr inbounds [4 x i32], ptr %34, i32 0, i32 2
  store i32 3, ptr %39, align 4
  %40 = getelementptr inbounds [4 x i32], ptr %34, i32 0, i32 3
  store i32 4, ptr %40, align 4
  %41 = load [4 x i32], ptr %34, align 4
  %42 = getelementptr inbounds [4 x i32], ptr %34, i32 0, i32 0
  %43 = load i32, ptr %42, align 4
  %44 = call i32 @printf(ptr @__builtin_print_format, i32 %43)
  %45 = load [4 x i32], ptr %34, align 4
  %46 = getelementptr inbounds [4 x i32], ptr %34, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = call i32 @printf(ptr @__builtin_print_format, i32 %47)
  %49 = load [4 x i32], ptr %34, align 4
  %50 = getelementptr inbounds [4 x i32], ptr %34, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = call i32 @printf(ptr @__builtin_print_format, i32 %51)
  %53 = load [4 x i32], ptr %34, align 4
  %54 = getelementptr inbounds [4 x i32], ptr %34, i32 0, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = call i32 @printf(ptr @__builtin_print_format, i32 %55)
  %57 = alloca [3 x i32], align 4
  %58 = getelementptr inbounds [3 x i32], ptr %57, i32 0, i32 0
  store i32 1, ptr %58, align 4
  %59 = getelementptr inbounds [3 x i32], ptr %57, i32 0, i32 1
  store i32 0, ptr %59, align 4
  %60 = getelementptr inbounds [3 x i32], ptr %57, i32 0, i32 2
  store i32 0, ptr %60, align 4
  %61 = load [3 x i32], ptr %57, align 4
  %62 = getelementptr inbounds [3 x i32], ptr %57, i32 0, i32 0
  %63 = load i32, ptr %62, align 4
  %64 = call i32 @printf(ptr @__builtin_print_format, i32 %63)
  %65 = load [3 x i32], ptr %57, align 4
  %66 = getelementptr inbounds [3 x i32], ptr %57, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = call i32 @printf(ptr @__builtin_print_format, i32 %67)
  %69 = load [3 x i32], ptr %57, align 4
  %70 = getelementptr inbounds [3 x i32], ptr %57, i32 0, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = call i32 @printf(ptr @__builtin_print_format, i32 %71)
  %73 = alloca [2 x i32], align 4
  ret i32 0
}
