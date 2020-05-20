Good Intro:

- https://aisynthesis.com/how-to-get-started-in-synth-diy/
- https://www.schmitzbits.de/index.html
- http://www5b.biglobe.ne.jp/~houshu/synth/


# Format

Eurorack is super popular

https://en.wikipedia.org/wiki/Eurorack

- 3.5" mono patch cables
- 3U, 1HP
- 10 or 16-pin ribbon power - +/-12V, sometimes 5V digital
- Audio signals are typically a maximum of 10V peak-to-peak (i.e. between -5V and +5V)
- Control voltages can either be unipolar or bipolar. Bipolar control voltages are typically 5V peak-to-peak (i.e. from -2.5V to +2.5V), unipolar voltages between 0V and 8V. The V/Octave scale is used for pitch information
- Trigger, Gate or Clock signals are digital 0V-5V pulses typically used for timing and event signaling
- 100K input impedance [typical](https://learningmodular.com/glossary/impedance/)

[Pinout](http://www.davidhaillant.com/wp/wp-content/uploads/bus_eurorack1.pdf):

![Pinout-Diagram](pinout.png)

# Case:

LACKRack is a cheap Ikea way to create a rack.

https://wiki.eth0.nl/index.php/LackRack

TipTop is good starter product, has it has adapter for mounting modules in 19" rack, and included power supply

- https://www.sweetwater.com/store/detail/HappyEndSV--tiptop-audio-happy-ending-kit-silver
- https://www.amazon.com/Tiptop-Audio-Happy-Ending-Kit/dp/B074B29GPR

# Notes after playing with the Neutron

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


# Design goals

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
  - Modules
    - MIDI-CV converter
      - digital MIDI input to OSC CV
      - up to 4 voices
    - Sequencer
      - clock source for LFO? Or LFO input as clock?
      - divide down clocks?
      - likely digital
        - if MIDI output, can simplify duplicating VC outs for tuning,
          can leverage MIDI converter for this
    - Oscillator
      - 0-10V, 1V/octave, A0 to A10
      - Square/Triangle core via LM13700
      - Waveshapper for triangle -> sine
      - abs(triangle) can be used for 2x square
      - blending shapes isn't useful here, since we could use other oscillators for that
      - square CV output for clocking?
      - Option to sync with another osc?
    - LFO
      - 2x is plenty I  think
      - 555 or relaxation
      - CV and digital out
      - ideally multi-shape: sine,tri,squ,ramp up,ramp down
      - Trigger input (e.g. envelope or clock)
    - Filter:
      -  4P LP(/HP?)
      - Moog Ladder?
      - CV control of cutoff, resonance
      - Default to track cutoff with VCO-CV
    - Amplifier:
      - LM13700
      - matched-pair PNP exponential converter
      - CV of 5V -> Gain=1
      - CV of <=0V -> Gain=\~0, 6 decades below Gain=1
      - allow overdrive to 6V
        - ideally this would begin to clip
      - A/D/S/R envelope
        - is envelope required for each channel?
      - mixdown
        - mono - full mix -> left and right
        - stereo split - A+B->left C+D->right
    - Delay, overdrive, etc. are gimmicky and not useful, can be done via effects pedals


# Amplifier

Calculations: https://docs.google.com/spreadsheets/d/1fOI5-cV5lOYskNise5XZh0knm-L3UJJyRrtGQZKEftU/edit#gid=1448634371

- https://www.onsemi.com/pub/Collateral/2N5457-D.PDF
- http://www.ti.com/lit/ds/symlink/lm386.pdf
- https://www.schmitzbits.de/vca.html#
- http://www.ecircuitcenter.com/Circuits/BJT_Diffamp1/BJT_Diffamp1.htm


# TODO

- VCA
  - [ ] Confirm amp on breadboard, finalize CV levels
  - [ ] build PoC amp and test with real synth
  - [ ] finish PCB schematic for complete amplifier
  - [ ] Design housing
    - laser cut acrylic?
    - spacing?
    - mounting screws?
  - [ ] Create PCB
- VCO
  - [ ] Confirm amp on breadboard, finalize CV levels
    - core osc (square/ramp or square/triangle)
    - wave shaper (sine)
    - sync? Zero-cross detector shorts fet to ground?
  - [ ] Build PoC osc
  - [ ] PCB for oscilator
- LFO
  - TBD
- VCF
  - TBD
- Sequencer
  - TBD
- Utils
  - [x] tiny Breakout pcbs for headphone jacks
  - [ ] transistor matcher circuit
