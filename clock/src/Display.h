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

class Display
{
private:
  Adafruit_AlphaNum4 _alpha4 = Adafruit_AlphaNum4();

public:
  void begin()
  {
    _alpha4.begin(0x70);
  }

  void displayNumber(int16_t number, uint8_t dotFlags = 0)
  {
    _alpha4.clear();
    _alpha4.writeDigitAscii(0, getDigit(number, 3), (dotFlags & 0b00001000));
    _alpha4.writeDigitAscii(1, getDigit(number, 2), (dotFlags & 0b00000100));
    _alpha4.writeDigitAscii(2, getDigit(number, 1), (dotFlags & 0b00000010));
    _alpha4.writeDigitAscii(3, getDigit(number, 0), (dotFlags & 0b00000001));
    _alpha4.writeDisplay();
  }

  void displayReset()
  {
    _alpha4.clear();
    _alpha4.writeDigitAscii(0, '0', true);
    _alpha4.writeDigitAscii(1, '0', true);
    _alpha4.writeDigitAscii(2, '0', true);
    _alpha4.writeDigitAscii(3, '0', true);
    _alpha4.writeDisplay();
  }
};
