#  simplebnf

0.1.1

A simple package to format Backus-Naur form (BNF)

simplebnf is a simple package to format Backus-Naur form. The package provides
a simple way to format Backus-Naur form (BNF). It provides constructs to
denote BNF expressions, possibly with annotations.

This is a sister package of [ simplebnf
](https://github.com/Zeta611/simplebnf) , a LaTeX package under the same name
by the author.

##  Usage

Import simplebnf via

    
    
    #import "@preview/simplebnf:0.1.1": *
    

Use the ` bnf ` function to display the BNF production rules. Each production
rule can be created using the ` Prod ` constructor function, which accepts the
(left-hand side) metavariable, an optional annotation for it, an optional
delimiter (which defaults to â©´), and a list of (right-hand side)
alternatives. Each alternative should be created using the ` Or ` constructor,
which accepts a syntactic form and an annotation.

Below are some examples using simplebnf.

    
    
    #bnf(
      Prod(
        $e$,
        annot: $sans("Expr")$,
        {
          Or[$x$][_variable_]
          Or[$Î» x. e$][_abstraction_]
          Or[$e$ $e$][_application_]
        },
      ),
    )
    

![lambda](https://github.com/typst/packages/raw/main/packages/preview/simplebnf/0.1.1/examples/lambda.svg)

    
    
    #bnf(
      Prod(
        $e$,
        delim: $â$,
        {
          Or[$x$][variable]
          Or[$Î» x: Ï.e$][abstraction]
          Or[$e space e$][application]
          Or[$Î» Ï.e space e$][type abstraction]
          Or[$e space [Ï]$][type application]
        },
      ),
      Prod(
        $Ï$,
        delim: $â$,
        {
          Or[$X$][type variable]
          Or[$Ï â Ï$][type of functions]
          Or[$âX.Ï$][universal quantification]
        },
      ),
    )
    

![System
F](https://github.com/typst/packages/raw/main/packages/preview/simplebnf/0.1.1/examples/system-f.svg)

##  Authors

  * Jay Lee [ jaeho.lee@snu.ac.kr ](mailto:jaeho.lee@snu.ac.kr)

##  License

simplebnf.typ is available under the MIT license. See the [ LICENSE
](https://github.com/Zeta611/simplebnf.typ/blob/master/LICENSE) file for more
info.

###  How to add

Copy this into your project and use the import as  ` simplebnf `

    
    
    #import "@preview/simplebnf:0.1.1"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Jay Lee ](https://github.com/Zeta611)
License:

     MIT 
Current version:

     0.1.1 
Last updated:

     July 15, 2024 
First released:

     May 23, 2024 
Archive size:

     2.10 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/simplebnf-0.1.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/Zeta611/simplebnf.typ)
Discipline  :

    

  * [ Computer Science ](https://typst.app/universe/search/?discipline=computer-science)

Categor  ies  :

    

  * ![Components icon](/assets/icons/16-package.svg) [ Components ](https://typst.app/universe/search/?category=components)
  * ![Visualization icon](/assets/icons/16-chart.svg) [ Visualization ](https://typst.app/universe/search/?category=visualization)
  * ![Integration icon](/assets/icons/16-integration.svg) [ Integration ](https://typst.app/universe/search/?category=integration)

###  Where to report issues?

This  package  is a project of  Jay Lee  .  Report issues on  [ their
repository ](https://github.com/Zeta611/simplebnf.typ) .  You can also try to
ask for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.1  |  July 15, 2024   
[ 0.1.0 ](https://typst.app/universe/package/simplebnf/0.1.0/) |  May 23, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

