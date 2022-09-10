#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_LEDBackpack.h>

Adafruit_AlphaNum4 alpha4 = Adafruit_AlphaNum4();


#define CLOCK_PIN 10
#define SUBDIV_PIN 13

void setupTimer1() {
  noInterrupts();
  // Clear registers
  TCCR1A = 0;
  TCCR1B = 0;
  TCNT1 = 0;

  // 120 BPM = 2 Hz = (16000000/((7811+1)*1024))
  OCR1A = 7811;
  OCR1B = 312; // ~20ms
  // CTC
  TCCR1B |= (1 << WGM12);
  // Prescaler 1024
  TCCR1B |= (1 << CS12) | (1 << CS10);
  // Output Compare Match A Interrupt Enable
  TIMSK1 |= (1 << OCIE1A) | (1 << OCIE1B);
  interrupts();
}

void setDisplay(uint16_t value) {
  String strval = String(value, DEC);
  while (strval.length() < 4) {
    strval = "0" + strval;
  }

  alpha4.clear();
  alpha4.writeDigitAscii(0, strval[0]);
  alpha4.writeDigitAscii(1, strval[1]);
  alpha4.writeDigitAscii(2, strval[2]);
  alpha4.writeDigitAscii(3, strval[3]);
  alpha4.writeDisplay();
}

 // register values for BPMs from 15 to 500
 const PROGMEM uint16_t BPM_LOOKUP[] = {
  62499, 58592, 55146, 52082, 49341, 46874, 44641, 42612, 40759, 39061,
  37499, 36056, 34721, 33481, 32326, 31249, 30240, 29295, 28408, 27572,
  26784, 26040, 25336, 24670, 24037, 23436, 22864, 22320, 21801, 21305,
  20832, 20379, 19945, 19530, 19131, 18749, 18381, 18027, 17687, 17360,
  17044, 16740, 16446, 16162, 15888, 15624, 15367, 15119, 14879, 14647,
  14422, 14203, 13991, 13785, 13585, 13391, 13203, 13019, 12841, 12667,
  12499, 12334, 12174, 12018, 11866, 11717, 11573, 11431, 11294, 11159,
  11028, 10900, 10774, 10652, 10532, 10415, 10301, 10189, 10079,  9972,
   9867,  9764,  9663,  9565,  9468,  9374,  9281,  9190,  9100,  9013,
   8927,  8843,  8760,  8679,  8599,  8521,  8444,  8369,  8295,  8222,
   8151,  8080,  8011,  7943,  7877,  7811,  7746,  7683,  7620,  7559,
   7499,  7439,  7380,  7323,  7266,  7210,  7155,  7101,  7047,  6995,
   6943,  6892,  6842,  6792,  6743,  6695,  6647,  6601,  6554,  6509,
   6464,  6420,  6376,  6333,  6290,  6249,  6207,  6166,  6126,  6086,
   6047,  6008,  5970,  5932,  5895,  5858,  5821,  5786,  5750,  5715,
   5680,  5646,  5612,  5579,  5546,  5513,  5481,  5449,  5418,  5386,
   5356,  5325,  5295,  5265,  5236,  5207,  5178,  5150,  5121,  5094,
   5066,  5039,  5012,  4985,  4959,  4933,  4907,  4881,  4856,  4831,
   4806,  4782,  4757,  4733,  4710,  4686,  4663,  4640,  4617,  4594,
   4572,  4549,  4527,  4506,  4484,  4463,  4442,  4421,  4400,  4379,
   4359,  4339,  4319,  4299,  4279,  4260,  4241,  4221,  4203,  4184,
   4165,  4147,  4128,  4110,  4092,  4075,  4057,  4039,  4022,  4005,
   3988,  3971,  3954,  3938,  3921,  3905,  3889,  3872,  3857,  3841,
   3825,  3809,  3794,  3779,  3764,  3749,  3734,  3719,  3704,  3689,
   3675,  3661,  3646,  3632,  3618,  3604,  3590,  3577,  3563,  3550,
   3536,  3523,  3510,  3497,  3484,  3471,  3458,  3445,  3433,  3420,
   3408,  3395,  3383,  3371,  3359,  3347,  3335,  3323,  3311,  3300,
   3288,  3276,  3265,  3254,  3242,  3231,  3220,  3209,  3198,  3187,
   3176,  3166,  3155,  3144,  3134,  3124,  3113,  3103,  3093,  3082,
   3072,  3062,  3052,  3042,  3032,  3023,  3013,  3003,  2994,  2984,
   2975,  2965,  2956,  2947,  2937,  2928,  2919,  2910,  2901,  2892,
   2883,  2874,  2865,  2857,  2848,  2839,  2831,  2822,  2814,  2805,
   2797,  2789,  2780,  2772,  2764,  2756,  2748,  2740,  2732,  2724,
   2716,  2708,  2700,  2692,  2685,  2677,  2669,  2662,  2654,  2647,
   2639,  2632,  2625,  2617,  2610,  2603,  2595,  2588,  2581,  2574,
   2567,  2560,  2553,  2546,  2539,  2532,  2525,  2519,  2512,  2505,
   2499,  2492,  2485,  2479,  2472,  2466,  2459,  2453,  2446,  2440,
   2434,  2427,  2421,  2415,  2409,  2402,  2396,  2390,  2384,  2378,
   2372,  2366,  2360,  2354,  2348,  2342,  2336,  2331,  2325,  2319,
   2313,  2308,  2302,  2296,  2291,  2285,  2280,  2274,  2268,  2263,
   2258,  2252,  2247,  2241,  2236,  2231,  2225,  2220,  2215,  2210,
   2204,  2199,  2194,  2189,  2184,  2179,  2174,  2169,  2164,  2159,
   2154,  2149,  2144,  2139,  2134,  2129,  2124,  2120,  2115,  2110,
   2105,  2101,  2096,  2091,  2086,  2082,  2077,  2073,  2068,  2063,
   2059,  2054,  2050,  2045,  2041,  2037,  2032,  2028,  2023,  2019,
   2015,  2010,  2006,  2002,  1997,  1993,  1989,  1985,  1981,  1976,
   1972,  1968,  1964,  1960,  1956,  1952,  1948,  1944,  1939,  1935,
   1931,  1928,  1924,  1920,  1916,  1912,  1908,  1904,  1900,  1896,
   1892,  1889,  1885,  1881,  1877,  1874,
};

void setBPM(uint16_t bpm) {
//  ((16000000/(bpm / 60))/1024)-1
  uint16_t v = pgm_read_word_near(BPM_LOOKUP + (bpm - 15));
  OCR1A = v;
  TCNT1 = 0; // reset timer 
}

uint16_t bpm;


const size_t LOW_PASS_SIZE = 16;
uint16_t measurements[LOW_PASS_SIZE];
size_t measurement_index = 0;
// take in the latest mesasurement and return the current bpms
// after low pass filtering
uint16_t measureBPM(uint16_t measurement) {
  uint16_t bpm = (measurement / 4) + 32;
  measurements[measurement_index] = bpm;
  measurement_index = (measurement_index + 1) % LOW_PASS_SIZE;
  uint16_t sum = 0;
  for (size_t i = 0; i < LOW_PASS_SIZE; i++) {
    sum += measurements[i];
  }
  return sum / LOW_PASS_SIZE;
}

void setup() {
  pinMode(CLOCK_PIN, OUTPUT);
  pinMode(SUBDIV_PIN, OUTPUT);
  alpha4.begin(0x70);

  Serial.begin(9600);

  setupTimer1();
  
  // Seed LPF
  for(size_t i = 0; i < LOW_PASS_SIZE; i++) {
    measureBPM(analogRead(A0));
  }
}

void loop() {
  uint16_t value = analogRead(A0);
  uint16_t newBpm = measureBPM(value);
  Serial.print(value);
  Serial.print("\t");
  Serial.print(newBpm);
  Serial.print("\t");
  Serial.print(bpm);
  Serial.println();
  if (newBpm != bpm) {
    bpm = newBpm;
    setDisplay(bpm);
    setBPM(bpm);
  }

  delay(100);
}

uint8_t subdivisions = 3;
uint8_t subdiv_counter = 0;

ISR(TIMER1_COMPA_vect) {
  digitalWrite(CLOCK_PIN, HIGH);
  subdiv_counter++;
  if (subdiv_counter >= subdivisions) {
    digitalWrite(SUBDIV_PIN, HIGH);
    subdiv_counter = 0;
  }
}

ISR(TIMER1_COMPB_vect) {
  digitalWrite(CLOCK_PIN, LOW);
  digitalWrite(SUBDIV_PIN, LOW);
}
