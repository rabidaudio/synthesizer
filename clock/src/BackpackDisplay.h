#pragma once

#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_LEDBackpack.h>
#include "Display.h"

// A set of 7-segment displays driven by a HT16K33 I2C driver chip.
class BackpackDisplay : public Display<4>
{
private:
  Adafruit_AlphaNum4 _alpha4 = Adafruit_AlphaNum4();

public:
  void begin()
  {
    _alpha4.begin(0x70);
  }

  void writeDisplay()
  {
    _alpha4.writeDisplay();
  }

  void tick()
  {
    // no-op, for compatibility with other Display class
  }

  void setChar(size_t i, char c)
  {
    if (i < 4)
      _alpha4.writeDigitAscii(0, c);
  }

  void clear()
  {
    _alpha4.clear();
    _alpha4.writeDisplay();
  }
};
