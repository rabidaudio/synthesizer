#pragma once

#include <Arduino.h>

// A continuous rotary switch with evenly-valued resistors between each
// of the switches, forming a "discrete potentiometer" or rotary encoder.
// It forms a voltage divider which is measured on an analog input.
// `STEPS` specifies the number of steps for one full rotation.
template <size_t STEPS>
class Knob
{
private:
  uint8_t _pin;
  uint16_t _bounds[STEPS + 1];
  uint8_t _value;

public:
  void begin(uint8_t pin)
  {
    _pin = pin;

    // populate cutoffs
    float step = 1024 / (float)(STEPS - 1);
    float v = step / 2;
    for (size_t j = 0; j < STEPS; j++)
    {
      _bounds[j] = (uint16_t)round(v);
      v += step;
    }
    _bounds[STEPS] = 1024;

    _value = readState();
  }

  // Return which step the knob is on, from [0, STEPS).
  uint8_t readState()
  {
    // uint16_t value = 0;
    // for (size_t i = 0; i < 8; i++) {
    //   value += analogRead(_pin);
    //   delay(1);
    // }
    // value = value / 8;
    uint16_t value = analogRead(_pin);
    for (uint8_t j = 0; j < STEPS; j++)
    {
      if (_bounds[j] >= value)
      {
        return j;
      }
    }
    return STEPS;
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
    const int8_t overflowLow = STEPS / 4;
    const int8_t overflowHigh = STEPS - (STEPS / 4);
    if (_value >= overflowHigh && newValue < overflowLow)
    {
      result += STEPS;
    }
    else if (_value <= overflowLow && newValue > overflowHigh)
    {
      result -= STEPS;
    }
    _value = newValue;
    return result;
  }
};
