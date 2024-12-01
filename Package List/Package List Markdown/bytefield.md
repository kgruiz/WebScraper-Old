#  bytefield

0.0.6

A package to create network protocol headers, memory map, register definitions
and more.

A simple way to create network protocol headers, memory maps, register
definitions and more in typst.

â ï¸ Warning. As this package is still in an early stage, things might break
with the next version.

â¹ï¸ If you find a bug or a feature which is missing, please open an issue
and/or send an PR.

##  Example

![random colored bytefield
example](https://github.com/typst/packages/raw/main/packages/preview/bytefield/0.0.6/docs/bytefield_example.png)

    
    
    #import "@preview/bytefield:0.0.6": *
    
    #bytefield(
    // Config the header
    bitheader(
    "bytes",
    // adds every multiple of 8 to the header.
    0, [start], // number with label
    5,
    // number without label
    12, [#text(14pt, fill: red, "test")],
    23, [end_test],
    24, [start_break],
    36, [Fix], // will not be shown
    angle: -50deg, // angle (default: -60deg)
    text-size: 8pt, // length (default: global header_font_size or 9pt)
    ),
    // Add data fields (bit, bits, byte, bytes) and notes
    // A note always aligns on the same row as the start of the next data field.
    note(left)[#text(16pt, fill: blue, font: "Consolas", "Testing")],
    bytes(3,fill: red.lighten(30%))[Test],
    note(right)[#set text(9pt); #sym.arrow.l This field \ breaks into 2 rows.],
    bytes(2)[Break],
    note(left)[#set text(9pt); and continues \ here #sym.arrow],
    bits(24,fill: green.lighten(30%))[Fill],
    group(right,3)[spanning 3 rows],
    bytes(12)[#set text(20pt); *Multi* Row],
    note(left, bracket: true)[Flags],
    bits(4)[#text(8pt)[reserved]],
    flag[#text(8pt)[SYN]],
    flag(fill: orange.lighten(60%))[#text(8pt)[ACK]],
    flag[#text(8pt)[BOB]],
    bits(25, fill: purple.lighten(60%))[Padding],
    // padding(fill: purple.lighten(40%))[Padding],
    bytes(2)[Next],
    bytes(8, fill: yellow.lighten(60%))[Multi break],
    note(right)[#emoji.checkmark Finish],
    bytes(2)[_End_],
    )
    

##  Usage

To use this library through the Typst package manager import bytefield with `
#import "@preview/bytefield:0.0.6": * ` at the top of your file.

The package contains some of the most common network protocol headers which
are available under: ` common.ipv4 ` , ` common.ipv6 ` , ` common.icmp ` , `
common.icmpv6 ` , ` common.dns ` , ` common.tcp ` , ` common.udp ` .

##  Features

Here is a unsorted list of features which is possible right now.

  * Adding fields with ` bit ` , ` bits ` , ` byte ` or ` bytes ` function. 
    * Fields can be colored 
    * Multirow and breaking fields are supported. 
  * Adding notes to the left or right with ` note ` or ` group ` function. 
  * Config the header with the ` bitheader ` function. !Only one header per bytefield is processed currently. 
    * Show numbers 
    * Show numbers and labels 
    * Show only labels 
  * Change the bit order in the header with ` msb:left ` or ` msb:right ` (default) 

See [ example.typ
](https://github.com/typst/packages/raw/main/packages/preview/bytefield/0.0.6/example.typ)
for more information.

See [ CHANGELOG.md
](https://github.com/typst/packages/raw/main/packages/preview/bytefield/0.0.6/CHANGELOG.md)

###  How to add

Copy this into your project and use the import as  ` bytefield `

    
    
    #import "@preview/bytefield:0.0.6"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Jomaway ](https://github.com/jomaway)
License:

     MIT 
Current version:

     0.0.6 
Last updated:

     May 24, 2024 
First released:

     September 3, 2023 
Minimum Typst version:

     0.10.0 
Archive size:

     12.0 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/bytefield-0.0.6.tar.gz)
Repository:

     [ GitHub ](https://github.com/jomaway/typst-bytefield)

###  Where to report issues?

This  package  is a project of  Jomaway  .  Report issues on  [ their
repository ](https://github.com/jomaway/typst-bytefield) .  You can also try
to ask for help with this  package  on the  [ Forum ](https://forum.typst.app)
.

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.0.6  |  May 24, 2024   
[ 0.0.5 ](https://typst.app/universe/package/bytefield/0.0.5/) |  March 11, 2024   
[ 0.0.4 ](https://typst.app/universe/package/bytefield/0.0.4/) |  February 21, 2024   
[ 0.0.3 ](https://typst.app/universe/package/bytefield/0.0.3/) |  November 20, 2023   
[ 0.0.2 ](https://typst.app/universe/package/bytefield/0.0.2/) |  October 27, 2023   
[ 0.0.1 ](https://typst.app/universe/package/bytefield/0.0.1/) |  September 3, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

