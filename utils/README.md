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

### Digital logic

Digital `OR` can be implemented by summing signals on `A_IN` and `B_IN` With the knob at the 1/4 position. Digital `AND` can be implemented by applying one signal to `A_IN` and one to `GATE` with the knob at the 1/2 position.

## Design

A summing inverting amplifier with a variable feedback resistor handles the adder, inverter, and scalar. A connection on either A or B toggles an analog switch selecting between a constant voltage source and the summing output. Another
analog switch controlled by the gate allows that signal to be toggled before it is buffered in both an inverted and
re-inverted back to positive outputs.
