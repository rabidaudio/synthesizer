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

# Why snythesizers?

???

So why learn electronics with snythesizers?

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

This stuff is old-fasioned. Nowadays everything is smaller, more complicated, and harder to use.
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

.left-column[
### pitch
### loudness
### timbre
]

<i class="fa fa-arrow-right myarrow"></i>

.right-column[
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

# Demo 1

First we use an osciallator to make a wave. We can control the frequency, and the shape (square vs. saw).
Then we pass it through a filter, were we can control more of the shape by cutting off higher harmonics
or even adding more.
Finally we pass it through an amplifier to control the loudness.



---

# Modularity
### Where the magic comes from

---
background-image: url(/i/module.png)

---
background-image: url(/i/VCF.png)