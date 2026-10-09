# Max/MSP RNBO Patch for External or VST Creation: br.crush.rnbo.1.2  
   
By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.crush.1.2, with all related files, can be found here: [https://github.com/guaguanco127/br.crush](https://github.com/guaguanco127/br.crush)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9 and RNBO.

## Table of Contents 

[About](#About)   
[What is an External for Max/MSP?](#External)  
[What is a VST or AU Audio Plugin?](#VST)  
[How To Export as a Max/MSP External](#Export)  
[How To Export as a VST or AU Audio Plugin](#ExportVST)  

## <a name="About"></a>About

Bit + sample-rate reduction, stereo. Rate holds each sample until the next one is taken, for aliasing and grit; Bits rounds every sample to fewer levels, for buzz and crunch. Bits is a float, so turning it morphs smoothly between depths instead of stepping. Auto-gain keeps the level steady as Bits goes down, and a low-pass after the crush smooths it. Every control fades, so nothing clicks. Works at any sample rate.

Inside [rnbo~], the six params (Rate, Bits, Auto_gain, Low_pass, Dry_Wet, On_Off) are the plugin parameters, with the same ranges and dial curves as the Max and Live versions. Inlets 3 to 8 set the same params, so the external has the same eight inlets as the abstraction. The gen~ code inside is the same as br.crush.1.2.

**Rate:** 50 to 48000 Hz. How often a new sample is taken; in between, the last one is held. Lower = more aliasing. The dial is curved so most of its travel is down in the low rates, where most of the sound is (about 1.5 kHz at noon). 48000 Hz or more means no rate reduction, at any sample rate. Default 8000.  

**Bits:** 1 to 16 (the plain object takes up to 24). Bit depth. A float: 4.5 is a blend of the 4 and 5 bit results, so turning it, or driving it with a signal, morphs smoothly. The levels sit half a step off zero, so quiet parts turn into buzz rather than cutting out. Default 6.  

**Auto-gain:** with fewer bits, the quiet parts turn into a buzz that gets 6 dB louder with every bit removed, and the crush sounds louder even when the meter barely moves. Auto-gain cuts 3 dB for every bit below 8, a value chosen by ear. Going down, the cut lands just before the crush gets louder; going up, it lifts just after the crush gets quieter, so turning Bits never jumps in level. Default on.  

**Low-pass:** 200 to 20000 Hz, 12 dB/oct, after the crush. Smooths the held stair-steps and tames the added highs, which also makes the crush sound less loud. It does not remove the aliasing: that is the sound. Default 20000.  

**Dry/Wet:** 0 to 100 %, linear. The crushed signal is nearly the same waveform as the dry one, so an equal-power blend would bump the middle up 3 dB. At low Rates a partly wet mix can sound a little phasey: the held samples run slightly behind the dry signal. Default 100.  

**On/Off:** Off fades to the dry signal at full level. Default on.  

There is no State output (as of 1.2): whatever drives the external or plugin already knows the values, and in a DAW they are normal plugin parameters.

## <a name="External"></a>What is an External for Max/MSP?

An external is a type of object that does not come with your Max/MSP library. Unlike the typical objects that you can call on all versions of Max/MSP, an external must be installed on the user's computer a specific way. 

## <a name="VST"></a>What is a VST or AU Audio Plugin? 

A VST is a third party audio plugin generally run within a digital audio workstation (DAW). A VST is cross platform for both Windows and Mac. An AU works the same way but is Mac only. 

## <a name="Export"></a>How To Export as a Max/MSP External

1. Make sure Max 9 is installed on your computer, and that you have an RNBO license.

2. Open br.crush.rnbo.1.2.maxpat. Drop a sample of your own onto the [playlist~] to hear it.

3. Double-click the [rnbo~] object while the patch is locked.

4. Click "Show Export Sidebar" on the right-hand side.

5. Select "Max External Export".

6. Name the object br.crush.1.2~ and export.

**Keep the ~ at the end of the name.** Without it, the external has exactly the same name as the abstraction br.crush.1.2, and Max loads whichever one it finds first, so you can't be sure which one you're using. The ~ also follows the Max convention for objects that process audio. Any other name is fine as long as it isn't the name of an abstraction you also use.

7. Copy the exported .mxo (Mac) or .mxe64 (Windows) into a folder on Max's search path, for example Documents/Max 9/Externals, and add that folder in Options > File Preferences if it isn't listed. Then create an object called br.crush.1.2~ in any patch. It has the same inlets as the abstraction, except that the six controls take numbers only.

## <a name="ExportVST"></a>How To Export as a VST or AU Audio Plugin

**Please note that you can only use an audio plugin on the same computer that you created it with RNBO. Sending an audio plugin to another computer will not work and be flagged as an unrecognized developer** 

1. Make sure Max 9 is installed on your computer, and that you have an RNBO license.

2. Open br.crush.rnbo.1.2.maxpat.

3. Double-click the [rnbo~] object while the patch is locked.

4. Select "Audio Plugin Export".

5. Choose VST3 or AU and the platform, name your plugin, and export. The six parameters show up in your DAW for automation.
