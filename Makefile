OUT_DIR ?= _output
BIN_DIR := $(OUT_DIR)/bin

export OUT_DIR
export BIN_DIR

# Build code.
#
# Args:
#   WHAT: Directory names to build.  If any of these directories has a 'main'
#     package, the build will produce executable files under $(OUT_DIR)/go/bin.
#     If not specified, "everything" will be built.
#   GOFLAGS: Extra flags to pass to 'go' when building.
#
# Example:
#   make
#   make all
#   make all WHAT=cmd/kubelet GOFLAGS=-v
all:
	hack/build.sh $(WHAT)
.PHONY: all

# Remove all build artifacts.
#
# Example:
#   make clean
clean:
	# build/make-clean.sh
	rm -rf $(OUT_DIR)
.PHONY: clean