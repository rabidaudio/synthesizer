#pragma once

#include <Arduino.h>

// An analog input that's low-passed by
// BUFF_SIZE samples to provide smoother input
template <size_t BUFF_SIZE>
class BufferedInput
{
private:
  uint8_t _pin;
  uint16_t _buffer[BUFF_SIZE];
  size_t _index;

public:
  void begin(uint8_t pin)
  {
    _pin = pin;
    _index = 0;
    for (size_t i = 0; i < BUFF_SIZE; i++)
    {
      read();
      delay(10);
    }
  }

  uint16_t read()
  {
    _buffer[_index] = analogRead(_pin);
    _index = (_index + 1) % BUFF_SIZE;
    uint16_t value = 0;
    for (size_t i = 0; i < BUFF_SIZE; i++)
    {
      value += _buffer[i];
    }
    return value / BUFF_SIZE;
  }
};
