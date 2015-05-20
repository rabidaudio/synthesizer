

1. They're modular
2. You interact with them on a human level, artistic
3. $$$

The modular is a big one for you software types.

### Intro to Synths



Demo:

<!-- Frequency about 11, filter full open, EG, no modulation -->

Filter cutoff is wah sound for guitarists in the room

#### Modules 

The idea behind an analog synthesizer is modularity. Each of these parts act independantly, like so:

    CV CV
     | |
in->[   ]->out

For our filter, signal in, signal out, cutoff control, resonance control

The value:
move them around, use them for things they weren't indended for, add more of them
all things musicians like to do

#### Magic in the modulation




### LFO

LFO


Demo:
just my LFO
my LFO at a different rate than bult-in
mine adjusting the rate of the built-in

### Sequencer

while(record){
  buffer.push(analogRead(input));
}

....

while(play){
  analogWrite(buffer.next(), output);
}


10 bit vs. 16 bit

features:

- reverse
- adjustable rate
- clear
-trigger mode

### Octopus



### Boards

Eagle

### Future work

- replace Werkstatt with all custom modules
- 3 filters: 4-pole LP, HP, state-variable
- buffed-up VCA:
  - individually-controllable inputs (mixer)
  - higher output
  - stereo output
  - ability to invert stereo phase
- 2 to 4  4decade LFO's with clock input, PWM control
- second oscillator with relative tune control
- MIDI keyboard+EV replacement
- patch memory

### Learn more

Ray Wilson
Aaron Lanterman

### Me

@charlesjuliank

github.com/rabidaudio/synthesizer

rabid.audio/blog