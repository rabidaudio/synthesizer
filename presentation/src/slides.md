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

- 

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




10 bit vs. 16 bit

features:

- reverse
- adjustable rate
- clear
-trigger mode

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
class: list

# Future work

- Entirely custom modules
- 3 filters: 4-pole LP, HP, state-variable
- Buffed-up VCA
- Extra LFOs
- Second VCO with relative tune control
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