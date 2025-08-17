# Compiler settings
CXX := g++
CXXFLAGS := -std=c++17 -Wall -Wextra -I./src/headers

SRC_DIR := src
BUILD_DIR := build
BIN := app

SRCS := $(shell find $(SRC_DIR) -name '*.cpp')
OBJS := $(SRCS:$(SRC_DIR)/%.cpp=$(BUILD_DIR)/%.o)

# Default Target
all: $(BIN)

# Linker
$(BIN): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $^

# Compile
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.cpp
	@mkdir -p $(dir $@)
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Cleanup
clean:
	rm -rf $(BUILD_DIR) $(BIN)

.PHONY: all clean

