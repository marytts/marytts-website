### General

1. [Where does the name MARY come from?](#gen1)
2. [What is the relation between MARY, OpenMARY, MaryTTS, etc.?](#gen2)

### Technical

1. [Can I get MP3 output from MaryTTS (or another compressed audio format)?](#tech1)

### Legal

1. [Can I use MaryTTS for commercial purposes?](#leg1)

## General

####<a name="gen1"></a>Where does the name MARY come from?

MARY stands for <i><b>M</b>odular <b>A</b>rchitecture for <b>R</b>esearch in s<b>Y</b>ynthesis</i>.

[\[top\]](#top)

####<a name="gen2"></a>What is the relation between MARY, OpenMARY, MaryTTS, etc.?

MARY was the original name of the project, before it was open-source. 
An open-source fork was later released under the name OpenMARY. 
For a while, MARY and OpenMARY were developed side-by-side; eventually, efforts were concentrated on the open-source version and the DFKI-internal MARY was no longer maintained. 
When OpenMARY development was migrated to GitHub, the name was changed to MaryTTS to highlight the project's purpose. 

We like to use MaryTTS to refer to the project as it exists now, but for brevity and backward compatibility, occasional references to MARY slip in.

[\[top\]](#top)

## Technical

####<a name="tech1"></a>Can I get MP3 output from MaryTTS (or another compressed audio format)?

Unfortunately, no. 
MARY 3.x did support MP3 output by depending on the Tritonus library. 
However, the native (i.e., non-Java) components became increasingly problematic to support, and were dropped in MARY TTS 4.0. 

The Java world is not particularly well-endowed with open-source implementations of popular audio codecs. 
While it might be possible to support a few formats (such as Speex), it's not one of the next milestones. 
However, code contributions are always welcome.

[\[top\]](#top)

## Legal

####<a name="leg1"></a>Can I use MaryTTS for commercial purposes?

Yes. 
Everything needed to run MaryTTS ("marytts-runtime") is licensed under the LGPL; this allows commercial use, modification, and redistribution. 
We do consider it appropriate to provide attribution by inserting a notice such as
``` Powered by <a href="http://mary.dfki.de/">MaryTTS</a> ``` 

**However**, the voicebuilding and language building components ("marytts-builder") are licensed under the GPL; they rely on a number of GPL-licensed third-party libraries and tools. 

**Moreover**, the TTS voices themselves have individual licenses, usually Creative Commons; so depending on the voice's license, it may or may not be used commercially.
