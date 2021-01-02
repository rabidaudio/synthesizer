#include <MIDI.h>

MIDI_CREATE_INSTANCE(HardwareSerial, Serial1, MIDI);

void printOn(byte channel, byte note, byte velocity) {
  Serial.print("ON  - ");
  Serial.print("channel: "); Serial.print(channel);
  Serial.print(" note: "); Serial.print(noteName(note));
  Serial.print(" velocity: "); Serial.println(velocity);
}

void printOff(byte channel, byte note, byte velocity) {
  Serial.print("OFF - ");
  Serial.print("channel: "); Serial.print(channel);
  Serial.print(" note: "); Serial.print(noteName(note));
  Serial.print(" velocity: "); Serial.println(velocity);
}

const char NOTES[] = "C C#D D#E F F#G G#A A#B ";

String noteName(byte pitch) {
  char data[4];
  data[0] = NOTES[(pitch % 12) * 2];
  data[1] = NOTES[((pitch % 12) * 2) + 1];
  data[2] = '0' + (pitch / 12);
  data[3] = '\0';
  return String(data);
}

void setup() {
  Serial.begin(115200);
  Serial1.begin(31250);
   
  MIDI.setHandleNoteOn(printOn);
  MIDI.setHandleNoteOff(printOff);
  MIDI.begin(MIDI_CHANNEL_OMNI);
  
  // TODO: support for pitch bend
  Serial.println("ready");
}

void loop() {
    MIDI.read();
}
