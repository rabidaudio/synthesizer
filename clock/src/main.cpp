#include <Arduino.h>
#include "Display.h"
#include "Knob.h"
#include "Button.h"
#include "Timer.h"
#include "TapTempo.h"

#define CLOCK_PIN 10
#define SUBDIV_PIN 13
#define KNOB_PIN A0
#define A_BUTTON_PIN 7
#define B_BUTTON_PIN 8
#define FULL_RESET_TIME_MS 2000
#define DEFAULT_BPM 120
#define DEFAULT_SUBDIVISIONS 2
#define DEFAULT_SWING 0

Display display;
Knob<12> knob;
Button aButton;
Button bButton;
TapTempo tapTempo;

void setup()
{
  // Serial.begin(9600);
  display.begin();
  display.displayReset(); // indicate we're doing setup
  Timer.begin(CLOCK_PIN, SUBDIV_PIN);
  Timer.setSubdivisions(DEFAULT_SUBDIVISIONS);
  Timer.setBPM(DEFAULT_BPM);
  Timer.setSwing(DEFAULT_SWING);

  knob.begin(KNOB_PIN);
  aButton.begin(A_BUTTON_PIN, 100);
  bButton.begin(B_BUTTON_PIN, 100);
}

void loop()
{
  uint16_t tapBpm = tapTempo.tick(aButton.isPressed());
  int8_t knobMotion = knob.readChanges();

  if (aButton.isPressed() && bButton.isPressed())
  {
    // Base reset, freeze clock and restart subdivisions
    Timer.reset();
    tapTempo.cancel();
    display.displayReset();
    if (aButton.holdTime() >= FULL_RESET_TIME_MS && bButton.holdTime() >= FULL_RESET_TIME_MS)
    {
      // Full reset, restore all defaults
      Timer.setSubdivisions(DEFAULT_SUBDIVISIONS);
      Timer.setBPM(DEFAULT_BPM);
      Timer.setSwing(DEFAULT_SWING);
      display.blinkReset();
    }
  }
  else if (aButton.isPressed())
  {
    if (tapTempo.isActive())
    {
      Timer.setBPM(tapBpm);
      display.displayNumber(tapBpm, 0x08 | (Timer.clockOn() ? 0x01 : 0x00) | (Timer.subdivisionOn() ? 0x02 : 0x00));
    }
    else
    {
      uint8_t subdivisions = constrain(Timer.getSubdivisions() + knobMotion, 1, 16);
      Timer.setSubdivisions(subdivisions);
      display.displayNumber(subdivisions, 0x02);
    }
  }
  else if (bButton.isPressed())
  {
    int8_t swing = Timer.getSwing() + knobMotion;
    Timer.setSwing(swing);
    display.displayNumber(swing, 0x04);
  }
  else
  {
    uint16_t bpm = constrain(Timer.getBPM() + knobMotion, 15, 287); // TODO: increase
    Timer.setBPM(bpm);
    uint8_t flags = (tapTempo.isActive() ? 0x08 : 0) | (Timer.clockOn() ? 0x01 : 0x00) | (Timer.subdivisionOn() ? 0x02 : 0x00);
    display.displayNumber(bpm, flags);
  }

  delay(10);
}
