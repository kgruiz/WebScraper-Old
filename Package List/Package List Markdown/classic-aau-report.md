![A preview of the classic-aau-report Typst
template.](https://packages.typst.org/preview/thumbnails/classic-aau-
report-0.1.0-small.webp)

#  classic-aau-report

0.1.0

An example package.

[ Create project in app ](/app?template=classic-aau-report&version=0.1.0)

Unofficial Typst template for project reports at Aalborg University (AAU).
This is based on the LaTeX template [
https://github.com/jkjaer/aauLatexTemplates
](https://github.com/jkjaer/aauLatexTemplates) .

The template is generic to any field of study, but defaults to Computer
Science.

##  Usage

Click âCreate project in appâ.

Or via the CLI

    
    
    typst init @preview/classic-aau-report
    

**NOTE:** The template tries to use the ` Palatino Linotype ` font, which is
_not_ available in Typst. It is available [ here
](https://github.com/Tinggaard/classic-aau-report/tree/main/fonts)

To use it in the _web-app_ , put the ` .ttf ` files anywhere in the project
tree.

To use it _locally_ specify the ` --font-path ` flag (or see the [ docs
](https://typst.app/docs/reference/text/text/#parameters-font) ).

##  Confugiration

The ` project ` function takes the following (optional) arguments:

  * ` meta ` : Metadata about the project 

    * ` project-group ` : The project group name 
    * ` participants ` : A list of participants 
    * ` supervisors ` : A list of supervisors 
    * ` field-of-study ` : The field of study 
    * ` project-type ` : The type of project 
  * ` en ` : English project info 

    * ` title ` : The title of the project 
    * ` theme ` : The theme of the project 
    * ` abstract ` : The English abstract of the project 
    * ` department ` : The department name 
    * ` department-url ` : The department URL 
  * ` dk ` : Danish project info 

    * ` title ` : The Danish title of the project 
    * ` theme ` : The theme of the project in Danish 
    * ` abstract ` : The Danish abstract of the project 
    * ` department ` : The department name in Danish 
    * ` department-url ` : The Danish department URL 

The defaults are as follows:

    
    
    #let defaults = (
      meta: (
        project-group: "No group name provided",
        participants: (),
        supervisors: (),
        field-of-study: "Computer Science",
        project-type: "Semester Project"
      ),
      en: (
        title: "Untitled",
        theme: "",
        abstract: [],
        department: "Department of Computer Science",
        department-url: "https://www.cs.aau.dk",
      ),
      dk: (
        title: "Uden titel",
        theme: "",
        abstract: [],
        department: "Institut for Datalogi",
        department-url: "https://www.dat.aau.dk",
      ),
    )
    

Furthermore, the template exports the shawrules

  * ` frontmatter ` : Sets the page numbering to arabic and chapter numbering to none 
  * ` mainmatter ` : Sets the chapter numbering ` Chapter ` followed by a number. 
  * ` backmatter ` : Sets the chapter numbering back to none 
  * ` appendix ` : Sets the chapter numbering to ` Appeendix ` followed by a letter. 

To use it in an existing project, add the following show rule to the top of
your file.

    
    
    #include "@preview/classic-aau-report:0.1.0": project, frontmatter, mainmatter, backmatter, appendix
    
    // Any of the below can be omitted, the defaults are either empty values or CS specific
    #show: project.with(
      meta: (
        project-group: "CS-xx-DAT-y-zz",
        participants: (
          "Alice",
          "Bob",
          "Chad",
        ),
        supervisors: "John McClane"
      ),
      en: (
        title: "An awesome project",
        theme: "Writing a project in Typst",
        abstract: [],
      ),
      dk: (
        title: "Et fantastisk projekt",
        theme: "Et projekt i Typst",
        abstract: [],
      ),
    )
    
    // #show-todos()
    
    #show: frontmatter
    #include "chapters/introduction.typ"
    
    #show: mainmatter
    #include "chapters/problem-analysis.typ"
    #include "chapters/conclusion.typ"
    
    #show: backmatter
    #bibliography("references.bib", title: "References")
    
    #show: appendix
    #include "appendices/code-snippets.typ"
    

[ Create project in app ](/app?template=classic-aau-report&version=0.1.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/classic-aau-report:0.1.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Jens Tinggaard ](https://github.com/Tinggaard)
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     November 22, 2024 
First released:

     November 22, 2024 
Minimum Typst version:

     0.12.0 
Archive size:

     149 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/classic-aau-report-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/Tinggaard/classic-aau-report)
Categor  ies  :

    

  * ![Report icon](/assets/icons/16-speak.svg) [ Report ](https://typst.app/universe/search/?category=report)
  * ![Thesis icon](/assets/icons/16-mortarboard.svg) [ Thesis ](https://typst.app/universe/search/?category=thesis)

###  Where to report issues?

This  template  is a project of  Jens Tinggaard  .  Report issues on  [ their
repository ](https://github.com/Tinggaard/classic-aau-report) .  You can also
try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  November 22, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

