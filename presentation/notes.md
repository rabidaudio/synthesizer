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

### No calculus

Just like software developers, hardware developers are lazy

##### 4 equations

- V=I*R (Ohm's law)
- fo = 1/(2*pi*R*C) (RC filter cutoff)
- (Ideal Op amps) Vo/Vi = -Rf/Ri, Rf/Ri + 1
- ???


### Modules

    CV CV
     | |
in->[   ]->out

VCO(oneVoltPerOctaveFrequencyCV, shape){
  exponentialVoltage = LinearExponentialConvert(oneVoltPerOctaveFrequencyCV);
  resistorFrequencyCV = OTA(exponentialVoltage);
  [square, triangle] = 2OpAmpSqTriOsc(resistorFrequencyCV);
  sine = WaveShape(triangle);

  switch(shape){
    case 'square': wave = square;
    case 'triangle': wave = triangle;
    case 'sine': wave = sine;
  }

  return wave;
}


### LFO



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