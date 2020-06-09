#include <Wire.h>
#include <SparkFun_Alphanumeric_Display.h>

// When measuring at 50ms period,  thereseems to be a 0.2Hz noise wave
// (although that's likely aliasing of a higher freqency wave. Regardless,
// it gives us a point of reference for low pass filter size.
// We want our low pass filter to be a power of 2 for division performance
// The buffer size needed to grab a full period is (1/0.2)*1000 / 50 = 100
// so we round up to 128 
#define LOW_PASS_SIZE 128
#define ANALOG_INPUT A0
#define ZERO_RELAY 2
#define GAIN_SETTING_RESISTOR 1000 // 220
#define GAIN (((float) 80000 / GAIN_SETTING_RESISTOR) + 5)
#define VREF 3.3 // (assuming VREF is exactly 3V3...)
#define DEBUG false

// Each analog step represents this many uV
const float RESOLUTION = VREF / 1024 / GAIN * 1000  * 1000;

HT16K33 display;
char disp[10] = "";

uint16_t low_pass_buffer[LOW_PASS_SIZE];
uint8_t  low_pass_index = 0;
uint16_t low_pass_result = 0;
uint32_t runningSum = 0;

float zero = 0.0;
float measured = 0.0;

void setup() {
  if (DEBUG) Serial.begin(9600);
  pinMode(ZERO_RELAY, OUTPUT);
  Wire.begin();
  if (display.begin() == false) {
    if (DEBUG) Serial.println("Display disconnected");
    while(1);
  }
  display.setBrightness(8);
  zeroOut();
  if (DEBUG) Serial.println("OK");
}

void loop() {
  measured = handleSample(analogRead(ANALOG_INPUT));
  measured = abs(measured - zero) * RESOLUTION;
  dtostrf(measured, 4, 0, disp);
  display.print(disp);
  if (DEBUG) Serial.println(disp);
  delay(100);
}

// Updates the low pass filter, and returns true when
// a full buffer pass has occurred 
float handleSample(uint16_t sample) {
  runningSum += sample;
  runningSum -= low_pass_buffer[low_pass_index];
  low_pass_buffer[low_pass_index] = sample;
  low_pass_index = (low_pass_index + 1) % LOW_PASS_SIZE;
  return (float) runningSum / LOW_PASS_SIZE;
}

void zeroOut() {
  if (DEBUG) Serial.print("ZERO: ");
  uint16_t i;
  display.print("ZERO");
  digitalWrite(ZERO_RELAY, HIGH);
  // first loop fills buffer, second loop just ensures there's some settling time before switching modes
  for (i = 0; i < LOW_PASS_SIZE * 2; i++) {
    uint16_t measured = analogRead(ANALOG_INPUT);
    zero = handleSample(measured);
  }
  if (DEBUG) Serial.println(zero, DEC);
  digitalWrite(ZERO_RELAY, LOW);
  delay(100);
  // Then  fill the buffer with the measured value, so it doesn't take  a while to read up
  for (i = 0; i < LOW_PASS_SIZE * 2; i++) {
    handleSample(analogRead(ANALOG_INPUT));
  }
}
