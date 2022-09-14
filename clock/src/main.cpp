#include <Arduino.h>
#include "Display.h"
#include "Knob.h"
#include "Button.h"
#include "Timer.h"

#define CLOCK_PIN 10
#define SUBDIV_PIN 13
#define KNOB_PIN A0
#define A_BUTTON_PIN 7
#define B_BUTTON_PIN 8

Display display;
Knob<8> knob;
Button aButton;
Button bButton;

void setup() {
  Serial.begin(9600);
  Timer.begin(CLOCK_PIN, SUBDIV_PIN);
  Timer.setSubdivisions(2);
  Timer.setBPM(120);
  display.begin();
  knob.begin(KNOB_PIN, 16, 500);
  aButton.begin(A_BUTTON_PIN, 25);
  bButton.begin(B_BUTTON_PIN, 25);
}

void loop() {
  uint16_t knobValue = knob.read();
  // if (aButton.isPressed() && bButton.isPressed()) {
  // } else 
  if (aButton.isPressed()) {
    int8_t swing = (int8_t)(((int16_t) knob.read() / 4) - 128);
    Timer.setSwing(swing);
    display.displaySwing(swing);
  } else if (bButton.isPressed()) {
    uint8_t subdivisions = (uint8_t) ((knobValue / 64) + 1);
    Timer.setSubdivisions(subdivisions);
    display.displaySubdivisions(subdivisions);
  } else {
    uint16_t bpm = (knobValue / 4) + 32; /* 32 to 287 */
    Timer.setBPM(bpm);
    display.displayBPM(bpm, Timer.clockOn(), Timer.subdivisionOn());    
  }

  delay(10);
}
