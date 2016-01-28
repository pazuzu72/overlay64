#include <string.h>

#include "screen.h"

void write(volatile uint8_t *screen, uint8_t row, uint8_t col, char* str) {

  uint8_t len = strlen(str);
  screen += row * SCREEN_WIDTH + col;
  
  while(len--) {
    screen[len] = (uint8_t) str[len]-0x20;
  }    
}

void clear(volatile uint8_t *screen, uint8_t row, uint8_t col, uint8_t len) {
  screen += row * SCREEN_WIDTH + col;
  while(len--) {
    screen[len] = 0;
  }
}