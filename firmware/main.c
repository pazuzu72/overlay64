//------------------------------------------------------------------------------
// Overlay64 -- LUMA video overlay driver
//
// LM1881 CSYNC -> INT0 (Pin 4)
// LM1881 VSYNC -> INT1 (Pin 5)
// LUMA SIGNAL <- 1k <- VCC via PNP <- MOSI (Pin 17)
//
//------------------------------------------------------------------------------

#define F_CPU 20000000UL
#define TICKS_PER_USEC F_CPU/1000000UL
#define US(n) n*(TICKS_PER_USEC)

#define NOP() do { __asm__ __volatile__ ("nop"); } while (0)
#define NOPS(n) for(uint8_t i=0; i<n; i++) NOP()

#include <string.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>

#include "main.h"
#include "screen.h"
#include "font.h"

static volatile uint16_t line=0; // The current horizontal line

//------------------------------------------------------------------------------

ISR(INT1_vect) { // VSYNC (each frame)...

  // Vertical blanking period starts...
  TCNT1 = 0;
  
  // get input and update screen
  // this must happen within 180us = 2880 cycles @ 16MHz

  write(screen, 0, 15, "KERNAL:  XLINK");
  write(screen, 1, 15, "CHARSET: SMALL");
  write(screen, 0, 1, "6581");
  write(screen, 0, 40, "8580");
  write(screen, 1, 1, "D400");
  write(screen, 1, 40, "D420");
  write(screen, 29, 7, "**** C64 OVERLAY DRIVER V1 ****");  

  //wait for the vertical blanking period to end
  while(TCNT1<US(180));
  line=0;
}

//------------------------------------------------------------------------------

ISR(INT0_vect) { // HSYNC (each line)...

  uint8_t lin, pos, i;
  uint16_t chr;
  
  TCNT1=0;  
  line++;

  if(line >= SCREEN_TOP && line < SCREEN_BOTTOM) {

    lin = (line-SCREEN_TOP);
    chr = lin / CHAR_HEIGHT * SCREEN_WIDTH;
    pos = lin % CHAR_HEIGHT;

    while(TCNT1<US(9)); NOPS(10);
    
    for(i=0; i<SCREEN_WIDTH; i++) {
      SPDR = font[screen[chr++]*CHAR_HEIGHT+pos];
    }
  }
}

//------------------------------------------------------------------------------

static void WriteTestScreen() {
  char *test = "0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF";
  test[SCREEN_WIDTH] = '\0';

  for(int i=0; i<SCREEN_HEIGHT; i++) {
    write(screen, i, 0, test);
  }
}

//------------------------------------------------------------------------------

static int SetupHardware() {
  
  // Setup Timer1
  TCCR1B = (1<<CS10);              // Run at system clock 
  TIMSK1 = 0;                      // Disable all timer interrupts

  // Setup Interrupts
  EICRA = (1<<ISC01) | (1<<ISC11); // Set interrupt on falling edge
  EIMSK = (1<<INT0) | (1<<INT1);   // Enable interrupts for int0 and int1

  // Turn off ADC  
  ADCSRA&=~(1<<ADEN); 

  // Setup SPI 
  DDRB = (1<<DDB2) | (1<<DDB3) | (1<DDB5);    // SS and MOSI as outputs
  SPDR = 0;
  SPCR =
    (1<<SPE) | (1<<MSTR) |         // Enable SPI as Master
    (1<<CPHA) | (1<<CPOL);         // Setup with falling edge of SCK
  SPSR = (1<<SPI2X);               // Double speed
  
  // Enable Interrupts
  sei();

  // Setup sleep mode
  set_sleep_mode(SLEEP_MODE_IDLE);
  sleep_enable();

  return 1;
}

//------------------------------------------------------------------------------

int main(void) {
  SetupHardware();
  while(1) sleep_mode();
  return 0;    
}

//------------------------------------------------------------------------------


