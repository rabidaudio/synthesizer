#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_LEDBackpack.h>

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

// A set of 7-segment displays driven by a HT16K33 I2C driver chip.
class BackpackDisplay
{
private:
  Adafruit_AlphaNum4 _alpha4 = Adafruit_AlphaNum4();

public:
  void begin()
  {
    _alpha4.begin(0x70);
  }

  void clear()
  {
    _alpha4.clear();
    _alpha4.writeDisplay();
  }

  void displayNumber(int16_t number)
  {
    _alpha4.clear();
    // _alpha4.writeDigitAscii(0, getDigit(number, 3));
    _alpha4.writeDigitAscii(1, getDigit(number, 2));
    _alpha4.writeDigitAscii(2, getDigit(number, 1));
    _alpha4.writeDigitAscii(3, getDigit(number, 0));
    _alpha4.writeDisplay();
  }

  void tick()
  {
    // no-op, for compatibility with other Display class
  }

  void setChar(size_t i, char c)
  {
    _alpha4.writeDigitAscii(0, c);
  }

  void displayReset()
  {
    _alpha4.clear();
    _alpha4.writeDigitAscii(0, '0', true);
    _alpha4.writeDigitAscii(1, '0', true);
    _alpha4.writeDigitAscii(2, '0', true);
    // _alpha4.writeDigitAscii(3, '0', true);
    _alpha4.writeDisplay();
  }

  void blinkReset(size_t blinkCount = 3, uint8_t blinkTime = 50)
  {
    for (size_t i = 0; i < blinkCount; i++)
    {
      clear();
      delay(blinkTime);
      displayReset();
      delay(blinkTime);
    }
  }
};
