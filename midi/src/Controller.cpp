
#include "Controller.h"

uint8_t NoteStack::indexOf(uint8_t note) {
  for (uint8_t i = 0; i < _index; i++) {
    if (_data[i] == note) {
      return i;
    }
  }
  return -1;
}

void NoteStack::push(uint8_t note) {
  if (_index >= STACK_DEPTH) {
     // in the overflow case, drop the oldest element
      popAt(0);
  }
  _data[_index] = note;
  _index += 1;
}

void NoteStack::popAt(uint8_t index) {
  if (index < 0 || index >= _index) return;
  memcpy(_data + index + 1, _data + index, _index - index - 1);
  _index -= 1;
}

bool NoteStack::isEmpty() {
  return _index == 0;
}

uint8_t NoteStack::size() {
  return _index;
}

uint8_t NoteStack::top() {
  return _data[_index - 1];
}

void NoteStack::reset() {
  _index = 0;
}

void Controller::setup(void (*write_pitch) (const uint8_t dac, const uint8_t note),
                void (*write_envelope) (const uint8_t dac, const uint8_t level)) {
  _write_pitch = write_pitch;
  _write_envelope = write_envelope;
}


void Controller::onNoteDown(const uint8_t note, const uint8_t velocity) {
  // if (_mode == split_quad) {
  //   // TODO
  //   return;
  // }

  NoteStack *stack;
  // search for an open output
  for (uint8_t i = 0; i < _mode; i++) {
    stack = _stacks + i;
    
    if (stack->isEmpty()) {
      // set pitch and envelope
      return;
    }
  }

  // open output not found. need to overwrite one of the outputs
  stack = _stacks + _overflow_index;
  stack->push(note);
  _write_pitch(_overflow_index, note);
  _overflow_index = (_overflow_index + 1) % OUTPUTS;
}

void Controller::onNoteUp(const uint8_t note, const uint8_t velocity) {
  NoteStack *stack;
  // find note in stacks
  for (uint8_t i = 0; i < OUTPUTS; i++) {
    stack = _stacks + i;
    uint8_t j = stack->indexOf(note);
    if (j == -1) {
      continue;
    }
    // if note is playing, turn off
    if (j == stack->size() - 1) {
      // turn off note
      _write_envelope(i, 0);
      stack->popAt(j);

      if (stack->isEmpty()) {
        // note: leave the pitch the same, in case an envelope is running
      } else {
        // output the next note in the stack
        _write_pitch(i, stack->top());
      }
    } else {
      // clear note from stack, shifting as necessary
      stack->popAt(j);
    }
    return;
  }
}
