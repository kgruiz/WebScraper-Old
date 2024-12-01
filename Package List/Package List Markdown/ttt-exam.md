![A preview of the ttt-exam Typst
template.](https://packages.typst.org/preview/thumbnails/ttt-
exam-0.1.2-small.webp)

#  ttt-exam

0.1.2

A collection of tools to make a teachers life easier (german).

[ Create project in app ](/app?template=ttt-exam&version=0.1.2)

` ttt-exam ` is a _template_ to create exams and belongs to the [ typst-
teacher-tools-collection ](https://github.com/jomaway/typst-teacher-templates)
.

##  Usage

Run this command inside your terminal to init a new exam.

    
    
    typst init @preview/ttt-exam my-exam
    

This will scaffold the following folder structure.

    
    
    my-exam/
    ââ meta.toml
    ââ exam.typ
    ââ eval.typ
    ââ justfile
    ââ logo.jpg
    

Replace the ` logo.jpg ` with your schools, university, â¦ logo or remove it.
Then edit the ` meta.toml ` . Edit the ` exam.typ ` and replace the questions
with your own. If you like you can also remove the ` meta.toml ` file and
specify the values directly inside ` exam.typ `

If you have installed [ just ](https://just.systems/) you can use it to build
a _student_ and _teacher_ version of your exam by running ` just build ` .

Here you can see an example with both versions. On the left the student
version and on the right the teachers version.

![Thumbnail with both
versions](https://raw.githubusercontent.com/jomaway/typst-teacher-
templates/main/ttt-exam/thumbnail.png)

The ` eval.typ ` is a template for generating grade lists. You need to add
your students to ` meta.toml ` and add the total amount of points.

##  Features

You can pass the following arguments to ` exam `

    
    
    #let exam(
      // metadata 
      logo: none, // none | image
      title: "exam", // the title of the exam
      subtitle: none, // is shown below the title
      date: none,     // date of the exam, preferred type of datetime.
      class: "",      
      subject: "" ,
      authors: "",  // string | array
      // config
      solution: auto,  // if solutions are displayed can also be specified with `--input solution=true` on the cli.
       cover: true, // true | false
       header: auto, // true | false | auto
       eval-table: false,  // true | false
       appendix: none, // content | none
    )
    

[ Create project in app ](/app?template=ttt-exam&version=0.1.2)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/ttt-exam:0.1.2

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Jomaway ](https://github.com/jomaway)
License:

     MIT 
Current version:

     0.1.2 
Last updated:

     May 23, 2024 
First released:

     April 2, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     152 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/ttt-exam-0.1.2.tar.gz)
Repository:

     [ GitHub ](https://github.com/jomaway/typst-teacher-templates)
Discipline  :

    

  * [ Education ](https://typst.app/universe/search/?discipline=education)

Categor  y  :

    

  * ![Office icon](/assets/icons/16-envelope.svg) [ Office ](https://typst.app/universe/search/?category=office)

###  Where to report issues?

This  template  is a project of  Jomaway  .  Report issues on  [ their
repository ](https://github.com/jomaway/typst-teacher-templates) .  You can
also try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.2  |  May 23, 2024   
[ 0.1.0 ](https://typst.app/universe/package/ttt-exam/0.1.0/) |  April 2, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

