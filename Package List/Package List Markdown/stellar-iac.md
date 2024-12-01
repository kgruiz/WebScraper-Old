![A preview of the stellar-iac Typst
template.](https://packages.typst.org/preview/thumbnails/stellar-
iac-0.4.1-small.webp)

#  stellar-iac

0.4.1

Template for the International Astronautical Congress (IAC) manuscript

[ Create project in app ](/app?template=stellar-iac&version=0.4.1)

This is an unofficial Typst template for the International Astronautical
Congress (IAC) manuscript, which is based on [ the 74th IAC Manuscript
Guidelines (PDF file)
](https://www.iafastro.org/assets/files/IAC%202023%20Manuscript%20Guidelines.pdf)
and [ the Manuscript Template and Style Guide (MS Word file)
](https://www.iafastro.org/assets/files/IAC%202023_Manuscript-Template.doc) .

##  Usage

To initialize a project with this template, run the following command:

    
    
    typst init @preview/stellar-iac
    

Or, you can manually add the following line at the beginning of your Typst
file:

    
    
    #import "@preview/stellar-iac:0.4.1": project
    

The ` project ` function exported by this template has the following named
arguments:

  * ` paper-code ` (default: ` "" ` ): The paper code of the manuscript. 
  * ` title ` (default: ` "" ` ): The title of the manuscript. 
  * ` authors ` (default: ` () ` ): The authors of the manuscript. Each item in the array should be a dictionary with the following keys: 
    * ` name ` (required): The name of the author. 
    * ` email ` (required): The email address of the author. 
    * ` affiliation ` (required): The affiliation of the author. The value must match one of the affiliation names defined in the ` organizations ` argument. 
    * ` corresponding ` (default: ` false ` ): Whether the author is the corresponding author. 
  * ` organizations ` (default: ` () ` ): The organizations of the authors. Each item in the array should be a dictionary with the following keys: 
    * ` name ` (required): The name of the organization. This name should be used in the ` affiliation ` field of the ` authors ` argument. 
    * ` display ` (required): The display name of the organization, including its address. 
  * ` keywords ` (default: ` () ` ): The keywords of the manuscript. 
  * ` header ` (default: ` [] ` ): The header of the manuscript. For IAC 2024, it should be ` [75#super[th] International Astronautical Congress (IAC), Milan, Italy, 14-18 October 2024.\ Copyright #{sym.copyright}2024 by the International Astronautical Federation (IAF). All rights reserved.] ` . 
  * ` abstract ` (default: ` "" ` ): The abstract of the manuscript. 

See [ ` main.typ `
](https://github.com/typst/packages/raw/main/packages/preview/stellar-
iac/0.4.1/template/main.typ) for more details.

##  Notable differences from the official template

  * The citation style is not exactly the same as the official template. This could be fixed by manually preparing a CSL file, but it is âgood enough.â 

##  Directory Structure and Licensing

  * The ` lib.typ ` file and all other files in this package, except for the content in the ` template ` directory, are licensed under the MIT License. See [ LICENSE-MIT.txt ](https://github.com/typst/packages/raw/main/packages/preview/stellar-iac/0.4.1/LICENSE-MIT.txt) for details. 

  * The content in the ` template ` directory is licensed under the MIT-0 License, which allows for unlimited reuse without any restrictions. See [ LICENSE-MIT-0.txt ](https://github.com/typst/packages/raw/main/packages/preview/stellar-iac/0.4.1/LICENSE-MIT-0.txt) for more information. 

  * The ` reproduction ` directory is included in this repository to demonstrate how the Typst template in ` lib.typ ` can be used to reproduce a layout similar to [ the original MS Word template ](https://www.iafastro.org/assets/files/IAC%202023_Manuscript-Template.doc) copyrighted by the International Astronautical Federation (IAF). **This content is not part of the distributed package and is provided here solely for demonstration purposes.** It is not licensed for use, modification, or distribution without permission from the copyright holder. 

[ Create project in app ](/app?template=stellar-iac&version=0.4.1)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/stellar-iac:0.4.1

![Copy](/assets/icons/16-copy.svg)

###  About

Author  s  :

     [ Shunichiro Nomura ](https://github.com/shunichironomura) & [ Riki Nakamura ](https://github.com/conjikidow)
License:

     MIT AND MIT-0 
Current version:

     0.4.1 
Last updated:

     September 24, 2024 
First released:

     September 24, 2024 
Minimum Typst version:

     0.11.1 
Archive size:

     182 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/stellar-iac-0.4.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/shunichironomura/iac-typst-template)
Discipline  :

    

  * [ Engineering ](https://typst.app/universe/search/?discipline=engineering)

Categor  y  :

    

  * ![Paper icon](/assets/icons/16-atom.svg) [ Paper ](https://typst.app/universe/search/?category=paper)

###  Where to report issues?

This  template  is a project of  Shunichiro Nomura and Riki Nakamura  .
Report issues on  [ their repository
](https://github.com/shunichironomura/iac-typst-template) .  You can also try
to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.4.1  |  September 24, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

