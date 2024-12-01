#  neoplot

0.0.2

Gnuplot in Typst

A Typst package to use [ gnuplot ](http://www.gnuplot.info/) in Typst.

    
    
    #import "@preview/neoplot:0.0.2" as gp
    

Execute gnuplot commands:

    
    
    #gp.exec(
        kind: "command",
        ```gnuplot
        reset;
        set samples 1000;
        plot sin(x),
             cos(x)
        ```
    )
    

Execute a gnuplot script:

    
    
    #gp.exec(
        ```gnuplot
        reset
        # Can add comments since it is a script
        set samples 1000
        # Use a backslash to extend commands
        plot sin(x), \
             cos(x)
        ```
    )
    

To read a data file:

    
    
    # datafile.dat
    # x  y
      0  0
      2  4
      4  0
    
    
    
    #gp.exec(
        ```gnuplot
        $data <<EOD
        0  0
        2  4
        4  0
        EOD
        plot $data with linespoints
        ```
    )
    

or

    
    
    #gp.exec(
        // Use a datablock since Typst doesn't support WASI
        "$data <<EOD\n" +
        // Load "datafile.dat" using Typst
        read("datafile.dat") +
        "EOD\n" +
        "plot $data with linespoints"
    )
    

To print ` $data ` :

    
    
    #gp.exec("print $data")
    

###  How to add

Copy this into your project and use the import as  ` neoplot `

    
    
    #import "@preview/neoplot:0.0.2"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ KNnut ](https://github.com/KNnut)
License:

     BSD-3-Clause 
Current version:

     0.0.2 
Last updated:

     July 16, 2024 
First released:

     June 17, 2024 
Minimum Typst version:

     0.11.1 
Archive size:

     512 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/neoplot-0.0.2.tar.gz)
Repository:

     [ GitHub ](https://github.com/KNnut/neoplot)
Discipline  :

    

  * [ Mathematics ](https://typst.app/universe/search/?discipline=mathematics)

Categor  ies  :

    

  * ![Visualization icon](/assets/icons/16-chart.svg) [ Visualization ](https://typst.app/universe/search/?category=visualization)
  * ![Integration icon](/assets/icons/16-integration.svg) [ Integration ](https://typst.app/universe/search/?category=integration)

###  Where to report issues?

This  package  is a project of  KNnut  .  Report issues on  [ their repository
](https://github.com/KNnut/neoplot) .  You can also try to ask for help with
this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.0.2  |  July 16, 2024   
[ 0.0.1 ](https://typst.app/universe/package/neoplot/0.0.1/) |  June 17, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

