![A preview of the guided-resume-starter-cgc Typst
template.](https://packages.typst.org/preview/thumbnails/guided-resume-
starter-cgc-2.0.0-small.webp)

#  guided-resume-starter-cgc

2.0.0

A guided starter resume for people looking to focus on highlighting their
experience -- without having to worry about the hassle of formatting.

[ Create project in app ](/app?template=guided-resume-starter-
cgc&version=2.0.0)

This template is a starter resume for people looking to focus on the content
of their resume, without having to worry about the hassle of formatting.

##  Get Started!

###  Quickstart: Typst Universe

  1. If you havenât already, [ create a (free!) Typst account ](https://typst.app/) . 
  2. Once you have an account, go to the template on [ Typst Universe ](https://typst.app/universe/package/resume-starter-cgc)
  3. Click on âCreate Project in Appâ, give your project a title, and press âCreateâ. 
  4. Start editing! This copy is your own personal copy to edit however you want! 

There are two files included in this project:

  * ` starter.typ ` contains the full template, along with a written guide to help you put your best (single-paged) foot forward! 
  * ` resume.typ ` is the same template, but without the full guide included. 
  * ` templates/resume.template.typ ` contains the formatting and style for the underlying pieces. 

**I would highly recommend reading` starter.typ ` or skimming through the [
online guide ](https://blog.chaoticgood.computer/writing/notes/typst-resume-
template) to understand best practices when using the template. **

###  Alternative: Typst CLI

If youâd prefer to simply download & modify the template, you can use the [
Typst CLI ](https://github.com/typst/typst) to download it instead:

    
    
    typst init @preview/resume-starter-cgc
    

##  Layout

###  Header

The resume can be created with a header with the following attributes:

  * ` author ` : Your name 
  * ` location ` : The city, state/province, and country you reside in. 
  * ` contacts ` : A list of contact information and additional information 

####  Header Example

    
    
    #show: resume.with(
      author: "Dr. Emmit \"Doc\" Brown",
      location: "Hill Valley, CA",
      contacts: (
        [#link("mailto:your_email@yourmail.com")[Email]],
        [#link("https://your-cool-site.com")[Website]],
        [#link("https://github.com/your-linkedin")[GitHub]],
        [#link("https://linkedin.com/in/your-linkedin")[LinkedIn]],
      )
    )
    

###  Education

The Education ( ` #edu ` ) section can be used to highlight for formal
education and certifications.

  * ` institution ` : Name of the institution where you study, or have graduated from. 
  * ` date ` : Your graduation date, or expected graduation date. 
  * ` degrees ` : The degrees you received at the institution 
    * Each entry is two sections: the **title** of the degree, and the **subject** that you studied. 
  * ` gpa ` (optional): Your GPA, or other additional information. 

####  Education Example

    
    
    #edu(
      institution: "University of Colombia",
      date: "Aug 1948",
      gpa: "3.9 of 4.0, Summa Cum Laude",
      degrees: (
        ("Bachelor's of Science", "Nuclear Engineering"),
        ("Minors", "Automobile Design, Arabic"),
        ("Focus", "Childcare, Education")
      ),
    )
    

###  Skills

An additional Skills ( ` #skills ` ) section to list skills relevant to the
job youâre applying for.

The input is a list of ` Label: Skills[] ` , in order to easily toggle
comments on skills that you may want to leave in but not render for a
particular application.

####  Skills Example

    
    
    #skills((
      ("Expertise", (
        [Theoretical Physics],
        [Time Travel],
        [Nuclear Material Management],
        [Student Mentoring],
      )),
      ("Software", (
        [AutoDesk CAD],
        [Delorean OS],
        [Windows 1],
      )),
      ("Languages", (
        [C++],
        [C Language],
        [MatLab],
        [Punch Cards],
      )),
    ))
    

###  Experience

The bulk of your resume, the Experience ( ` #exp ` ) sections provide a
compact & concise formatting for bulleted details of your previous and current
work experience.

This section is meant to be flexible, and can also be used to talk about
projects and other experiences that may fall outside of the traditional
definition of âwork.â

  * ` role ` : The title of your position/role in this experience. 
  * ` project ` : The company you worked at, or the name of the project you worked on. 
  * ` date ` : The start and end dates of this experience. 
  * ` details ` : A description of the work you did in this position 
    * It is **highly encouraged** to use bullet points in this section. 
  * ` location ` (optional): The location of the experience 
  * ` summary ` (optional): A brief summary of the companyâs mission or project goal. 

####  Experience Example

    
    
    #exp(
      role: "Theoretical Physics Consultant",
      project: "Doc Brown's Garage",
      date: "June 1953 - Oct 2015",
      location: "Hill Valley, CA",
      summary: "Specializing in development of time travel devices and student tutoring",
      details: [
        - Lead development of time travel devices, resulting in the ability to travel back and forth through time
        - Managed and executed a budget of \$14 million dollars gained from an unexplained family fortune
        - Oversaw QA testing for time travel devices, minimizing risk of maternal time-travel related incidents
      ]
    )
    

##  Questions & Suggestions

Have any questions, comments, or suggestions about the template? Please feel
free to reach out at [ ` mentoring@chaoticgood.computer `
](mailto:mentoring@chaoticgood.computer) !

[ Create project in app ](/app?template=guided-resume-starter-
cgc&version=2.0.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/guided-resume-starter-cgc:2.0.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  s  :

     [ Spencer Elkington ](https://chaoticgood.computer) & [ Spencer Elkington ](mailto:spencer@chaoticgood.computer)
License:

     Unlicense 
Current version:

     2.0.0 
Last updated:

     May 6, 2024 
First released:

     May 6, 2024 
Archive size:

     22.6 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/guided-resume-starter-cgc-2.0.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/chaoticgoodcomputing/typst-resume-starter)
Categor  y  :

    

  * ![CV icon](/assets/icons/16-user.svg) [ CV ](https://typst.app/universe/search/?category=cv)

###  Where to report issues?

This  template  is a project of  Spencer Elkington and Spencer Elkington  .
Report issues on  [ their repository
](https://github.com/chaoticgoodcomputing/typst-resume-starter) .  You can
also try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
2.0.0  |  May 6, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

