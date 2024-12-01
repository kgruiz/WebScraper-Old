![A preview of the htlwienwest-da Typst
template.](https://packages.typst.org/preview/thumbnails/htlwienwest-
da-0.1.0-small.webp)

#  htlwienwest-da

0.1.0

The diploma thesis template for students of the HTL Wien West.

Officially affiliated

[ Create project in app ](/app?template=htlwienwest-da&version=0.1.0)

This is a Typst diploma thesis template for students of the HTL Wien West. It
fulfils all the necessary requirements for the diploma thesis.

##  Usage

You can use this template in the Typst web app by clicking âStart from
templateâ on the dashboard and searching for ` htlwienwest-da ` .

Alternatively, you can use the CLI to kick this project off using the command

    
    
    typst init @preview/htlwienwest-da
    

Typst will create a new directory with all the files needed to get you
started.

##  Configuration

This template exports the ` diplomarbeit ` function with the following named
arguments:

  * ` titel ` : ` string ` \- The title of the thesis 
  * ` schuljahr ` : ` string ` \- The current school year 
  * ` abteilung ` : ` string ` \- The studentâs department 
  * ` unterschrifts-datum ` : ` string ` \- The submission date 
  * ` autoren ` : ` array(dict) ` \- An array of all authors, represented as dictionaries. Each of them has the following properties 
    * ` vorname ` : ` string ` \- Firstname of the student 
    * ` nachname ` : ` string ` \- Lastname of the student 
    * ` klasse ` : ` string ` \- School class of the student 
    * ` betreuer ` : ` dict ` \- The studentâs advisor as dictionary 
      * ` name ` : ` string | content ` \- The advisorâs name 
      * ` geschlecht ` : ` "male" | "female" ` \- Gender of advisor for correct gendering 
    * ` aufgaben ` : ` content ` \- The studentâs responsibilities 
  * ` kurzfassung ` : ` content ` \- Abstract in german as content block 
  * ` abstract ` : ` content ` \- Abstract in english as content block 
  * ` vorwort ` : ` content ` \- The thesisâ preface 
  * ` danksagung ` : ` content ` \- Acknowledgement 
  * ` anhang ` : ` content | none ` \- Appendix 
  * ` literaturverzeichnis ` : ` function ` \- The bibliography prefilled with the BibTex file path 

The function also accepts a single, positional argument for the body of the
paper.

The template will initialize your package with a sample call to the `
diplomarbeit ` function in a show rule. If you want to change an existing
project to use thistemplate, you can add a show rule like this at the top of
your file:

    
    
    #import "@preview/htlwienwest-da:0.1.0": *
    
    #show: diplomarbeit.with(
      titel: "Titel der Diplomarbeit",
      abteilung: "Informationstechnologie",
      schuljahr: "2023/24",
      unterschrifts-datum: "20.04.2024",
      autoren: (
       (
         vorname: "Hans", nachname: "Mustermann",
         klasse: "5AHITN",
         betreuer: (name: "Dr. Walter Turbo", geschlecht: "male"),
         aufgaben: [
           #lorem(100)
         ]
       ),
       (
         vorname: "Herta", nachname: "Musterfrau",
         klasse: "5AHITN",
         betreuer: (name: "Dipl.-Ing Maria Kreisel", geschlecht: "female"),
         aufgaben: [
           #lorem(100)
         ]
       ),
      kurzfassung: [
        Die Kurzfassung muss die folgenden Inhalte darlegen (Â§8, Absatz 5 PruÌfungsordnung): Thema, Fragestellung, Problemformulierung, wesentliche Ergebnisse. Sie soll einen prÃ¤gnanten Ãberblick uÌber die Arbeit geben.
      ],
      abstract: [
        Englische Version der Kurzfassung (siehe #link(<Kurzfassung>)[_Kurzfassung_])
      ],
      vorwort: [
        PerÃ¶nlicher Zugang zum Thema. GrÃ¼nde fÃ¼r die Themenwahl.
      ],
      danksagung: [
        Dank an Personen, die bei der Erstellung der Arbeit unterstÃ¼tzt haben.
      ],
      anhang: include "anhang.typ", // entfernen falls nicht benÃ¶tigt
      literaturverzeichnis: bibliography.with("literaturverzeichnis.bib")
    )
    
    // Your content goes below.
    

##  Provided Functions

Beside the ` diplomarbeit ` function, the template also provides the ` autor `
function that is used after a heading to indicate the specific author of the
current section.

    
    
    == Some Heading
    #autor[Your Name]
    

This will render additional information to the sectionâs heading.

To install the template locally, you can use

    
    
    just install
    

which uses the [ just ](https://github.com/casey/just) command runner.

If you donât want to install ` just ` , you can run

    
    
    bash ./scripts/package @local
    

The installed version can be used via ` @local ` instead of ` @preview ` . To
create a new typst project from the template, run

    
    
    typst init @local/htlwienwest-da:
    

[ Create project in app ](/app?template=htlwienwest-da&version=0.1.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/htlwienwest-da:0.1.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  s  :

     [ Johannes Zottele ](https://github.com/jozott00) & [ peterw16 ](https://github.com/peterw16)
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     May 3, 2024 
First released:

     May 3, 2024 
Archive size:

     61.9 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/htlwienwest-da-0.1.0.tar.gz)
Verification:

     We verified that the author is affiliated with their institution  ![Verified icon](/assets/icons/16-verified.svg)
Repository:

     [ GitHub ](https://github.com/htlwienwest/da-vorlage-typst)
Categor  y  :

    

  * ![Thesis icon](/assets/icons/16-mortarboard.svg) [ Thesis ](https://typst.app/universe/search/?category=thesis)

###  Where to report issues?

This  template  is a project of  Johannes Zottele and peterw16  .  Report
issues on  [ their repository ](https://github.com/htlwienwest/da-vorlage-
typst) .  You can also try to ask for help with this  template  on the  [
Forum ](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  May 3, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

