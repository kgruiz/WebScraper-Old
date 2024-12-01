#  examit

0.1.1

An exam template based on the MIT LaTeX exam.cls

A Typst exam package based on the MIT LaTeX [ exam
](https://ctan.org/pkg/exam) package

##  Features

  * Title block 
  * Read questions from file/question bank 
  * Grading table 
  * Marking boxes 
  * Question types 
    * Standard answerline 
    * Multiple choice (including true-false) 
    * Writing box 
    * Blank rectangular, polar, numberline graphs 

##  Example

` main.typ `

    
    
    #import "@preview/examit:0.1.1": *
    #import "questions.typ": questions
    
    #show: examit.with(
      questions: questions, // questions file, see example
    
      title: [examit],
      subtitle: "A Typst Exam Package",
      date: "2023-03-21",
    
      margin: (
        left: 18mm,
        top: 16mm,
        bottom: 25mm,
        right: 25mm,
      ),
      cols: 2,
      gutter: 18mm,
      lang: "en",
      font: "New Computer Modern",
    
      extrapicturebox: true, // "If you have time..." box at the end
      // dropallboxes: true, // points boxes next to answerlines instead of level with the question
      instructions: [Instructions before exam columns.],
      namebox: "left",
      pointsplacement: "right",
      answerlinelength: 4cm,
      defaultpoints: 1,
    )
    

` questions.typ `

    
    
    #import "@preview/examit:0.1.1": *
    
    #let questions = (
      ( header: [Multiple Choice] ),
      (
        question: [What attributes #underline("must") a *vector* have?],
        points: 2,
        choices: (
          [position],
          [magnitude],
          [direction],
          [x- and y-coordinates],
          [height],
          [width],
        ),
        horizontal: false,
        sameline: false,
      ),
      (
        question: [$bold(sin^(-1))$ returns an angle in which quadrants?],
        choices: ([I],[II],[III],[IV],),
        sameline: false,
        points: 2,
      ),
      (
        question: [A *scalar* is a vector with a\ magnitude of *1*.],
        tf: true,
        points: 2,
      ),
      (
        question: [
          Write this polar equation in rectangular form: $r = frac(5 ,cos theta + sin theta )$
        ],
        points: 4,
        bonus: true,
        answerbox: 3cm,
      ),
      ( pagebreak: true ),
      ( header: [Graphing]),
      (
        question: [
          Simplify and graph the complex number\ $5(cos 15 degree + i sin 15 degree) dot 10(cos 5 degree + i sin 5 degree)$.
        ],
        points: 3,
        spacing: 2.5cm,
        graph: "rect",
        answerline: true,
      ),
      (
        question: [$x^2(x^2+9)>6x^3$],
        points: 2,
        bonus: true,
        numberline: 2.5in,
      ),
      (subheader: [A child is pulling a wagon with a force of 15 lb at an angle of 35Â° to the ground.
      Gravity is pulling down on the wagon with a force of 12 lb.]),
      (
        question: [
          What is the resulting force vector?
        ],
        points: 4,
        spacing: 3cm,
        label: "wagon"
      ),
      (
        question: [
          This question references \#@wagon.
        ],
        points: 4,
      ),
    )
    

![examit-example](https://github.com/onomou/typst-
examit/assets/131693/78ba6fdc-59c0-460a-89cc-9617c15ac3e0)

##  To Do

  * [ ] Parts or sub-questions 
  * [ ] Customize numbering for questions 
  * [X] References for other questions 
  * [ ] Customize marking box properties: size, positioning, style 
  * [ ] Better multiple-choice and matching options: box/bubble style, layout arrangement (horizontal/vertical, alignment) 
  * [ ] Question types: fill-in-the-blank 
  * [ ] Grading table options: bonus points, positioning 
  * [ ] Footer options 
  * [ ] Margin adjustments based on points position 
  * [ ] Size options for graph response 
  * [ ] Customize first page or title block 
  * [ ] Configure even/odd headers/footers 
  * [ ] Show/hide answers 
  * [ ] Page break vs column break? 

###  How to add

Copy this into your project and use the import as  ` examit `

    
    
    #import "@preview/examit:0.1.1"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Steven Williams 
License:

     MIT 
Current version:

     0.1.1 
Last updated:

     May 16, 2024 
First released:

     May 16, 2024 
Archive size:

     6.80 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/examit-0.1.1.tar.gz)
Discipline  :

    

  * [ Education ](https://typst.app/universe/search/?discipline=education)

Categor  ies  :

    

  * ![Components icon](/assets/icons/16-package.svg) [ Components ](https://typst.app/universe/search/?category=components)
  * ![Layout icon](/assets/icons/16-layout.svg) [ Layout ](https://typst.app/universe/search/?category=layout)
  * ![Report icon](/assets/icons/16-speak.svg) [ Report ](https://typst.app/universe/search/?category=report)

###  Where to report issues?

This  package  is a project of  Steven Williams  .  You can also try to ask
for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.1  |  May 16, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

