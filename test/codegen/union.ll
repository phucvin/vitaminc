; ModuleID = 'union'
source_filename = "union"

%union_shape = type { i32, i32, i32 }
%union_shape.0 = type { i32, i32, i32 }
%union_shape.1 = type { i32, i32, i32 }
%union_shape.2 = type { i32, i32, i32 }
%union_shape.3 = type { i32, i32, i32 }
%union_shape.4 = type { i32, i32, i32 }
%union_shape.5 = type { i32, i32, i32 }
%union_shape.6 = type { i32, i32, i32 }
%union_shape.7 = type { i32, i32, i32 }
%union_shape.8 = type { i32, i32, i32 }
%union_shape.9 = type { i32, i32, i32 }
%union_shape.10 = type { i32, i32, i32 }
%union_shape.11 = type { i32, i32, i32 }
%union_shape.12 = type { i32, i32, i32 }
%union_shape.13 = type { i32, i32, i32 }
%union_gender = type { i32, i32 }
%union_gender.14 = type { i32, i32 }
%union_gender.15 = type { i32, i32 }

@__builtin_print_format = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @__builtin_print(i32)

declare i32 @printf(ptr, i32)

define i32 @main() {
body:
  %0 = alloca %union_shape, align 8
  %1 = getelementptr inbounds %union_shape, ptr %0, i32 0, i32 0
  store i32 3, ptr %1, align 4
  %2 = load %union_shape.0, ptr %0, align 4
  %3 = getelementptr inbounds %union_shape.1, ptr %0, i32 0, i32 0
  %4 = load i32, ptr %3, align 4
  %5 = call i32 @printf(ptr @__builtin_print_format, i32 %4)
  %6 = load %union_shape.2, ptr %0, align 4
  %7 = getelementptr inbounds %union_shape.3, ptr %0, i32 0, i32 0
  %8 = load i32, ptr %7, align 4
  %9 = call i32 @printf(ptr @__builtin_print_format, i32 %8)
  %10 = load %union_shape.4, ptr %0, align 4
  %11 = getelementptr inbounds %union_shape.5, ptr %0, i32 0, i32 0
  %12 = load i32, ptr %11, align 4
  %13 = call i32 @printf(ptr @__builtin_print_format, i32 %12)
  %14 = load %union_shape.6, ptr %0, align 4
  %15 = getelementptr inbounds %union_shape.7, ptr %0, i32 0, i32 0
  %16 = load i32, ptr %15, align 4
  store i32 4, ptr %15, align 4
  %17 = load %union_shape.8, ptr %0, align 4
  %18 = getelementptr inbounds %union_shape.9, ptr %0, i32 0, i32 0
  %19 = load i32, ptr %18, align 4
  %20 = call i32 @printf(ptr @__builtin_print_format, i32 %19)
  %21 = load %union_shape.10, ptr %0, align 4
  %22 = getelementptr inbounds %union_shape.11, ptr %0, i32 0, i32 0
  %23 = load i32, ptr %22, align 4
  %24 = call i32 @printf(ptr @__builtin_print_format, i32 %23)
  %25 = load %union_shape.12, ptr %0, align 4
  %26 = getelementptr inbounds %union_shape.13, ptr %0, i32 0, i32 0
  %27 = load i32, ptr %26, align 4
  %28 = call i32 @printf(ptr @__builtin_print_format, i32 %27)
  %29 = alloca %union_gender, align 8
  %30 = getelementptr inbounds %union_gender, ptr %29, i32 0, i32 0
  store i32 1, ptr %30, align 4
  %31 = load %union_gender.14, ptr %29, align 4
  %32 = getelementptr inbounds %union_gender.15, ptr %29, i32 0, i32 0
  %33 = load i32, ptr %32, align 4
  %34 = call i32 @printf(ptr @__builtin_print_format, i32 %33)
  ret i32 0
}
