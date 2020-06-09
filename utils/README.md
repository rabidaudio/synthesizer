# Jackknife

> Buffer/Inverter/Gate/Adder/Scaler/Source

## Description

This is a collection of common tools for transforming signals, either control voltages or audio signals. While there are several distinct utilities, most are not mutually-exclusive.

### Source

When `A_IN` is disconnected, `OUT` is a constant voltage output based on the position of the knob. `OUT` is 0V when the knob is in the center position, and adjusts up to +/- 10V.

### Buffer / Scaler

When `A_IN` is supplied, it's value is buffered to `OUT`. The knob position linearly adjusts the output gain. At the center position, `OUT` is the same as `A_IN`. At the full-left position, `OUT` is off. At the full-right position, the value of `A_IN` is doubled. 

### Adder

When `B_IN` is supplied, it's value is added to `A_IN` before applying scaling.

### Inverter

`~OUT` is always the inverse of `OUT`.

### Gate

When `GATE` is supplied with a digital voltage, it allows disabling `OUT` (and `~OUT`) at logic-low (0V). An LED indicates when the gate is open. When `GATE` is not supplied, the outputs are always enabled, and the LED remains off.

## Design

All of these uses are realized with only two opamps and an analog switch (1/4 of a [CD4066](../reference/datasheets/cd4066.pdf)). A summing inverting amplifier with a variable feedback resistor handles the adder, inverter, and scalar. The second gang on the pot adjusts the reference voltage when no input signal is provided, implementing the source. The CD4066 handles the gate, and a final inverting opamp reverses the first inversion, providing the non-inverted output.

The CD4066 has a max supply of 20V, which is less than the +/- 12V power supply. We use an LM317/LM337 linear regulator pair to create a +/- 10V power supply. We also power the opamps from this supply, to avoid supplying any signals above this limit.
