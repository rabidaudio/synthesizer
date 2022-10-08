#pragma once

#include <Arduino.h>

#define CV_INPUT_BUFFER_SIZE 16

class CVInput
{
private:
  uint8_t _pin;
  uint16_t _buffer[CV_INPUT_BUFFER_SIZE];
  size_t _index;

public:
  void begin(uint8_t pin)
  {
    _pin = pin;
    _index = 0;
    for (size_t i = 0; i < CV_INPUT_BUFFER_SIZE; i++)
    {
      read();
      delay(10);
    }
  }

  // return a filtered value to add to the base BPM
  // 0 - 512
  uint16_t read()
  {
    _buffer[_index] = analogRead(_pin) / 2;
    _index = (_index + 1) % CV_INPUT_BUFFER_SIZE;
    uint16_t value = 0;
    for (size_t i = 0; i < CV_INPUT_BUFFER_SIZE; i++)
    {
      value += _buffer[i];
    }
    return value / CV_INPUT_BUFFER_SIZE;
  }
};
