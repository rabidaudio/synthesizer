#include "Wire.h"
#define ads1110 0x48
uint16_t data;

void setup()
{
 Serial.begin(9600);
 Wire.begin();

// ADC default setup
//Wire.beginTransmission(ads1110);
//Wire.write(0x8C); 
//Wire.endTransmission();
}
void loop()
{
 data = readADC();
 Serial.print("Data >> ");
 Serial.println(data, DEC);
 delay(1000);
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
