#pragma once
#include <Arduino.h>

#define CHAR_BLANK 0b00000000
#define CHAR_MINUS 0b00000010

const uint8_t LETTERS[] = {
  // ABCDEGF
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

class SevenSegment {
  private:
    uint8_t _controlPin;
    volatile uint8_t* _segmentPort;

  public:
    // NOTE: its up to the caller to set the segmentPort to an
    // output since we don't know which registers to use
    void begin(uint8_t controlPin, volatile uint8_t* segmentPort) {
      _controlPin = controlPin;
      _segmentPort = segmentPort;
      pinMode(controlPin, OUTPUT);
      turnOff();
    }

    void turnOff() {
      digitalWrite(_controlPin, HIGH);
    }

    void turnOn() {
      digitalWrite(_controlPin, LOW);
    }

    bool display(char c) {
      if (c >= '0' && c <= '9') {
        *_segmentPort = LETTERS[c - '0'];
        return true;
      }
      if (c == ' ')   {
        *_segmentPort = CHAR_BLANK;
        return true;
      }
      if (c == '-')   {
        *_segmentPort = CHAR_MINUS;
        return true;
      }
      // unsupported char
      return false;
    }
};
