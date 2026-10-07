# Ableton Max for Live device: br.crush.1.0  
   
By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.crush.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.crush](https://github.com/guaguanco127/br.crush)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9.

## Table of Contents 

[About](#About)  
[What is a Max for Live Device?](#M4L)  
[How To Install](#Install)  

## <a name="About"></a>About

Bit + sample-rate reduction, stereo. Rate holds each sample until the next one is taken, for aliasing and grit; Bits rounds every sample to fewer levels, for buzz and crunch. Bits is a float, so turning it morphs smoothly between depths instead of stepping. Auto-gain keeps the level steady as Bits goes down, and a low-pass after the crush smooths it. Every control fades, so nothing clicks. Works at any sample rate.

A compact stereo audio effect with six controls, all Live parameters, so you can automate them or map them to a controller. One parameter bank, **Crush**: Rate, Bits, Auto-gain, Low-pass, Dry/Wet, On/Off. The device's On/Off fades to dry; Live's own device switch bypasses it completely.

**Rate:** 50 to 48000 Hz. How often a new sample is taken; in between, the last one is held. Lower = more aliasing. The dial is curved so most of its travel is down in the low rates, where most of the sound is (about 1.5 kHz at noon). 48000 Hz or more means no rate reduction, at any sample rate. Default 8000.  

**Bits:** 1 to 16 (the plain object takes up to 24). Bit depth. A float: 4.5 is a blend of the 4 and 5 bit results, so turning it, or driving it with a signal, morphs smoothly. The levels sit half a step off zero, so quiet parts turn into buzz rather than cutting out. Default 6.  

**Auto-gain:** with fewer bits, the quiet parts turn into a buzz that gets 6 dB louder with every bit removed, and the crush sounds louder even when the meter barely moves. Auto-gain cuts 3 dB for every bit below 8, a value chosen by ear. Going down, the cut lands just before the crush gets louder; going up, it lifts just after the crush gets quieter, so turning Bits never jumps in level. Default on.  

**Low-pass:** 200 to 20000 Hz, 12 dB/oct, after the crush. Smooths the held stair-steps and tames the added highs, which also makes the crush sound less loud. It does not remove the aliasing: that is the sound. Default 20000.  

**Dry/Wet:** 0 to 100 %, linear. The crushed signal is nearly the same waveform as the dry one, so an equal-power blend would bump the middle up 3 dB. At low Rates a partly wet mix can sound a little phasey: the held samples run slightly behind the dry signal. Default 100.  

**On/Off:** Off fades to the dry signal at full level. Default on.  

## <a name="M4L"></a>What Is a Max For Live Device?

Max For Live brings the power and flexibility of Max to Ableton Live. Max For Live gives you access to hundreds of exclusive custom plug-ins (Live Devices) as well as the tools to build your own. These can be MIDI and audio effects, audio and video synthesizers, 3D Jitter visuals, as well as tools that interact with the Live application itself, via the Live API.

## <a name="Install"></a>How To Install

1. Make sure you have Ableton Live Suite installed on your computer, and that Live is closed while installing. 

2. For Mac:  
Go to your user folder  
Then Music > Ableton > User Library > Presets > Audio Effects > Max Audio Effect  
Copy br.crush.1.0.amxd into that folder

3. For Windows: \Users\[username]\Documents\Ableton\User Library\Presets\Audio Effects\Max Audio Effect  
  
4. Open Ableton Live. On the left-hand side, look for Max for Live > Max Audio Effect and then the name of this device.

5. Either double-click the device, or drag it onto the track where you want it.
