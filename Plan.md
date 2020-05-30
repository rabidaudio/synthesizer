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

## Layout

- Jacks at the top, controls at the bottom
- 14mm spacing between jacks (center to center) in both directions
- Knob/switch spacing?

- 1HP=1/5"=5.08mm
  - standard graph paper is 5 squares per inch, meaning exactly 1 real world HP per square
- 84 HPs (426mm) of usable horizontal space in a 19" rack
- 3U=128.5mm
  - 116.5mm of useable vertical space after leaving room for mounting screws
- Maximum control density:
  - jacks = 14mm
  - knobs = 21mm
- Bounding squares
  - jacks: x: 15mm, y: 14.5mm
  - knobs: x: 30mm, y: 29mm
  - this creates an easy bounding box to work with
  - each jack is 3HP wide, each knob is 6HP wide
  - with this almost-square factor, we have 8 jacks of vertical space
    - 24 "VPs" @ 4.833mm

Reference for dimensions: http://www.doepfer.de/a100_man/a100m_e.htm

## Panels

This series of posts is super helpful for aluminum panel cutting and applying graphics with transfer paper:

- https://syntherjack.net/eurorack-module-diy-tutorial-1-drilling/
- https://syntherjack.net/eurorack-module-diy-tutorial-2-graphics/

## Case

TipTop is good starter product, has it has adapter for mounting modules in 19" rack, and included power supply

Power supply:

- 2000mA at +12V
- 500mA at -12V
- 170mA at +5V

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
    - LED feedback is critical
  - Modules
    1. Amplifier:
      - LM13700
      - matched-pair PNP exponential converter
      - CV of 5V -> Gain=1
      - CV of <=0V -> Gain=\~0, 6 decades below Gain=1
      - allow overdrive to 6V
        - ideally this would begin to clip
      - mixdown
        - mono - full mix -> left and right
        - stereo split - A+C->left B+D->right
    2. Oscillator
      - 0-10V, 1V/octave, A0 to A10
      - Square/Triangle core via LM13700
      - Waveshapper for triangle -> sine
      - abs(triangle) can be used for 2x square
      - blending shapes isn't useful here, since we could use other oscillators for that
      - square CV output for clocking?
      - Option to sync with another osc?
      - CV control for shape?
    3. MIDI-CV converter
      - digital MIDI input to OSC CV
      - up to 4 voices
    4. Filter:
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
    Future:
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
      - Utilities
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
      - White noise generator?
      - Sample+Hold?
        - combined with white noise creates RNG
        - alternatively sequencer could do RNG digitally
        - S+H has little use to me outside of random
      - Delay, overdrive, etc. are gimmicky and not useful, can be done via effects pedals


# Amplifier

Calculations: https://docs.google.com/spreadsheets/d/1fOI5-cV5lOYskNise5XZh0knm-L3UJJyRrtGQZKEftU/edit#gid=1448634371

- https://www.onsemi.com/pub/Collateral/2N5457-D.PDF
- http://www.ti.com/lit/ds/symlink/lm386.pdf
- https://www.schmitzbits.de/vca.html#
- http://www.ecircuitcenter.com/Circuits/BJT_Diffamp1/BJT_Diffamp1.htm


# Patterns

For multiple options (like VCO shape), use a CV that is binned to options. Easiest solution is probably an ATTiny driving a 4066. uC seems like overkill, but it's got an ADC and lots of digital pins. Lots of specialty components would be required for a native IC solution. Firmware code can easily provide hysteresis and arbitrary numbers of divisions, unlike CDXXXX series CMOS chips.

# TODO

- utility module
  - [x] Verify on breadboard
  - [x] design PCB
  - [x] order parts
  - [ ] come up with a cute name
  - [ ] design front panel
  - [ ] manufacture front panel
  - [ ] assemble module
  - [ ] test with Neutron
- VCA
  - [ ] Confirm amp on breadboard, finalize CV levels
  - [ ] build PoC amp and test with real synth
  - [ ] finish PCB schematic for complete amplifier
  - [ ] Create PCB
  - [ ] design front panel
  - [ ] manufacture front panel
  - [ ] assemble module
  - [ ] test with Neutron
- VCO
  - [ ] Confirm amp on breadboard, finalize CV levels
    - core osc (square/ramp or square/triangle)
    - wave shaper (sine)
    - sync? Zero-cross detector shorts fet to ground?
  - [ ] Build PoC osc
  - [ ] PCB for oscilator
- MIDI/envelopes
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


# Separate idea

analog modules with standardized plugs, no patch cables.
all patching done in software, e.g. iPad app, MAX, vst plugins, etc.

Possible with an ASIC which is just a bunch of CD4066-style bidirectional analog switches. Multiplexing every input to every other grows exponentially. Instead, you have a limited set of "patch cables" (channels) that each io can connect to. On-board memory to store switch state, which can be programmed (e.g. SPI).

```
64 patches, 128 io pins => 8192 switches, 16K transistors, 1KB of memory

8086 had 20K nMOS transistors, this is basically the same thing

singals are single-digit voltages at 100s of uAs, so power disipation is defintely a concern

144 pin BGAs exist
128x io, V+, V-, VDD, GND, 4xSPI, 8xNC
```

Bespoke ASIC design is $$$, but perhaps you cound build a company and raise money around it.


```
Util:
a in
b in
gate
out
~out
atten knob

util=4*(5+4)=36

VCO:
knob freq
knob shape
cv-in
shape-in
signal-out

VCO=11*4=44

VCF:
knob cutoff
knob res
sig in
cv cutoff
cv res
sig out
osc-track switch

VCF=14*4=56

VCA:
vol knob
sig in
cv in
sig out

[sw]
[master vol knob]

VCA=4*7+4+2+1=35

MIDI=11

ADSR:
cv in
cv out
4 knobs for every 2 envelopes

ADSR=4*2+4*4*2

LFO:
freq knob
shape knob
sig out
cv in
clock out
clock in

=2*12
```