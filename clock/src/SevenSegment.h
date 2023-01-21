#pragma once

#include <Arduino.h>

// REGULAR-WIRING

#define CHAR_BLANK 0b00000000
#define CHAR_MINUS 0b00000001
#define CHAR_UNDERSCORE 0b01000000

// TODO: would switch be faster than
// array index?
const uint8_t LETTERS[] = {
    //_DCBAEFG
    0b01111110,
    0b00110000,
    0b01011101,
    0b01111001,
    0b00110011,
    0b01101011,
    0b01101111,
    0b00111000,
    0b01111111,
    0b01111011,
};

// ALT-WIRING
// in order to simplify the PCB design to fit within the 3HP
// constraints, the center 7-segment is wired up differently.
// Thus we have different tables for that display:
#define CHAR_MINUS_ALT 0b00000001
#define CHAR_UNDERSCORE_ALT 0b00001000

const uint8_t LETTERS_ALT[] = {
    //_ABCDFEG
    0b01111110,
    0b00110000,
    0b01101011,
    0b01111001,
    0b00110101,
    0b01011101,
    0b01011111,
    0b01110000,
    0b01111111,
    0b01111101,
};


// Addresses a common-cathode 7-segment display without a
// decimal.
// Assumes ABCDEGF segments are connected to pins 0-6 of
// a AVR port for faster addressing.
// The control pin should be connected to the common cathode.
// It is pulled low to turn on the LEDs.
class SevenSegment
{
private:
  uint8_t _controlPin;
  bool _altWiring;
  volatile uint8_t *_segmentPort;

public:
  void begin(uint8_t portNumber, uint8_t controlPin, bool altWiring)
  {
    _controlPin = controlPin;
    _segmentPort = portOutputRegister(portNumber);
    _altWiring = altWiring;
    pinMode(controlPin, OUTPUT);
    volatile uint8_t *portModeRegister = portModeRegister(portNumber);
    *portModeRegister = 0x7F;
    turnOff();
  }

  void turnOff()
  {
    digitalWrite(_controlPin, HIGH);
  }

  void turnOn()
  {
    digitalWrite(_controlPin, LOW);
  }

  bool display(char c)
  {
    if (c >= '0' && c <= '9')
    {
      if (_altWiring) {
        write(LETTERS_ALT[c - '0']);
      } else {
        write(LETTERS[c - '0']);
      }
      return true;
    }
    if (c == ' ')
    {
      write(CHAR_BLANK);
      return true;
    }
    if (c == '-')
    {
      write(_altWiring ? CHAR_MINUS_ALT : CHAR_MINUS);
      return true;
    }
    if (c == '_')
    {
      write(_altWiring ? CHAR_UNDERSCORE_ALT : CHAR_UNDERSCORE);
      return true;
    }
    // unsupported char
    return false;
  }

  private:
    void write(uint8_t bitmask)
    {
      // We're only using 7 LS bits for controlling
      // the display, the last bit may be used as another
      // IO, so we don't want to overwrite it.
      *_segmentPort = (bitmask & 0b01111111) | (*_segmentPort & 0b10000000);
    }
};
