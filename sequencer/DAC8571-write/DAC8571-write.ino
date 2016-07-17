#include "Wire.h"
#define dac8571 0x4C //10011[A0]0
#define ads1110 0x48
uint16_t data;

byte controlByte = 0x10; //0001 0000 | 00[00=store,01=write,10=fromstore,11=broadcast]0000

bool state = true;

void setup()
{
 Serial.begin(9600);
 Wire.begin();
 pinMode(13, OUTPUT);

// ADC default setup
//Wire.beginTransmission(ads1110);
//Wire.write(0x8C); 
//Wire.endTransmission();

 data = 0;
}
void loop()
{
  
//  data = readADC();
  writeDAC(data / 2);

  digitalWrite(13, state ? HIGH : LOW);
  state = !state;

  uint16_t d2 = readADC();

  Serial.print(data / 2);
  Serial.print("\t");
  Serial.println(d2);

  data += 1024;

  delay(100);
}

void writeDAC(uint16_t data){
  Wire.beginTransmission(dac8571);
  Wire.write(controlByte);
  Wire.write((byte)(data>>8));
  Wire.write((byte)data);
  Wire.endTransmission();
}

uint16_t readADC(){
 byte highbyte, lowbyte;
 Wire.requestFrom(ads1110, 3);
 while(Wire.available()) // ensure all the data comes in
 {
   highbyte = Wire.read(); // high byte * B11111111
   lowbyte = Wire.read(); // low byte
   Wire.read(); //configRegister
 }
 return highbyte * 256 + lowbyte;
}

