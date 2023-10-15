# ISA related makefile, for RISC-V user can change the desired ISA and ABI
# If the deisgn has no FPR regfile, you can remove f or d in the mabi

ISA_COMPILER			= riscv64-linux-gnu-
ISA_COMPILER_FLAGS		:= -fno-pic -march=rv64g -mabi=ilp64d
ISA_COMPILER_CFLAGS		+= $(ISA_COMPILER_FLAGS) -static
ISA_COMPILER_ASFLAGS	+= $(ISA_COMPILER_FLAGS) -O0
ISA_COMPILER_LDFLAGS	+= -melf32lriscv