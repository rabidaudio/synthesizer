#include <Arduino.h>
#include <MIDI.h>
#include <MAX5134.h>

#define DEBUG true
// #define DEBUG false

const int csPin = 10;
const int readyPin = 9;

Max5134 DAC;
MIDI_CREATE_INSTANCE(HardwareSerial, Serial1, MIDI);

byte currentNote = 0x00;

void onNoteOn(byte channel, byte note, byte velocity) {
  if (currentNote != 0x00) return;
  uint16_t level = map(note, 9, 127, 0, 65535);
  if (DEBUG) {
    Serial.print("ON  - ");
    Serial.print("channel: "); Serial.print(channel);
    Serial.print(" note: "); Serial.print(note);
    Serial.print(" velocity: "); Serial.print(velocity << 1);
    Serial.print(" level: "); Serial.println(level);
  }
  currentNote = note;
  DAC.write(DAC0, level);
  analogWrite(2, velocity << 1);
}

void onNoteOff(byte channel, byte note, byte velocity) {
  if (currentNote != note) return;
  if (DEBUG) {
    Serial.print("OFF - ");
    Serial.print("channel: "); Serial.print(channel);
    Serial.print(" note: "); Serial.print(note);
    Serial.print(" velocity: "); Serial.println(velocity);
  }
  currentNote = 0x00;
  analogWrite(2, 0);
}

void setup() {
  if (DEBUG) Serial.begin(9600);

  pinMode(2, OUTPUT);

  delay(500);
  DAC.begin(csPin);
  
  MIDI.setHandleNoteOn(onNoteOn);
  MIDI.setHandleNoteOff(onNoteOff);
  MIDI.begin(MIDI_CHANNEL_OMNI);
  if (DEBUG) Serial.println("ready");
}

void loop() {
  MIDI.read();
}
