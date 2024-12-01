![A preview of the ttuile Typst
template.](https://packages.typst.org/preview/thumbnails/ttuile-0.1.1-small.webp)

#  ttuile

0.1.1

A template for students' lab reports at INSA Lyon, a french engineering
school.

[ Create project in app ](/app?template=ttuile&version=0.1.1)

[
![typst](https://img.shields.io/badge/Typst-%232f90ba.svg?&logo=Typst&logoColor=white)
](https://typst.app/) [
![MIT](https://img.shields.io/github/license/vitto4/ttuile)
](https://github.com/vitto4/ttuile/blob/main/LICENSE) [ ![GitHub
Release](https://img.shields.io/github/v/release/vitto4/ttuile)
](https://github.com/vitto4/ttuile/releases)

_A**Typst** template for lab reports at [ INSA Lyon
](https://en.wikipedia.org/wiki/Institut_national_des_sciences_appliqu%C3%A9es_de_Lyon)
. _

[
![Example](https://raw.githubusercontent.com/vitto4/ttuile/main/assets/ttuile-
banner.png?raw=true)
](https://github.com/vitto4/ttuile/blob/main/template/main.pdf)

> **Note :** Voir aussi le [ README.FR.md
> ](https://github.com/vitto4/ttuile/blob/main/README.FR.md) en franÃ§ais.

##  ð§­ Table of contents

  1. [ Usage ](https://github.com/typst/packages/raw/main/packages/preview/ttuile/0.1.1/#-usage)
  2. [ Documentation ](https://github.com/typst/packages/raw/main/packages/preview/ttuile/0.1.1/#-documentation)
  3. [ Notes ](https://github.com/typst/packages/raw/main/packages/preview/ttuile/0.1.1/#-notes)
  4. [ Contributing ](https://github.com/typst/packages/raw/main/packages/preview/ttuile/0.1.1/#-contributing)

##  ð Usage

This template targets french students, thus labels will be in french, see [
Notes
](https://github.com/typst/packages/raw/main/packages/preview/ttuile/0.1.1/#-notes)
.

It is available on _Typst Universe_ : [ ` @preview/ttuile:0.1.1 `
](https://typst.app/universe/package/ttuile) .

If you wish to use it in a fully local manner, youâll need to either
manually include ` ttuile.typ ` and ` logo-insa-lyon.png ` in your projectâs
root directory ; or upload them to the _Typst web app_ if thatâs what you
use.

Youâll find these files in the [ releases
](https://github.com/vitto4/ttuile/releases) section.

Your folder structure should then look something like this :

    
    
    .
    âââ ttuile.typ
    âââ logo-insa-lyon.png
    âââ main.typ
    

The template is now ready to be used, and can be called supplying the
following arguments. ` ? ` means the argument can be null if not applicable.

Argument  |  Default value  |  Type  |  Description   
---|---|---|---  
` titre ` |  ` none ` |  ` content? ` |  The title of your report.   
` auteurs ` |  ` none ` |  ` array<str> | content? ` |  One or multiple authors to be credited in the report.   
` groupe ` |  ` none ` |  ` content? ` |  Your class number/letter/identifier. Will be displayed right after the author(s).   
` numero-tp ` |  ` none ` |  ` content? ` |  The number/identifier of the lab work/practical youâre writing this report for.   
` numero-poste ` |  ` none ` |  ` content? ` |  Number of your lab bench.   
` date ` |  ` none ` |  ` datetime | content? ` |  Date at which the lab work/practical was carried out.   
` sommaire ` |  ` true ` |  ` bool ` |  Display the table of contents ?   
` logo ` |  ` image("logo-insa-lyon.png") ` |  ` image? ` |  University logo to use.   
` point-legende ` |  ` false ` |  ` bool ` |  Enable automatic enforcement of full stops at the end of figuresâ captions. (still somewhat experimental).   
  
A single positional argument is accepted, being the reportâs body.

You can call the template using the following syntax :

    
    
    // Local import
    // #import "ttuile.typ": *
    
    // Universe import
    #import "@preview/ttuile:0.1.1": *
    
    #show: ttuile.with(
      titre: [Â« #lorem(8) Â»],
      auteurs: (
          "Theresa Tungsten",
          "Jean Dupont",
          "Eugene Deklan",
      ),
      groupe: "TD0",
      numero-tp: 0,
      numero-poste: "0",
      date: datetime.today(),
      // sommaire: false,
      // logo: image("path_to/logo.png"),
      // point-legende: true,
    )
    

##  ð Documentation

The package ` ttuile.typ ` exposes multiple functions, find out more about
them in the _documentation_ .

[ To the documentation ](https://github.com/vitto4/ttuile/blob/main/DOC.EN.md)

An example file is also available in [ ` template/main.typ `
](https://github.com/vitto4/ttuile/blob/main/template/main.typ)

##  ð Notes

  * Beware, all of the labels will be in french (authors != auteurs, appendix != annexe, â¦) 

  * If you really want to use this template despite not being an INSA student, you can probably figure out what to change in the code (namely labels mentioned above). You can remove the INSA logo by setting ` logo: none `

Should you still need help, no worries, feel free to reach out !

  * The code - variable names and comments - is all in french. Thatâs on me, I didnât really think it through when first writing the template haha. I might consider translating sometime in the future. 

  * The MIT license doesnât apply to the file ` logo-insa-lyon.png ` , it was retrieved from [ INSA Lyon - Ã©lÃ©ments graphiques ](https://www.insa-lyon.fr/fr/elements-graphiques) . It doesnât apply either to the âINSAâ branding. 

##  ð§© Contributing

Contributions are welcome ! Parts of the template are very much spaghetti
code, especially where the spacing between different headings is handled
(seriously, itâs pretty bad).

If you know the proper way of doing this, an issue or PR would be greatly
appreciated :)

[ Create project in app ](/app?template=ttuile&version=0.1.1)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/ttuile:0.1.1

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ vitto ](https://github.com/vitto4)
License:

     MIT 
Current version:

     0.1.1 
Last updated:

     May 6, 2024 
First released:

     May 3, 2024 
Archive size:

     46.8 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/ttuile-0.1.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/vitto4/ttuile)
Discipline  :

    

  * [ Engineering ](https://typst.app/universe/search/?discipline=engineering)

Categor  y  :

    

  * ![Report icon](/assets/icons/16-speak.svg) [ Report ](https://typst.app/universe/search/?category=report)

###  Where to report issues?

This  template  is a project of  vitto  .  Report issues on  [ their
repository ](https://github.com/vitto4/ttuile) .  You can also try to ask for
help with this  template  on the  [ Forum ](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.1  |  May 6, 2024   
[ 0.1.0 ](https://typst.app/universe/package/ttuile/0.1.0/) |  May 3, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

