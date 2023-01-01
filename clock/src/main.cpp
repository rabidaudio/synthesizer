#include <Arduino.h>
#include "RotaryEncoder.h"
#include "BufferedInput.h"
#include "Button.h"
#include "Timer.h"
#include "TapTempo.h"

// Settings
// #define BACKPACK_DISPLAY 1
#define FULL_RESET_TIME_MS 2000

// Pins
#ifdef ARDUINO_AVR_ATmega2560
// Mega
#define CLOCK_PIN 10
#define SUBDIV_PIN 13
#define KNOB_A_PIN 11
#define KNOB_B_PIN 12
#define CV_IN_PIN A9
#define A_BUTTON_PIN 7
#define B_BUTTON_PIN 8
#define C_BUTTON_PIN 9
#define LED_A_PIN 14
#define LED_B_PIN 15
#define DISPLAY_PORT 6 /* PORTF */
#define DISPLAY_CTRL_PINS \
  {                       \
    7, 6, 5               \
  }
#else
// Bare ATMega168p
#define CLOCK_PIN 10
#define SUBDIV_PIN 11
#define KNOB_A_PIN A2
#define KNOB_B_PIN A0
#define CV_IN_PIN A1
#define LED_A_PIN 12
#define LED_B_PIN 13
#define A_BUTTON_PIN 7
#define B_BUTTON_PIN 8
#define C_BUTTON_PIN 9
#define DISPLAY_PORT 4 /* PORTD */
#define DISPLAY_CTRL_PINS \
  {                       \
    A3, A4, A5            \
  }
#endif

#ifdef BACKPACK_DISPLAY
#include "BackpackDisplay.h"
BackpackDisplay display;
#else
#include "Display.h"
Display<3> display;
uint8_t displayPins[] = DISPLAY_CTRL_PINS;
#endif
Button aButton;
Button bButton;
Button cButton;
BufferedInput<16> cvInput;
TapTempo tapTempo;
RotaryEncoder knob;
Timer1 timer;

// Configure interrupts

ISR(TIMER1_COMPA_vect)
{
  timer.tickA();
}

ISR(TIMER1_COMPB_vect)
{
  timer.tickB();
}

#ifdef ARDUINO_AVR_ATmega2560
ISR(PCINT0_vect) // PORTB PCINT
{
  knob.tick();
}
#else
ISR(PCINT1_vect) // PORTC PCINT
{
  knob.tick();
}
#endif

void setup()
{
  // Serial.begin(9600);
#ifdef BACKPACK_DISPLAY
  display.begin();
#else
  display.begin(DISPLAY_PORT, displayPins);
#endif
  // indicate we're doing setup by writing a dash
  // to each display and stepping through them
  // at each step
  display.setChar(0, '_');
  display.setChar(1, '_');
  display.setChar(2, '_');
  display.tick();
  pinMode(LED_A_PIN, OUTPUT);
  digitalWrite(LED_A_PIN, HIGH);
  pinMode(LED_B_PIN, OUTPUT);
  digitalWrite(LED_B_PIN, HIGH);
  display.tick();
  timer.begin(CLOCK_PIN, SUBDIV_PIN);
  display.tick();
  timer.setSubdivisions(DEFAULT_SUBDIVISIONS);
  display.tick();
  timer.setBaseBPM(DEFAULT_BPM);
  display.tick();
  timer.setSwing(DEFAULT_SWING);
  display.tick();

  knob.begin(KNOB_A_PIN, KNOB_B_PIN);
  display.tick();
  aButton.begin(A_BUTTON_PIN, 100);
  display.tick();
  bButton.begin(B_BUTTON_PIN, 100);
  display.tick();
  cButton.begin(C_BUTTON_PIN, 100);
  display.tick();
  cvInput.begin(CV_IN_PIN);
  display.tick();
  display.clear();
  digitalWrite(LED_A_PIN, LOW);
  digitalWrite(LED_B_PIN, LOW);
  display.tick();
}

void loop()
{
  uint16_t tapBpm = tapTempo.tick(aButton.isPressed());
  int8_t knobMotion = knob.readChanges();
  timer.setBPMOffset(cvInput.read() / 2); // scale cvInput to 0-512 BPM

  if (bButton.isPressed() && cButton.isPressed())
  {
    // Base reset, freeze clock and restart subdivisions
    timer.reset();
    tapTempo.cancel();
    display.displayReset();
    if (bButton.holdTime() >= FULL_RESET_TIME_MS && cButton.holdTime() >= FULL_RESET_TIME_MS)
    {
      // Full reset
      timer.restoreDefaults();
      display.blinkReset();
    }
  }
  else if (aButton.isPressed())
  {
    if (tapTempo.isActive())
    {
      timer.setBaseBPM(tapBpm);
      display.displayNumber(tapBpm);
      digitalWrite(LED_A_PIN, timer.clockOn() ? HIGH : LOW);
      digitalWrite(LED_B_PIN, timer.subdivisionOn() ? HIGH : LOW);
    }
  }
  else if (bButton.isPressed())
  {
    uint8_t subdivisions = constrain(timer.getSubdivisions() + knobMotion, 1, 16);
    timer.setSubdivisions(subdivisions);
    display.displayNumber(subdivisions);
    digitalWrite(LED_A_PIN, HIGH);
    digitalWrite(LED_B_PIN, LOW);
  }
  else if (cButton.isPressed())
  {
    int8_t swing = timer.getSwing() + knobMotion;
    timer.setSwing(swing);
    display.displayNumber(swing);
    digitalWrite(LED_A_PIN, LOW);
    digitalWrite(LED_B_PIN, HIGH);
  }
  else
  {
    uint16_t bpm = timer.getBaseBPM() + knobMotion;
    timer.setBaseBPM(bpm);
    display.displayNumber(timer.getBaseBPM());
    digitalWrite(LED_A_PIN, timer.clockOn() ? HIGH : LOW);
    digitalWrite(LED_B_PIN, timer.subdivisionOn() ? HIGH : LOW);
  }

  for (size_t t = 0; t < 10; t++)
  {
    display.tick();
    delay(1);
  }
}
