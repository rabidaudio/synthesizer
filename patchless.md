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
