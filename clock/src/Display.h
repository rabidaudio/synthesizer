#pragma once
#include "SevenSegment.h"

// given a number, get the character at index `digit`
// (from right). Includes a negative sign if negative.
// Left pads with space.
char getDigit(int16_t value, size_t digit)
{
  bool negative = value < 0;
  if (negative)
    value = -1 * value;
  for (size_t d = 0; d < digit; d++)
  {
    value = value / 10;
    if (value == 0)
    {
      if (d + 1 == digit && negative)
        return '-';
      return ' ';
    }
  }
  value = value % 10;
  return '0' + value;
}

// A set of 7-segment displays.
// Expects
template <size_t DIGITS>
class Display
{
private:
  SevenSegment _digits[DIGITS];
  size_t _index = 0;
  char _contents[DIGITS];

public:
  void begin(volatile uint8_t* segmentPort, uint8_t* ctrlPins)
  {
    for(size_t i = 0; i < DIGITS; i++) {
      _digits[i].begin(ctrlPins[i], segmentPort);
      _contents[i] = ' ';
    }
    _index = 0;
  }

  void clear()
  {
    for (size_t i = 0; i < DIGITS; i++) {
      _contents[i] = ' ';
    }
  }

  void tick() {
    _digits[_index].turnOff();
    _index = (_index + 1) % DIGITS;
    _digits[_index].display(_contents[_index]);
    _digits[_index].turnOn();
  }

  void setChar(size_t i, char c) {
    if (i < DIGITS) {
      _contents[i] = c;
    }
  }

  void displayNumber(int16_t number)
  {
    for (size_t i = 0; i < DIGITS; i++) {
      _contents[i] = getDigit(number, i);
    }
  }

  void displayReset()
  {
    for (size_t i = 0; i < DIGITS; i++) {
      _contents[i] = '0';
    }
  }

  void blinkReset()
  {
    for (size_t i = 0; i < 3; i++)
    {
      clear();
      for (size_t i = 0; i < 50; i++) {
        tick();
        delay(1);
      }
      displayReset();
      for (size_t i = 0; i < 50; i++) {
        tick();
        delay(1);
      }
    }
  }
};
