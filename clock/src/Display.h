#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_LEDBackpack.h>


class Display {
  private:
    Adafruit_AlphaNum4 _alpha4 = Adafruit_AlphaNum4();

  public:
    void begin() {
      _alpha4.begin(0x70);
    }

    void displayBPM(uint16_t bpm) {
      // TODO: make more efficient code than strings
      String strval = String(bpm, DEC);
      while (strval.length() < 3) {
        strval = " " + strval;
      }

      _alpha4.clear();
      _alpha4.writeDigitAscii(1, strval[0]);
      _alpha4.writeDigitAscii(2, strval[1]);
      _alpha4.writeDigitAscii(3, strval[2]);
      _alpha4.writeDisplay();
    }

    void displaySwing(int8_t swing) {
      // TODO: make more efficient code than strings
      String strval = String(swing, DEC);
      while (strval.length() < 4) {
        strval = " " + strval;
      }

      _alpha4.clear();
      _alpha4.writeDigitAscii(0, strval[0]);
      _alpha4.writeDigitAscii(1, strval[1]);
      _alpha4.writeDigitAscii(2, strval[2]);
      _alpha4.writeDigitAscii(3, strval[3]);
      _alpha4.writeDisplay();
    }
};
