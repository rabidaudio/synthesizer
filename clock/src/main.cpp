#include <Arduino.h>
#include "Display.h"
#include "Knob.h"
#include "BufferedInput.h"
#include "Button.h"
#include "Timer.h"
#include "TapTempo.h"

#define CLOCK_PIN 10
#define SUBDIV_PIN 13
#define KNOB_PIN A8
#define CV_IN_PIN A9
#define A_BUTTON_PIN 8
#define B_BUTTON_PIN 9
#define FULL_RESET_TIME_MS 2000

Display<3> display;
Knob knob;
Button aButton;
Button bButton;
BufferedInput<16> cvInput;
TapTempo tapTempo;

uint8_t DISPLAY_CTRL_PINS[] = {7, 6, 5};

void setup()
{
  Serial.begin(9600);
  display.begin(6 /* PORTF */, DISPLAY_CTRL_PINS);
  // indicate we're doing setup by writing a dash
  // to each display and stepping through them
  // at each step
  display.setChar(0, '_');
  display.setChar(1, '_');
  display.setChar(2, '_');
  display.tick();
  Timer.begin(CLOCK_PIN, SUBDIV_PIN);
  display.tick();
  Timer.setSubdivisions(DEFAULT_SUBDIVISIONS);
  display.tick();
  Timer.setBaseBPM(DEFAULT_BPM);
  display.tick();
  Timer.setSwing(DEFAULT_SWING);
  display.tick();

  knob.begin(KNOB_PIN);
  display.tick();
  aButton.begin(A_BUTTON_PIN, 100);
  display.tick();
  bButton.begin(B_BUTTON_PIN, 100);
  display.tick();
  cvInput.begin(CV_IN_PIN);
  display.tick();
  display.clear();
  display.tick();
}

void loop()
{

  Serial.println(knob.readState());
  delay(10);

  // uint16_t tapBpm = tapTempo.tick(aButton.isPressed());
  // int8_t knobMotion = knob.readChanges();
  // Timer.setBPMOffset(cvInput.read() / 2); // scale cvInput to 0-512 BPM

  // if (aButton.isPressed() && bButton.isPressed())
  // {
  //   // Base reset, freeze clock and restart subdivisions
  //   Timer.reset();
  //   tapTempo.cancel();
  //   display.displayReset();
  //   if (aButton.holdTime() >= FULL_RESET_TIME_MS && bButton.holdTime() >= FULL_RESET_TIME_MS)
  //   {
  //     // Full reset
  //     Timer.restoreDefaults();
  //     display.blinkReset();
  //   }
  // }
  // else if (aButton.isPressed())
  // {
  //   if (tapTempo.isActive())
  //   {
  //     Timer.setBaseBPM(tapBpm);
  //     // , 0x08 | (Timer.clockOn() ? 0x01 : 0x00) | (Timer.subdivisionOn() ? 0x02 : 0x00)
  //     display.displayNumber(tapBpm);
  //   }
  //   else
  //   {
  //     uint8_t subdivisions = constrain(Timer.getSubdivisions() + knobMotion, 1, 16);
  //     Timer.setSubdivisions(subdivisions);
  //     // , 0x02
  //     display.displayNumber(subdivisions);
  //   }
  // }
  // else if (bButton.isPressed())
  // {
  //   int8_t swing = Timer.getSwing() + knobMotion;
  //   Timer.setSwing(swing);
  //   // , 0x04
  //   display.displayNumber(swing);
  // }
  // else
  // {
  //   uint16_t bpm = Timer.getBaseBPM() + knobMotion;
  //   Timer.setBaseBPM(bpm);
  //   // uint8_t flags = (tapTempo.isActive() ? 0x08 : 0) | (Timer.clockOn() ? 0x01 : 0x00) | (Timer.subdivisionOn() ? 0x02 : 0x00);
  //   display.displayNumber(Timer.getBaseBPM());
  // }

  // for (size_t t = 0; t < 10; t++)
  // {
  //   display.tick();
  //   delay(1);
  // }
}
