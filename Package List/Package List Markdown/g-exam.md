![A preview of the g-exam Typst
template.](https://packages.typst.org/preview/thumbnails/g-exam-0.4.1-small.webp)

#  g-exam

0.4.1

Create exams with student information, grade chart, score control, questions,
and sub-questions.

[ Create project in app ](/app?template=g-exam&version=0.4.1)

This template provides a way to generate exams. You can create questions and
sub-questions, header with information about the academic center, score box,
subject, exam, header with student information, clarifications, solutions,
watermark with information about the exam model and teacher.

####  Features

  * Scoreboard. 
  * Scoring by questions and subquestions. 
  * Student information, on the first page or on all odd pages. 
  * Question and subcuestion. 
  * Show solutions and clarifications 
  * List of clarifications. 
  * Teacherâs Watermark 
  * Exam Model Watermark 
  * Draft mode 

##  Usage

For information, see the [ online docucumentation
](https://matheschool.github.io/typst-g-exam/) .

To use this package, simply add the following code to your document:

####  A sample exam

![Exam - Table of
content](https://github.com/typst/packages/raw/main/packages/preview/g-exam/0.4.1/gallery/exam-
table-content.png)

####  Source:

    
    
    #import "@preview/g-exam:0.4.1": *
    
    #show: exam.with(
      school: (
        name: "Sunrise Secondary School",
        logo: read("./logo.png", encoding: none),
      ),
      exam-info: (
        academic-period: "Academic year 2023/2024",
        academic-level: "1st Secondary Education",
        academic-subject: "Mathematics",
        number: "2nd Assessment 1st Exam",
        content: "Radicals and fractions",
        model: "Model A"
      ),
      
      show-student-data: "first-page",
      show-grade-table: true,
      clarifications: "Answer the questions in the spaces provided. If you run out of room for an answer, continue on the back of the page."
    )
    #question(points:2.5)[Is it true that $x^n + y^n = z^n$ if $(x,y,z)$ and $n$ are positive integers?. Explain.] 
    #v(1fr)
    
    #question(points:2.5)[Prove that the real part of all non-trivial zeros of the function $zeta(z) "is" 1/2$].
    #v(1fr)
    
    #question(points:2)[Compute $ integral_0^infinity (sin(x))/x $ ]
    #v(1fr)
    

##  Changelog

###  v0.4.1

  * Fix student data. 
  * Fix Indenting subquestion. 

###  v0.4.0

  * Change g-exam for exam. 
  * Change g-question and g-subquestion for question and subquestion. 
  * Change point parameter to points in question and subquestion. 
  * Change question-points-position paramet to question-points-position. 
  * Include online documentation. 
  * Use paper by default. 
  * Indenting subquestion. 
  * Include support for dutch language. 
  * Corrections in English texts. 
  * Draft label. 

###  v0.3.2

  * Change show-studen-data to show-student-data parameter. 
  * Change languaje to language parameter. 

###  v0.3.1

  * Corrections in French. 

###  v0.3.0

  * Include parameter question-text-parameters. 
  * Show solution. 
  * Expand documentation. 
  * Possibility of estrablecer question-point-position to none. 
  * Bug fix show watermark. 

###  v0.2.0

  * Control the size of the logo image. 
  * Convert to template 
  * Allow true and false values in show-student-data. 
  * Show clarifications. 
  * Widen margin points. 
  * Show solution. 

###  v0.1.1

  * Fix loading image. 

###  v0.1.0

  * Initial version submitted to typst/packages. 

[ Create project in app ](/app?template=g-exam&version=0.4.1)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/g-exam:0.4.1

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     AndrÃ©s GimÃ©nez MuÃ±oz 
License:

     MIT 
Current version:

     0.4.1 
Last updated:

     November 19, 2024 
First released:

     February 21, 2024 
Minimum Typst version:

     0.12.0 
Archive size:

     177 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/g-exam-0.4.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/MatheSchool/typst-g-exam)
Discipline  :

    

  * [ Education ](https://typst.app/universe/search/?discipline=education)

Categor  y  :

    

  * ![Office icon](/assets/icons/16-envelope.svg) [ Office ](https://typst.app/universe/search/?category=office)

###  Where to report issues?

This  template  is a project of  AndrÃ©s GimÃ©nez MuÃ±oz  .  Report issues on
[ their repository ](https://github.com/MatheSchool/typst-g-exam) .  You can
also try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.4.1  |  November 19, 2024   
[ 0.4.0 ](https://typst.app/universe/package/g-exam/0.4.0/) |  November 8, 2024   
[ 0.3.2 ](https://typst.app/universe/package/g-exam/0.3.2/) |  August 26, 2024   
[ 0.3.1 ](https://typst.app/universe/package/g-exam/0.3.1/) |  July 23, 2024   
[ 0.3.0 ](https://typst.app/universe/package/g-exam/0.3.0/) |  April 8, 2024   
[ 0.2.0 ](https://typst.app/universe/package/g-exam/0.2.0/) |  March 21, 2024   
[ 0.1.1 ](https://typst.app/universe/package/g-exam/0.1.1/) |  February 22, 2024   
[ 0.1.0 ](https://typst.app/universe/package/g-exam/0.1.0/) |  February 21, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

