![A preview of the finely-crafted-cv Typst
template.](https://packages.typst.org/preview/thumbnails/finely-crafted-
cv-0.1.0-small.webp)

#  finely-crafted-cv

0.1.0

A modern rÃ©sumÃ©/curriculum vitÃ¦ template with high attention to detail.

[ Create project in app ](/app?template=finely-crafted-cv&version=0.1.0)

This Typst template provides a clean and professional format for creating a
curriculum vitae (CV) or rÃ©sumÃ©. It comes with functions and styles to help
you easily generate a well-structured document, complete with sections for
education, experience, skills, and more.

##  Features

  * **Modern Design:** Aesthetic and professional layout designed for readability. 
  * **Responsive Header & Footer: ** Includes contact information dynamically. 

##  Usage

To use this template, import it with the version number and utilize the `
resume ` or ` cv ` function:

    
    
    #import "@preview/finely-crafted-cv:0.1.0": *
    
    #show: resume.with(
      name: "Amira Patel",
      tagline: "Innovative marine biologist with 15+ years of experience in ocean conservation and research.",
      keywords: "marine biology, conservation, research, education, patents",
      email: "amira.patel@oceandreams.org",
      phone: "+1-305-555-7890",
      linkedin-username: "amirapatel",
      thumbnail: image("assets/my-qr-code.svg"),
    )
    
    = Introduction
    
    #lorem(100)
    
    = Experience
    
    #company-heading("Some Company", start: "March 2018", end: "Present", icon: image("icons/earth.svg"))[
      #job-heading("Some Job", location: "Some Location")[
        - Here is an achievement
        - Here's another one.
      ]
      // companies can have multiple jobs
      #job-heading("First Job", location: "Some Location")[
        - Here is an achievement
        - Here's another one.
      ]
    ]
    
    // for companies which have less detail, you can use the `comment` instead of a
    // body of tasks, as follows:
    #company-heading("Another Company", start: "July 2005", end: "August 2009", icon: image("icons/microscope.svg"))[
      #job-heading("Another Job", location: "Another Location",
        comment: [Contributed to 7 published studies. #footnote[Visit https://amirapatel.org/publications for full list of publications.]]
      )[]
    ]
    
    = Education
    
    // school-heading is an alias for company-heading, accepts the same parameters as company-heading
    #school-heading("University of California, San Diego", start: "Fall 2001", end: "Spring 2005", icon: image("icons/graduation-cap.svg"))[
      // degree-heading is an alias for job-heading, accepts the same parameters as job-heading
      #degree-heading("Ph.D. in Marine Biology")[]
    ]
    

##  Functions and Parameters

###  ` resume ` or ` cv `

This is the main function to create a CV document.

  * **Parameters:**
    * ` name ` : (String) Your full name. Default is âYOUR NAME HEREâ. 
    * ` tagline ` : (String) A brief description of your professional identity or mission. 
    * ` paper ` : (String) The paper size, default is âus-letterâ. 
    * ` heading-font ` : (Font) Font for headings, customizable. 
    * ` body-font ` : (Font) Font for body text, customizable. 
    * ` body-size ` : (Size) Font size for body text. 
    * ` email ` : (String) Your email address. 
    * ` phone ` : (String) Your phone number. 
    * ` linkedin-username ` : (String) Your LinkedIn username. 
    * ` keywords ` : (String) Keywords for searchability. 
    * ` thumbnail ` : (Image) Thumbnail or QR code image, optional. 
    * ` body ` : (Block) The main content of your CV. 

###  ` company-heading `

Used to create a heading for a company or organization.

  * **Parameters:**
    * ` name ` : (String) Name of the company. 
    * ` start ` : (String) Start date. 
    * ` end ` : (String) End date, optional. 
    * ` icon ` : (Image) Icon image associated with the company, optional. 
    * ` body ` : (Block) Content related to the company role or tasks. 

###  ` job-heading `

Defines a job title within a company heading.

  * **Parameters:**
    * ` title ` : (String) Job title. 
    * ` location ` : (String) Location of the job, optional. 
    * ` start ` : (String) Start date, optional. 
    * ` end ` : (String) End date, optional. 
    * ` comment ` : (String) Additional comments or notes, optional. 
    * ` body ` : (Block) Tasks or responsibilities. 

###  ` school-heading `

Alias for ` company-heading ` , used for educational institutions.

###  ` degree-heading `

Alias for ` job-heading ` , used for academic degrees or certifications.

##  License

This template is released under the MIT License.

[ Create project in app ](/app?template=finely-crafted-cv&version=0.1.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/finely-crafted-cv:0.1.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Stephen Waits ](mailto:steve@waits.net)
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     October 22, 2024 
First released:

     October 22, 2024 
Archive size:

     28.5 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/finely-crafted-cv-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/swaits/typst-collection)
Discipline  s  :

    

  * [ Business ](https://typst.app/universe/search/?discipline=business)
  * [ Communication ](https://typst.app/universe/search/?discipline=communication)

Categor  y  :

    

  * ![CV icon](/assets/icons/16-user.svg) [ CV ](https://typst.app/universe/search/?category=cv)

###  Where to report issues?

This  template  is a project of  Stephen Waits  .  Report issues on  [ their
repository ](https://github.com/swaits/typst-collection) .  You can also try
to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  October 22, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

