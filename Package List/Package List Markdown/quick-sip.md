![A preview of the quick-sip Typst
template.](https://packages.typst.org/preview/thumbnails/quick-
sip-0.1.0-small.webp)

#  quick-sip

0.1.0

A template for creating quick reference handbook style checklists.

[ Create project in app ](/app?template=quick-sip&version=0.1.0)

Creates aviation style checklists like Quick Reference Handbooks.

![](https://github.com/typst/packages/raw/main/packages/preview/quick-
sip/0.1.0/thumbnail.png)

###  Features:

  * Index 
  * Section 
  * Conditions 
  * Objective 
  * Step (When/If) 
  * Sub Step 
  * Caution 
  * Note 
  * Choose One 
  * Go to step 
  * End section now 

##  Start with

    
    
    #import "@preview/quick-sip:0.1.0": *
    #show: QRH.with(title: "Cup of Tea")
    

Then add a section:

    
    
    #section("Cup of Tea preparation")[
      #step("KETTLE", "Filled to 1 CUP")
      #step([*When* KETTLE boiled:], "")
      #step([*If* sugar required], "")
        //.. Rest of section goes here
    ]
    

####  Index

An index with an entry for each section in the document.

    
    
    #index()
    

####  Section

A section title, forces capitalisation.

    
    
    #section("Cup of Tea preparation")[
        //.. Rest of section goes here
    ]
    

####  Conditions

Conditionals for this section.

    
    
    #condition[
        - Dehydration
        - Fatigue
        - Inability to Concentrate
    ]
    

####  Objective

An objective for this section (optional).

    
    
    #objective[To replenish fluids.]
    

####  Step

A numbered step in the checklist. The first parameter is to the left of the
dotted line, the second is to the right. If the second parameter is ` "" `
then there is no dotted line.

    
    
    #step("KETTLE", "Filled to 1 CUP")
    #step([*When* KETTLE boiled:], "")
    #step([*If* sugar required], "")
    

####  Tab

Indents contents by one tab.

    
    
    #tab(goto("9"))
    #tab(tab("Large mugs may require more water."))
    

####  Caution

Adds a caution element.

    
    
    #caution([HOT WATER #linebreak()Adult supervision required.])
    

####  Note

Adds a note.

    
    
    #note("Stir after each step")
    

####  Choose One

A numbered step with options.

    
    
     #choose-one[
        #option[Black tea *required:*]
        #option[Tea with MILK *required:*]
      ]
    

####  Go to step

Two right facing arrow heads followed by Go to step ` step number ` . Links to
step in pdf.

    
    
    #goto("9")
    

####  End

Ends the section here with 4 dots.

    
    
    #end()
    

####  Wait

Long small dotted line for waiting for a task to complete.

    
    
    #wait()
    

[ Create project in app ](/app?template=quick-sip&version=0.1.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/quick-sip:0.1.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Archie Webster ](https://github.com/artomweb)
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     October 16, 2024 
First released:

     October 16, 2024 
Archive size:

     4.28 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/quick-sip-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/artomweb/Quick-Sip-Typst-Template)
Categor  y  :

    

  * ![Utility icon](/assets/icons/16-hammer.svg) [ Utility ](https://typst.app/universe/search/?category=utility)

###  Where to report issues?

This  template  is a project of  Archie Webster  .  Report issues on  [ their
repository ](https://github.com/artomweb/Quick-Sip-Typst-Template) .  You can
also try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  October 16, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

