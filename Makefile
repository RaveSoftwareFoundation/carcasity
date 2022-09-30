# rave compiler path
CC = rave

# compiler flags:
# none for now
CFLAGS = -emit-llvm
# libs
CLIBS =
#libsfml/graphics.so libsfml/system.so libsfml/window.so

# the build target executable:
TARGET = rgstest

all: clean build run clean

build: $(TARGET).rave
	$(CC) $(TARGET).rave -o $(TARGET) $(CFLAGS) $(CLIBS) || (echo "Compilation failed."; exit 1)

run:
	./$(TARGET)

clean:
	$(RM) $(TARGET)
