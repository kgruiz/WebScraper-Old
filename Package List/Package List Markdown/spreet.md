#  spreet

0.1.0

Parse a spreadsheet.

Spreet is a spreadsheet decoder for typst (excel/opendocument spreadsheets).
The spreadsheet will be read and parsed into a dictonary of 2-dimensional
array of strings: Each workbook in the spreadsheet is mapped as an entry in
the dictonary. Each row of the workbook is represented as an array of strings,
and all rows are summarised in a single array.

##  Example

    
    
    #import "@preview/spreet:0.1.0"
    
    #let excel_data = spreet.file-decode("excel.xlsx")
    #let opendocument_data = spreet.file-decode("opendocument.ods")
    
    #let excel_data_from_bytes = spreet.decode(read("excel.xlsx", encoding: none))
    #let opendocument_data_from_bytes = spreet.decode(read("opendocument.ods", encoding: none))
    
    /**
    excel_data or opendocument_data contains a dict of all worksheets
    (
      Worksheet1: (
        (Row1_Column1, Row1_Column2),
        (Row2_Column1, Row2_Column2),
      ),
      Worksheet2: (
        (Row1_Column1, Row1_Column2),
        (Row2_Column1, Row2_Column2),
      )
    )
    **/
    

###  How to add

Copy this into your project and use the import as  ` spreet `

    
    
    #import "@preview/spreet:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     lublak 
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     September 15, 2024 
First released:

     September 15, 2024 
Archive size:

     335 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/spreet-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/lublak/typst-spreet-package)

###  Where to report issues?

This  package  is a project of  lublak  .  Report issues on  [ their
repository ](https://github.com/lublak/typst-spreet-package) .  You can also
try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  September 15, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

