#pragma once

#include <Arduino.h>
#include "BufferedInput.h"

// A continuous rotary switch with evenly-valued resistors between each
// of the switches, forming a "discrete potentiometer" or rotary encoder.
// It forms a voltage divider which is measured on an analog input.
// `STEPS` specifies the number of steps for one full rotation.

#define KNOB_STEPS 16
const uint16_t BOUNDS[KNOB_STEPS] = {
  33, 97, 155, 211, 261, 300, 336, 361, 384, 412, 438, 464, 488, 507, 526
};

class Knob
{
private:
  BufferedInput<4> _input;
  uint8_t _value;

public:
  void begin(uint8_t pin)
  {
    _input.begin(pin);
  }

  // Return which step the knob is on, from [0, STEPS).
  uint8_t readState()
  {
    uint16_t value = _input.read();
    for (uint8_t j = 0; j < KNOB_STEPS; j++)
    {
      if (value < BOUNDS[j])
      {
        return j;
      }
    }
    return KNOB_STEPS - 1;
  }

  // Compare the current state to where it was last and return the number
  // of turns that have happened since the last check.
  int8_t readChanges()
  {
    uint8_t newValue = readState();
    if (newValue == _value)
      return 0;

    int8_t result = (int8_t)newValue - (int8_t)_value;

    // deal with rollover
    const int8_t overflowLow = KNOB_STEPS / 4;
    const int8_t overflowHigh = KNOB_STEPS - (KNOB_STEPS / 4);
    if (_value >= overflowHigh && newValue < overflowLow)
    {
      result += KNOB_STEPS;
    }
    else if (_value <= overflowLow && newValue > overflowHigh)
    {
      result -= KNOB_STEPS;
    }
    _value = newValue;
    return result;
  }
};
