#pragma once
#include <Arduino.h>

#define NO_TEMPO 0
#define TIMEOUT_US 2000000
#define SAMPLES 4

// Listen for distinct button presses
// and measure the time between them, reporting
// a bpm. Requires at least 2 taps to report.
// Averages over the last 4 taps.
class TapTempo
{
private:
  uint16_t _bpm = NO_TEMPO;
  uint32_t _deltas[SAMPLES];
  size_t _deltaIdx = 0;
  uint32_t _lastTapAt;
  bool _isPressed = false;

public:
  // given the button press state, determine the current tap
  // tempo. Returns NO_TEMPO if a measurement isn't available.
  uint16_t tick(bool pressed)
  {
    if (pressed == _isPressed)
    {
      // no change
      return _bpm;
    }
    if (!pressed)
    {
      // release
      _isPressed = false;
      return _bpm;
    }
    // new press
    _isPressed = true;

    uint32_t now = micros();
    uint32_t delta = now - _lastTapAt;
    if (now < _lastTapAt || delta > TIMEOUT_US)
    {
      // reset, treat this as the first tap
      cancel();
      _lastTapAt = now;
      return NO_TEMPO;
    }
    // save the measurement and current bpm
    _lastTapAt = now;
    _deltas[_deltaIdx % SAMPLES] = delta;
    _deltaIdx++;
    uint32_t avg = 0;
    size_t limit = _deltaIdx;
    if (limit > SAMPLES)
      limit = SAMPLES;
    for (size_t i = 0; i < limit; i++)
    {
      avg += _deltas[i];
    }
    avg = avg / limit;
    // convert the measurement in microseconds to bpm
    _bpm = (uint16_t)(60.0 / ((float)(avg) / 1000.0 / 1000.0));
    return _bpm;
  }

  bool isActive()
  {
    if (_bpm == NO_TEMPO)
      return false;
    uint32_t now = micros();
    uint32_t delta = now - _lastTapAt;
    if (now < _lastTapAt || delta > TIMEOUT_US)
      return false;
    return true;
  }

  void cancel()
  {
    _bpm = NO_TEMPO;
    _deltaIdx = 0;
    _lastTapAt = 0;
  }
};
