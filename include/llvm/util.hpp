#ifndef LLVM_UTIL_HPP_
#define LLVM_UTIL_HPP_

#include <llvm/IR/IRBuilder.h>
#include <llvm/IR/Type.h>

#include "type.hpp"

namespace util {

/// @brief A collection of wrappers of LLVM types and functions.
class LLVMIRUtil {
 public:
  /// @brief LLVM Integer type
  llvm::IntegerType* IntType;
  /// @brief LLVM Pointer type
  llvm::PointerType* IntPtrType;

  /// @brief Every LLVM basic block can only have one terminator instruction.
  /// This function can check if there are terminator instructions before the
  /// current insert point. If no, then it will create an unconditional branch
  /// to the next basic block. If yes, then it will not create branch
  /// instruction.
  void CreateBrIfNoBrBefore(llvm::BasicBlock* next_BB);

  /// @brief Create a branch instruction to the next basic block.
  void CurrBBFallThroughNextBB(llvm::BasicBlock* curr_BB,
                               llvm::BasicBlock* next_BB);

  /// @brief Find the basic block with the same name as `id` within the current
  /// function.
  /// @param id The name of the target basic block.
  /// @return A pointer to basic block if found. `nullptr` if not found.
  llvm::BasicBlock* FindBBWithNameOf(const std::string& id);

  /// @brief Get the current function.
  /// @return A pointer to the current function.
  llvm::Function* CurrFunc();

  /// @brief Get the corresponding LLVM type from our type.
  llvm::Type* GetLLVMType(const std::unique_ptr<Type>& type);

  LLVMIRUtil(std::unique_ptr<llvm::IRBuilder<>>& builder) : builder_{builder} {
    IntType = builder_->getInt32Ty();
    IntPtrType = builder_->getPtrTy();
  }

 private:
  /// @brief Stores a reference from the original builder.
  std::unique_ptr<llvm::IRBuilder<>>& builder_;
};

}  // namespace util

#endif  // LLVM_UTIL_HPP_
