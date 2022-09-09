#pragma once

#if ARDUINO
#include <Arduino.h>
#else
#include <inttypes.h>
#endif

#include <SPI.h>

#define MAX_CMD_NOP  0x00
#define MAX_CMD_LDAC 0x01
#define MAX_CMD_CLR  0x02
#define MAX_CMD_PWR  0x03
#define MAX_CMD_LIN  0x05
#define MAX_CMD_WRR  0x10
#define MAX_CMD_WRT  0x30

typedef uint8_t Dac;

#define DAC0 (Dac) (1 << 0)
#define DAC1 (Dac) (1 << 1)
#define DAC2 (Dac) (1 << 2)
#define DAC3 (Dac) (1 << 3)
#define ALL_DACS (Dac) (DAC0 | DAC1 | DAC2 | DAC3)

// Note: does not currently support async control via LDAC pin or command.
// Assumes you have LDAC pin grounded so that writes happen immediately.
class Max5134 {
  public:
    void begin(const int cs_pin);
    void begin(const int cs_pin, const bool linearize);
    void write(const Dac dac, const uint16_t value);
  
  private:
    int _cs_pin;
    void send(const uint8_t cmd, const uint16_t data);
    void linearizeOutput();
};
