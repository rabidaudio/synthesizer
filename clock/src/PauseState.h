#pragma once

#include <Arduino.h>

// Keep track of if output is paused or not
class PauseState
{
private:
    bool _paused = false;
    bool _held = false;

public:
    void setState(bool buttonsPressed)
    {
        if (!_held && buttonsPressed)
        {
            _paused = !_paused;
        }
        _held = buttonsPressed;
    }

    bool isPaused()
    {
        return _paused;
    }

    void reset()
    {
        _paused = false;
    }
};
