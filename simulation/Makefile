# Check if we have environment variable
ifeq ($(wildcard $(BSG_MANYCORE_TOOLCHAIN)/simulation/simulation-main.cpp),)
  $(error BSG_MANYCORE_TOOLCHAIN=$(BSG_MANYCORE_TOOLCHAIN) is not a BSG_MANYCORE_TOOLCHAIN repo)
endif

# Check if we have configurations
ifeq ($(wildcard $(BSG_MANYCORE_TOOLCHAIN)/simulation/.config),)
  $(error no configuration file, execute "make menuconfig" first)
endif

# Check if we have ISA emulator
ifeq ($(wildcard $(BSG_MANYCORE_TOOLCHAIN)/simulation/riscv-isa-sim/README.md),)
  $(warning ISA emulator not found, downloading from GitHub)
  $(shell git clone https://github.com/riscv-software-src/riscv-isa-sim.git $(BSG_MANYCORE_TOOLCHAIN)/simulation/riscv-isa-sim)
endif