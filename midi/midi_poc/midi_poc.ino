#include <MIDI.h>

MIDI_CREATE_INSTANCE(HardwareSerial, Serial1, MIDI);

struct Note {
  bool on;
  byte note;
  byte velocity; 
} note;

//size_t note_index = 0;
//size_t r_index = 0;
//Note notes[128];

void setup() {
  Serial.begin(115200);
//  pinMode(8, INPUT);

  MIDI.begin(MIDI_CHANNEL_OMNI);
  MIDI.setHandleNoteOn(printOn);
  MIDI.setHandleNoteOff(printOff);
  
  // TODO: support for pitch bend
  Serial.println("ready");
}

void loop() {
   MIDI.read();
//   if (digitalRead(8) == HIGH) {
//     while (r_index < note_index) {
//      Serial.print("on: "); Serial.print(notes[r_index % 128].on);
//      // Serial.print(" channel: "); Serial.print(channel);
//      Serial.print(" note: "); Serial.print(notes[r_index % 128].note);
//      Serial.print(" velocity: "); Serial.println(notes[r_index % 128].velocity);
//      r_index += 1;
//     }
//   }
}

void printOn(byte channel, byte note, byte velocity) {
//  notes[note_index % 128].on = true;
//  notes[note_index % 128].note = note;
//  notes[note_index % 128].velocity = velocity;
//  note_index += 1;
  Serial.print("ON  - ");
  Serial.print("channel: "); Serial.print(channel);
  Serial.print(" note: "); Serial.print(note);
  Serial.print(" velocity: "); Serial.println(velocity);
}

void printOff(byte channel, byte note, byte velocity) {
//  notes[note_index % 128].on = false;
//  notes[note_index % 128].note = note;
//  notes[note_index % 128].velocity = velocity;
//  note_index += 1;
  Serial.print("OFF - ");
  Serial.print("channel: "); Serial.print(channel);
  Serial.print(" note: "); Serial.print(note);
  Serial.print(" velocity: "); Serial.println(velocity);
}
