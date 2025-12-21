# Makefile for Java project

# Default target
all: compile

# Compile all Java files
compile:
	@echo "Compiling Java files..."
	@find . -name "*.java" -type f -exec javac {} \;
	@echo "Compilation complete!"

# Clean compiled class files
clean:
	@echo "Cleaning compiled files..."
	@find . -name "*.class" -type f -delete
	@echo "Clean complete!"

# Run a specific class
# Usage: make run CLASS=help
run:
	@if [ -z "$(CLASS)" ]; then \
		echo "Usage: make run CLASS=<ClassName>"; \
		echo "Example: make run CLASS=help"; \
		exit 1; \
	fi
	@CLASS_DIR=$$(find . -name "$(CLASS).class" -type f | head -1 | xargs dirname); \
	if [ -z "$$CLASS_DIR" ]; then \
		echo "Error: Class file $(CLASS).class not found."; \
		echo "Run 'make compile' first."; \
		exit 1; \
	fi; \
	java -cp "$$CLASS_DIR" $(CLASS)

.PHONY: all compile clean run
