#  tinyset

0.1.0

Simple, consistent, and appealing math homework template

Extremely simple [ typst ](https://github.com/typst/typst) package for writing
math problem sets quickly and consistently. Under the hood it is just typst
fundamentals that could be defined by hand, however the aim of this package is
to make you faster and the code easier to read.

##  Usage

Import styles and create a new header. I like to copy this from the top of the
previous weekâs homework (donât forget to increment the number!).

Example using proof, question, and part environments. Indentation in source
code is largely ignored and left to personal preference. By default questions
are numbered and each part is lettered, you can change this based on course /
instructor preference.

    
    
    #import "@preview/tinyset:0.1.0": *
    #header(number: 7, name: "Sylvan Franklin", class: "Math 3551 - Fall 2024")
    
    + #qs[
    Let $G_1$ and $G_2$ be groups, $phi : G_1 -> G_2$ be a homomorphism, and $H$ be
    any subgroup of $G_2$. Define
    
    $ phi^(-1)(H) = {g in G_1 : phi(g) in H}. $
    
    + #pt[ 
        Prove that $phi^(-1)(H)$ is a subgroup of $G_1$.
        #prf[ Non empty: Since $H$ is a subgroup it contains the indentity, and
        since $phi$ is a homomorphism and ... ]
    ]
    
    + #pt[ 
        What about a question that you don't need a proof for?
        #ans[Use the ans environment]
    ]
    
    ]
    
    

##  Custom shorthand

Sometimes when thinking about math I find it easier to phonetically write out
these symbols instead of using the built in typst classes. For certain others
I find the original symbols annoying to type quickly.

shorthand  |  expansion   
---|---  
implies / impl  |  ==>  
iff  |  <==>  
wlog  |  without loss of generality   
inv()  |  ()^(-1)   
  
###  How to add

Copy this into your project and use the import as  ` tinyset `

    
    
    #import "@preview/tinyset:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Sylvan Franklin 
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     November 6, 2024 
First released:

     November 6, 2024 
Archive size:

     2.28 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/tinyset-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/sylvanfranklin/tinyset)
Discipline  :

    

  * [ Mathematics ](https://typst.app/universe/search/?discipline=mathematics)

Categor  y  :

    

  * ![Layout icon](/assets/icons/16-layout.svg) [ Layout ](https://typst.app/universe/search/?category=layout)

###  Where to report issues?

This  package  is a project of  Sylvan Franklin  .  Report issues on  [ their
repository ](https://github.com/sylvanfranklin/tinyset) .  You can also try to
ask for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  November 6, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

