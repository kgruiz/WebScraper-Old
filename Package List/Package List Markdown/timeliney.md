#  timeliney

0.1.0

Create Gantt charts in Typst.

Featured  Package

Create Gantt charts automatically with Typst!

Hereâs a fully-featured example:

    
    
    #import "@preview/timeliney:0.1.0"
    
    #timeliney.timeline(
      show-grid: true,
      {
        import timeliney: *
          
        headerline(group(([*2023*], 4)), group(([*2024*], 4)))
        headerline(
          group(..range(4).map(n => strong("Q" + str(n + 1)))),
          group(..range(4).map(n => strong("Q" + str(n + 1)))),
        )
      
        taskgroup(title: [*Research*], {
          task("Research the market", (0, 2), style: (stroke: 2pt + gray))
          task("Conduct user surveys", (1, 3), style: (stroke: 2pt + gray))
        })
    
        taskgroup(title: [*Development*], {
          task("Create mock-ups", (2, 3), style: (stroke: 2pt + gray))
          task("Develop application", (3, 5), style: (stroke: 2pt + gray))
          task("QA", (3.5, 6), style: (stroke: 2pt + gray))
        })
    
        taskgroup(title: [*Marketing*], {
          task("Press demos", (3.5, 7), style: (stroke: 2pt + gray))
          task("Social media advertising", (6, 7.5), style: (stroke: 2pt + gray))
        })
    
        milestone(
          at: 3.75,
          style: (stroke: (dash: "dashed")),
          align(center, [
            *Conference demo*\
            Dec 2023
          ])
        )
    
        milestone(
          at: 6.5,
          style: (stroke: (dash: "dashed")),
          align(center, [
            *App store launch*\
            Aug 2024
          ])
        )
      }
    )
    

![Example Gantt
chart](https://github.com/typst/packages/raw/main/packages/preview/timeliney/0.1.0/sample.png)

##  Installation

Import with ` #import "@preview/timeliney:0.1.0" ` . Then, call the `
timeliney.timeline ` function.

##  Documentation

See [ the manual
](https://github.com/typst/packages/raw/main/packages/preview/timeliney/0.1.0/manual.pdf)
!

##  Changelog

###  0.1.0

  * Update CeTZ to 0.2.2 (@LordBaryhobal) 
  * Add offset parameter 

###  How to add

Copy this into your project and use the import as  ` timeliney `

    
    
    #import "@preview/timeliney:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Pedro Alves 
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     October 17, 2024 
First released:

     October 12, 2023 
Archive size:

     6.16 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/timeliney-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/pta2002/typst-timeliney)

###  Where to report issues?

This  package  is a project of  Pedro Alves  .  Report issues on  [ their
repository ](https://github.com/pta2002/typst-timeliney) .  You can also try
to ask for help with this  package  on the  [ Forum ](https://forum.typst.app)
.

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  October 17, 2024   
[ 0.0.1 ](https://typst.app/universe/package/timeliney/0.0.1/) |  October 12, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

