
6-8 channels

vertical faders
Mute and solo buttons

stereo and pan?

Aux send/return (x2?)
EQ?

No CV?

Digital

cypress?

Op-amps in, round-robin sampling? Codec?

Per channel:
- in jack
- Fader
- mute btn+led
- solo btn+led
- Aux send knob
- Pan knob
- Tone knob (center detent)

Master:
- aux return jack x2
- out jack x2
- fader
- Aux return knob

maybe sets of 4 channels, plus master - with ribbon
- each has a single mix with direct in mixdown, allowing infinite daisy chain
  - -> prev in x2
  - mixdown x2 ->
  - mute/solo bus - SPI? <->
  - Power (from master)

- Master is analog mixer: last mixdown plus aux, through master fader and out


M_Switch
S_Switch
~Global_Solo (open drain, low if any solos)

M_LED = M_Switch && ~Global_Solo
S_LED = S_Switch
Global_Solo = Global_Solo || S_Switch
Channel Muted = M_Switch || (Global_Solo && !S_Switch)

