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

// An array of 7-segment displays.
// Uses the same digit control port but only addresses one at a time,
// round robbin. This means the more segments there are the worse
// the brightness will be. Must call `tick` on a tight loop to
// switch the digit displayed or else the display will clearly flicker.
// Number of segments must be a compile time constant through `DIGITS`
// template.
// Displays signed 16-bit numbers.
template <size_t DIGITS>
class Display
{
private:
  SevenSegment _digits[DIGITS]; // LSB first
  size_t _index = 0;            // which segment is currently addressed
  char _contents[DIGITS];

public:
  void begin(uint8_t portNumber, uint8_t *ctrlPins)
  {
    for (size_t i = 0; i < DIGITS; i++)
    {
      _digits[i].begin(portNumber, ctrlPins[i], i==1);
      setChar(i, ' ');
    }
    _index = 0;
  }

  // set all the displays to blank
  void clear()
  {
    for (size_t i = 0; i < DIGITS; i++)
    {
      setChar(i, ' ');
    }
  }

  // update which display is showing
  void tick()
  {
    _digits[_index].turnOff();
    _index = (_index + 1) % DIGITS;
    _digits[_index].display(_contents[_index]);
    _digits[_index].turnOn();
  }

  void setChar(size_t i, char c)
  {
    if (i < DIGITS)
    {
      _contents[i] = c;
    }
  }

  // display a signed number on the
  void displayNumber(int16_t number)
  {
    for (size_t i = 0; i < DIGITS; i++)
    {
      setChar(i, getDigit(number, i));
    }
  }

  // light up all segments (all 8's)
  void displayReset()
  {
    for (size_t i = 0; i < DIGITS; i++)
    {
      setChar(i, '8');
    }
  }

  // blink the reset a few times.
  // NOTE: blocking, will return after `blinkCount * 2 * blinkTime` milliseconds.
  void blinkReset(size_t blinkCount = 3, uint8_t blinkTime = 50)
  {
    for (size_t i = 0; i < blinkCount; i++)
    {
      clear();
      for (size_t i = 0; i < blinkTime; i++)
      {
        tick();
        delay(1);
      }
      displayReset();
      for (size_t i = 0; i < blinkTime; i++)
      {
        tick();
        delay(1);
      }
    }
  }
};
