; ModuleID = 'struct_designator_init'
source_filename = "struct_designator_init"

%struct_birth = type { i32, i32, i32 }
%struct_birth.0 = type { i32, i32, i32 }
%struct_birth.1 = type { i32, i32, i32 }
%struct_birth.2 = type { i32, i32, i32 }
%struct_birth.3 = type { i32, i32, i32 }
%struct_birth.4 = type { i32, i32, i32 }
%struct_birth.5 = type { i32, i32, i32 }

@__builtin_print_format = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @__builtin_print(i32)

declare i32 @printf(ptr, i32)

define i32 @main() {
body:
  %0 = alloca %struct_birth, align 8
  %1 = getelementptr inbounds %struct_birth, ptr %0, i32 0, i32 2
  store i32 1995, ptr %1, align 4
  %2 = getelementptr inbounds %struct_birth, ptr %0, i32 0, i32 0
  store i32 3, ptr %2, align 4
  %3 = getelementptr inbounds %struct_birth, ptr %0, i32 0, i32 1
  store i32 4, ptr %3, align 4
  %4 = load %struct_birth.0, ptr %0, align 4
  %5 = getelementptr inbounds %struct_birth.1, ptr %0, i32 0, i32 0
  %6 = load i32, ptr %5, align 4
  %7 = call i32 @printf(ptr @__builtin_print_format, i32 %6)
  %8 = load %struct_birth.2, ptr %0, align 4
  %9 = getelementptr inbounds %struct_birth.3, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = call i32 @printf(ptr @__builtin_print_format, i32 %10)
  %12 = load %struct_birth.4, ptr %0, align 4
  %13 = getelementptr inbounds %struct_birth.5, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = call i32 @printf(ptr @__builtin_print_format, i32 %14)
  ret i32 0
}
