![A preview of the red-agora Typst
template.](https://packages.typst.org/preview/thumbnails/red-
agora-0.1.1-small.webp)

#  red-agora

0.1.1

Quickly scaffold a report for your projects and internships at ENSIAS and
elsewhere

Featured  Template

[ Create project in app ](/app?template=red-agora&version=0.1.1)

A Typst template to quickly make reports for projects at ENSIAS. This template
was created based on our reports that we also made for our projects.

##  What does it provide?

For now, it provides a first page style that matches the common reports style
used and encouraged at ENSIAS.

It also provides a style for first level headings to act as chapters.

More improvements will come soon.

##  Usage

    
    
    #import "@preview/red-agora:0.1.1": project
    
    #show: project.with(
      title: "Injecting a backdoor in the xz library and taking over NASA and SpaceX spaceship tracking servers (for education purposes only)",
      subtitle: "Second year internship report",
      authors: (
        "Amine Hadnane",
        "Mehdi Essalehi"
      ),
      school-logo: image("images/ENSIAS.svg"), // Replace with [] to remove the school logo
      company-logo: image("images/company.svg"),
      mentors: (
        "Pr. John Smith (Internal)",
        "Jane Doe (External)"
      ),
      jury: (
        "Pr. John Smith",
        "Pr. Jane Doe"
      ),
      branch: "Software Engineering",
      academic-year: "2077-2078",
      french: false // Use french instead of english
      footer-text: "ENSIAS" // Text used in left side of the footer
    )
    
    // Put then your content here
    

##  Changelog

**0.1.0 - Initial release**

  * First page style 
  * Level 1 headings chapter style 

**0.1.1**

  * Fixed major issue where custom school & company logos would throw an error 
  * Added option to customize footer left side text (thus fixing the issue of it being hardcoded) 

[ Create project in app ](/app?template=red-agora&version=0.1.1)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/red-agora:0.1.1

![Copy](/assets/icons/16-copy.svg)

###  About

Author  s  :

     [ Mehdi Essalehi ](https://github.com/essmehdi) & [ Amine Hadnane ](https://github.com/amin-hdn)
License:

     MIT 
Current version:

     0.1.1 
Last updated:

     April 29, 2024 
First released:

     April 19, 2024 
Archive size:

     4.37 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/red-agora-0.1.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/essmehdi/ensias-report-template)
Categor  y  :

    

  * ![Report icon](/assets/icons/16-speak.svg) [ Report ](https://typst.app/universe/search/?category=report)

###  Where to report issues?

This  template  is a project of  Mehdi Essalehi and Amine Hadnane  .  Report
issues on  [ their repository ](https://github.com/essmehdi/ensias-report-
template) .  You can also try to ask for help with this  template  on the  [
Forum ](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.1  |  April 29, 2024   
[ 0.1.0 ](https://typst.app/universe/package/red-agora/0.1.0/) |  April 19, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

