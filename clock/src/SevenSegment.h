#pragma once

#include <Arduino.h>

#define CHAR_BLANK 0b00000000
#define CHAR_MINUS 0b00000010
#define CHAR_UNDERSCORE 0b00001000

// TODO: would switch be faster than
// array index?
const uint8_t LETTERS[] = {
    //_ABCDEGF
    0b01111101,
    0b00110000,
    0b01101110,
    0b01111010,
    0b00110011,
    0b01011011,
    0b01011111,
    0b01110000,
    0b01111111,
    0b01111011,
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
  volatile uint8_t *_segmentPort;

public:
  void begin(uint8_t portNumber, uint8_t controlPin)
  {
    _controlPin = controlPin;
    _segmentPort = portOutputRegister(portNumber);
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
      *_segmentPort = LETTERS[c - '0'];
      return true;
    }
    if (c == ' ')
    {
      *_segmentPort = CHAR_BLANK;
      return true;
    }
    if (c == '-')
    {
      *_segmentPort = CHAR_MINUS;
      return true;
    }
    if (c == '_')
    {
      *_segmentPort = CHAR_UNDERSCORE;
      return true;
    }
    // unsupported char
    return false;
  }
};
