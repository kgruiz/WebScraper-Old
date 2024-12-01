#  untypsignia

0.1.1

Unofficial typesetter's insignia emulations

The ` untypsignia ` is a 3rd-party, unofficial, unendorsed Typst package that
exposes commands for rendering, as ` content ` texts, some typesetters names
in a stylized fashion, emulating their respective _insignia_ , i.e., marks by
which they are known.

##  Name

The package name is a blend of:

  * âunâ, from âunofficialâ, 
  * âtypâ, from âTypstâ, and 
  * âsigniaâ, from âinsigniaâ, which means marks by which anything is known. 

##  Description

The typical use case of ` untypsignia ` in Typst is to emulate a given
typesetting systemâs mark, if available, when referring to them, in
sentences like: âThis document is typeset in ` XYZ ` â, as traditionally
done in ` TeX ` systems and derivatives thereof.

Currently available insignia emulations include:

  * ` TeX ` , 
  * ` LaTeX ` , and 
  * ` Typst ` (see below) 

Despite thereâs no such a thing as a Typst âofficialâ typography,
according to this post on [ Discord
](https://discord.com/channels/1054443721975922748/1054443722592497796/1107039477714665522)
, it can be typeset with âwhatever fontâ the surrounding text is being
typeset. Moreover, Typst [ branding page ](https://typst.app/legal/brand/)
requires capitalization of the initial âTâ whenever the name is used in
prose. Therefore, the âTypstâ support in this package is a mere, still
unofficial, implementation of the capitalization of âTypstâ in the
currently used font.

##  Font Requirements

For the ` TeX ` system and itâs derivatives, the ` "New Computer Modern" `
font is required.

##  Usage

The package exposes the following few, parameterless, functions:

  * ` #texmark() ` , 
  * ` #latexmark() ` , and 
  * ` #typstmark() ` . 

Except for the ` #typstmark() ` , each such command outputs their respective
namesake signus emulation, in the documentâs current ` text ` settings, with
the exception of font â meaning text size, color, etcâ¦ will apply to the
signus emulation.

Aditionally, the signus emulation is produced, as ` contexts ` text inside a `
box ` â hence not images â so as to avoid hyphenation to take place. This
also applies to the ` #typstmark() ` function, for lack of specific guidance,
and also because âTypstâ is a short word.

##  Example

    
    
    #set page(width: auto, height: auto, margin: 12pt, fill: rgb("19181f"))
    #set par(leading: 1.5em)
    #set text(font: "Rouge Script", fill: rgb("80f4b6"))
    
    #import "@preview/untypsignia:0.1.1": *
    
    #let say() = [I prefer #typstmark() over #texmark() or #latexmark().]
    
    #for sz in (20, 16, 14, 12, 10, 8) {
      set text(size: sz * 1pt)
      say()
      linebreak()
    }
    

This example results in a 1-page document like this one:

![Compiled

Example](https://raw.githubusercontent.com/cnaak/untypsignia.typ/86b221379931edcbfa91b50159a4ff930ecbec47/thumbnail.png)

##  Citing

This package can be cited with the following bibliography database entry:

    
    
    untypsignia-package:
      type: Web
      author: Naaktgeboren, C.
      title:
        value: "untypsignia: unofficial typesetter's insignia emulations"
      url: https://github.com/cnaak/untypsignia.typ
      version: 0.1.1
      date: 2024-08
    

###  How to add

Copy this into your project and use the import as  ` untypsignia `

    
    
    #import "@preview/untypsignia:0.1.1"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Naaktgeboren, C. 
License:

     MIT 
Current version:

     0.1.1 
Last updated:

     August 21, 2024 
First released:

     August 14, 2024 
Minimum Typst version:

     0.11.1 
Archive size:

     2.13 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/untypsignia-0.1.1.tar.gz)
Discipline  :

    

  * [ Computer Science ](https://typst.app/universe/search/?discipline=computer-science)

Categor  ies  :

    

  * ![Visualization icon](/assets/icons/16-chart.svg) [ Visualization ](https://typst.app/universe/search/?category=visualization)
  * ![Utility icon](/assets/icons/16-hammer.svg) [ Utility ](https://typst.app/universe/search/?category=utility)
  * ![Fun icon](/assets/icons/16-smile.svg) [ Fun ](https://typst.app/universe/search/?category=fun)

###  Where to report issues?

This  package  is a project of  Naaktgeboren, C.  .  You can also try to ask
for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.1  |  August 21, 2024   
[ 0.1.0 ](https://typst.app/universe/package/untypsignia/0.1.0/) |  August 14, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

