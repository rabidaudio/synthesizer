#pragma once

#include <Arduino.h>
#include <util/atomic.h>
#include "Settings.h"

#define MIN_CLOCK (uint16_t)15
#define MAX_CLOCK (uint16_t)1600
#define MIN_BPM MIN_CLOCK
#define MAX_BPM (MAX_CLOCK / 4)

// Lookup table for OCR1A register values for BPMs from 15 to 1600.
// This is to avoid floating point math.
// 120 BPM = 2 Hz = (16000000/((7811+1)*1024))
// Calculations:
// https://docs.google.com/spreadsheets/d/1pTg9IQDEw8LUGN85Lwp80kAzATN1I9yxx0m5xDrEWBg/edit#gid=0
const PROGMEM uint16_t CLOCK_LOOKUP[] = {
    62500, 58593, 55147, 52083, 49342, 46875, 44642, 42613, 40760, 39062,
    37500, 36057, 34722, 33482, 32327, 31250, 30241, 29296, 28409, 27573,
    26785, 26041, 25337, 24671, 24038, 23437, 22865, 22321, 21802, 21306,
    20833, 20380, 19946, 19531, 19132, 18750, 18382, 18028, 17688, 17361,
    17045, 16741, 16447, 16163, 15889, 15625, 15368, 15120, 14880, 14648,
    14423, 14204, 13992, 13786, 13586, 13392, 13204, 13020, 12842, 12668,
    12500, 12335, 12175, 12019, 11867, 11718, 11574, 11432, 11295, 11160,
    11029, 10901, 10775, 10653, 10533, 10416, 10302, 10190, 10080, 9973,
    9868, 9765, 9664, 9566, 9469, 9375, 9282, 9191, 9101, 9014,
    8928, 8844, 8761, 8680, 8600, 8522, 8445, 8370, 8296, 8223,
    8152, 8081, 8012, 7944, 7878, 7812, 7747, 7684, 7621, 7560,
    7500, 7440, 7381, 7324, 7267, 7211, 7156, 7102, 7048, 6996,
    6944, 6893, 6843, 6793, 6744, 6696, 6648, 6602, 6555, 6510,
    6465, 6421, 6377, 6334, 6291, 6250, 6208, 6167, 6127, 6087,
    6048, 6009, 5971, 5933, 5896, 5859, 5822, 5787, 5751, 5716,
    5681, 5647, 5613, 5580, 5547, 5514, 5482, 5450, 5419, 5387,
    5357, 5326, 5296, 5266, 5237, 5208, 5179, 5151, 5122, 5095,
    5067, 5040, 5013, 4986, 4960, 4934, 4908, 4882, 4857, 4832,
    4807, 4783, 4758, 4734, 4711, 4687, 4664, 4641, 4618, 4595,
    4573, 4550, 4528, 4507, 4485, 4464, 4443, 4422, 4401, 4380,
    4360, 4340, 4320, 4300, 4280, 4261, 4242, 4222, 4204, 4185,
    4166, 4148, 4129, 4111, 4093, 4076, 4058, 4040, 4023, 4006,
    3989, 3972, 3955, 3939, 3922, 3906, 3890, 3873, 3858, 3842,
    3826, 3810, 3795, 3780, 3765, 3750, 3735, 3720, 3705, 3690,
    3676, 3662, 3647, 3633, 3619, 3605, 3591, 3578, 3564, 3551,
    3537, 3524, 3511, 3498, 3485, 3472, 3459, 3446, 3434, 3421,
    3409, 3396, 3384, 3372, 3360, 3348, 3336, 3324, 3312, 3301,
    3289, 3277, 3266, 3255, 3243, 3232, 3221, 3210, 3199, 3188,
    3177, 3167, 3156, 3145, 3135, 3125, 3114, 3104, 3094, 3083,
    3073, 3063, 3053, 3043, 3033, 3024, 3014, 3004, 2995, 2985,
    2976, 2966, 2957, 2948, 2938, 2929, 2920, 2911, 2902, 2893,
    2884, 2875, 2866, 2858, 2849, 2840, 2832, 2823, 2815, 2806,
    2798, 2790, 2781, 2773, 2765, 2757, 2749, 2741, 2733, 2725,
    2717, 2709, 2701, 2693, 2686, 2678, 2670, 2663, 2655, 2648,
    2640, 2633, 2626, 2618, 2611, 2604, 2596, 2589, 2582, 2575,
    2568, 2561, 2554, 2547, 2540, 2533, 2526, 2520, 2513, 2506,
    2500, 2493, 2486, 2480, 2473, 2467, 2460, 2454, 2447, 2441,
    2435, 2428, 2422, 2416, 2410, 2403, 2397, 2391, 2385, 2379,
    2373, 2367, 2361, 2355, 2349, 2343, 2337, 2332, 2326, 2320,
    2314, 2309, 2303, 2297, 2292, 2286, 2281, 2275, 2269, 2264,
    2259, 2253, 2248, 2242, 2237, 2232, 2226, 2221, 2216, 2211,
    2205, 2200, 2195, 2190, 2185, 2180, 2175, 2170, 2165, 2160,
    2155, 2150, 2145, 2140, 2135, 2130, 2125, 2121, 2116, 2111,
    2106, 2102, 2097, 2092, 2087, 2083, 2078, 2074, 2069, 2064,
    2060, 2055, 2051, 2046, 2042, 2038, 2033, 2029, 2024, 2020,
    2016, 2011, 2007, 2003, 1998, 1994, 1990, 1986, 1982, 1977,
    1973, 1969, 1965, 1961, 1957, 1953, 1949, 1945, 1940, 1936,
    1932, 1929, 1925, 1921, 1917, 1913, 1909, 1905, 1901, 1897,
    1893, 1890, 1886, 1882, 1878, 1875, 1871, 1867, 1863, 1860,
    1856, 1852, 1849, 1845, 1841, 1838, 1834, 1831, 1827, 1823,
    1820, 1816, 1813, 1809, 1806, 1802, 1799, 1795, 1792, 1789,
    1785, 1782, 1778, 1775, 1772, 1768, 1765, 1762, 1758, 1755,
    1752, 1749, 1745, 1742, 1739, 1736, 1732, 1729, 1726, 1723,
    1720, 1717, 1713, 1710, 1707, 1704, 1701, 1698, 1695, 1692,
    1689, 1686, 1683, 1680, 1677, 1674, 1671, 1668, 1665, 1662,
    1659, 1656, 1653, 1650, 1647, 1644, 1641, 1638, 1636, 1633,
    1630, 1627, 1624, 1621, 1619, 1616, 1613, 1610, 1608, 1605,
    1602, 1599, 1597, 1594, 1591, 1588, 1586, 1583, 1580, 1578,
    1575, 1572, 1570, 1567, 1565, 1562, 1559, 1557, 1554, 1552,
    1549, 1547, 1544, 1541, 1539, 1536, 1534, 1531, 1529, 1526,
    1524, 1521, 1519, 1516, 1514, 1512, 1509, 1507, 1504, 1502,
    1500, 1497, 1495, 1492, 1490, 1488, 1485, 1483, 1481, 1478,
    1476, 1474, 1471, 1469, 1467, 1464, 1462, 1460, 1458, 1455,
    1453, 1451, 1448, 1446, 1444, 1442, 1440, 1437, 1435, 1433,
    1431, 1429, 1426, 1424, 1422, 1420, 1418, 1416, 1414, 1411,
    1409, 1407, 1405, 1403, 1401, 1399, 1397, 1395, 1393, 1390,
    1388, 1386, 1384, 1382, 1380, 1378, 1376, 1374, 1372, 1370,
    1368, 1366, 1364, 1362, 1360, 1358, 1356, 1354, 1352, 1350,
    1348, 1346, 1345, 1343, 1341, 1339, 1337, 1335, 1333, 1331,
    1329, 1327, 1326, 1324, 1322, 1320, 1318, 1316, 1314, 1313,
    1311, 1309, 1307, 1305, 1303, 1302, 1300, 1298, 1296, 1294,
    1293, 1291, 1289, 1287, 1286, 1284, 1282, 1280, 1278, 1277,
    1275, 1273, 1272, 1270, 1268, 1266, 1265, 1263, 1261, 1260,
    1258, 1256, 1255, 1253, 1251, 1250, 1248, 1246, 1245, 1243,
    1241, 1240, 1238, 1236, 1235, 1233, 1231, 1230, 1228, 1227,
    1225, 1223, 1222, 1220, 1219, 1217, 1215, 1214, 1212, 1211,
    1209, 1208, 1206, 1205, 1203, 1201, 1200, 1198, 1197, 1195,
    1194, 1192, 1191, 1189, 1188, 1186, 1185, 1183, 1182, 1180,
    1179, 1177, 1176, 1174, 1173, 1171, 1170, 1168, 1167, 1166,
    1164, 1163, 1161, 1160, 1158, 1157, 1155, 1154, 1153, 1151,
    1150, 1148, 1147, 1146, 1144, 1143, 1141, 1140, 1139, 1137,
    1136, 1134, 1133, 1132, 1130, 1129, 1128, 1126, 1125, 1124,
    1122, 1121, 1120, 1118, 1117, 1116, 1114, 1113, 1112, 1110,
    1109, 1108, 1106, 1105, 1104, 1102, 1101, 1100, 1099, 1097,
    1096, 1095, 1093, 1092, 1091, 1090, 1088, 1087, 1086, 1085,
    1083, 1082, 1081, 1080, 1078, 1077, 1076, 1075, 1073, 1072,
    1071, 1070, 1068, 1067, 1066, 1065, 1064, 1062, 1061, 1060,
    1059, 1058, 1056, 1055, 1054, 1053, 1052, 1051, 1049, 1048,
    1047, 1046, 1045, 1043, 1042, 1041, 1040, 1039, 1038, 1037,
    1035, 1034, 1033, 1032, 1031, 1030, 1029, 1027, 1026, 1025,
    1024, 1023, 1022, 1021, 1020, 1019, 1017, 1016, 1015, 1014,
    1013, 1012, 1011, 1010, 1009, 1008, 1006, 1005, 1004, 1003,
    1002, 1001, 1000, 999, 998, 997, 996, 995, 994, 993,
    992, 991, 989, 988, 987, 986, 985, 984, 983, 982,
    981, 980, 979, 978, 977, 976, 975, 974, 973, 972,
    971, 970, 969, 968, 967, 966, 965, 964, 963, 962,
    961, 960, 959, 958, 957, 956, 955, 954, 953, 952,
    951, 950, 949, 948, 947, 946, 946, 945, 944, 943,
    942, 941, 940, 939, 938, 937, 936, 935, 934, 933,
    932, 931, 930, 930, 929, 928, 927, 926, 925, 924,
    923, 922, 921, 920, 920, 919, 918, 917, 916, 915,
    914, 913, 912, 911, 911, 910, 909, 908, 907, 906,
    905, 904, 904, 903, 902, 901, 900, 899, 898, 897,
    897, 896, 895, 894, 893, 892, 892, 891, 890, 889,
    888, 887, 886, 886, 885, 884, 883, 882, 881, 881,
    880, 879, 878, 877, 876, 876, 875, 874, 873, 872,
    872, 871, 870, 869, 868, 868, 867, 866, 865, 864,
    864, 863, 862, 861, 860, 860, 859, 858, 857, 856,
    856, 855, 854, 853, 853, 852, 851, 850, 849, 849,
    848, 847, 846, 846, 845, 844, 843, 843, 842, 841,
    840, 840, 839, 838, 837, 837, 836, 835, 834, 834,
    833, 832, 831, 831, 830, 829, 828, 828, 827, 826,
    825, 825, 824, 823, 823, 822, 821, 820, 820, 819,
    818, 818, 817, 816, 815, 815, 814, 813, 813, 812,
    811, 810, 810, 809, 808, 808, 807, 806, 806, 805,
    804, 804, 803, 802, 801, 801, 800, 799, 799, 798,
    797, 797, 796, 795, 795, 794, 793, 793, 792, 791,
    791, 790, 789, 789, 788, 787, 787, 786, 785, 785,
    784, 783, 783, 782, 781, 781, 780, 779, 779, 778,
    778, 777, 776, 776, 775, 774, 774, 773, 772, 772,
    771, 770, 770, 769, 769, 768, 767, 767, 766, 765,
    765, 764, 764, 763, 762, 762, 761, 760, 760, 759,
    759, 758, 757, 757, 756, 756, 755, 754, 754, 753,
    753, 752, 751, 751, 750, 750, 749, 748, 748, 747,
    747, 746, 745, 745, 744, 744, 743, 742, 742, 741,
    741, 740, 739, 739, 738, 738, 737, 737, 736, 735,
    735, 734, 734, 733, 732, 732, 731, 731, 730, 730,
    729, 729, 728, 727, 727, 726, 726, 725, 725, 724,
    723, 723, 722, 722, 721, 721, 720, 720, 719, 718,
    718, 717, 717, 716, 716, 715, 715, 714, 714, 713,
    712, 712, 711, 711, 710, 710, 709, 709, 708, 708,
    707, 707, 706, 705, 705, 704, 704, 703, 703, 702,
    702, 701, 701, 700, 700, 699, 699, 698, 698, 697,
    697, 696, 695, 695, 694, 694, 693, 693, 692, 692,
    691, 691, 690, 690, 689, 689, 688, 688, 687, 687,
    686, 686, 685, 685, 684, 684, 683, 683, 682, 682,
    681, 681, 680, 680, 679, 679, 678, 678, 677, 677,
    676, 676, 675, 675, 674, 674, 673, 673, 673, 672,
    672, 671, 671, 670, 670, 669, 669, 668, 668, 667,
    667, 666, 666, 665, 665, 664, 664, 663, 663, 663,
    662, 662, 661, 661, 660, 660, 659, 659, 658, 658,
    657, 657, 656, 656, 656, 655, 655, 654, 654, 653,
    653, 652, 652, 651, 651, 651, 650, 650, 649, 649,
    648, 648, 647, 647, 646, 646, 646, 645, 645, 644,
    644, 643, 643, 643, 642, 642, 641, 641, 640, 640,
    639, 639, 639, 638, 638, 637, 637, 636, 636, 636,
    635, 635, 634, 634, 633, 633, 633, 632, 632, 631,
    631, 630, 630, 630, 629, 629, 628, 628, 627, 627,
    627, 626, 626, 625, 625, 625, 624, 624, 623, 623,
    622, 622, 622, 621, 621, 620, 620, 620, 619, 619,
    618, 618, 617, 617, 617, 616, 616, 615, 615, 615,
    614, 614, 613, 613, 613, 612, 612, 611, 611, 611,
    610, 610, 609, 609, 609, 608, 608, 607, 607, 607,
    606, 606, 606, 605, 605, 604, 604, 604, 603, 603,
    602, 602, 602, 601, 601, 600, 600, 600, 599, 599,
    599, 598, 598, 597, 597, 597, 596, 596, 595, 595,
    595, 594, 594, 594, 593, 593, 592, 592, 592, 591,
    591, 591, 590, 590, 589, 589, 589, 588, 588, 588,
    587, 587, 587, 586, 586, 585};

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
    OCR1B = 250; // 16ms, approx 50% pulse width at max frequency

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

    TCNT1 = 0; // reset timer

    // If the clock has changed tempo has changed, update it
    OCR1A = _isEven ? (_clock - _swingOffset) : (_clock + _swingOffset);
    _isEven = !_isEven;
    // This is not required using phase+frequency correct mode
    // as OCR1A is buffered
    // if (TCNT1 > OCR1A)
    //   TCNT1 = 0; // reset timer
    digitalWrite(highFreqPin(), HIGH);
    _clockHigh = true;
    _subdivIdx--;
    if (_subdivIdx == 0)
    {
      digitalWrite(lowFreqPin(), HIGH);
      _subdivHigh = true;
      // restart subdivisions
      _subdivIdx = abs(_subdivisions);
    }
  }

  inline void tickB()
  {
    digitalWrite(_beatPin, LOW);
    digitalWrite(_subdivPin, LOW);
    _clockHigh = false;
    _subdivHigh = false;
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
