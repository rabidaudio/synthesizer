#include <Arduino.h>
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
#define LED_A_PIN 14
#define LED_B_PIN 15
#define FULL_RESET_TIME_MS 2000

#define BACKPACK_DISPLAY 1

#ifdef BACKPACK_DISPLAY
#include "BackpackDisplay.h"
BackpackDisplay display;
#else
#include "Display.h"
Display<3> display;
uint8_t DISPLAY_CTRL_PINS[] = {7, 6, 5};
#endif
Knob knob;
Button aButton;
Button bButton;
BufferedInput<16> cvInput;
TapTempo tapTempo;

void setup()
{
// Serial.begin(9600);
#ifdef BACKPACK_DISPLAY
  display.begin();
#else
  display.begin(6 /* PORTF */, DISPLAY_CTRL_PINS);
#endif
  // indicate we're doing setup by writing a dash
  // to each display and stepping through them
  // at each step
  display.setChar(0, '_');
  display.setChar(1, '_');
  display.setChar(2, '_');
  display.tick();
  pinMode(LED_A_PIN, OUTPUT);
  digitalWrite(LED_A_PIN, LOW);
  pinMode(LED_B_PIN, OUTPUT);
  digitalWrite(LED_B_PIN, LOW);
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
  digitalWrite(LED_A_PIN, HIGH);
  digitalWrite(LED_B_PIN, HIGH);
  display.tick();
}

void loop()
{
  uint16_t tapBpm = tapTempo.tick(aButton.isPressed());
  int8_t knobMotion = knob.readChanges();
  Timer.setBPMOffset(cvInput.read() / 2); // scale cvInput to 0-512 BPM

  if (aButton.isPressed() && bButton.isPressed())
  {
    // Base reset, freeze clock and restart subdivisions
    Timer.reset();
    tapTempo.cancel();
    display.displayReset();
    if (aButton.holdTime() >= FULL_RESET_TIME_MS && bButton.holdTime() >= FULL_RESET_TIME_MS)
    {
      // Full reset
      Timer.restoreDefaults();
      display.blinkReset();
    }
  }
  else if (aButton.isPressed())
  {
    if (tapTempo.isActive())
    {
      Timer.setBaseBPM(tapBpm);
      display.displayNumber(tapBpm);
      digitalWrite(LED_A_PIN, Timer.clockOn() ? LOW : HIGH);
      digitalWrite(LED_B_PIN, Timer.subdivisionOn() ? LOW : HIGH);
    }
    else
    {
      uint8_t subdivisions = constrain(Timer.getSubdivisions() + knobMotion, 1, 16);
      Timer.setSubdivisions(subdivisions);
      display.displayNumber(subdivisions);
      digitalWrite(LED_A_PIN, LOW);
      digitalWrite(LED_B_PIN, HIGH);
    }
  }
  else if (bButton.isPressed())
  {
    int8_t swing = Timer.getSwing() + knobMotion;
    Timer.setSwing(swing);
    display.displayNumber(swing);
    digitalWrite(LED_A_PIN, HIGH);
    digitalWrite(LED_B_PIN, LOW);
  }
  else
  {
    uint16_t bpm = Timer.getBaseBPM() + knobMotion;
    Timer.setBaseBPM(bpm);
    display.displayNumber(Timer.getBaseBPM());
    digitalWrite(LED_A_PIN, Timer.clockOn() ? LOW : HIGH);
    digitalWrite(LED_B_PIN, Timer.subdivisionOn() ? LOW : HIGH);
  }

  for (size_t t = 0; t < 10; t++)
  {
    display.tick();
    delay(1);
  }
}
