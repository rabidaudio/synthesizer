#include <Arduino.h>
#include "RotaryEncoder.h"
#include "BufferedInput.h"
#include "Button.h"
#include "Timer.h"
#include "TapTempo.h"
#include "PauseState.h"

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
#define KNOB_A_PIN A0
#define KNOB_B_PIN A2
#define CV_IN_PIN A1
#define LED_A_PIN 12
#define LED_B_PIN 13
#define A_BUTTON_PIN 8
#define B_BUTTON_PIN 9
#define C_BUTTON_PIN 7
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
PauseState pauseState;

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
#ifdef ARDUINO_AVR_ATmega2560
  // Serial pins are used for other things on bare ATMega
  Serial.begin(9600);
#endif
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
  timer.restoreDefaults();
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

uint16_t bbb = 120;

// On each loop:
// 1. handle the input state based on the buttons pressed
// 2. wait 10ms, updating the display the whole time
void loop()
{
  bool aPressed = aButton.isPressed();
  bool bPressed = bButton.isPressed();
  bool cPressed = cButton.isPressed();
  int8_t knobMotion = knob.readChanges();
  timer.setBPMOffset(cvInput.read() / 2);    // scale cvInput to 0-512 BPM
  uint16_t tapBpm = tapTempo.tick(cPressed); // need to tick tap tempo on every loop
  pauseState.setState(aPressed && bPressed);

  if (aPressed && bPressed)
  {
    // Start reset
    display.displayReset();
    if (aButton.holdTime() >= FULL_RESET_TIME_MS && bButton.holdTime() >= FULL_RESET_TIME_MS)
    {
      // Full reset
      timer.restoreDefaults();
      pauseState.reset();
      display.blinkReset();
    }
  }
  else if (aPressed)
  {
    // Knob controls subdivision setting
    int8_t subdiv = timer.incrementSubdivisions(knobMotion);
    display.displaySubdivisions(subdiv);
    digitalWrite(LED_A_PIN, HIGH);
    digitalWrite(LED_B_PIN, LOW);
  }
  else if (bPressed)
  {
    // Knob controls swing setting
    int8_t swing = timer.incrementSwing(knobMotion);
    display.displayNumber(swing);
    digitalWrite(LED_A_PIN, LOW);
    digitalWrite(LED_B_PIN, HIGH);
  }
  else if (cPressed)
  {
    // if tapping tempo, show the base BPM tapped
    if (tapTempo.isActive())
    {
      timer.setBaseBPM(tapBpm);
      display.displayNumber(tapBpm);
      digitalWrite(LED_A_PIN, timer.beatOn() ? HIGH : LOW);
      digitalWrite(LED_B_PIN, timer.subdivOn() ? HIGH : LOW);
    }
  }
  else if (pauseState.isPaused())
  {
    // freeze clock and restart subdivisions
    timer.reset();
    tapTempo.cancel();
    display.displayPaused();
  }
  else
  {
    // Default mode, knob controls base BPM
    uint16_t bpm = timer.incrementBaseBPM(knobMotion);
    // display.displayNumber(bpm);
    // TODO: show actual bpm instead?
    display.displayNumber(timer.getBPM());
    digitalWrite(LED_A_PIN, timer.beatOn() ? HIGH : LOW);
    digitalWrite(LED_B_PIN, timer.subdivOn() ? HIGH : LOW);
  }

  // Do the main control loop at 10ms, but tick
  // the display every 1ms in that time
  // (so the display freq is high)
  for (size_t t = 0; t < 10; t++)
  {
    display.tick();
    delay(1);
  }
}
