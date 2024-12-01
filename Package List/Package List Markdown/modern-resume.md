![A preview of the modern-resume Typst
template.](https://packages.typst.org/preview/thumbnails/modern-
resume-0.1.0-small.webp)

#  modern-resume

0.1.0

A modern resume/CV template.

[ Create project in app ](/app?template=modern-resume&version=0.1.0)

[ ![say
thanks](https://img.shields.io/badge/Say%20Thanks-%F0%9F%91%8D-1EAEDB.svg)
](https://github.com/peterpf/modern-typst-resume/stargazers)

A customizable resume/CV template focusing on clean and concise presentation,
with a touch of color.

##  Requirements

To compile this project you need the following:

  * Typst 
  * Roboto font family 

##  Compiling

Build the document once with

    
    
    typst compile main.typ
    

Build the document whenever you save changes by running

    
    
    typst watch main.typ
    

##  Usage

The following code provides a minimum working example:

    
    
    #import "@preview/modern-resume": *
    
    #show: modern-resume.with(
      author: "John Doe",           // Optional parameter
      job-title: "Data Scientist",  // Optional parameter
      bio: lorem(5),                // Optional parameter
      avatar: image("avatar.png"),  // Optional parameter
      contact-options: (            // All entries are optional
        email: link("mailto:john.doe@gmail.com")[john.doe\@gmail.com],
        mobile: "+43 1234 5678",
        location: "Austria",
        linkedin: link("https://www.linkedin.com/in/jdoe")[linkedin/jdoe],
        github: link("https://github.com/jdoe")[github.com/jdoe],
        website: link("https://jdoe.dev")[jdoe.dev],
      ),
    )
    
    == Education
    
    #experience-edu(
      title: "Master's degree",
      subtitle: "University of Sciences",
      task-description: [
        - Short summary of the most important courses
        - Explanation of master thesis topic
      ],
      date-from: "10/2021",
      date-to: "07/2023",
    )
    
    // More content goes here
    
    

See [ main.typ
](https://github.com/typst/packages/raw/main/packages/preview/modern-
resume/0.1.0/main.typ) for a full example that showcases all available
elements.

##  Output examples

Example outputs for different color palettes:

Default colors  |  Pink colors   
---|---  
![Default colors](https://github.com/typst/packages/raw/main/packages/preview/modern-resume/0.1.0/docs/images/demo-navy-dark.png) |  ![Pink colors](https://github.com/typst/packages/raw/main/packages/preview/modern-resume/0.1.0/docs/images/demo-pink.png)  
  
##  Customization

Note: customization is currently only supported when cloning the template
locally. Allowing customization via a âTypst universeâ-installed template
is a feature that is actively worked on.

The template allows you to make it yours by defining a custom color palette.
Customize the color theme by changing the values of the ` color ` dictionary
in [ lib.typ
](https://github.com/typst/packages/raw/main/packages/preview/modern-
resume/0.1.0/lib.typ) . For example:

  * The default color palette: 
    
        #let colors = (
      primary: rgb("#313C4E"),
      secondary: rgb("#222A33"),
      accent-color: rgb("#449399"),
      text-primary: black,
      text-secondary: rgb("#7C7C7C"),
      text-tertiary: white,
    )
    

  * A pink color palette: 
    
        #let colors = (
      primary: rgb("#e755e0"),
      secondary: rgb("#ad00c2"),
      accent-color: rgb("#00d032"),
      text-primary: black,
      text-secondary: rgb("#7C7C7C"),
      text-tertiary: white,
    )
    

##  Elements

This section introduces the visual elements that are part of this template.

###  Pills

Import this element from the template module with ` pill ` .

![pills](https://github.com/typst/packages/raw/main/packages/preview/modern-
resume/0.1.0/docs/images/pills.png)

    
    
    #pill("German (native)")
    #pill("English (C1)")
    

![pills
filled](https://github.com/typst/packages/raw/main/packages/preview/modern-
resume/0.1.0/docs/images/pills-filled.png)

    
    
    #pill("Teamwork", fill: true)
    #pill("Critical thinking", fill: true)
    

###  Educational/work experience

Import the elements from the template module with ` experience-edu ` and `
experience-work ` respectively.

![educational
experience](https://github.com/typst/packages/raw/main/packages/preview/modern-
resume/0.1.0/docs/images/educational-experience.png)

    
    
    #experience-edu(
      title: "Master's degree",
      subtitle: "University of Sciences",
      task-description: [
        - Short summary of the most important courses
        - Explanation of master thesis topic
      ],
      date-from: "10/2021",
      date-to: "07/2023",
    )
    

![work
experience](https://github.com/typst/packages/raw/main/packages/preview/modern-
resume/0.1.0/docs/images/work-experience.png)

    
    
    #experience-work(
      title: "Full Stack Software Engineer",
      subtitle: [#link("https://www.google.com")[Some IT Company]],
      facility-description: "Company operating in sector XY",
      task-description: [
        - Short summary of your responsibilities
      ],
      date-from: "09/2018",
      date-to: "07/2021",
    )
    

###  Project

Import this element from the template module with ` project ` .

![project](https://github.com/typst/packages/raw/main/packages/preview/modern-
resume/0.1.0/docs/images/project.png)

    
    
    #project(
      title: "Project 2",
      subtitle: "Data Visualization, Data Engineering",
      description: [
        - #lorem(20)
      ],
      date-from: "08/2022",
      date-to: "09/2022",
    )
    

##  Contributing

Iâm grateful for any improvements and suggestions.

##  Acknowledgements

This project would not be what it is without:

  * [ Font Awesome Free ](https://github.com/FortAwesome/Font-Awesome/) | providing the icons 

[ Create project in app ](/app?template=modern-resume&version=0.1.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/modern-resume:0.1.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Peter Egger ](https://github.com/peterpf)
License:

     Unlicense 
Current version:

     0.1.0 
Last updated:

     June 13, 2024 
First released:

     June 13, 2024 
Minimum Typst version:

     0.10.0 
Archive size:

     1.26 MB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/modern-resume-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/peterpf/modern-typst-resume)
Categor  y  :

    

  * ![CV icon](/assets/icons/16-user.svg) [ CV ](https://typst.app/universe/search/?category=cv)

###  Where to report issues?

This  template  is a project of  Peter Egger  .  Report issues on  [ their
repository ](https://github.com/peterpf/modern-typst-resume) .  You can also
try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  June 13, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

