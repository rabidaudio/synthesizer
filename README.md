# Synth

> These are my custom modules for a from-scratch [Eurorack](https://en.wikipedia.org/wiki/Eurorack) analog synthesizer.

## Format

- 3.5" mono patch cables
- 3U tall, split into 84 HP horizontal units
- 10 or 16-pin ribbon power: +/-12V, 5V digital
- Audio signals are typically a maximum of 10V peak-to-peak (i.e. between -5V and +5V)
- Control voltages can either be unipolar or bipolar. Bipolar control voltages are typically 5V peak-to-peak (i.e. from -2.5V to +2.5V), unipolar voltages between 0V and 8V. The V/Octave scale is used for pitch information
- Trigger, Gate or Clock signals are digital 0V-5V pulses typically used for timing and event signaling
- minimum 100K input impedance
- maximum 1K output impedance
- connecting rail voltages to signal inputs should not fry any components (although it doesn't have to perform correctly)

[Pinout](http://www.davidhaillant.com/wp/wp-content/uploads/bus_eurorack1.pdf):

![Pinout-Diagram](pinout.png)

## Design goals

- "fully-modular with defaults"
  - semi-modular-style sensible default paths connected under the hood
  - all defaults overridden with patch cables
  - specifically targeting support for several modes:
    - 4 totally separate, independent synths, each controlled with constant VCO or sequencer
    - 1-voice, MIDI-,sequencer-, or constant-controlled synth with 4 oscillators, e.g. harmonizing intervals, mixing shapes/timbres
    - 4-voice MIDI-controlled synth
    - 2-voice MIDI-controlled synth, with a pair of oscillators for each voice
    - sub-combinations of the above, e.g.:
      - 1-Voice MIDI-controlled synth with a pair of oscillators, 1 constant-source independent synth, 1 sequencer-controlled independent synth
      - 1-Voice MIDI-controlled synth, 2-voice sequencer-controlled synths, with two oscillators for the  first voice
- LED feedback is useful
- For multiple options (like VCO shape), use a CV that is binned to options
  - Easiest solution is probably an ATTiny driving an analog switch
  - uC seems like overkill, but it's got an ADC and lots of digital pins
  - Lots of specialty components would be required for a native IC solution
  - Firmware code can easily provide hysteresis and arbitrary numbers of divisions, unlike CDXXXX series CMOS chips
- Outputs can use splitters, but inputs cannot

## Tools

Based mostly on what I have available and have experience with.

- [TL07x](reference/datasheets/tl071.pdf)
  - Basic audio-quality op-amp
  - single, dual, or quad
  - note: not rail-to-rail, and asymmetrical clipping
  - slew rate minimum 5 V/us, typical 13 V/us
  - could be trivially substituted for any other general-purpose op-amp
- [LM13700](reference/datasheets/lm13700.pdf)
  - dual operational transconductance amplifier
    - effectively an op-amp with control of the output current
    - could also think of it as a current-controlled resistor
    - makes voltage control easy
  - [see detailed behavior for equations](reference/lm13700)
  - sensitive inputs:
    - `I_abc` is limited to 2mA
    - differential input voltage is only linear at +/- 20mV
      - using linearizing diodes, linear region can be extended to +/- 60mV
    - differential input voltage is limited to 5V
  - treat amp bias input as `V- + 1.2V` for the purpose of calculating `I_abc`
  - 50 V/us slew rate
- [DMMT5401](reference/datasheets/dmmt5401.pdf) (NPN) and [DMMT5551](reference/datasheets/dmmt5551.pdf) (PNP) matched pair transistors
  - similar characteristics to 2N3904, 2N3906
  - useful for current mirrors and [exponential converters](reference/exponential.pdf)
  - easier than trying to match transistors by hand (but [here's a guide for matching](reference/transistor-matching.pdf))
  - Unfortunately only come in SOT26 (3mm long)
- [DG403](reference/datasheets/dg403.pdf)
  - dual SPDT analog switch
  - very generous on control ranges and input limits
  - switching time in 100ns range
  - on resistance in the 45 ohm range
  - Unfortunately no DIP package - SOIC is largest size (10mm long)
  - preferred over CD4066
    - CD4066 has max 20V supply differential, which makes it frustrating to use with +/-12V supply
    - when off, CD4066 connects the pins to the minus supply voltage, which makes it impractical in many situations
- Tempco resistors
  - resistance varies with temperature. Useful for canceling out temperature dependance
  - not strictly required - classic synths would take some time to "heat up"

Otherwise, typically use 2N3904 / 2N3906 for BJTs and 2N2222 or similar for diodes.

## Modules

1. [Amplifier](amp)
  - LM13700
  - matched-pair PNP exponential converter
  - CV of 10V -> Gain=1
  - CV of <=0V -> Gain=\~0, 6 decades below Gain=1
  - allow overdrive to Gain=2
    - ideally this would begin to clip
  - mixdown
    - mono - full mix -> left and right
    - stereo split - A+C->left B+D->right
  - Direct stereo input jack
    - mix arbitrary signal with mixdown
    - e.g. for accepting signals from other synths
2. [Oscillator](vco)
  - 0-10V, 1V/octave, A0 to A10
  - Square/Triangle core via LM13700
  - Waveshapper for triangle -> sine
  - PWM control
    - triangle wave applied to comparator with CV controlling reference. Triangle wave means CV is linear
  - abs(triangle) can be used for 2x square
    - adds a lot of parts for little benefit
  - blending shapes isn't useful here, since we could use other oscillators for that
  - Option to sync with another osc?
    - in theory, grounding osc at a regular interval would reset the osc over and over, effectively changing it's frequency
  - CV control for shape?
  - Room for more shapes
    - white noise?
    - PDS
      - https://en.wikipedia.org/wiki/Phase_distortion_synthesis
      - a bit of wild harmonics
      - multiplication can be done with log/antilog or https://en.wikipedia.org/wiki/Gilbert_cell
      - the hard part will be the "slightly higher frequency" bit
        - perhaps instead you have another osc (555?) running at a fixed frequency and clipping the sine
        - square PWM control could also adjust this clip frequency
    - down ramp wave with just a JFET
      - up ramp wave probably needs another JFET and an inverter
    - sub octave
      - theory and example circuit: http://www.valvewizard.co.uk/uboat.html
    - octave
      - full wave rectifier
3. MIDI-CV converter
  - digital MIDI input to OSC CV
  - DAC resolution:
    - for 1 step = 1 cent on a 10V space with 1V/octave:
      - 10V / 2^x = (1V/12/100) => log2(10/(1/12/100)) = 13.55 bit minimum
    - 16-bit DAC would be incredibly accurate, 0.18% resolution
  - up to 4 voices
  - round-robin outputs on each key press
    - use open output if available else replace oldest key pressed
  - Modes:
    - off
    - 1-voice: A
    - 2-voice: A + C
    - 3-voice: A + B + C
    - 4-voice: A + B + C + D
    - 4-voice-split: A + B, C + D
      - like standard 4-voice mode, but round robin is in 2 pairs of slots instead of 4 slots
      - allows for 2-voice bass and 2-voice melody
      - on mode selection, waits for a keypress to set the note to split at
  - portamento
    - simpler envelope circuit could be used, but parameters need to be tuned
    for longer times over short voltage change
  - capable to expand to 8 voices?
4. Filter
  -  4P LP(/HP?)
  - Cutoff frequency control has same range as oscillator
    - 0-10V, 1V/octave, A0 to A10
  - filter we designed for class
    - standard vactrols are available on Thonk
  - CV control of cutoff + resonance
  - Default to track cutoff with VCO-CV
  - individual filter knobs, plus a global knob for filter sweeps
5. [A/D/S/R envelope](adsr)
  - 4 envelopes required for 4-voice polyphony
  - wired to VCA by default
  - save surface area with 1 set of ADSR controls for a pair of envelopes
  - fully modular means you could borrow one for VCF instead, or send to both VCA and VCF
6. LFO
  - 2x is plenty I think?
  - OSC circuit, but adjusted to lower frequencies
  - bipolar (+/- 5V) and unipolar (0-10V) outputs
  - ideally multi-shape: sine,tri,squ,ramp up,ramp down
  - CV control for shape
  - Trigger input (e.g. MIDI gate or clock)?
7. [Utilities](utils)
  - Buffer, Sum, Attenuate, Invert, Gate
  - Could be all-in one
    - A input (default ground)
    - B input (default ground)
    - level knob attenuator
    - gate digital CV in, default on
    - `(A+B)*level*gate` output
    - `-(A+B)*level*gate` output
    - Constant CV out if A and B disconnected

## Future ideas

- Sequencer
  - clock source for LFO? Or LFO input as clock?
  - divide down clocks?
  - likely digital
    - if MIDI output, can simplify duplicating VC outs for tuning,
      can leverage MIDI converter for this
    - however, key-based offsets of patterns wouldn't work
  - 7-segment display of BPM for source clock?
  - sweep control option
    - LFO or voltages to trigger and CV external LFO for 4-bar sweep
    - e.g. automatic filter sweeps
  - random note drop feature
  - Could be externally controlled, e.g. iPad
    - save space and iterate on features
    - allow it to be used as a drum machine too
- Need some good percussive effects
  - 808 would be a good reference
- White noise generator?
- Sample+Hold?
  - combined with white noise creates RNG
  - alternatively sequencer could do RNG digitally
  - random is a lot more interesting if it can quantize
    - quantization is a lot cheaper in digital
  - S+H has little use to me outside of random
- Delay, overdrive, etc. are gimmicky and not useful, can be done via effects pedals

## TODO

- utility module
  - [x] Verify on breadboard
  - [x] design PCB
  - [x] order parts
  - [x] come up with a cute name
  - [x] design front panel
  - [x] assemble Rev. A PCB
    - bend the regulators first
    - plenty of 4066s
    - flip orientation of power connector
    - pot orientation - both channels:
      - right side (facing) to inside of board (from top)
      - left side (facing) to outside of board (from top)
  - [x] test with Neutron
    - constant output is only 9 to -7.8
    - high noise when used as a buffer
      - perhaps input signal is clipping?
      - white noise when the gain is turned down
  - [x] adjust design for Rev. B
  - [x] assemble Rev. B proto board
  - [x] test with Neutron
    - sum pot is backwards
    - a bit of noise on the constant output near the center
    - verify output levels
    - hard click on gate
      - needs a LPF?
  - [ ] assemble Rev. B PCB
  - [ ] manufacture front panel
  - [ ] assemble module
- VCA
  - [x] Confirm amp on breadboard, finalize CV levels
  - [ ] build PoC amp and test with real synth
  - [ ] figure out where tuning trimmers are needed
  - [ ] finish PCB schematic for complete amplifier
  - [ ] Create PCB
  - [ ] design front panel
  - [ ] test with Neutron
  - [ ] manufacture front panel
  - [ ] assemble module
- VCO
  - [ ] design core
    - [x] core osc - square/triangle
    - [ ] wave shaper (sine)
    - [ ] shape selection
  - [ ] Confirm amp on breadboard, finalize CV levels
  - [ ] Build PoC osc
  - [ ] PCB for oscillator
- Envelope
  - [x] design in SPICE
  - [ ] verify on breadboard
  - [ ] assemble proto board
  - [ ] test with neutron
  - [ ] design PCB
  - [ ] manufacture front panel
  - [ ] assemble module
- MIDI
  - TBD
- VCF
  - TBD
- LFO
  - TBD
- Sequencer
  - TBD
- build tools
  - [x] tiny Breakout pcbs for headphone jacks
  - ~~transistor matcher circuit~~
    - bought matched pair BJTs instead

## License

Schematics, board layouts, documentation, etc. is licensed under [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-nc-sa/4.0/).

![Creative Commons License](https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png)

If you're interested in commercial use, please ask first.

Any source code is licensed under [MIT](SOFTWARE_LICENSE).

Many documents in reference are copies of resources from other parts of the internet (datasheets, schematics, etc) which I did not write - those retain their original copyrights.


## Reference

- https://aisynthesis.com/how-to-get-started-in-synth-diy/
- https://www.schmitzbits.de/index.html
- http://www5b.biglobe.ne.jp/~houshu/synth/
