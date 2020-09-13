#include <SPI.h>

const int csPin = 10;
const int readyPin = 9;
const int ldacPin = 8;

void setup() {
  Serial.begin(9600);
  
  pinMode(csPin, OUTPUT);
  pinMode(readyPin, INPUT);
  pinMode(ldacPin, OUTPUT);
  digitalWrite(csPin, HIGH);
//  digitalWrite(ldacPin, HIGH);
  digitalWrite(ldacPin, LOW);
  SPI.begin();

  delay(100);

  dacPower(true, false, false, false, true);
}

void loop() {
  // put your main code here, to run repeatedly:
  for (uint16_t i = 0; i < 0xFFFF; i += 256) {
    dacWriteSingle(0, i);
  }
  for (uint16_t i = 0xFFFF; i > 0; i -= 256) {
    dacWriteSingle(0, i);
  }
}

const uint8_t NOP = 0x00;
const uint8_t LDAC = 0x01;
const uint8_t CLR = 0x02;
const uint8_t PWR = 0x03;
const uint8_t LIN = 0x05;
const uint8_t WRR = 0x10;
const uint8_t WRT = 0x30;

void dacWrite(uint8_t control, uint16_t data) {
  uint8_t a = (data >> 8) & 0x00FF;
  uint8_t b = (data >> 0) & 0x00FF;
  digitalWrite(csPin, LOW);
  SPI.transfer(control);
  SPI.transfer(a);
  SPI.transfer(b);
  digitalWrite(csPin, HIGH);
  // TODO: should we wait on the start instead??
  while(digitalRead(readyPin) == LOW) ;;
//  digitalWrite(ldacPin, LOW);
//  delayMicroseconds(10);
//  digitalWrite(ldacPin, HIGH);
}

void dacLinearize() {
  // set LIN high
  dacWrite(LIN, 0x02); 
  delay(10);
  // set LIN low
  dacWrite(LIN, 0x00);
}

void dacClear() {
  dacWrite(CLR, 0x0000);
}

void dacPower(bool on3, bool on2, bool on1, bool on0, bool useReady) {
  uint16_t data = ((uint16_t) on3 << 11) |
                  ((uint16_t) on2 << 10) |
                  ((uint16_t) on1 << 9) |
                  ((uint16_t) on0 << 8) |
                  ((uint16_t) useReady << 7);
  dacWrite(PWR, data);
}

void dacWriteSingle(uint8_t dac, uint16_t data) {
  dacWriteMulti((1 << dac), data);
}

void dacWriteMulti(uint8_t dacs, uint16_t data) {
  uint8_t control = WRR | (dacs & 0x0F);
  dacWrite(control, data);
}
