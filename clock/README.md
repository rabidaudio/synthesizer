# Clock

- LED 7-segment display
- Knob: continuous rotary selector
- Swing control
- Out
- subdivision out
- LED blink on clock
- Tap tempo


States:
  Main State:
  - Display: current BPM (35-287)
  - Dots: show beats
  - knob: BPM
  - press button B: tap tempo

  swing control state (hold button A):
    - Display: swing amount (0-100%)
    - knob: swing amount

  Subdivision state (hold button B):
    - Display: number of subdivisions 1-16
    - knob: controls subdivision amount

  Reset (hold both A and B):
    - Display: 000
    - Freeze clock
    - Restart subdivisions
  
  Full Reset (hold both A and B for 2 seconds):
    - Display: blink 000
    - Restart subdivisions
    - Restore default settings

- Less jittery timer
- Faster speeds with negative subdivisions
- Rate CV input
- New knob system
- Get working on bare ATMega328p

https://en.wikipedia.org/wiki/Swing_(jazz_performance_style)
https://github.com/adafruit/TinyWireM/blob/master/USI_TWI_Master.h
