#pragma once

#include <Arduino.h>

// Keep track of when a value is changing,
// allowing a window of change timeout milliseconds
// after the last change to wait for another change
// to occur. Call `noteChanged` whenever the value
// changes, and `isChanging` to check if the timeout
// has expired.
class ChangeTimeout
{
    uint32_t _lastChangeAt;
    uint32_t _changeTimeoutMs;

public:
    void begin(uint32_t changeTimeoutMs)
    {
        _changeTimeoutMs = changeTimeoutMs;
        _lastChangeAt = millis();
    }

    void noteChanged()
    {
        _lastChangeAt = millis();
    }

    bool isChanging()
    {
        return millis() - _lastChangeAt < _changeTimeoutMs;
    }
};
