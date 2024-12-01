![A preview of the basic-resume Typst
template.](https://packages.typst.org/preview/thumbnails/basic-
resume-0.2.0-small.webp)

#  basic-resume

0.2.0

A simple, standard resume, designed to work well with ATS.

Featured  Template

[ Create project in app ](/app?template=basic-resume&version=0.2.0)

Version 0.2.0

This is a template for a simple resume. It is intended to be used as a good
starting point for quickly crafting a standard resume that will properly be
parsed by ATS systems. Inspiration is taken from [ Jakeâs Resume
](https://github.com/jakegut/resume) and [ guided-resume-starter-cgc
](https://typst.app/universe/package/guided-resume-starter-cgc/) . Iâm
currently a college student and was unable to find a Typst resume template
that fit my needs, so I wrote my own. I hope this template can be useful to
others as well.

##  Sample Resume

![example resume](https://raw.githubusercontent.com/stuxf/basic-typst-resume-
template/main/example-resume.png)

##  Quick Start

A barebones resume looks like this, which you can use to get started.

    
    
    #import "@preview/basic-resume:0.2.0": *
    
    // Put your personal information here, replacing mine
    #let name = "Stephen Xu"
    #let location = "San Diego, CA"
    #let email = "stxu@hmc.edu"
    #let github = "github.com/stuxf"
    #let linkedin = "linkedin.com/in/stuxf"
    #let phone = "+1 (xxx) xxx-xxxx"
    #let personal-site = "stuxf.dev"
    
    #show: resume.with(
      author: name,
      // All the lines below are optional. 
      // For example, if you want to to hide your phone number:
      // feel free to comment those lines out and they will not show.
      location: location,
      email: email,
      github: github,
      linkedin: linkedin,
      phone: phone,
      personal-site: personal-site,
      accent-color: "#26428b",
      font: "New Computer Modern",
    )
    
    /*
    * Lines that start with == are formatted into section headings
    * You can use the specific formatting functions if needed
    * The following formatting functions are listed below
    * #edu(dates: "", degree: "", gpa: "", institution: "", location: "")
    * #work(company: "", dates: "", location: "", title: "")
    * #project(dates: "", name: "", role: "", url: "")
    * #extracurriculars(activity: "", dates: "")
    * There are also the following generic functions that don't apply any formatting
    * #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
    * #generic-one-by-two(left: "", right: "")
    */
    == Education
    
    #edu(
      institution: "Harvey Mudd College",
      location: "Claremont, CA",
      dates: dates-helper(start-date: "Aug 2023", end-date: "May 2027"),
      degree: "Bachelor's of Science, Computer Science and Mathematics",
    )
    - Cumulative GPA: 4.0\/4.0 | Dean's List, Harvey S. Mudd Merit Scholarship, National Merit Scholarship
    - Relevant Coursework: Data Structures, Program Development, Microprocessors, Abstract Algebra I: Groups and Rings, Linear Algebra, Discrete Mathematics, Multivariable & Single Variable Calculus, Principles and Practice of Comp Sci
    
    == Work Experience
    
    #work(
      title: "Subatomic Shepherd and Caffeine Connoisseur",
      location: "Atomville, CA",
      company: "Microscopic Circus, Schrodinger's University",
      dates: dates-helper(start-date: "May 2024", end-date: "Present"),
    )
    - more bullet points go here
    
    // ... more headers and stuff below
    

[ Create project in app ](/app?template=basic-resume&version=0.2.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/basic-resume:0.2.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Stephen Xu ](https://stuxf.dev)
License:

     Unlicense 
Current version:

     0.2.0 
Last updated:

     November 29, 2024 
First released:

     August 1, 2024 
Archive size:

     6.05 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/basic-resume-0.2.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/stuxf/basic-typst-resume-template)
Categor  y  :

    

  * ![CV icon](/assets/icons/16-user.svg) [ CV ](https://typst.app/universe/search/?category=cv)

###  Where to report issues?

This  template  is a project of  Stephen Xu  .  Report issues on  [ their
repository ](https://github.com/stuxf/basic-typst-resume-template) .  You can
also try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.0  |  November 29, 2024   
[ 0.1.4 ](https://typst.app/universe/package/basic-resume/0.1.4/) |  November 12, 2024   
[ 0.1.3 ](https://typst.app/universe/package/basic-resume/0.1.3/) |  October 15, 2024   
[ 0.1.2 ](https://typst.app/universe/package/basic-resume/0.1.2/) |  October 7, 2024   
[ 0.1.0 ](https://typst.app/universe/package/basic-resume/0.1.0/) |  August 1, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

