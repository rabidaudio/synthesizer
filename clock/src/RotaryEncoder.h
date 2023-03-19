#pragma once

#include <Arduino.h>

void enableInterrupts(uint8_t pin)
{
  *digitalPinToPCMSK(pin) |= bit(digitalPinToPCMSKbit(pin)); // enable pin
  PCIFR |= bit(digitalPinToPCICRbit(pin));                   // clear outstanding interrupt
  PCICR |= bit(digitalPinToPCICRbit(pin));                   // enable interrupt for group
}

// A class for reading incremental rotary encoder rotations
// and reporting changes using pin change interrupts.
// Assumes pins are active low.
class RotaryEncoder
{
private:
  uint8_t _aPin;
  uint8_t _bPin;
  uint8_t _state; // bit-encoded:
                  //          {new B state}, {new A state},
                  //          {old B state}, {old A state}
  bool _changed = false;
  volatile int8_t _counter;

public:
  void begin(uint8_t aPin, uint8_t bPin)
  {
    _aPin = aPin;
    _bPin = bPin;
    _state = 0b00001111;
    _changed = false;
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

  // Based on
  // https://github.com/PaulStoffregen/Encoder/blob/master/Encoder.h#L160
  inline void tick()
  {
    _state = _state >> 2;
    if (digitalRead(_aPin) == LOW)
      _state |= 0b0000100;
    if (digitalRead(_bPin) == LOW)
      _state |= 0b0001000;
    // The encoder table counts steps, but because
    // knob detents are at on-on, there's multiple steps
    // per-detent. We could only count specific transitions
    // each direction and ignore the others, but since we can miss
    // some steps due to flakey interrupts, we instead gate changes
    // so that only transition is counted between each on-on state.
    switch (_state)
    {
    case 0b00000001:
    case 0b00000111:
    case 0b00001000:
    case 0b00001110:
      if (!_changed)
        _counter++;
      break;
    case 0b00000010:
    case 0b00000100:
    case 0b00001011:
    case 0b00001101:
      if (!_changed)
        _counter--;
      break;
    }
    switch (_state)
    {
    case 0b00001100:
    case 0b00001101:
    case 0b00001110:
    case 0b00001111:
      _changed = false;
      break;
    case 0b00000011:
    case 0b00000111:
    case 0b00001011:
      _changed = true;
      break;
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
};
