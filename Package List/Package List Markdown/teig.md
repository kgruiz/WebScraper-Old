#  teig

0.1.0

Calculate eigenvalues of matrices

This package provides an ` eigenvalue ` function that calculates the
eigenvalues of a matrix.

    
    
    #import "@preview/teig:0.1.0": eigenvalues
    
    #let data = (
      (1, 2, 3),
      (4, 5, 6),
      (7, 8, 9),
    )
    
    #let evals = eigenvalues(data)
    
    The eigenvalues of
    $
      #math.mat(..data)
    $
    are approximately
    
    $
      #math.vec(..evals.map(x => str(calc.round(x, digits: 3))))
    $
    

![example](https://github.com/typst/packages/raw/main/packages/preview/teig/0.1.0/example.png)

###  How to add

Copy this into your project and use the import as  ` teig `

    
    
    #import "@preview/teig:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     SolidTux 
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     October 2, 2024 
First released:

     October 2, 2024 
Archive size:

     62.2 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/teig-0.1.0.tar.gz)
Repository:

     [ GitLab ](https://gitlab.com/SolidTux/teig)
Discipline  :

    

  * [ Mathematics ](https://typst.app/universe/search/?discipline=mathematics)

Categor  ies  :

    

  * ![Scripting icon](/assets/icons/16-code.svg) [ Scripting ](https://typst.app/universe/search/?category=scripting)
  * ![Utility icon](/assets/icons/16-hammer.svg) [ Utility ](https://typst.app/universe/search/?category=utility)

###  Where to report issues?

This  package  is a project of  SolidTux  .  Report issues on  [ their
repository ](https://gitlab.com/SolidTux/teig) .  You can also try to ask for
help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  October 2, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

