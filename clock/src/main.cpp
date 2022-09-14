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

void setup()
{
  Serial.begin(9600);
  Timer.begin(CLOCK_PIN, SUBDIV_PIN);
  Timer.setSubdivisions(2);
  Timer.setBPM(120);
  display.begin();
  knob.begin(KNOB_PIN, 16, 500);
  aButton.begin(A_BUTTON_PIN, 25);
  bButton.begin(B_BUTTON_PIN, 25);
}

void loop()
{
  uint16_t knobValue = knob.read();
  if (aButton.isPressed() && bButton.isPressed())
  {
    Timer.reset();
    display.displayReset();
  }
  else if (aButton.isPressed())
  {
    int8_t swing = (int8_t)(((int16_t)knobValue / 4) - 128);
    Timer.setSwing(swing);
    display.displayNumber(swing, (1 << 3));
  }
  else if (bButton.isPressed())
  {
    uint8_t subdivisions = (uint8_t)((knobValue / 64) + 1);
    Timer.setSubdivisions(subdivisions);
    display.displayNumber(subdivisions, (1 << 0));
  }
  else
  {
    uint16_t bpm = (knobValue / 4) + 32; /* 32 to 287 */
    Timer.setBPM(bpm);
    display.displayNumber(bpm, (Timer.clockOn() ? 0x01 : 0x00) | (Timer.subdivisionOn() ? 0x02 : 0x00));
  }

  delay(10);
}
