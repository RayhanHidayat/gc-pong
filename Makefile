CC = gcc
CFLAGS = -std=c99 -Wall -Wextra -isystem vendor/raylib/include
LDFLAGS = -L vendor/raylib/lib -lraylib -lopengl32 -lgdi32 -lwinmm -mwindows
BUILD_DIR = build
TARGET = $(BUILD_DIR)/gc-pong.exe
SRCS = src/platform/raylib/main_raylib.c

all: $(TARGET)

$(TARGET): $(SRCS) | $(BUILD_DIR)
	$(CC) $(CFLAGS) $(SRCS) -o $(TARGET) $(LDFLAGS)

$(BUILD_DIR):
	mkdir $(BUILD_DIR)