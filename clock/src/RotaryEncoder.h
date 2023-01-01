#pragma once

#include <Arduino.h>

void enableInterrupts(uint8_t pin)
{
  *digitalPinToPCMSK(pin) |= bit(digitalPinToPCMSKbit(pin)); // enable pin
  PCIFR |= bit(digitalPinToPCICRbit(pin)); // clear outstanding interrupt
  PCICR |= bit(digitalPinToPCICRbit(pin)); // enable interrupt for group
}

// Source:
// https://github.com/PaulStoffregen/Encoder/blob/master/Encoder.h#L160
const int8_t ENCODER_STATE_TABLE[] = {
      // old B  old A new B new A
   0, // 0      0     0     0
   1, // 0      0     0     1
  -1, // 0      0     1     0
   2, // 0      0     1     1
  -1, // 0      1     0     0
   0, // 0      1     0     1
  -2, // 0      1     1     0
   1, // 0      1     1     1
   1, // 1      0     0     0
  -2, // 1      0     0     1
   0, // 1      0     1     0
  -1, // 1      0     1     1
   2, // 1      1     0     0
  -1, // 1      1     0     1
   0, // 1      1     1     1
};

// A class for reading incremental rotary encoder rotations
// and reporting changes using pin change interrupts.
// Assumes pins are active low.
class _RotaryEncoder
{
  private:
    uint8_t _aPin;
    uint8_t _bPin;
    uint8_t _state;
    bool _changing;
    volatile int8_t _counter;
  
  public:
    void begin(uint8_t aPin, uint8_t bPin)
    {
      _aPin = aPin;
      _bPin = bPin;
      _state = 0;
      _changing = false;
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

    inline void tick()
    {
      // Serial.print(_state, BIN); Serial.print("\t");
      _state = _state >> 2;
      uint8_t aState = (digitalRead(_aPin) == LOW);
      uint8_t bState = (digitalRead(_bPin) == LOW);
      _state |= (aState << 2) | (bState << 3);
      // Serial.print(aState); Serial.print("\t");
      // Serial.print(bState); Serial.print("\t");
      // Serial.println(_state, BIN);
      // uint8_t change = _state & 0b00000101;
      if (!_changing) {
        int8_t v = ENCODER_STATE_TABLE[_state];
        if (v != 0) {
          _counter += v;
          _changing = true;
        }
      }

      if (_changing && aState && bState) {
        _changing = false;
      }

      // if (change != 0 && change != 0b00000101) {
        // _counter += ENCODER_STATE_TABLE[_state];
        // Serial.print(_state, BIN);
        // Serial.print("\t");
        // Serial.println(ENCODER_STATE_TABLE[_state]);
      // }
      // _aPrevState = _aState;
      // _aState = digitalRead(_aPin) == LOW;
      // Serial.print("a\t");
      // Serial.print(_aPrevState);
      // Serial.print("\t->\t");
      // Serial.print(_aState);
      // if (_aState != _aPrevState) {
      //   bool _bState = digitalRead(_bPin) == LOW;
      //   Serial.print("\tb\t");
      //   Serial.print(_bState);
      //   if (_bState) {
      //     _counter++;
      //     Serial.print("\t+1");
      //   } else {
      //     _counter--;
      //     Serial.print("\t-1");
      //   }
      // }
      // Serial.println();
    }

    // Compare the current state to where it was last and return the number
    // of turns that have happened since the last check.
    int8_t readChanges()
    {
      int8_t v = _counter;
      _counter = 0;
      return v;
    }
};

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
