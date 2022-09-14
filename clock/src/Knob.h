#pragma once
#include <Arduino.h>

uint16_t delta(uint16_t a, uint16_t b)
{
  if (a > b)
  {
    return a - b;
  }
  return b - a;
}

// Read the value of a potentiometer and
// report back it's value after smoothing and
// filtering the signal. Implements hysteresis
// causing the value to be constant unless the knob
// is moving.
template <int LP_SAMPLES>
class Knob
{
private:
  uint8_t _pin;
  uint8_t _hysteresis;
  uint32_t _settle_time_ms;
  uint16_t _value;
  bool _moving = false;
  uint32_t _moving_at = 0;
  size_t _m_idx;
  uint16_t _measurements[LP_SAMPLES];

public:
  void begin(uint8_t pin, uint16_t hysteresis, uint32_t settle_time_ms)
  {
    _pin = pin;
    _hysteresis = hysteresis;
    _settle_time_ms = settle_time_ms;
    _m_idx = 0;
    // seed filter
    _moving = true;
    _moving_at = millis();
    for (size_t i = 0; i < LP_SAMPLES; i++)
    {
      _value = read();
      delay(settle_time_ms / LP_SAMPLES);
    }
    _moving = false;
  }

  bool isMoving()
  {
    return _moving;
  }

  uint16_t read()
  {
    uint16_t value = analogRead(_pin);
    _measurements[_m_idx] = value;
    _m_idx = (_m_idx + 1) % LP_SAMPLES;
    uint32_t sum = 0;
    uint16_t max_delta = 0;
    for (size_t i = 0; i < LP_SAMPLES; i++)
    {
      sum += _measurements[i];
      uint16_t step_delta = delta(_measurements[i], value);
      if (step_delta > max_delta)
        max_delta = step_delta;
    }
    uint16_t new_value = sum / LP_SAMPLES;
    if (!_moving && delta(_value, new_value) > _hysteresis)
    {
      _moving = true;
      _moving_at = millis();
    }
    else if (_moving)
    {
      if (max_delta > _hysteresis)
      {
        // still moving
        _moving_at = millis();
      }
      else if ((millis() - _moving_at) >= _settle_time_ms)
      {
        _moving = false;
      }
    }

    if (_moving)
    {
      // always show the most up-to-date value
      _value = new_value;
      return new_value;
    }
    else
    {
      // continue to return the saved value
      return _value;
    }
  }
};
