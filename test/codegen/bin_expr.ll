; ModuleID = 'bin_expr'
source_filename = "bin_expr"

@__builtin_print_format = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @__builtin_print(i32)

declare i32 @printf(ptr, i32)

define i32 @main() {
body:
  %0 = call i32 @printf(ptr @__builtin_print_format, i32 21)
  %1 = call i32 @printf(ptr @__builtin_print_format, i32 5)
  %2 = call i32 @printf(ptr @__builtin_print_format, i32 1)
  %3 = call i32 @printf(ptr @__builtin_print_format, i32 4)
  %4 = call i32 @printf(ptr @__builtin_print_format, i32 65536)
  %5 = call i32 @printf(ptr @__builtin_print_format, i32 -2147483648)
  %6 = call i32 @printf(ptr @__builtin_print_format, i32 1)
  %7 = call i32 @printf(ptr @__builtin_print_format, i32 -1)
  br i1 true, label %logic_rhs, label %short_circuit

logic_rhs:                                        ; preds = %body
  br label %logic_end

short_circuit:                                    ; preds = %body
  br label %logic_end

logic_end:                                        ; preds = %short_circuit, %logic_rhs
  %8 = phi i1 [ true, %logic_rhs ], [ false, %short_circuit ]
  %9 = call i32 @printf(ptr @__builtin_print_format, i1 %8)
  br i1 false, label %logic_rhs1, label %short_circuit2

logic_rhs1:                                       ; preds = %logic_end
  br label %logic_end3

short_circuit2:                                   ; preds = %logic_end
  br label %logic_end3

logic_end3:                                       ; preds = %short_circuit2, %logic_rhs1
  %10 = phi i1 [ true, %logic_rhs1 ], [ false, %short_circuit2 ]
  %11 = call i32 @printf(ptr @__builtin_print_format, i1 %10)
  br i1 false, label %logic_rhs4, label %short_circuit5

logic_rhs4:                                       ; preds = %logic_end3
  br label %logic_end6

short_circuit5:                                   ; preds = %logic_end3
  br label %logic_end6

logic_end6:                                       ; preds = %short_circuit5, %logic_rhs4
  %12 = phi i1 [ false, %logic_rhs4 ], [ true, %short_circuit5 ]
  %13 = call i32 @printf(ptr @__builtin_print_format, i1 %12)
  br i1 true, label %logic_rhs7, label %short_circuit8

logic_rhs7:                                       ; preds = %logic_end6
  br label %logic_end9

short_circuit8:                                   ; preds = %logic_end6
  br label %logic_end9

logic_end9:                                       ; preds = %short_circuit8, %logic_rhs7
  %14 = phi i1 [ false, %logic_rhs7 ], [ true, %short_circuit8 ]
  %15 = call i32 @printf(ptr @__builtin_print_format, i1 %14)
  %16 = call i32 @printf(ptr @__builtin_print_format, i32 2)
  ret i32 0
}
