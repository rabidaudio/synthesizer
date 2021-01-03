/** Configuration **/
// which pin to read from
const int analogPin = A1;
// number of bins
const int binCount = 4;
// which digital output pins to use for each bin
const int binPins[binCount] = { 0, 1, 3, 4 };
// the percent beyond the cutoff you must turn for a change to occur
const float hysteresis = 0.05;
#define DEBUG false

// it would be more efficient to use ints instead of floats but
// performance isn't really a concern here and it means we can
// easily support arbitrary configurations
const float binSize = 1024 / (float) binCount;
const float overlap = hysteresis * binSize;
size_t state = -1;

void setup() {
  for (size_t i = 0; i < binCount; i++) {
    pinMode(binPins[i], OUTPUT);
    digitalWrite(binPins[i], LOW);
  }
//  if (DEBUG) {
//    Serial.begin(9600);
//    Serial.print("binSize: "); Serial.println(binSize);
//    Serial.print("overlap: "); Serial.println(overlap);
//  }
}

void loop() {
  float value = (float) analogRead(analogPin);
//    if (DEBUG) {
//      Serial.print("value: "); Serial.println(value);
//    }
  float upperBound = ((state + 1) * binSize) + overlap;
  float lowerBound = (state * binSize) - overlap;
  if (value > upperBound) {
    setState(state + 1);
  } else if (value < lowerBound) {
    setState(state - 1);
  }
}

void setState(size_t s) {
  if (s == state) return;
  digitalWrite(binPins[state], LOW);
  digitalWrite(binPins[s], HIGH);
  state = s;
//  if (DEBUG) {
//    Serial.print("state: "); Serial.println(state);
//  }
}
