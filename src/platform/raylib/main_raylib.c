#include <raylib.h>

int main(void) {
  const int screenWidth = 640;
  const int screenHeight = 480;

  InitWindow(screenWidth, screenHeight, "GC Pong");

  SetTargetFPS(60);
  Color baseColor = {192, 192, 192, 255};

  while (!WindowShouldClose()) {
    BeginDrawing();

    ClearBackground(baseColor);
    DrawText("Hello World!", 190, 200, 20, BLACK);

    EndDrawing();
  }

  CloseWindow();

  return 0;
}