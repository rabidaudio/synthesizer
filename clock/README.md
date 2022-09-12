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
  - knob: BPM
  - press button B: tap tempo

  swing control state (hold button A):
    - Display: swing amount (0-100%)
    - knob: swing amount

  Subdivision state (hold button B):
    - Display: number of subdivisions 1-16
    - knob: controls subdivision amount
    - main button: next state
    - swing button: nothing

  Pulse width state (hold both A and B):
    - Display: number of ms (1-200)
    - knob: controls width


Rate CV?
Faster speeds for sequencers? Negative subdivisions?

https://en.wikipedia.org/wiki/Swing_(jazz_performance_style)
https://github.com/adafruit/TinyWireM/blob/master/USI_TWI_Master.h
