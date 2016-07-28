#include <stdlib.h>
#include <stdio.h>

#ifdef _WIN32  
  #include <io.h>
  #include <fcntl.h>
#endif

#include "parser.h"

extern uint16_t written;

int main(int argc, char **argv) {

  config = Config_new();

#ifdef _WIN32
  setmode(fileno(stdout), O_BINARY);
#endif
  
  if(Config_read(config, stdin)) {
    Config_print(config, stdout);
  }
  else if(Config_parse(config, stdin)) {
    Config_write(config, stdout);
    fprintf(stderr, "EEPROM:\t%4d of  4096 bytes used (%4d bytes free)\n",
            written, 4096-written);
  }
  else {  
    return EXIT_FAILURE;
  }

  uint16_t footprint = Config_get_footprint(config);
  
  fprintf(stderr, "SRAM:\t%4d of 16384 bytes used (%4d bytes free)\n",
          footprint, 16384-footprint);
  
  Config_free(config);  
  return EXIT_SUCCESS;
}

