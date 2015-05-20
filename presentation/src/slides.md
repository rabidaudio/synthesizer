name: title
layout: true
class: center, middle
---
class: inverse

# Custom modular synthesizer

![alien](/i/alien.png) ![music](/i/music.png)

<i class="fa fa-twitter"></i> [@charlesjuliank](https://twitter.com/charlesjuliank)  
<i class="fa fa-github"></i> [rabidaudio/synthesizer](https://github.com/rabidaudio/synthesizer)

???

I'm Julian. By day I write software for drones, and by night I make side projects.
As the week progresses my nights take over my days, so I freelance hardware and software
development so that I can just do side projects for a living.

Today I thought I'd show you one of my side projects, the synthesizer I'm putting together,
and maybe inspire you to dive into hardware.

---

# Why?

???

---

# Learn

???

I figure most of the people in this room are software people. And I suspect there are a few people
who've maybe played with an arduino or a raspberry pi, sensors and LEDs and the like, but the 
thought of transistors or capacitors intimidates you. 

Well, synthesizers are a great jumping off point into analog electronics. 

---

# Why synthesizers?

???

So why learn electronics with synthesizers?

---
name: whysynth
## 1
# human

???

It's a form of artistic expression. It's very sensory driven. Turning knobs changes what you hear, etc.

---
## 2
# old

???

This stuff is old-fashioned. Nowadays everything is smaller, more complicated, and harder to use.
Old stuff like this, the components are bigger, the circuits are simpler, and the patents have started to expire.

---

## 3
#$$$

???

Original modular synths which used to be trashed for parts are now selling for thousands or tens of thousands of dollars.
Analog systems are starting to make a comeback, and I think it is thanks to an intersection between the DIY maker community and the
rising popularity of EDM and Dubstep. 

---
class: list

## Anatomy of a synthesizer

.my-left-column[
### pitch
### loudness
### timbre
]

<i class="fa fa-arrow-right myarrow"></i>

.my-right-column[
### frequency
### amplitude
### shape (harmonics)
]

???

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


### 

---
class: webcam

<!-- Webcam -->

???

### Demo 1

First we use an oscillator to make a wave. We can control the frequency, and the shape (square vs. saw).
Then we pass it through a filter, were we can control more of the shape by cutting off higher harmonics
or even adding more.
Finally we pass it through an amplifier to control the loudness.

Filter cutoff is wah sound for guitarists in the room

---

# Modularity
### Where the magic comes from

---
background-image: url(/i/module.png)

---
background-image: url(/i/VCF.png)

---

# Modulation

???

### GO BACK TO DEMO

filter sweep at a regular rate?
External modulation: LFO filter sweep
Vibrato
FM modulation

---

# So what did *you* build?

---
class: list

# LFO

- Oscillates  roughly .1Hz to 100Hz
- Square and triangle outputs
- Adjustable amount

.footnote[*not yet voltage controllable]

???

## Go back to demo

- just my LFO
- my LFO at a different rate than bult-in
- mine adjusting the rate of the built-in

---
class: list

# Sequencer

- Record patterns and play them back
- Change the playback rate
- ~30 seconds of record time
- reverse mode
- trigger mode

???

### Demo!!!

- show recording a pattern
- changing speed
- reverse mode
- trigger mode

You might notice it's a little out of tune.
the ATMega has 10 bit DACs and ADCs, so a single bit
of variation is a pretty significant pitch change (you can hear it)

I bought some external 16-bit DACs and ADCs. However, they are really small

---

.left-column[
## Memory

## onRecord

## onPlay
]

.right-column[
```C
short buffer[512];
```

```C
while(record){
  buffer.push(analogRead(input));
}
```

```C
while(play){
  analogWrite(buffer.next(), output);
}
```
]

.footnote[
  Super simplified. See Github for source.
]


???

Here's the basicly what the microprocessor does it half-C,
half-javascript Frankenstein pseudo-code.

The source code is out on the github link if you want to see it.

---
# TI ADS1110
### 16-bit I<sup>2</sup>C

![adc](/i/quarter-s.jpg)

---
background-image: url(/i/quarter2.jpg)

---
background-image: url(/i/schem.png)

???

Doing PCB layouts in Eagle. The Schematic is done

---
class: bgblack
background-image: url(/i/board.png)

???

The board needs a little work

---
# Others

---
# Octopus VCF

???

For class, we build a Low pass filter using Vactrols, which
are LEDs glued to voltage-controlled resistors. 

We 3d printed a little box for the LEDs and designed the board. 

Had to turn it in, so I couldn't bring it but to show, but I'm going
to make another one soon. 

---
background-image: url(/i/octopus.jpg)

???

- 4-pole lowpass filter
- cutoff and resonance controls
- custom vactrols
- combined Buchla's vactrol current circuits with Ray Wilson's 4-pole design

---
background-image: url(/i/box.png)

---
# Second VCO

---
background-image: url(/i/vco.jpg)

???

I'm also adding a second VCO to the mix.

It doesn't work yet, and you can probably tell why. 

It will be tunable relative to the first vVCO
so they can be in tune, or in thirds, or fifths or octaves above or below

---
class: list

# Future work

- Entirely custom modules
- 3 filters: 4-pole LP, HP, state-variable
- Buffed-up VCA
- Extra LFOs
- Second VCO with relative tune
- MIDI keyboard
- Patch memory


???

- replace Werkstatt with all custom modules
- 3 filters: 4-pole LP, HP, state-variable
- buffed-up VCA
  - individually-controllable inputs (mixer)
  - higher output
  - stereo output
  - ability to invert stereo phase
- a couple 4-decade LFO's with clock input, PWM control
- second oscillator with relative tune control
- MIDI keyboard+EV replacement
- patch memory


---
class: inverse

### Learn more
[rabidaudio/synthesizer](https://github.com/rabidaudio/synthesizer)  
[rabid.audio/blog](http://rabid.audio/blog)

### DIY Synth resources
[Ray Wilson, *Make: Analog Synthesizers*](http://www.amazon.com/Make-Analog-Synthesizers-Ray-Wilson/dp/1449345220)  
[Aaron Lanterman's class notes](http://users.ece.gatech.edu/lanterma/acms)


.footnote[
  @charlesjuliank
]