; ModuleID = 'global_decl'
source_filename = "global_decl"

@__builtin_print_format = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@c = global i32 0
@d = global i32 6
@b = global [2 x i32] zeroinitializer
@a = global [3 x i32] [i32 6, i32 5, i32 3]
@e = global [4 x i32] [i32 8, i32 9, i32 0, i32 0]

declare i32 @__builtin_print(i32)

declare i32 @printf(ptr, i32)

define i32 @main() {
body:
  %0 = load i32, ptr @c, align 4
  %1 = call i32 @printf(ptr @__builtin_print_format, i32 %0)
  %2 = load i32, ptr @d, align 4
  store i32 4, ptr @d, align 4
  %3 = load i32, ptr @d, align 4
  %4 = call i32 @printf(ptr @__builtin_print_format, i32 %3)
  %5 = load [2 x i32], ptr @b, align 4
  %6 = load i32, ptr @b, align 4
  %7 = call i32 @printf(ptr @__builtin_print_format, i32 %6)
  %8 = load [3 x i32], ptr @a, align 4
  %9 = load i32, ptr @a, align 4
  store i32 7, ptr @a, align 4
  %10 = load [3 x i32], ptr @a, align 4
  %11 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @a, i32 0, i32 2), align 4
  store i32 4, ptr getelementptr inbounds ([3 x i32], ptr @a, i32 0, i32 2), align 4
  %12 = load [3 x i32], ptr @a, align 4
  %13 = load i32, ptr @a, align 4
  %14 = call i32 @printf(ptr @__builtin_print_format, i32 %13)
  %15 = load [3 x i32], ptr @a, align 4
  %16 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @a, i32 0, i32 1), align 4
  %17 = call i32 @printf(ptr @__builtin_print_format, i32 %16)
  %18 = load [3 x i32], ptr @a, align 4
  %19 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @a, i32 0, i32 2), align 4
  %20 = call i32 @printf(ptr @__builtin_print_format, i32 %19)
  %21 = load [4 x i32], ptr @e, align 4
  %22 = load i32, ptr @e, align 4
  %23 = call i32 @printf(ptr @__builtin_print_format, i32 %22)
  %24 = load [4 x i32], ptr @e, align 4
  %25 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @e, i32 0, i32 1), align 4
  %26 = call i32 @printf(ptr @__builtin_print_format, i32 %25)
  %27 = load [4 x i32], ptr @e, align 4
  %28 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @e, i32 0, i32 2), align 4
  %29 = call i32 @printf(ptr @__builtin_print_format, i32 %28)
  %30 = load [4 x i32], ptr @e, align 4
  %31 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @e, i32 0, i32 3), align 4
  %32 = call i32 @printf(ptr @__builtin_print_format, i32 %31)
  ret i32 0
}
