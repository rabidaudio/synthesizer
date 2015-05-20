I'm Julian. By day I write software for drones, and by night I make side projects.
As the week progresses my nights take over my days, so I freelance hardware and software
development so that I can just do side projects for a living.

Today I thought I'd show you one of my side projects, the synthesizer I'm putting together,
and maybe inspire you to dive into hardware.

I figure most of the people in this room are software people. And I suspect there are a few people
who've maybe played with an arduino or a raspberry pi, sensors and LEDs and the like, but the 
thought of transistors or capacitors intimidates you. 

Well, synthesizers are a great jumping off point into analog electronics. 

1. They're modular
2. You interact with them on a human level, artistic
3. $$$

The modular is a big one for you software types.

### Intro to Synths

Some of you probably don't have any idea how a synthesizer works or what it does, so here's a 
very brief, simplified introduction. 

When making music, you've basically got control of three parameters:

- pitch
- loudness
- timbre

These are directly related concepts to signals:

- frequency
- amplitude
- shape (harmonics)

First we use an osciallator to make a wave. We can control the frequency, and the shape (square vs. saw).
Then we pass it through a filter, were we can control more of the shape by cutting off higher harmonics
or even adding more.
Finally we pass it through an amplifier to control the loudness.

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

filter sweep at a regular rate?

External modulation: LFO filter sweep

Vibrato

FM modulation

## So what did **you** build?


### LFO

LFO
wide oscillation range, roughly .1Hz to 100Hz
Square and triangle
Ammount is adjustable
currently not voltage controllable - future

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