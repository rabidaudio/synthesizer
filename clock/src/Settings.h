#pragma once

#include <Arduino.h>
#include <EEPROM.h>

struct Settings
{
    uint16_t baseBPM;
    int8_t subdivisions;
    int8_t swing;
};

const Settings DEFAULT_SETTINGS = {120, 4, 0};

class SettingsManager
{
    Settings _currentSettings;
    uint16_t _baseAddress;

public:
    void begin(uint16_t baseAddress = 0)
    {
        _baseAddress = baseAddress;
        EEPROM.get(_baseAddress, _currentSettings);
        if (_currentSettings.baseBPM == 0 || _currentSettings.baseBPM > 300)
        {
            _currentSettings = DEFAULT_SETTINGS;
        }
    }

    Settings getCurrentSettings()
    {
        return _currentSettings;
    }

    void writeSettings(Settings settings)
    {
        _currentSettings = settings;
        EEPROM.put(_baseAddress, settings);
    }

    void restoreDefaults()
    {
        writeSettings(DEFAULT_SETTINGS);
    }
};
