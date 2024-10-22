; ModuleID = 'union_designator_init'
source_filename = "union_designator_init"

%union_shape = type { i32, i32, i32 }
%union_shape.0 = type { i32, i32, i32 }
%union_shape.1 = type { i32, i32, i32 }
%union_shape.2 = type { i32, i32, i32 }
%union_shape.3 = type { i32, i32, i32 }
%union_shape.4 = type { i32, i32, i32 }
%union_shape.5 = type { i32, i32, i32 }

@__builtin_print_format = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @__builtin_print(i32)

declare i32 @printf(ptr, i32)

define i32 @main() {
body:
  %0 = alloca %union_shape, align 8
  %1 = getelementptr inbounds %union_shape, ptr %0, i32 0, i32 0
  store i32 5, ptr %1, align 4
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
  ret i32 0
}
