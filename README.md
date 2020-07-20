# Synth

> These are my custom modules for a from-scratch [Eurorack](https://en.wikipedia.org/wiki/Eurorack) analog synthesizer.

## Format

- 3.5" mono patch cables
- 3U, 1HP
- 10 or 16-pin ribbon power - +/-12V, sometimes 5V digital
- Audio signals are typically a maximum of 10V peak-to-peak (i.e. between -5V and +5V)
- Control voltages can either be unipolar or bipolar. Bipolar control voltages are typically 5V peak-to-peak (i.e. from -2.5V to +2.5V), unipolar voltages between 0V and 8V. The V/Octave scale is used for pitch information
- Trigger, Gate or Clock signals are digital 0V-5V pulses typically used for timing and event signaling
- minimum 100K input impedance
- maximum 1K output impedance
- connecting rail voltages to signal inputs should not fry any components (although it doesn't have to perform correctly)

[Pinout](http://www.davidhaillant.com/wp/wp-content/uploads/bus_eurorack1.pdf):

![Pinout-Diagram](pinout.png)

## Design goals

- "Paraphonic" means multiple notes that share a filter stage, "Polyphonic" means a dedicated O->F->A for each note
- Tracking the filter cutoff to the note is super important, otherwise the tone varies with the pitch
- Neutron in paraphonic mode maps the note first note to both oscillators if only one is played. This
  seems like a bad design choice to me
- In addition to VCF cutoff, LFO can also reset with envelope, which is a very nice feature. Not sure how to make this Polyphonic without 4 LFOs...
- Neutron has "osc sync" button. I don't have a good mental model of what it does, but it seems to link the oscillator frequencies together for creating harmonies
- Choosing how you want to split the oscillators between polyphony, independent control, and sync/harmony is going to be a real control challenge, esp if keeping it modular is desired
- Shared cascading controls with overrides is still a good idea IMO
- Dedicating 1-2 oscillators to a rhythm with very good shared clocking seems important for making songs as opposed to just keyboard sounds. If not playing with others, need either that or a loop. Unfortunately with a loop you can't adjust the parameters later, you've probably reclaimed your oscillators for something else
- Neutron sends envelope 1 to VCA and envelope 2 to the filter. You could accomplish a similar thing with the LFO in key sync mode, but you really only get attack

- Overview:
  - 4-channel polyphonic
    - that means dedicated VCO/VCF/VCA streams
  - "fully-modular with defaults"
    - simi-modular-style sensible default paths connected under the hood
    - all defaults overridden with patch cables
    - "cascading controls"
      - unless overridden, CVs propagate from previous channel, allowing control of
        all oscillators simultaneously, which is desired when using multiple voices
    - specifically targeting support for several modes:
      - 4 totally separate, independent synths, each controlled with constant VCO or sequencer
      - 1-voice, MIDI-,sequencer-, or constant-controlled synth with 4 oscillators, e.g. harmonizing intervals, mixing shapes/tambres
      - 4-voice MIDI-controlled synth
      - 2-voice MIDI-controlled synth, with a pair of oscillators for each voice
      - sub-combinations of the above, e.g.:
        - 1-Voice MIDI-controlled synth with a pair of oscillators, 1 constant-source independent synth, 1 sequencer-controlled independent synth
        - 1-Voice MIDI-controlled synth, 2-voice sequencer-controlled synths, with two oscillators for the  first voice
    - Ideally, one cascade switch between each signal path
      - need to find a way to do this while still respecting modularity
      - Perhaps defaults are controlled by a module which controls modes?
    - LED feedback is critical
  - Modules
    1. [Amplifier](amp)
      - LM13700
      - matched-pair PNP exponential converter
      - CV of 5V -> Gain=1
      - CV of <=0V -> Gain=\~0, 6 decades below Gain=1
      - allow overdrive to 6V
        - ideally this would begin to clip
      - mixdown
        - mono - full mix -> left and right
        - stereo split - A+C->left B+D->right
      - Direct output jack?
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
      - Room for one more shape
        - PDS
          - https://en.wikipedia.org/wiki/Phase_distortion_synthesis
          - a bit of wild harmonics
          - multiplication can be done with log/antilog or https://en.wikipedia.org/wiki/Gilbert_cell
          - the hard part will be the "slightly higher frequency" bit
            - perhaps instead you have another osc (555?) running at a fixed frequency and clipping the sine
            - square PWM control could also adjust this clip frequency
        - down ramp wave with just a JFET
          - up ramp wave probably needs another JFET and an inverter
    3. MIDI-CV converter
      - digital MIDI input to OSC CV
      - up to 4 voices
    4. Filter
      -  4P LP(/HP?)
      - Moog Ladder?
      - Alternatively, filter we designed for class
        - standard vactrols are available on Thonk
      - CV control of cutoff, resonance
      - Default to track cutoff with VCO-CV
    5. A/D/S/R envelope
      - 4 envelopes required for 4-voice polyphony
      - wired to VCA by default
      - could save surface area with 1 set of ADSR controls for a pair of envelopes
      - fully modular could mean you could borrow one for VCF instead
        - alternatively, perhaps simpler A/D envelope for VCF?
    6. LFO
      - 2x is plenty I think?
      - 555 or relaxation
      - CV (+/- 5V) and digital out
      - ideally multi-shape: sine,tri,squ,ramp up,ramp down
      - CV control for shape
      - Trigger input (e.g. envelope or clock)
    7. [Utilities](utils)
      - Buffer, Sum, Attenuate, Invert, Gate
      - Could be all-in one
        - A input (default ground)
        - B input (default ground)
        - level knob attenuator
        - gate digital CV in, default on
        - (A+B)*level*gate output
        - -(A+B)*level*gate output
        - 2 opamps and a FET
          - one opamp if we scrap the inverter
          - 4 of these would be cost+space efficent
        - Constant CV out if A/B disconnected?
    8. Future
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
      - White noise generator?
      - Sample+Hold?
        - combined with white noise creates RNG
        - alternatively sequencer could do RNG digitally
        - S+H has little use to me outside of random
      - Delay, overdrive, etc. are gimmicky and not useful, can be done via effects pedals
  - For multiple options (like VCO shape), use a CV that is binned to options
    - Easiest solution is probably an ATTiny driving a 4066
    - uC seems like overkill, but it's got an ADC and lots of digital pins
    - Lots of specialty components would be required for a native IC solution
    - Firmware code can easily provide hysteresis and arbitrary numbers of divisions, unlike CDXXXX series CMOS chips

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
  - [ ] PCB for oscilator
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
    - bought 100s of matched pair BJTs instead

## License

Schematics, board layouts, documentation, etc. is licensed under [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-nc-sa/4.0/).

![Creative Commons License](https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png)

If you're interested in commerical use, please ask first.

Any source code is licensed under [MIT](SOFTWARE_LICENSE).


## Reference

- https://aisynthesis.com/how-to-get-started-in-synth-diy/
- https://www.schmitzbits.de/index.html
- http://www5b.biglobe.ne.jp/~houshu/synth/
