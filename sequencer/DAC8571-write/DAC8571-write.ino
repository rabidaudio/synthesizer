#include "Wire.h"
#define dac8571 0x4C //10011[A0]0
uint16_t data;

byte controlByte = 0x10; //0001 0000 | 00[00=store,01=write,10=fromstore,11=broadcast]0000

void setup()
{
 Serial.begin(9600);
 Wire.begin();
 pinMode(13, OUTPUT);

// ADC default setup
//Wire.beginTransmission(ads1110);
//Wire.write(0x8C); 
//Wire.endTransmission();
}
void loop()
{
 
  data = 500;
  Wire.beginTransmission(dac8571);
  Wire.write(controlByte);
  Serial.println(Wire.read(), HEX);
  Wire.write(data>>8);
  Serial.println(Wire.read(), HEX);
  Wire.write((byte)data);
  Serial.println(Wire.read(), HEX);
  Wire.endTransmission();
  Serial.println("");
  
  digitalWrite(13, HIGH);
  delay(2000);
 
  data= 3000;
  Wire.beginTransmission(dac8571);
  Wire.write(controlByte);
  Serial.println(Wire.read(), HEX);
  Wire.write(data>>8);
  Serial.println(Wire.read(), HEX);
  Wire.write((byte)data);
  Serial.println(Wire.read(), HEX);
  Wire.endTransmission();
  Serial.println("");
  
  digitalWrite(13, LOW);
  delay(2000);
}

//uint16_t readADC(){
// byte highbyte, lowbyte;
// Wire.requestFrom(ads1110, 3);
// while(Wire.available()) // ensure all the data comes in
// {
//   highbyte = Wire.read(); // high byte * B11111111
//   lowbyte = Wire.read(); // low byte
//   Wire.read(); //configRegister
// }
// return highbyte * 256 + lowbyte;
//}
