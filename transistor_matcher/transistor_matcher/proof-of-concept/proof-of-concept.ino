// When measuring at 50ms period,  thereseems to be a 0.2Hz noise wave
// (although that's likely aliasing of a higher freqency wave. Regardless,
// it gives us a point of reference for low pass filter size.
// We want our low pass filter to be a power of 2 for division performance
// The buffer size needed to grab a full period is (1/0.2)*1000 / 50 = 100
// so we round up to 128 
#define LOW_PASS_SIZE 128

#define ANALOG_INPUT A0
#define ZERO_RELAY 2

uint16_t low_pass_buffer[LOW_PASS_SIZE];
uint8_t  low_pass_index = 0;
uint16_t low_pass_result = 0;
uint32_t runningSum = 0;

// Updates the low pass filter, and returns true when
// a full buffer pass has occurred 
float handleSample(uint16_t sample) {
  runningSum += sample;
  runningSum -= low_pass_buffer[low_pass_index];
  low_pass_buffer[low_pass_index] = sample;
  low_pass_index = (low_pass_index + 1) % LOW_PASS_SIZE;
  return (float) runningSum / LOW_PASS_SIZE;
}

float zero = 0.0;

#define GAIN_SETTING_RESISTOR 1000 // 220
#define GAIN 85 // (80000 / GAIN_SETTING_RESISTOR) + 5
#define VREF 5.0 // (assuming VREF is exactly 5V...)
// Each analog step represents this many uV
const float RESOLUTION = VREF / 1024 / GAIN * 1000  * 1000;

float measured = 0;

void zeroOut() {
  Serial.print("ZERO: ");
  digitalWrite(ZERO_RELAY, HIGH);
  // first loop fills buffer, second loop just ensures there's some settling time before switching modes
  for (uint16_t i = 0; i < LOW_PASS_SIZE * 2; i++) {
    uint16_t measured = analogRead(ANALOG_INPUT);
    zero = handleSample(measured);
    // Serial.print("m: "); Serial.print(measured, DEC); Serial.print(" z: "); Serial.println(zero, DEC);
  }
  digitalWrite(ZERO_RELAY, LOW);
  Serial.println(zero, DEC);
}

void setup() {
  Serial.begin(9600);
  pinMode(ZERO_RELAY, OUTPUT);
  zeroOut();
  Serial.println("OK");
}

void loop() {
  measured = handleSample(analogRead(ANALOG_INPUT));
  measured = abs(measured - zero) * RESOLUTION;
  Serial.println(measured, DEC);
//  Serial.print("z: "); Serial.print(zero, DEC); Serial.print(" m: "); Serial.println(measured, DEC);
}
