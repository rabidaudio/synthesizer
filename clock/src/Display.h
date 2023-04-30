#pragma once

#include <Arduino.h>

// Interface used by both Display implementations
template <size_t DIGITS>
class Display
{
public:
    // update the display with any pending changes
    virtual void writeDisplay() = 0;
    // set the digit i to the character c. i=0 -> LSB
    virtual void setChar(size_t i, char c) = 0;
    // update the display at a regular interval (if needed)
    virtual void tick() = 0;

    void tickFor(uint16_t ms)
    {
        for (uint16_t t = 0; t < ms; t++)
        {
            tick();
            delay(1);
        }
    }

    // set all the displays to blank
    void clear()
    {
        for (size_t i = 0; i < DIGITS; i++)
        {
            setChar(i, ' ');
        }
        writeDisplay();
    }

    // display a signed number on the
    void displayNumber(int16_t number)
    {
        for (size_t i = 0; i < DIGITS; i++)
        {
            setChar(i, getDigit(number, i));
        }
        writeDisplay();
    }

    void displayPaused()
    {
        clear();
        setChar(DIGITS / 2, '=');
        if (DIGITS % 2 == 0)
        {
            setChar(DIGITS / 2 + 1, '=');
        }
        writeDisplay();
    }

    void displaySubdivisions(int8_t subdiv)
    {
        if (subdiv < 0)
        {
            if (DIGITS > 3)
                clear();
            // display a fraction (e.g. 1/2)
            setChar(2, '1');
            setChar(1, '-');
            setChar(0, '0' + abs(subdiv));
            writeDisplay();
        }
        else
        {
            displayNumber(subdiv);
        }
    }

    // light up all segments
    void displayReset(char c)
    {
        for (size_t i = 0; i < DIGITS; i++)
        {
            setChar(i, c);
        }
        writeDisplay();
    }

    // blink the reset a few times.
    // NOTE: blocking, will return after `blinkCount * 2 * blinkTime` milliseconds.
    void blinkReset(char c, size_t blinkCount = 3, uint8_t blinkTime = 50)
    {
        for (size_t i = 0; i < blinkCount; i++)
        {
            clear();
            for (size_t i = 0; i < blinkTime; i++)
            {
                tick();
                delay(1);
            }
            displayReset(c);
            for (size_t i = 0; i < blinkTime; i++)
            {
                tick();
                delay(1);
            }
        }
    }

    // given a number, get the character at index `digit`
    // (from right). Includes a negative sign if negative.
    // Left pads with space.
    char getDigit(int16_t value, size_t digit)
    {
        bool negative = value < 0;
        if (negative)
            value = -1 * value;
        for (size_t d = 0; d < digit; d++)
        {
            value = value / 10;
            if (value == 0)
            {
                if (d + 1 == digit && negative)
                    return '-';
                return ' ';
            }
        }
        value = value % 10;
        return '0' + value;
    }
};
