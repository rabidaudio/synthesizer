# ADSR Envelope

This circuit operates by using the LM13700 as a variable current source charging
a capacitor. It is configured as a non-inverting op-amp charging the capacitor
to a reference voltage `V_ref` at the `+` pin with a slew rate limited by the current
control. The capacitor's voltage will change linearly based on `I_abc` until it settles
at `V_ref`. Then a bit of digital logic to create a 3-state state machine to select the
correct  `V_ref` and `I_abc`.

![shape](adsr.png)

States:

- Attack: `V_gate=5V`, `V_ref=V_in`, `I_abc` controlled by `R_attack`
- Decay: `V_gate=5V`, `V_ref=V_sustain`, `I_abc` controlled by `R_decay`
- Release: `V_gate=0`, `V_ref=0`, `I_abc` controlled by `R_release`

The Attack, Decay, and Release knobs control `I_abc` in each state,
while the Sustain knob divides down `V_in` to set `V_ref` in the
Decay state.

A comparator, capacitor, and a few transistors create cheap analog
a flip-flop that turns on when the output hits `V_in` (flipping from
the Attack state to the Decay state), and turns off when `V_gate`
turns off.

Voltage control of the parameters could be possible by exposing
access to `I_abc`, but it doesn't make much sense to me to expose
those parameters with any control other than a knob - it's not the
kind of thing you need to modulate automatically.

![range](range.png)

Choice of the capacitor and the knob resistance control the time
range. Large values for both mean a longer charge time, but a large
capacitance effects the fastest charge time too, since `I_abc` is
capped at 2mA. Pot size effects dynamic range.

In practice, charge times less than 15ms are undetectable, and charge times above 2s are largely unnecessary.

C=4.7u and a knob range of 1M gives a control range of 12ms to \~1.8s for a
0-5V change, i.e. a slew rate between 356 V/s and 2.4 V/s.

Could offer two caps, fast and slow, with a toggle switch. Switching to a 22u capacitor gives 58ms to 8.6s.

A current mirror isolates the 3 different reference voltages, without it they
interfere with each other.


**TODO: power usage** 
