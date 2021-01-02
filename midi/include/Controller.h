#pragma once

#if ARDUINO
#include <Arduino.h>
#else
#include <inttypes.h>
#endif

#define STACK_DEPTH 8
#define OUTPUTS 4

enum Mode {
  off,
  single, // 1x1
  dual, // 2x1
  triple, // 3x1
  quad, // 4x1
  // 4x1 / 2
  // 2x2
  // 1x2
  // 1x4
};

class NoteStack {
  private:
    uint8_t _data[STACK_DEPTH];
    uint8_t _index;
  public:
    uint8_t indexOf(uint8_t note);
    void push(uint8_t note);
    void popAt(uint8_t index);
    bool isEmpty();
    uint8_t size();
    uint8_t top();
    void reset();
};

class Controller {
  public:
    void setup(void (*write_pitch) (const uint8_t dac, const uint8_t note),
                void (*write_envelope) (const uint8_t dac, const uint8_t note));
    void setMode(Mode mode);
    void onNoteDown(const uint8_t note, const uint8_t velocity);
    void onNoteUp(const uint8_t note, const uint8_t velocity);

  private:
    Mode _mode = off;
    NoteStack _stacks[OUTPUTS];
    uint8_t _overflow_index;
    void (*_write_pitch) (const uint8_t dac, const uint8_t note);
    void (*_write_envelope) (const uint8_t dac, const uint8_t level);
};
