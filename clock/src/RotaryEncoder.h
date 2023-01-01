#pragma once

#include <Arduino.h>

#define ROT_A bit(1)
#define ROT_B bit(2)

void enableInterrupts(pin)
{
  *digitalPinToPCMSK(pin) |= bit(digitalPinToPCMSKbit(pin)); // enable pin
  PCIFR |= bit(digitalPinToPCICRbit(pin)); // clear outstanding interrupt
  PCICR |= bit(digitalPinToPCICRbit(pin)); // enable interrupt for group
}

// A class for reading incremental rotary encoder rotations
// and reporting changes using pin change interrupts.
// Assumes pins are active low.
class _RotaryEncoder
{
  private:
    uint8_t _aPin;
    uint8_t _bPin;
    bool _aState;
    bool _aPrevState;
    volatile int8_t _counter;
  
  public:
    void begin(aPin, bPin)
    {
      _aPin = aPin;
      _bPin = bPin;
      _aState = 0;
      _aPrevState = 0;
      _counter = 0;
      pinMode(aPin, INPUT);
      pinMode(bPin, INPUT);
      // enable PC interrupts on each pin
      noInterrupts();
      enableInterrupts(aPin);
      enableInterrupts(bPin);
      tick();
      interrupts();
    }

    void tick()
    {
      _aPrevState = _aState;
      _aState = digitalRead(_aPin) == LOW;
      if (_aState != _aPrevState) {
        if (digitalRead(_bPin) == LOW) {
          _counter++;
        } else {
          _counter--;
        }
      }
    }

    // Compare the current state to where it was last and return the number
    // of turns that have happened since the last check.
    int8_t readChanges()
    {
      int8_t v = _counter;
      _counter = 0;
      return v;
    }
}

// Global instance to assign 
_RotaryEncoder Knob;

// Tick when PC interrupt is triggered

ISR (PCINT0_vect) {
  Knob.tick();
}

ISR (PCINT1_vect) {
  Knob.tick();
}

ISR (PCINT2_vect) {
  Knob.tick();
}
