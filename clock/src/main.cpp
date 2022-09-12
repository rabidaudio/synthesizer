#include <Arduino.h>
#include "Display.h"
#include "Knob.h"
#include "Timer.h"

#define CLOCK_PIN 10
#define SUBDIV_PIN 13
#define KNOB_PIN A0

Display display;
Knob<8> knob;

void setup() {
  Serial.begin(9600);
  Timer.begin(CLOCK_PIN, SUBDIV_PIN);
  Timer.setSubdivisions(2);
  Timer.setBPM(120);
  display.begin();
  knob.begin(KNOB_PIN, 16, 500);
}

void loop() {
  // uint16_t bpm = (knob.read() / 4) /* 0 to 255 */ + 32; /* 32 to 287 */
  // Timer.setBPM(bpm);
  // display.displayBPM(bpm);

  int8_t swing = (int8_t)(((int16_t) knob.read() / 4) - 128);
  Timer.setSwing(swing);
  display.displaySwing(swing);

  delay(10);
}
