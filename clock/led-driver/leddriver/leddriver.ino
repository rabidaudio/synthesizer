


const uint8_t LETTERS[] = {
  // ABCDEGF
  0b01111101,
  0b00110000,
  0b01101110,
  0b01111010,
  0b00110011,
  0b01011011,
  0b01011111,
  0b01110000,
  0b01111111,
  0b01111011,
};

void setup() {
  pinMode(7, OUTPUT);

  for (size_t i = 54; i <= 60; i++) {
    pinMode(i, OUTPUT);
  }
  digitalWrite(7, HIGH);
  PORTF = LETTERS[8];
}

void loop() {
  for (size_t i = 0; i < 10; i++) {
    digitalWrite(7, HIGH); // turn off LEDs
    PORTF = LETTERS[i];
//    digitalWrite(7, LOW); // turn on LEDs

    for (uint16_t t = 0; t < 500; t++) {
      // simulate 1/3 duty cycle flickering
        digitalWrite(7, (t % 3) == 0 ? LOW : HIGH);
        delay(1);
    }
  }
}
