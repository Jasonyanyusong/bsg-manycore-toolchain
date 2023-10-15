# Set Spike repo path
SPIKE_REPO = $(BSG_MANYCORE_TOOLCHAIN)/simulation/riscv-isa-sim

# Set place of building Spike
SPIKE_BUILD_PATH = $(SPIKE_REPO)/build
$(shell echo building spike in $(SPIKE_BUILD_PATH))

# Set rules of generating Makefile for Spike
SPPIKE_MAKEFILE = $(BSG_MANYCORE_TOOLCHAIN)/simulation/riscv-isa-sim/Makefile
$(SPPIKE_MAKEFILE):
	@mkdir -p $(@D)
	cd $(@D) && $(abspath $(SPIKE_REPO))/configure
	sed -i -e 's/-g -O2/-O2/' $@