#pragma once
#include <Arduino.h>

template <size_t STEPS, size_t LP_SAMPLES>
class Knob
{
  private:
    uint8_t _pin;
    uint16_t _measurements[LP_SAMPLES];
    size_t _measurementsIdx = 0;
    uint16_t _bounds[STEPS + 1];

  public:
    void begin(uint8_t pin) {
      _pin = pin;

      // populate LP filter
      for (size_t i = 0; i < LP_SAMPLES; i++) {
        _measurements[i] = analogRead(_pin);
        delay(10);
      }
      _measurementsIdx = 0;
      
      // populate cutoffs
      float step = 1024 / (float) (STEPS - 1);
      float v = step / 2;
      for (size_t j = 0; j < STEPS; j++) {
        _bounds[j] = (uint16_t) round(v);
        v += step;
      }
      _bounds[STEPS] = 1024;
    }

    int8_t readChanges() {
      _measurements[_measurementsIdx] = analogRead(_pin);
      _measurementsIdx = (_measurementsIdx + 1) % LP_SAMPLES;
      uint16_t avg = 0;
      for (size_t i = 0; i < LP_SAMPLES; i++) {
        avg += _measurements[i];
      }
      avg = avg / LP_SAMPLES;
      for (uint8_t j = 0; j < STEPS; j++) {
        if (_bounds[j] >= avg) {
          return j;
        }
      }
      return STEPS;
    }
};
