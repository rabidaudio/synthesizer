#pragma once

#include <Arduino.h>
#include <util/atomic.h>
#include "Settings.h"

#define MIN_CLOCK (uint16_t)8
#define MAX_CLOCK (uint16_t)1200
#define MIN_BPM (MIN_CLOCK * 4) // 32
#define MAX_BPM (MAX_CLOCK / 4) // 300

// Lookup table for OCR1A register values for BPMs from 8 to 1200.
// This is to avoid floating point math.
// 120 BPM = 2 Hz = (16000000/((7811+1)*1024))
// Calculations:
// https://docs.google.com/spreadsheets/d/1pTg9IQDEw8LUGN85Lwp80kAzATN1I9yxx0m5xDrEWBg/edit#gid=0
const PROGMEM uint16_t CLOCK_LOOKUP[] = {
    /*117187,  93750,  78125,  66964,*/ 58593, 52083, 46875, 42613, 39062, 36057,
    33482, 31250, 29296, 27573, 26041, 24671, 23437, 22321, 21306, 20380,
    19531, 18750, 18028, 17361, 16741, 16163, 15625, 15120, 14648, 14204,
    13786, 13392, 13020, 12668, 12335, 12019, 11718, 11432, 11160, 10901,
    10653, 10416, 10190, 9973, 9765, 9566, 9375, 9191, 9014, 8844,
    8680, 8522, 8370, 8223, 8081, 7944, 7812, 7684, 7560, 7440,
    7324, 7211, 7102, 6996, 6893, 6793, 6696, 6602, 6510, 6421,
    6334, 6250, 6167, 6087, 6009, 5933, 5859, 5787, 5716, 5647,
    5580, 5514, 5450, 5387, 5326, 5266, 5208, 5151, 5095, 5040,
    4986, 4934, 4882, 4832, 4783, 4734, 4687, 4641, 4595, 4550,
    4507, 4464, 4422, 4380, 4340, 4300, 4261, 4222, 4185, 4148,
    4111, 4076, 4040, 4006, 3972, 3939, 3906, 3873, 3842, 3810,
    3780, 3750, 3720, 3690, 3662, 3633, 3605, 3578, 3551, 3524,
    3498, 3472, 3446, 3421, 3396, 3372, 3348, 3324, 3301, 3277,
    3255, 3232, 3210, 3188, 3167, 3145, 3125, 3104, 3083, 3063,
    3043, 3024, 3004, 2985, 2966, 2948, 2929, 2911, 2893, 2875,
    2858, 2840, 2823, 2806, 2790, 2773, 2757, 2741, 2725, 2709,
    2693, 2678, 2663, 2648, 2633, 2618, 2604, 2589, 2575, 2561,
    2547, 2533, 2520, 2506, 2493, 2480, 2467, 2454, 2441, 2428,
    2416, 2403, 2391, 2379, 2367, 2355, 2343, 2332, 2320, 2309,
    2297, 2286, 2275, 2264, 2253, 2242, 2232, 2221, 2211, 2200,
    2190, 2180, 2170, 2160, 2150, 2140, 2130, 2121, 2111, 2102,
    2092, 2083, 2074, 2064, 2055, 2046, 2038, 2029, 2020, 2011,
    2003, 1994, 1986, 1977, 1969, 1961, 1953, 1945, 1936, 1929,
    1921, 1913, 1905, 1897, 1890, 1882, 1875, 1867, 1860, 1852,
    1845, 1838, 1831, 1823, 1816, 1809, 1802, 1795, 1789, 1782,
    1775, 1768, 1762, 1755, 1749, 1742, 1736, 1729, 1723, 1717,
    1710, 1704, 1698, 1692, 1686, 1680, 1674, 1668, 1662, 1656,
    1650, 1644, 1638, 1633, 1627, 1621, 1616, 1610, 1605, 1599,
    1594, 1588, 1583, 1578, 1572, 1567, 1562, 1557, 1552, 1547,
    1541, 1536, 1531, 1526, 1521, 1516, 1512, 1507, 1502, 1497,
    1492, 1488, 1483, 1478, 1474, 1469, 1464, 1460, 1455, 1451,
    1446, 1442, 1437, 1433, 1429, 1424, 1420, 1416, 1411, 1407,
    1403, 1399, 1395, 1390, 1386, 1382, 1378, 1374, 1370, 1366,
    1362, 1358, 1354, 1350, 1346, 1343, 1339, 1335, 1331, 1327,
    1324, 1320, 1316, 1313, 1309, 1305, 1302, 1298, 1294, 1291,
    1287, 1284, 1280, 1277, 1273, 1270, 1266, 1263, 1260, 1256,
    1253, 1250, 1246, 1243, 1240, 1236, 1233, 1230, 1227, 1223,
    1220, 1217, 1214, 1211, 1208, 1205, 1201, 1198, 1195, 1192,
    1189, 1186, 1183, 1180, 1177, 1174, 1171, 1168, 1166, 1163,
    1160, 1157, 1154, 1151, 1148, 1146, 1143, 1140, 1137, 1134,
    1132, 1129, 1126, 1124, 1121, 1118, 1116, 1113, 1110, 1108,
    1105, 1102, 1100, 1097, 1095, 1092, 1090, 1087, 1085, 1082,
    1080, 1077, 1075, 1072, 1070, 1067, 1065, 1062, 1060, 1058,
    1055, 1053, 1051, 1048, 1046, 1043, 1041, 1039, 1037, 1034,
    1032, 1030, 1027, 1025, 1023, 1021, 1019, 1016, 1014, 1012,
    1010, 1008, 1005, 1003, 1001, 999, 997, 995, 993, 991,
    988, 986, 984, 982, 980, 978, 976, 974, 972, 970,
    968, 966, 964, 962, 960, 958, 956, 954, 952, 950,
    948, 946, 945, 943, 941, 939, 937, 935, 933, 931,
    930, 928, 926, 924, 922, 920, 919, 917, 915, 913,
    911, 910, 908, 906, 904, 903, 901, 899, 897, 896,
    894, 892, 891, 889, 887, 886, 884, 882, 881, 879,
    877, 876, 874, 872, 871, 869, 868, 866, 864, 863,
    861, 860, 858, 856, 855, 853, 852, 850, 849, 847,
    846, 844, 843, 841, 840, 838, 837, 835, 834, 832,
    831, 829, 828, 826, 825, 823, 822, 820, 819, 818,
    816, 815, 813, 812, 810, 809, 808, 806, 805, 804,
    802, 801, 799, 798, 797, 795, 794, 793, 791, 790,
    789, 787, 786, 785, 783, 782, 781, 779, 778, 777,
    776, 774, 773, 772, 770, 769, 768, 767, 765, 764,
    763, 762, 760, 759, 758, 757, 756, 754, 753, 752,
    751, 750, 748, 747, 746, 745, 744, 742, 741, 740,
    739, 738, 737, 735, 734, 733, 732, 731, 730, 729,
    727, 726, 725, 724, 723, 722, 721, 720, 718, 717,
    716, 715, 714, 713, 712, 711, 710, 709, 708, 707,
    705, 704, 703, 702, 701, 700, 699, 698, 697, 696,
    695, 694, 693, 692, 691, 690, 689, 688, 687, 686,
    685, 684, 683, 682, 681, 680, 679, 678, 677, 676,
    675, 674, 673, 672, 671, 670, 669, 668, 667, 666,
    665, 664, 663, 663, 662, 661, 660, 659, 658, 657,
    656, 655, 654, 653, 652, 651, 651, 650, 649, 648,
    647, 646, 645, 644, 643, 643, 642, 641, 640, 639,
    638, 637, 636, 636, 635, 634, 633, 632, 631, 630,
    630, 629, 628, 627, 626, 625, 625, 624, 623, 622,
    621, 620, 620, 619, 618, 617, 616, 615, 615, 614,
    613, 612, 611, 611, 610, 609, 608, 607, 607, 606,
    605, 604, 604, 603, 602, 601, 600, 600, 599, 598,
    597, 597, 596, 595, 594, 594, 593, 592, 591, 591,
    590, 589, 588, 588, 587, 586, 585, 585, 584, 583,
    583, 582, 581, 580, 580, 579, 578, 577, 577, 576,
    575, 575, 574, 573, 573, 572, 571, 570, 570, 569,
    568, 568, 567, 566, 566, 565, 564, 564, 563, 562,
    562, 561, 560, 560, 559, 558, 558, 557, 556, 556,
    555, 554, 554, 553, 552, 552, 551, 550, 550, 549,
    548, 548, 547, 546, 546, 545, 545, 544, 543, 543,
    542, 541, 541, 540, 540, 539, 538, 538, 537, 536,
    536, 535, 535, 534, 533, 533, 532, 532, 531, 530,
    530, 529, 529, 528, 527, 527, 526, 526, 525, 524,
    524, 523, 523, 522, 521, 521, 520, 520, 519, 519,
    518, 517, 517, 516, 516, 515, 515, 514, 513, 513,
    512, 512, 511, 511, 510, 510, 509, 508, 508, 507,
    507, 506, 506, 505, 505, 504, 504, 503, 502, 502,
    501, 501, 500, 500, 499, 499, 498, 498, 497, 497,
    496, 496, 495, 494, 494, 493, 493, 492, 492, 491,
    491, 490, 490, 489, 489, 488, 488, 487, 487, 486,
    486, 485, 485, 484, 484, 483, 483, 482, 482, 481,
    481, 480, 480, 479, 479, 478, 478, 477, 477, 476,
    476, 475, 475, 474, 474, 473, 473, 473, 472, 472,
    471, 471, 470, 470, 469, 469, 468, 468, 467, 467,
    466, 466, 465, 465, 465, 464, 464, 463, 463, 462,
    462, 461, 461, 460, 460, 460, 459, 459, 458, 458,
    457, 457, 456, 456, 455, 455, 455, 454, 454, 453,
    453, 452, 452, 452, 451, 451, 450, 450, 449, 449,
    448, 448, 448, 447, 447, 446, 446, 446, 445, 445,
    444, 444, 443, 443, 443, 442, 442, 441, 441, 440,
    440, 440, 439, 439, 438, 438, 438, 437, 437, 436,
    436, 436, 435, 435, 434, 434, 434, 433, 433, 432,
    432, 432, 431, 431, 430, 430, 430, 429, 429, 428,
    428, 428, 427, 427, 426, 426, 426, 425, 425, 424,
    424, 424, 423, 423, 423, 422, 422, 421, 421, 421,
    420, 420, 420, 419, 419, 418, 418, 418, 417, 417,
    417, 416, 416, 415, 415, 415, 414, 414, 414, 413,
    413, 412, 412, 412, 411, 411, 411, 410, 410, 410,
    409, 409, 409, 408, 408, 407, 407, 407, 406, 406,
    406, 405, 405, 405, 404, 404, 404, 403, 403, 403,
    402, 402, 402, 401, 401, 400, 400, 400, 399, 399,
    399, 398, 398, 398, 397, 397, 397, 396, 396, 396,
    395, 395, 395, 394, 394, 394, 393, 393, 393, 392,
    392, 392, 391, 391, 391, 390, 390};

uint16_t counterValue(uint16_t clock)
{
  return pgm_read_word_near(CLOCK_LOOKUP + clock - MIN_CLOCK);
}

// Core clock source. Async using Timer1.
// Will toggle provided pins at the requested BPM.
// Timer1 is a 16-bit two comparison timer, configured with a pre-scaler of 1024
// on the 16MHz clock speed. That means the counter ticks every 64us.
// When the counter reaches OCR1A the counter resets to zero and the pins
// are brought high. When the counter reaches OCR1B (~12ms), the pins are
// brought low.
// To support the subdivision function, the timer clock is set to the frequency
// of either beat or subdiv, whichever is higher. The other then is an integer
// subdivision, counting down _subdivIdx on each of the higher frequency's beats.
// For the swing function, two different timer values are calculated, one ahead
// and one behind. The timer switches OCR1A between the two clock values on each
// beat.
// TO support the swing function, _swingOffset is calculated as a drift forward
// or backward from the base clock value. It's up to a third early or late. On
// each tick, the clock is adjusted by this amount forwards (on even ticks) or
// backward (on odd ticks).
class Timer1
{
private:
  uint16_t _baseBPM;
  uint16_t _bpmOffset = 0;
  uint8_t _beatPin;
  uint8_t _subdivPin;
  int8_t _subdivisions;
  int8_t _swing;
  bool _enabled = false;
  volatile uint8_t _subdivIdx;
  volatile uint16_t _clock;
  volatile int16_t _swingOffset = 0;
  volatile bool _isEven = true;
  volatile bool _clockHigh = false;
  volatile bool _subdivHigh = false;

  void updateTimer()
  {
    uint16_t clock = counterValue(getClock());
    // Note: Hopefully doing this math isn't too slow.
    // It only needs to happen when the swing or bpm changes.
    // Convert a percentage value into a scale value, where
    // 0% => straight, 66% => triplets, 50% => quarters, etc.
    // Here, we want 66% to actually be 66.666%, so rather than
    // 200, we use 66*3 = 198.
    float swingScale = ((float)_swing) / 198.0;
    float offsetF = ((float)clock) * swingScale;
    int16_t offset = (int16_t)offsetF;
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
      _clock = clock;
      _swingOffset = offset;
    }
  }

  // returns true if subdiv is an integer multiple of beat.
  // returns false if subdiv is a subdivision and therefore
  // beat is actually an integer multiple of it
  inline bool isSuperdivisionMode()
  {
    return _subdivisions < 0;
  }

  inline size_t highFreqPin()
  {
    return isSuperdivisionMode() ? _beatPin : _subdivPin;
  }

  inline size_t lowFreqPin()
  {
    return isSuperdivisionMode() ? _subdivPin : _beatPin;
  }

public:
  void begin(uint8_t beatPin, uint8_t subdivPin, Settings settings)
  {
    _beatPin = beatPin;
    _subdivPin = subdivPin;
    pinMode(_beatPin, OUTPUT);
    pinMode(_subdivPin, OUTPUT);
    loadSettings(settings);
    reset();

    noInterrupts();
    // Clear registers
    TCCR1A = 0;
    TCCR1B = 0;
    TCNT1 = 0;

    OCR1A = 1000;
    // TODO: allow pulse width to be customized, or at least
    // dynamic to frequency
    OCR1B = 200; // ~12ms, approx 50% pulse width at max frequency

    // TCCR1B |= (1 << WGM12); // CTC
    //  Phase and frequency correct PWM
    TCCR1A |= (0 << WGM11) | (1 << WGM10);
    TCCR1B |= (1 << WGM13) | (0 << WGM12);

    // Pre-scaler 1024
    TCCR1B |= (1 << CS12) | (0 << CS11) | (1 << CS10);
    
    updateTimer();
    setEnabled(true);
    interrupts();
  }

  void setEnabled(bool enabled)
  {
    if (_enabled == enabled)
    {
      return;
    }
    if (enabled)
    {
      // Output Compare Match A Interrupt Enable
      TIMSK1 |= (1 << OCIE1A) | (1 << OCIE1B);
    }
    else
    {
      TIMSK1 &= ~((1 << OCIE1A) | (1 << OCIE1B));
    }
    _enabled = enabled;
  }

  void setSwing(int8_t swing)
  {
    if (swing != _swing)
    {
      _swing = constrain(swing, -75, 75);
      updateTimer();
    }
  }

  int8_t getSwing()
  {
    return _swing;
  }

  int16_t incrementSwing(int8_t swing)
  {
    setSwing(_swing + swing);
    return _swing;
  }

  void setBaseBPM(uint16_t bpm)
  {
    if (bpm != _baseBPM)
    {
      _baseBPM = constrain(bpm, MIN_BPM, MAX_BPM);
      updateTimer();
    }
  }

  uint16_t getBaseBPM()
  {
    return _baseBPM;
  }

  uint16_t incrementBaseBPM(int16_t amount)
  {
    if (amount != 0)
    {
      setBaseBPM(_baseBPM + amount);
    }
    return _baseBPM;
  }

  void setBPMOffset(uint16_t offset)
  {
    if (offset != _bpmOffset)
    {
      _bpmOffset = offset;
      updateTimer();
    }
  }

  uint16_t getBPM()
  {
    return constrain(_baseBPM + _bpmOffset, MIN_BPM, MAX_BPM);
  }

  uint16_t getClock()
  {
    uint16_t clock = getBPM();
    if (_subdivisions > 1)
    {
      clock = clock * _subdivisions;
    }
    return constrain(clock, MIN_CLOCK, MAX_CLOCK);
  }

  uint8_t incrementSubdivisions(int8_t amount)
  {
    if (amount == 0)
    {
      return _subdivisions;
    }
    while (amount != 0)
    {
      if (amount > 0)
      {
        _subdivisions++;
        if (_subdivisions > 4)
          _subdivisions = 4;
        if (_subdivisions == -1 || _subdivisions == 0)
          _subdivisions = 1;
        amount--;
      }
      else
      {
        _subdivisions--;
        if (_subdivisions < -8)
          _subdivisions = -8;
        if (_subdivisions == -1 || _subdivisions == 0)
          _subdivisions = -2;
        amount++;
      }
    }
    updateTimer();
    return _subdivisions;
  }

  // Allowed values: {-4, -3, -2, 1, 2, 3, 4, 5, 6, 7, 8}
  // N < 0 -> one subdiv tick every N beats
  // N >= 1 -> N subdiv ticks per beat
  void setSubdivisions(int8_t subdiv)
  {
    _subdivisions = constrain(subdiv, -4, 8);
    if (subdiv == -1 || subdiv == 0)
    {
      _subdivisions = 1;
    }
  }

  uint8_t getSubdivisions()
  {
    return _subdivisions;
  }

  void reset()
  {
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
      _subdivIdx = 1; // cause subdiv to tick on next
      _isEven = true;
      OCR1A = _clock - _swingOffset;
      TCNT1 = 0; // reset timer
    }
  }

  void loadSettings(Settings settings)
  {
    setSubdivisions(settings.subdivisions);
    setBaseBPM(settings.baseBPM);
    setSwing(settings.swing);
  }

  Settings getCurrentSettings()
  {
    Settings s;
    s.baseBPM = _baseBPM;
    s.subdivisions = _subdivisions;
    s.swing = _swing;
    return s;
  }

  // trigger a single step of the beat. Blocking.
  // useful for stepping a sequencer back to the beginning.
  void singleTick()
  {
    tickA();
    delay(12);
    tickB();
  }

  bool beatOn()
  {
    return isSuperdivisionMode() ? _clockHigh : _subdivHigh;
  }

  bool subdivOn()
  {
    return isSuperdivisionMode() ? _subdivHigh : _clockHigh;
  }

  inline void tickA()
  {
    // If the clock has changed tempo has changed, update it
    OCR1A = _isEven ? (_clock - _swingOffset) : (_clock + _swingOffset);
    _isEven = !_isEven;
    // This is not required using phase+frequency correct mode
    // as OCR1A is buffered
    // if (TCNT1 > OCR1A)
    //   TCNT1 = 0; // reset timer
    digitalWrite(highFreqPin(), LOW);
    _clockHigh = false;
    _subdivIdx--;
    if (_subdivIdx == 0)
    {
      digitalWrite(lowFreqPin(), LOW);
      _subdivHigh = false;
      // restart subdivisions
      _subdivIdx = abs(_subdivisions);
    }
  }

  inline void tickB()
  {
    digitalWrite(_beatPin, HIGH);
    digitalWrite(_subdivPin, HIGH);
    _clockHigh = true;
    _subdivHigh = true;
  }
};

// Global instance, since only one Timer1 exists
Timer1 Timer;

ISR(TIMER1_COMPA_vect)
{
  Timer.tickA();
}

ISR(TIMER1_COMPB_vect)
{
  Timer.tickB();
}
