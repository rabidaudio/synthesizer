#pragma once

#include "Display.h"
#include "SevenSegment.h"

// An array of 7-segment displays.
// Uses the same digit control port but only addresses one at a time,
// round robbin. This means the more segments there are the worse
// the brightness will be. Must call `tick` on a tight loop to
// switch the digit displayed or else the display will clearly flicker.
// Number of segments must be a compile time constant through `DIGITS`
// template.
// Displays signed 16-bit numbers.
template <size_t DIGITS>
class SevenSegmentArrayDisplay : public Display<DIGITS>
{
private:
  SevenSegment _digits[DIGITS]; // LSB first
  size_t _index = 0;            // which segment is currently addressed
  char _contents[DIGITS];

public:
  void begin(uint8_t portNumber, uint8_t *ctrlPins, bool *altWirings)
  {
    for (size_t i = 0; i < DIGITS; i++)
    {
      _digits[i].begin(portNumber, ctrlPins[i], altWirings[i]);
      setChar(i, ' ');
    }
    _index = 0;
  }

  // update which display is showing
  void tick()
  {
    _digits[_index].turnOff();
    _index = (_index + 1) % DIGITS;
    _digits[_index].display(_contents[_index]);
    _digits[_index].turnOn();
  }

  void writeDisplay()
  {
    // no-op, for compatibility with other Display class
  }

  void setChar(size_t i, char c)
  {
    if (i < DIGITS)
      _contents[i] = c;
  }
};
