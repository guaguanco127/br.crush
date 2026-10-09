# Max/MSP Abstraction: br.crush.1.2  
   
By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.crush.1.2, with all related files, can be found here: [https://github.com/guaguanco127/br.crush](https://github.com/guaguanco127/br.crush)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9.

## Table of Contents 

[About](#About)   
[Which file?](#Files)  
[What is an abstraction?](#Abstraction)  
[How To Install](#Install)  
[How To Use](#Use)  
[State outlet](#State)  

## <a name="About"></a>About

Bit + sample-rate reduction, stereo. Rate holds each sample until the next one is taken, for aliasing and grit; Bits rounds every sample to fewer levels, for buzz and crunch. Bits is a float, so turning it morphs smoothly between depths instead of stepping. Auto-gain keeps the level steady as Bits goes down, and a low-pass after the crush smooths it. Every control fades, so nothing clicks. Works at any sample rate.

**Rate:** 50 to 48000 Hz. How often a new sample is taken; in between, the last one is held. Lower = more aliasing. The dial is curved so most of its travel is down in the low rates, where most of the sound is (about 1.5 kHz at noon). 48000 Hz or more means no rate reduction, at any sample rate. Default 8000.  

**Bits:** 1 to 16 (the plain object takes up to 24). Bit depth. A float: 4.5 is a blend of the 4 and 5 bit results, so turning it, or driving it with a signal, morphs smoothly. The levels sit half a step off zero, so quiet parts turn into buzz rather than cutting out. Default 6.  

**Auto-gain:** with fewer bits, the quiet parts turn into a buzz that gets 6 dB louder with every bit removed, and the crush sounds louder even when the meter barely moves. Auto-gain cuts 3 dB for every bit below 8, a value chosen by ear. Going down, the cut lands just before the crush gets louder; going up, it lifts just after the crush gets quieter, so turning Bits never jumps in level. Default on.  

**Low-pass:** 200 to 20000 Hz, 12 dB/oct, after the crush. Smooths the held stair-steps and tames the added highs, which also makes the crush sound less loud. It does not remove the aliasing: that is the sound. Default 20000.  

**Dry/Wet:** 0 to 100 %, linear. The crushed signal is nearly the same waveform as the dry one, so an equal-power blend would bump the middle up 3 dB. At low Rates a partly wet mix can sound a little phasey: the held samples run slightly behind the dry signal. Default 100.  

**On/Off:** Off fades to the dry signal at full level. Default on.  

## <a name="Files"></a>Which file?

| File | What it is |
|---|---|
| br.crush.1.2 | No UI. The plain object to patch with |
| br.crush.ui.1.2 | With a dial for Rate, Bits, Low-pass and Dry/Wet and Auto-gain and On/Off buttons, ready for a [bpatcher] (132 x 169) |
| _br.crush.example.1.2 | Example patch: open this first. Pick a source (drum loop, voice, synth plucks, a stereo pair or your mic) |

The UI version contains the plain version and has the same inlets and audio outlets (plus State last), so either swaps in without rewiring. Open the UI version in patching mode for comments on how it is built.

## <a name="Abstraction"></a>What is an Abstraction?

An abstraction is a subpatcher that is saved as an external file, and can be used just like a standard Max object. As long as your abstraction can be found in the Max file path, you can type its name into a new object box and it will be loaded directly into your patch.  

By saving your logic in an abstraction, you can create modules that can be used in future work with little or no additional programming.

## <a name="Install"></a>How To Install

1. Make sure you have Max 9 installed, and that the Max patch you are using is saved inside a folder.  

2. Copy the .maxpat files you want into the same folder as your patch. The UI version needs the plain version next to it (br.crush.ui.1.2 uses br.crush.1.2).

3. In your patch, create an object called br.crush.1.2. For the version with controls, create a [bpatcher] and choose br.crush.ui.1.2.maxpat as its patcher.

## <a name="Use"></a>How To Use

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Left In | Signal | | |
| 2 | Right In | Signal | | |
| 3 | Rate | Signal or Float (UI: Float only) | Hz 50 to 48000 (48000 = off) | 8000 |
| 4 | Bits | Signal or Float (UI: Float only) | 1 to 24 (UI dial 1 to 16) | 6 |
| 5 | Auto-gain | Signal or Int (UI: Int only) | 0 off, 1 on | 1 |
| 6 | Low-pass | Signal or Float (UI: Float only) | Hz 200 to 20000 | 20000 |
| 7 | Dry/Wet | Signal or Float (UI: Float only) | % 0 to 100 | 100 |
| 8 | On/Off | Signal or Int (UI: Int only) | 0 off, 1 on | 1 |

Outlets 1 / 2: Left Out / Right Out (Signal)  
Outlet 3 (UI version only): State (Message), see [State outlet](#State)

Every control fades, so you can change anything while audio plays, and every control also takes a signal or a number (the example patch sweeps Bits with a slow sine). In the UI version a number into an inlet moves its control, so the screen always shows what you hear. Hover any inlet or outlet in Max for its description.

Rate runs a phase counter at the Rate frequency: each time it wraps, a new input sample is taken and held until the next wrap. Bits rounds the held sample to 2^(Bits-1) levels each side of zero, half a step off zero; a fractional Bits value crossfades the two neighbouring depths. Auto-gain is a plain gain cut of 3 dB per bit below 8, worked out from whichever is lower, the Bits you asked for or the Bits the crush is at right now: it cuts in over 5 ms while Bits glides over 20 ms, and lets go over 40 ms. A 12 dB/oct state-variable low-pass follows, then a gentle 5 Hz DC blocker on the crushed signal only (a constant offset coming in would otherwise be rounded up to a half step), then the linear dry/wet and the On/Off fade. Exact silence stays silent: the rounding works on the size of each sample and puts the sign back.

## <a name="State"></a>State outlet

The last outlet of the UI version (State) sends the current settings as named messages the moment they change: `rate 8000.`, `bits 6.`, `autogain 1`, `lowpass 20000.`, `drywet 100.` and `on 1`. Use it to keep a display, Mira or another patch in sync. Pick them out by name with [route rate bits autogain lowpass drywet on], not by position, so your patch keeps working if a later version adds controls. Repeats are filtered out.

| Message | Type | Range |
|---|---|---|
| rate | Float | Hz, 50 to 48000 |
| bits | Float | 1 to 24 (UI: 1 to 16) |
| autogain | Int | 0 off, 1 on |
| lowpass | Float | Hz, 200 to 20000 |
| drywet | Float | %, 0 to 100 |
| on | Int | 0 off, 1 on |

The plain version has no State outlet: whatever drives it already knows the values. The example patch has a State outlet tab that shows this.

Double-click the object to see inside it and study how it was built.
