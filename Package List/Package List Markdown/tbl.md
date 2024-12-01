#  tbl

0.0.4

Complex tables, written concisely

This is a library for [ Typst ](https://typst.app/) built upon Pg Bielâs
fabulous [ ` tablex ` ](https://github.com/PgBiel/typst-tablex) library.

It allows the creation of complex tables in Typst using a compact syntax based
on the ` tbl ` preprocessor for the traditional UNIX TROFF typesetting system.
There are also some novel features that are not currently offered by Typst
itself or ` tablex ` , namely:

  * Decimal point alignment (using the ` decimalpoint ` region option and ` N ` -classified columns) 
  * Columns of equal width (using the ` e ` column modifier) 
  * Columns with a guaranteed minimum width (using the ` w ` column modifier) 
  * Cells that are ignored when calculating column widths (using the ` z ` column modifier) 
  * Equation tables (using the ` mode: "math" ` region option) 

Many other features exist to condense common configurations to a concise
syntax.

For example:

    
    
    #import "@preview/tbl:0.0.4"
    #show: tbl.template.with(box: true, tab: "|")
    
    ```tbl
          R | L
          R   N.
    software|version
    _
         AFL|2.39b
        Mutt|1.8.0
        Ruby|1.8.7.374
    TeX Live|2015
    ```
    

![](https://raw.githubusercontent.com/maxcrees/tbl.typ/v0.0.4/test/00/02_software.png)

Many other examples and copious documentation are provided in the [ `
README.pdf ` ](https://maxre.es/tbl.typ/v0.0.4.pdf) file.

[ The source repository ](https://github.com/maxcrees/tbl.typ) also includes a
test suite based on those examples, which can be ran using the GNU ` make `
command. See ` make help ` for details.

###  How to add

Copy this into your project and use the import as  ` tbl `

    
    
    #import "@preview/tbl:0.0.4"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Max Rees 
License:

     MPL-2.0 
Current version:

     0.0.4 
Last updated:

     August 19, 2023 
First released:

     July 29, 2023 
Archive size:

     14.3 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/tbl-0.0.4.tar.gz)
Repository:

     [ GitHub ](https://github.com/maxcrees/tbl.typ)

###  Where to report issues?

This  package  is a project of  Max Rees  .  Report issues on  [ their
repository ](https://github.com/maxcrees/tbl.typ) .  You can also try to ask
for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.0.4  |  August 19, 2023   
[ 0.0.3 ](https://typst.app/universe/package/tbl/0.0.3/) |  July 29, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

