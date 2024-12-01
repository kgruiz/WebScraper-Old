#  chordx

0.5.0

A package to write song lyrics with chord diagrams in Typst.

A package to write song lyrics with chord diagrams in Typst.

**Table of Contents**

  * [ Introduction ](https://github.com/typst/packages/raw/main/packages/preview/chordx/0.5.0/#introduction)
  * [ Usage ](https://github.com/typst/packages/raw/main/packages/preview/chordx/0.5.0/#usage)
    * [ Typst Packages ](https://github.com/typst/packages/raw/main/packages/preview/chordx/0.5.0/#typst-packages)
    * [ Local Packages ](https://github.com/typst/packages/raw/main/packages/preview/chordx/0.5.0/#local-packages)
  * [ Documentation ](https://github.com/typst/packages/raw/main/packages/preview/chordx/0.5.0/#documentation)
  * [ Examples ](https://github.com/typst/packages/raw/main/packages/preview/chordx/0.5.0/#examples)
    * [ Chart Chords ](https://github.com/typst/packages/raw/main/packages/preview/chordx/0.5.0/#chart-chords)
    * [ Piano Chords ](https://github.com/typst/packages/raw/main/packages/preview/chordx/0.5.0/#piano-chords)
    * [ Single Chords ](https://github.com/typst/packages/raw/main/packages/preview/chordx/0.5.0/#single-chords)
  * [ Changelog ](https://github.com/typst/packages/raw/main/packages/preview/chordx/0.5.0/#changelog)
  * [ License ](https://github.com/typst/packages/raw/main/packages/preview/chordx/0.5.0/#license)

##  Introduction

With ` chordx ` you can easily generate song lyrics with chords for writing
songbooks.

` chordx ` generates chord charts for stringed instruments (e.g. guitar,
ukulele, etc.), piano chords (with diferent piano layouts) and single chords
that are chords without charts used to write the chords over a word to write
songbooks.

##  Usage

` chordx ` exports 3 functions to generate diferents types fo charts:

  * ` chart-chord ` : used to generate chart chords for stringed instruments. 
  * ` piano-chord ` : used to generate piano chords. 
  * ` single-chord ` : used to show the chord name over a word. 

###  Typst Packages

Typst added an experimental package repository and you can import ` chordx `
as follows:

    
    
    #import "@preview/chordx:0.5.0": *
    

###  Local Packages

If the package hasnât been released yet, or if you just want to use it from
this repository, you can use __local-packages_ _ .

You can read the documentation about typst [ local-packages
](https://github.com/typst/packages#local-packages) and learn about the path
folders used in differents operating systems (Linux / MacOS / Windows).

In Linux you can do:

    
    
    git clone https://github.com/ljgago/typst-chords ~/.local/share/typst/packages/local/chordx/0.5.0
    

And import the package in your file:

    
    
    #import "@local/chordx:0.5.0": *
    

##  Documentation

Here [ chordx-docs ](https://github.com/ljgago/typst-
chords/blob/v0.5.0/docs/chordx-docs.pdf) you have the reference documentation
that describes the functions and parameters used in this package. ( _Generated
with[ tidy ](https://github.com/Mc-Zen/tidy) _ )

##  Examples:

###  Chart Chords

    
    
    #import "@preview/chordx:0.5.0": chart-chord
    
    #let chart-chord-sharp = chart-chord.with(size: 18pt)
    #let chart-chord-round = chart-chord.with(size: 1.5em, design: "round")
    
    // Design "sharp"
    #chart-chord-sharp(tabs: "x32o1o", fingers: "n32n1n")[C]
    #chart-chord-sharp(tabs: "ooo3", fingers: "ooo3")[C]
    
    // Desigh "round" with position "bottom"
    #chart-chord-round(tabs: "xn332n", fingers: "o13421", fret: 3, capos: "115", position: "bottom")[Cm]
    #chart-chord-round(tabs: "onnn", fingers: "n111", capos: "313", position: "bottom")[Cm]
    
    // Design "round" with background color in chord name
    #chart-chord-round(tabs: "xn332n", fingers: "o13421", fret: 3, capos: "115", background: silver)[Cm]
    #chart-chord-round(tabs: "onnn", fingers: "n111", capos: "313", background: silver)[Cm]
    

###  [ ![Chart Chord](https://raw.githubusercontent.com/ljgago/typst-
chords/v0.5.0/examples/chart-chords.svg) ](https://github.com/ljgago/typst-
chords/blob/v0.5.0/examples/chart-chords.typ)

###  Piano Chords

    
    
    #import "@preview/chordx:0.5.0": piano-chord
    
    #let piano-chord-sharp = piano-chord.with(layout: "F", size: 18pt)
    #let piano-chord-round = piano-chord.with(layout: "F", size: 1.5em, design: "round")
    
    #piano-chord-sharp(keys: "B1, D2#, F2#", fill-key: blue)[B]
    #piano-chord-round(keys: "B1, D2#, F2#", fill-key: yellow, position: "bottom")[B]
    #piano-chord-round(keys: "B1, D2#, F2#", fill-key: red)[B]
    

###  [ ![Piano Chord](https://raw.githubusercontent.com/ljgago/typst-
chords/v0.5.0/examples/piano-chords.svg) ](https://github.com/ljgago/typst-
chords/blob/v0.5.0/examples/piano-chords.typ)

###  Single Chords

    
    
    #import "@preview/chordx:0.5.0": single-chord
    
    #let chord = single-chord.with(
      font: "PT Sans",
      size: 12pt,
      weight: "semibold",
      background: silver
    )
    
    #chord[Jingle][G][2] bells, jingle bells, jingle #chord[all][C][2] the #chord[way!][G][2] \
    #chord[Oh][C][] what fun it #chord[is][G][] to ride \
    In a #chord[one-horse][A7][2] open #chord[sleigh,][D7][3] hey!
    

##  [ ![Single Chord](https://raw.githubusercontent.com/ljgago/typst-
chords/v0.5.0/examples/single-chords.svg) ](https://github.com/ljgago/typst-
chords/blob/v0.5.0/examples/single-chords.typ)

##  Changelog

You can read the latest changes in [ CHANGELOG.md
](https://github.com/typst/packages/raw/main/packages/preview/chordx/0.5.0/CHANGELOG.md)

##  License

[ MIT License
](https://github.com/typst/packages/raw/main/packages/preview/chordx/0.5.0/LICENSE)

###  How to add

Copy this into your project and use the import as  ` chordx `

    
    
    #import "@preview/chordx:0.5.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Leonardo Gago ](https://github.com/ljgago)
License:

     MIT 
Current version:

     0.5.0 
Last updated:

     November 4, 2024 
First released:

     July 17, 2023 
Minimum Typst version:

     0.12.0 
Archive size:

     10.3 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/chordx-0.5.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/ljgago/typst-chords)

###  Where to report issues?

This  package  is a project of  Leonardo Gago  .  Report issues on  [ their
repository ](https://github.com/ljgago/typst-chords) .  You can also try to
ask for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.5.0  |  November 4, 2024   
[ 0.4.0 ](https://typst.app/universe/package/chordx/0.4.0/) |  July 10, 2024   
[ 0.3.0 ](https://typst.app/universe/package/chordx/0.3.0/) |  March 3, 2024   
[ 0.2.0 ](https://typst.app/universe/package/chordx/0.2.0/) |  September 3, 2023   
[ 0.1.0 ](https://typst.app/universe/package/chordx/0.1.0/) |  July 17, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

