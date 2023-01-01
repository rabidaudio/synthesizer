# Synth

> These are my custom modules for a from-scratch [Eurorack](https://en.wikipedia.org/wiki/Eurorack) analog synthesizer.

https://rabid.audio/projects/synth

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
      - multiplication techniques
        - log/antilog
        - https://en.wikipedia.org/wiki/Gilbert_cell
        - AD633 ($11-$13 /unit on DigiKey!?)
        - EL4450C ($4/unit on Digikey but out of stock). It's a little more awkward to use since it's max differerential input voltage for linearity is 2V
      - the hard part will be the "slightly higher frequency" bit
        - perhaps instead you have another osc (555?) running at a fixed frequency and clipping the sine
        - square PWM control could also adjust this clip frequency
      - In Max you do PDS by `kink~`-ing a `phasor~` and using that to drive the phase of `cycle~`. Kink is somewhat straightforward to do - use a comparator to adjust the charge current after a threshold. But how you drive a sine wave phase with that I'm not sure
    - down ramp wave with just a JFET
      - up ramp wave probably needs another JFET and an inverter
    - sub octave
      - theory and example circuit: http://www.valvewizard.co.uk/uboat.html
    - octave
      - full wave rectifier
    - multiplying the triangle with a square wave with different phases and pulse-widths gives some neat sounds
    - polynomial
      - The EL4450C datasheet describes using a multiplier ic to create a polynomial of the form (k1 v^2 + v) / k2
      - it sounds like crap on a triangle wave and does nothing for a square wave, but it adds a nice second harmonic to a sine wave
      - from experiments in Max, good values are k1=1.5-2.5, k2=2
      - but at that point, should you just use 2 oscillators?
3. [A/D/S/R envelope](adsr)
  - 4 envelopes required for 4-voice polyphony
  - wired to VCA by default
  - save surface area with 1 set of ADSR controls for a pair of envelopes
  - fully modular means you could borrow one for VCF instead, or send to both VCA and VCF
4. Filter
  -  4P LP(/HP?)
  - Cutoff frequency control has same range as oscillator
    - 0-10V, 1V/octave, A0 to A10
  - filter we designed for class
    - standard vactrols are available on Thonk
  - CV control of cutoff + resonance
  - Default to track cutoff with VCO-CV
  - individual filter knobs, plus a global knob for filter sweeps
5. [Utilities](utils)
  - Buffer, Sum, Attenuate, Invert, Gate
  - Could be all-in one
    - A input (default ground)
    - B input (default ground)
    - level knob attenuator
    - gate digital CV in, default on
    - `(A+B)*level*gate` output
    - `-(A+B)*level*gate` output
    - Constant CV out if A and B disconnected

Bitcrusher?
4 filters or one?
Noise?
Clock?
Headphone output no longer required
2D mixer?

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
  - fix prototype issues
    - [ ] sum pot is backwards
    - [ ] a bit of noise on the constant output near the center
    - [ ] verify output levels
    - [ ] hard click on gate
      - needs a LPF?
  - [ ] assemble Rev. B PCB
  - [ ] manufacture front panel
  - [ ] assemble module
- VCA
  - [x] Confirm amp on breadboard, finalize CV levels
  - [x] figure out where tuning trimmers are needed
  - [x] build prototype
  - fix prototype issues
    - [ ] output is too quiet for headphones, need about 2x gain
    - [ ] CV range is too wide, adjust scaling for faster change in db/V
  - [ ] finish PCB schematic for complete amplifier
  - [ ] Create PCB
  - [ ] design front panel
  - [ ] manufacture front panel
  - [ ] assemble module
- VCO
  - [ ] design core
    - [x] core osc - square/triangle
    - [x] wave shaper (sine)
    - [x] pwm control
    - [ ] additional shape
    - [x] shape selection
  - [x] Confirm amp on breadboard, finalize CV levels
  - fix breadboard test issues
    - [ ] pitch is very sensitive to power supply noise
    - [ ] tuning is rather difficult
  - [ ] Build prototype
  - fix prototype issues
    - TBD
  - [ ] design PCB
  - [ ] Create PCB
  - [ ] design front panel
  - [ ] manufacture front panel
  - [ ] assemble module
- Envelope
  - [x] design in SPICE
  - [ ] verify on breadboard
  - [ ] build prototype
  - fix prototype issues
    - TBD
  - [ ] design PCB
  - [ ] Create PCB
  - [ ] design front panel
  - [ ] manufacture front panel
  - [ ] assemble module
- VCF
  - TBD
- build tools
  - [x] tiny Breakout pcbs for headphone jacks
  - ~~transistor matcher circuit~~
    - bought matched pair BJTs instead
  - [x] quantized selector with hysteresis

## License

Schematics, board layouts, documentation, etc. is licensed under [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-nc-sa/4.0/).

![Creative Commons License](https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png)

If you're interested in commercial use, please ask first.

Any source code is licensed under [MIT](SOFTWARE_LICENSE).
