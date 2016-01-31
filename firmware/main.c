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
#include <avr/eeprom.h>

#include "main.h"
#include "screen.h"
#include "font.h"
#include "eeprom.h"
#include "config.h"

volatile uint8_t frame;
volatile uint16_t line;
volatile uint8_t enabled;

volatile Config* config;

//------------------------------------------------------------------------------

ISR(INT1_vect) { // VSYNC (each frame)...

  // Vertical blanking period starts...
  TCNT1 = 0;

  // Update frame counter
  frame++;
  
  // get input and update screen according to config
  // this must happen within 180us = 2880 cycles @ 16MHz

  Config_apply(config);

  // wait for the vertical blanking period to end
  while(TCNT1<US(180));
  line = 0;
}

//------------------------------------------------------------------------------

ISR(INT0_vect) { // HSYNC (each line)...

  uint8_t lin, pos, i;
  uint16_t chr;
  
  TCNT1=0;  
  line++;

  if(!enabled) goto skip;
  
  if(line >= SCREEN_TOP && line < SCREEN_BOTTOM) {

    lin = (line-SCREEN_TOP);
    chr = lin / CHAR_HEIGHT * SCREEN_WIDTH;
    pos = lin % CHAR_HEIGHT;

    while(TCNT1<US(9)); NOPS(10);
    
    for(i=0; i<SCREEN_WIDTH; i++) {
      SPDR = font[screen[chr++]*CHAR_HEIGHT+pos];
    }   
  }
  
  if(line >= SCREEN_BOTTOM) {    

  skip:
    if(!(PIND & 1<<PD7)) {
      enabled = true;
      frame = 0;
    }
    if(enabled && (frame > 2*50)) {
      enabled = false;
    }
  }  
}

//------------------------------------------------------------------------------

static void WriteTestScreen() {
  char test[65];                 

  for(uint8_t i=32; i<64+32; i++) {
    test[i-32] = i;
  }
  test[64] = 0;
  Write(screen, 0, 0, test);
}

//------------------------------------------------------------------------------

static void SetupHardware() {

  // Setup Timer1
  TCCR1B = (1<<CS10);              // Run at system clock 
  TIMSK1 = 0;                      // Disable all timer interrupts

  // Setup Interrupts
  EICRA = (1<<ISC01) | (1<<ISC11); // Set interrupt on falling edge
  EIMSK = (1<<INT0) | (1<<INT1);   // Enable interrupts for int0 and int1

  // Turn off ADC  
  ADCSRA&=~(1<<ADEN); 

  // Setup SPI 
  DDRB = (1<<DDB2) | (1<<DDB3) | (1<DDB5); // SS and MOSI as outputs
  SPDR = 0;
  SPCR =
    (1<<SPE) | (1<<MSTR) |         // Enable SPI as Master
    (1<<CPHA) | (1<<CPOL);         // Setup with falling edge of SCK
  SPSR = (1<<SPI2X);               // Double speed
  
  // Setup /OE
  DDRD  &= ~(1<<PD7);
  PORTD |= (1<<PD7);

  // Setup Inputs
  DDRB  &= ~((1<<PB0) | (1<<PB1));
  PORTB |=  ((1<<PB0) | (1<<PB1));

  DDRC  &= ~((1<<PC0) | (1<<PC1) | (1<<PC2) | (1<<PC3) | (1<<PC4) | (1<<PC5));
  PORTC |=  ((1<<PC0) | (1<<PC1) | (1<<PC2) | (1<<PC3) | (1<<PC4) | (1<<PC5));

  DDRD  &= ~((1<<PD0) | (1<<PD1) | (1<<PD4) | (1<<PD5) | (1<<PD6));
  PORTD |=  ((1<<PD0) | (1<<PD1) | (1<<PD4) | (1<<PD5) | (1<<PD6));
  
  //Enable Interrputs
  sei();
    
  // Setup sleep mode
  set_sleep_mode(SLEEP_MODE_IDLE);
  sleep_enable();
}

//------------------------------------------------------------------------------

int main(void) {

  config = Config_new_with_ports(&PINB, &PINC, &PIND);
  Config_read(config, &eeprom);

  SetupHardware();
  while(1) sleep_mode();
  return 0;    
}

//------------------------------------------------------------------------------


