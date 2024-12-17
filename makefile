# Compiler and flags
CXX = g++
CXXFLAGS = -std=c++17 -Wall

# Output file and source file
TARGET = main
SRC = main.cpp

# Default rule to build the project
all: $(TARGET)

# Rule to compile the program
$(TARGET): $(SRC)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(SRC)

# Run the program and redirect output to image.ppm
run: $(TARGET)
	./$(TARGET) > image.ppm
	@echo "Image generated: image.ppm"

# Clean up the executable and PPM file
clean:
	rm -f $(TARGET) image.ppm
	@echo "Cleaned up."

# Phony targets
.PHONY: all run clean
