![A preview of the bamdone-aiaa Typst
template.](https://packages.typst.org/preview/thumbnails/bamdone-
aiaa-0.1.1-small.webp)

#  bamdone-aiaa

0.1.1

An American Institute of Aeronautics and Astronautics (AIAA) template for
conferences.

[ Create project in app ](/app?template=bamdone-aiaa&version=0.1.1)

This is a Typst template for a one-column paper from the proceedings of the
American Institute of Aeronautics and Astronautics. The paper is tightly
spaced, fits a lot of content and comes preconfigured for numeric citations
from BibLaTeX or Hayagriva files.

##  Usage

You can use this template in the Typst web app by clicking âStart from
templateâ on the dashboard and searching for ` bamdone-aiaa ` .

Alternatively, you can use the CLI to kick this project off using the command

    
    
    typst init @preview/bamdone-aiaa
    

Typst will create a new directory with all the files needed to get you
started.

##  Configuration

This template exports the ` aiaa ` function with the following named
arguments:

  * ` title ` : The paperâs title as content. 
  * ` authors-and-affiliations ` : An array of author dictionaries and affiliation dictionaries. Author dictionaries must have a ` name ` key and can have the keys ` job ` , ` department ` , ` aiaa ` is optional. Affiliation dictionaries must have the keys ` institution ` , ` city ` , ` state ` , ` zip ` , and ` country ` . 
  * ` abstract ` : The content of a brief summary of the paper or ` none ` . Appears at the top of the first column in boldface. Shall be ` content ` . 
  * ` paper-size ` : Defaults to ` us-letter ` . Specify a [ paper size string ](https://typst.app/docs/reference/layout/page/#parameters-paper) to change the page format. 
  * ` bibliography ` : The result of a call to the ` bibliography ` function or ` none ` . Specifying this will configure numeric, AIAA-style citations. 

The function also accepts a single, positional argument for the body of the
paper.

The template will initialize your package with a sample call to the ` aiaa `
function in a show rule. If you want to change an existing project to use this
template, you can add a show rule like this at the top of your file:

    
    
    #import "@preview/bamdone-aiaa:0.1.0": aiaa
    
    #show: aiaa.with(
      title: [A typesetting system to untangle the scientific writing process],
      abstract: [
        These instructions give you guidelines for preparing papers for AIAA Technical Papers. Use this document as a template if you are using Typst. Otherwise, use this document as an instruction set. Define all symbols used in the abstract. Do not cite references in the abstract. The footnote on the first page should list the Job Title and AIAA Member Grade for each author, if known. Authors do not have to be AIAA members.
      ],
      authors: (
          (
            name:"First A. Author",
            job:"Insert Job Title",
            department:"Department Name",
            aiaa:"and AIAA Member Grade (if any) for first author"
          ),
          (
            institution:"Business or Academic Affiliation's Full Name 1",
            city:"City",
            state:"State",
            zip:"Zip Code",
            country:"Country"
          ),
      ),
      bibliography: bibliography("refs.bib"),
    )
    
    // Your content goes below.
    

[ Create project in app ](/app?template=bamdone-aiaa&version=0.1.1)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/bamdone-aiaa:0.1.1

![Copy](/assets/icons/16-copy.svg)

###  About

Author  s  :

     [ Isaac Weintraub ](https://www.isaacew.com/) & [ Alexander Von Moll ](https://avonmoll.github.io/)
License:

     MIT-0 
Current version:

     0.1.1 
Last updated:

     May 14, 2024 
First released:

     March 23, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     14.4 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/bamdone-aiaa-0.1.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/isaacew/aiaa-typst)
Discipline  s  :

    

  * [ Engineering ](https://typst.app/universe/search/?discipline=engineering)
  * [ Computer Science ](https://typst.app/universe/search/?discipline=computer-science)
  * [ Mathematics ](https://typst.app/universe/search/?discipline=mathematics)
  * [ Communication ](https://typst.app/universe/search/?discipline=communication)
  * [ Transportation ](https://typst.app/universe/search/?discipline=transportation)
  * [ Education ](https://typst.app/universe/search/?discipline=education)

Categor  y  :

    

  * ![Paper icon](/assets/icons/16-atom.svg) [ Paper ](https://typst.app/universe/search/?category=paper)

###  Where to report issues?

This  template  is a project of  Isaac Weintraub and Alexander Von Moll  .
Report issues on  [ their repository ](https://github.com/isaacew/aiaa-typst)
.  You can also try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.1  |  May 14, 2024   
[ 0.1.0 ](https://typst.app/universe/package/bamdone-aiaa/0.1.0/) |  March 23, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

