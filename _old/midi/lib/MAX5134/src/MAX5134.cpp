#include "max5134.h"

void Max5134::begin(const int cs_pin) {
  begin(cs_pin, true);
}

void Max5134::begin(const int cs_pin, const bool linearize) {
  _cs_pin = cs_pin;
  pinMode(_cs_pin, OUTPUT);
  digitalWrite(_cs_pin, HIGH);
  SPI.begin();
  if(linearize) {
    linearizeOutput();
  }
  // send(MAX_CMD_PWR, (~enabled_dacs & 0x0F) << 8);
}


void Max5134::linearizeOutput() {
  send(MAX_CMD_LIN, 0x0200); 
  delay(10);
  send(MAX_CMD_LIN, 0x0000);
}

void Max5134::write(const Dac dacs, const uint16_t data) {
  // send(MAX_CMD_WRR | (dacs & 0x0F), data);
  send(MAX_CMD_WRT | (dacs & 0x0F), data);
}

void Max5134::send(const uint8_t control, const uint16_t data) {
  uint8_t a = (uint8_t) ((data >> 8) & 0x00FF);
  uint8_t b = (uint8_t) ((data >> 0) & 0x00FF);
  // SPI.beginTransaction();
  digitalWrite(_cs_pin, LOW);
  SPI.transfer(control);
  SPI.transfer(a);
  SPI.transfer(b);
  digitalWrite(_cs_pin, HIGH);
  // SPI.endTransaction();
}
