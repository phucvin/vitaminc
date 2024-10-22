; ModuleID = 'struct'
source_filename = "struct"

%struct_birth = type { i32, i32, i32 }
%struct_birth.0 = type { i32, i32, i32 }
%struct_birth.1 = type { i32, i32, i32 }
%struct_birth.2 = type { i32, i32, i32 }
%struct_birth.3 = type { i32, i32, i32 }
%struct_birth.4 = type { i32, i32, i32 }
%struct_birth.5 = type { i32, i32, i32 }
%struct_birth.6 = type { i32, i32, i32 }
%struct_birth.7 = type { i32, i32, i32 }
%struct_birth.8 = type { i32, i32, i32 }
%struct_birth.9 = type { i32, i32, i32 }
%struct_birth.10 = type { i32, i32, i32 }
%struct_birth.11 = type { i32, i32, i32 }
%struct_book = type { i32, i32, i32 }
%struct_book.12 = type { i32, i32, i32 }
%struct_book.13 = type { i32, i32, i32 }
%struct_book.14 = type { i32, i32, i32 }
%struct_book.15 = type { i32, i32, i32 }
%struct_book.16 = type { i32, i32, i32 }
%struct_book.17 = type { i32, i32, i32 }

@__builtin_print_format = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @__builtin_print(i32)

declare i32 @printf(ptr, i32)

define i32 @main() {
body:
  %0 = alloca %struct_birth, align 8
  %1 = getelementptr inbounds %struct_birth, ptr %0, i32 0, i32 0
  store i32 3, ptr %1, align 4
  %2 = getelementptr inbounds %struct_birth, ptr %0, i32 0, i32 1
  store i32 5, ptr %2, align 4
  %3 = getelementptr inbounds %struct_birth, ptr %0, i32 0, i32 2
  store i32 1998, ptr %3, align 4
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
  %16 = load %struct_birth.6, ptr %0, align 4
  %17 = getelementptr inbounds %struct_birth.7, ptr %0, i32 0, i32 0
  %18 = load i32, ptr %17, align 4
  %19 = load %struct_birth.8, ptr %0, align 4
  %20 = getelementptr inbounds %struct_birth.9, ptr %0, i32 0, i32 0
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 2
  store i32 %22, ptr %17, align 4
  %23 = load %struct_birth.10, ptr %0, align 4
  %24 = getelementptr inbounds %struct_birth.11, ptr %0, i32 0, i32 0
  %25 = load i32, ptr %24, align 4
  %26 = call i32 @printf(ptr @__builtin_print_format, i32 %25)
  %27 = alloca %struct_book, align 8
  %28 = getelementptr inbounds %struct_book, ptr %27, i32 0, i32 0
  store i32 100, ptr %28, align 4
  %29 = getelementptr inbounds %struct_book, ptr %27, i32 0, i32 1
  store i32 50, ptr %29, align 4
  %30 = getelementptr inbounds %struct_book, ptr %27, i32 0, i32 2
  store i32 500, ptr %30, align 4
  %31 = load %struct_book.12, ptr %27, align 4
  %32 = getelementptr inbounds %struct_book.13, ptr %27, i32 0, i32 0
  %33 = load i32, ptr %32, align 4
  %34 = call i32 @printf(ptr @__builtin_print_format, i32 %33)
  %35 = load %struct_book.14, ptr %27, align 4
  %36 = getelementptr inbounds %struct_book.15, ptr %27, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = call i32 @printf(ptr @__builtin_print_format, i32 %37)
  %39 = load %struct_book.16, ptr %27, align 4
  %40 = getelementptr inbounds %struct_book.17, ptr %27, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = call i32 @printf(ptr @__builtin_print_format, i32 %41)
  ret i32 0
}
