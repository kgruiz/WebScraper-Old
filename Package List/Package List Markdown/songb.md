#  songb

0.1.0

A songbook package, to display chords above the lyrics and show a number-based
index (similar to patacrep)

Attempt at creating a songbook package to replace [ patacrep
](https://github.com/patacrep/patacrep) (which is based on LaTeX + [ Songs
](https://songs.sourceforge.net/) ).

##  Quickstart

First, create a ` main.typ ` file, like the following:

    
    
    #set page(paper: "a6",margin: (inside: 14mm, outside: 6mm, y: 10mm))
    
    #import "@preview/songb:0.1.0": autobreak, index-by-letter
    
    // helper function, to include you own songs (feel free to customize)
    #let song(path) = {
        // WARNING: autobreak is currently broken (does not converge)
        // see https://github.com/typst/typst/discussions/4530
        autobreak(include path)
        v(-1.19em)
    }
    
    // indexes (put them wherever you want, or comment them out)
    = Song Index
    #index-by-letter(<song>)
    
    = Singer Index
    #index-by-letter(<singer>)
    
    #pagebreak()
    
    // include all you songs, in the right order
    #song("./songs/first_song.typ")
    
    #song("./songs/other_song.typ")
    
    // ...
    

Then, create your song files, like ` songs/first_song.typ ` :

    
    
    #import "@preview/songb:0.1.0": song, chorus, verse, chord
    
    #show: doc => song(
      title: "First Song",
      singer: "Sing",
      doc,
    )
    
    #chorus[
      #chord[Am]First line,#chord[G][ ]of the chorus\
      #chord[Am]Second line,#chord[G][ ]of the chorus.
    ]
    
    
    #verse[
      #chord[Em]First verse\
      With multiple\
      #chord[C]Lines
    ]
    
    If there is #chord[D][a] bridge\
    you can write it directly
    

##  Writing a song

###  song

    
    
    #let song(
      title: none,
      title-index: none,
      singer: none,
      singer-index: none,
      references: (),
      line-color: rgb(0xd0, 0xd0, 0xd0),
      header-display: (number, title, singer) => (...),
      doc
    )
    

###  chord

    
    
    // first argument: chord name
    // optional second argument: text below the chord (useful for whitespace for instance)
    #let chord(..content)
    

###  verse

    
    
    #let verse(body)
    

###  chorus

    
    
    #let chorus(body)
    

##  Organizing songs

###  autobreak

> [!WARNING] Currently broken (lack of convergence for bigger documents) See [
> https://github.com/typst/typst/discussions/4530
> ](https://github.com/typst/typst/discussions/4530)

This function aims at putting the content on a single page (or on facing
pages), by introducing pagebreaks when needed.

    
    
    #let autobreak(content)
    

###  index-by-letter

    
    
    #let index-by-letter(label, letter-highlight: (letter) => (...))
    

label: ` <song> ` or ` <singer> ` are provided by the ` song ` function.

###  How to add

Copy this into your project and use the import as  ` songb `

    
    
    #import "@preview/songb:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Oliverpool ](mailto:git@olivier.pfad.fr)
License:

     EUPL-1.2+ 
Current version:

     0.1.0 
Last updated:

     July 25, 2024 
First released:

     July 25, 2024 
Archive size:

     12.7 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/songb-0.1.0.tar.gz)
Repository:

     [ Codeberg ](https://codeberg.org/pfad.fr/typst-songbook)
Discipline  :

    

  * [ Music ](https://typst.app/universe/search/?discipline=music)

###  Where to report issues?

This  package  is a project of  Oliverpool  .  Report issues on  [ their
repository ](https://codeberg.org/pfad.fr/typst-songbook) .  You can also try
to ask for help with this  package  on the  [ Forum ](https://forum.typst.app)
.

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  July 25, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

