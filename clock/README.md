# Clock

- LED BPM display
- Knob controls BPM
- MIDI in/out - switch between clock source and sink
- Swing control
- Out
- no-swing out
- subdivision out (1-8)
- LED blink on clock
- Tap tempo


States:
  Main State:
  - Display: current BPM /[0-9]{3}/
  - knob: BPM
  - main button: next state
  - swing button: swing control state

  swing control:
    - Display: swing amount /(+|-)[0-9]{2}/
    - knob: swing amount
    - main button: nothing
    - swing button: release returns to main state

  Tap Tempo state:
    - Display: current BPM /[0-9]{3}/
    - knob: nothing
    - main button: next state
    - swing button: tap tempo

  MIDI setting state:
    - Display: M for midi and then state /M (I|O|N)/
    - main button: next state
    - swing button: press steps through IN/OUT/NONE

  Subdivision state:
    - Display: D for subdivision and then amount /D[0-9]{2}/
    - knob: controls subdivision amount 1-16
    - main button: next state
    - swing button: nothing
