#pragma once

#include <Arduino.h>

// A debounced push-button toggle switch.
class Button
{

private:
  uint8_t _pin;
  bool _isPressed = false;
  uint32_t _debounceTimeMs;
  uint32_t _lastPressAt;

public:
  void begin(uint8_t pin, uint32_t debounceTimeMs)
  {
    _pin = pin;
    pinMode(pin, INPUT);
    _debounceTimeMs = debounceTimeMs;
    _isPressed = false;
    _lastPressAt = millis();
  }

  // check the button state and return value after debouncing
  bool isPressed()
  {
    bool nowPressed = digitalRead(_pin);
    // still on or off
    if (nowPressed == _isPressed)
    {
      return nowPressed;
    }
    // switched on: trigger immediately
    if (nowPressed)
    {
      _lastPressAt = millis();
      _isPressed = true;
      return true;
    }
    // switched off: trigger only if sufficient time has passed
    uint32_t now = millis();
    if (now < _lastPressAt || now - _lastPressAt > _debounceTimeMs)
    {
      _isPressed = false;
      return false;
    }
    return true;
  }

  int32_t holdTime()
  {
    if (!isPressed())
      return 0;

    return millis() - _lastPressAt;
  }
};
