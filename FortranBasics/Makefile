# Compiler and flags
FC = gfortran
FFLAGS = -O3 -Wall -Wextra -std=f2008
SRC_DIR=src
# Source files
SRC = basic_types.f95 			\
    string_operations.f95 		\
	iteration_and_control.f95 	\
	main.f95					\
# Build directories
BUILD_DIR = build
OBJ_DIR = $(BUILD_DIR)/obj
LIB_DIR = $(BUILD_DIR)/libs
BIN_DIR = $(BUILD_DIR)/bin
MOD_DIR = $(BUILD_DIR)/modules
# Update FFLAGS to include MOD_DIR
FFLAGS += -J$(MOD_DIR)
# Object files
OBJ = $(patsubst %.f95,$(OBJ_DIR)/%.o,$(SRC))
# Targets
all: $(BIN_DIR)/main.exe
# Rule to build object files
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.f95 | $(OBJ_DIR) $(MOD_DIR)
	$(FC) $(FFLAGS) -o $@ -c $<
# Rule to build the executable
$(BIN_DIR)/main.exe: $(OBJ) | $(BIN_DIR)
	$(FC) $(FFLAGS) -o $@ $(OBJ)
# Create necessary directories
$(OBJ_DIR):
	@if not exist "$(OBJ_DIR)" mkdir  "$(OBJ_DIR)"
$(MOD_DIR):
	@if not exist "$(MOD_DIR)" mkdir "$(MOD_DIR)"
$(BIN_DIR):
	@if not exist "$(BIN_DIR)" mkdir "$(BIN_DIR)"
# Rule to clean the build directories
clean:
	@if exist "$(BUILD_DIR)" rmdir /S /Q "$(BUILD_DIR)"
.PHONY: all clean
