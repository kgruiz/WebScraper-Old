#  nassi

0.1.2

Draw Nassi-Shneiderman diagrams (Struktogramme) with Typst.

**nassi** is a package for [ Typst ](https://typst.app/) to draw [ Nassi-
Shneiderman diagrams
](https://en.wikipedia.org/wiki/Nassi%E2%80%93Shneiderman_diagram)
(Struktogramme).

![](https://github.com/typst/packages/raw/main/packages/preview/nassi/0.1.2/assets/example-1.png)

##  Usage

Import **nassi** in your document:

    
    
    #import "@preview/nassi:0.1.2"
    

There are several options to draw diagrams. One is to parse all code-blocks
with the language ânassiâ. Simply add a show-rule like this:

    
    
    #import "@preview/nassi:0.1.2"
    #show: nassi.shneiderman()
    
    ```nassi
    function ggt(a, b)
      while a > 0 and b > 0
        if a > b
          a <- a - b
        else
          b <- b - a
        endif
      endwhile
      if b == 0
        return a
      else
        return b
      endif
    endfunction
    ```
    

In this case, the diagram is created from a simple pseudocode. To have more
control over the output, you can add blocks manually using the element
functions provided in ` nassi.elements ` :

    
    
    #import "@preview/nassi:0.1.2"
    
    #nassi.diagram({
    	import nassi.elements: *
    
    	function("ggt(a, b)", {
    		loop("a > b and b > 0", {
    			branch("a > b", {
    				assign("a", "a - b")
    			}, {
    				assign("b", "b - a",
    					fill: gradient.linear(..color.map.rainbow),
    					stroke:red + 2pt
    				)
    			})
    		})
    		branch("b == 0", { process("return a") }, { process("return b") })
    	})
    })
    

![](https://github.com/typst/packages/raw/main/packages/preview/nassi/0.1.2/assets/example-3.png)

Since **nassi** uses **cetz** for drawing, you can add diagrams directly to a
canvas. Each block gets a name within the diagram group to reference it in the
drawing:

    
    
    #import "@preview/cetz:0.2.2"
    #import "@preview/nassi:0.1.2"
    
    #cetz.canvas({
      import nassi.draw: diagram
      import nassi.elements: *
      import cetz.draw: *
    
      diagram((4,4), {
        function("ggt(a, b)", {
          loop("a > b and b > 0", {
            branch("a > b", {
              assign("a", "a - b")
            }, {
              assign("b", "b - a")
            })
          })
          branch("b == 0", { process("return a") }, { process("return b") })
        })
      })
    
      for i in range(8) {
        content(
          "nassi.e" + str(i+1) + ".north-west",
          stroke:red,
          fill:red.transparentize(50%),
          frame:"circle",
          padding:.05,
          anchor:"north-west",
          text(white, weight:"bold", "e"+str(i)),
        )
      }
    })
    

![](https://github.com/typst/packages/raw/main/packages/preview/nassi/0.1.2/assets/example-
cetz-2.png)

This can be useful to annotate a diagram:

![](https://github.com/typst/packages/raw/main/packages/preview/nassi/0.1.2/assets/example-
cetz.png)

See ` assets/ ` for usage examples.

##  Changelog

###  Version 0.1.2

  * Fix for deprecation warnings in Typst 0.12. 

###  Version 0.1.1

  * Fixed labels option not working for branches in other elements. 
  * Added ` switch ` statements (thanks to @Geronymos). 

###  Version 0.1.0

Initial release of **nassi** .

###  How to add

Copy this into your project and use the import as  ` nassi `

    
    
    #import "@preview/nassi:0.1.2"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Jonas Neugebauer 
License:

     MIT 
Current version:

     0.1.2 
Last updated:

     October 23, 2024 
First released:

     June 3, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     5.93 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/nassi-0.1.2.tar.gz)
Repository:

     [ GitHub ](https://github.com/jneug/typst-nassi)
Discipline  :

    

  * [ Computer Science ](https://typst.app/universe/search/?discipline=computer-science)

Categor  y  :

    

  * ![Visualization icon](/assets/icons/16-chart.svg) [ Visualization ](https://typst.app/universe/search/?category=visualization)

###  Where to report issues?

This  package  is a project of  Jonas Neugebauer  .  Report issues on  [ their
repository ](https://github.com/jneug/typst-nassi) .  You can also try to ask
for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.2  |  October 23, 2024   
[ 0.1.1 ](https://typst.app/universe/package/nassi/0.1.1/) |  October 2, 2024   
[ 0.1.0 ](https://typst.app/universe/package/nassi/0.1.0/) |  June 3, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

