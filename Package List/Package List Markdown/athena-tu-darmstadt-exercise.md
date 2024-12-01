![A preview of the athena-tu-darmstadt-exercise Typst
template.](https://packages.typst.org/preview/thumbnails/athena-tu-darmstadt-
exercise-0.1.0-small.webp)

#  athena-tu-darmstadt-exercise

0.1.0

Exercise template for TU Darmstadt (Technische UniversitÃ¤t Darmstadt).

[ Create project in app ](/app?template=athena-tu-darmstadt-
exercise&version=0.1.0)

These **unofficial** templates can be used to write in [ Typst
](https://github.com/typst/typst) with the corporate design of [ TU Darmstadt
](https://www.tu-darmstadt.de/) .

####  Disclaimer

Please ask your supervisor if you are allowed to use typst and this template
for your thesis or other documents. Note that this template is not checked by
TU Darmstadt for correctness. Thus, this template does not guarantee
completeness or correctness. Also, note that submission in TUbama requires
PDF/A which typst currently canât export to ( [
https://github.com/typst/typst/issues/2942
](https://github.com/typst/typst/issues/2942) ). You can use a converter to
convert from the typst output to PDF/A, but check that there are no losses
during the conversion. CMYK color space support may be required for printing
which is also currently not supported by typst ( [
https://github.com/typst/typst/issues/2942
](https://github.com/typst/typst/issues/2942) ), but this is not relevant when
you just submit online.

##  Implemented Templates

The templates imitate the style of the corresponding latex templates in [
tuda_latex_templates ](https://github.com/tudace/tuda_latex_templates) . Note
that there can be visual differences between the original latex template and
the typst template (you may open an issue when you find one).

For missing features, ideas or other problems you can just open an issue
:wink:. Contributions are also welcome.

Template  |  Preview  |  Example  |  Scope   
---|---|---|---  
[ tudapub ](https://github.com/JeyRunner/tuda-typst-templates/blob/main/templates/tudapub/template/tudapub.typ) |  ![](https://raw.githubusercontent.com/JeyRunner/tuda-typst-templates/refs/heads/main/templates/tudapub/preview/tudapub_prev-01.png) |  [ example_tudapub.pdf ](https://github.com/JeyRunner/tuda-typst-templates/blob/main/example_tudapub.pdf)   
[ example_tudapub.typ ](https://github.com/JeyRunner/tuda-typst-templates/blob/main/example_tudapub.typ) |  Master and Bachelor thesis   
[ tudaexercise ](https://github.com/JeyRunner/tuda-typst-templates/blob/main/templates/tudaexercise/template/tudaexercise.typ) |  ![](https://raw.githubusercontent.com/JeyRunner/tuda-typst-templates/refs/heads/main/templates/tudaexercise/preview/tudaexercise_prev-1.png) |  [ Example File ](https://github.com/JeyRunner/tuda-typst-templates/blob/main/templates_examples/tudaexercise/main.typ) |  Exercises   
  
##  Usage

Create a new typst project based on this template locally.

    
    
    # for tudapub
    typst init @preview/athena-tu-darmstadt-thesis
    cd athena-tu-darmstadt-thesis
    
    # for tudaexercise
    typst init @preview/athena-tu-darmstadt-exercise
    cd athena-tu-darmstadt-exercise
    

Or create a project on the typst web app based on this template.

Or do a manual installation of this template.  For a manual setup create a
folder for your writing project and download this template into the
`templates` folder:

    
    
    mkdir my_exercise && cd my_exercise
    git clone https://github.com/JeyRunner/tuda-typst-templates
    

###  Logo and Font Setup

Download the tud logo from [ download.hrz.tu-
darmstadt.de/protected/ULB/tuda_logo.pdf ](https://download.hrz.tu-
darmstadt.de/protected/ULB/tuda_logo.pdf) and put it into the ` asssets/logos
` folder. Now execute the following script in the ` asssets/logos ` folder to
convert it into an svg:

    
    
    cd asssets/logos
    ./convert_logo.sh
    

Note: The here used ` pdf2svg ` command might not be available. In this case
we recommend a online converter like [ PDF24 Tools
](https://tools.pdf24.org/en/pdf-to-svg) . There also is a [ tool
](https://github.com/FussballAndy/typst-img-to-local) to install images as
local typst packages.

Also download the required fonts ` Roboto ` and ` XCharter ` :

    
    
    cd asssets/fonts
    ./download_fonts.sh
    

Optionally you can install all fonts in the folders in ` fonts ` on your
system. But you can also use Typstâs ` --font-path ` option. Or install them
in a folder and add the folder to ` TYPST_FONT_PATHS ` for a single font
folder.

Note: wget might not be available. In this case either download it or replace
the command with something like ` curl <url> -o <filename> -L `

Create a main.typ file for the manual template installation.  Create a simple
`main.typ` in the root folder (`my_exercise`) of your new project:

    
    
    #import "tuda-typst-templates/templates/tudaexercise/template/lib.typ": *
    
    #show: tudaexercise.with(
      info: (
        title: "My Exercise",
        auhtor: "Your name",
        sheetnumber: 1    
      ),
      logo: image("tuda-typst-templates/assets/logos/tuda_logo.svg")
    )
    
    = My First Task
    Some Text
    

###  Compile you typst file

    
    
    typst --watch main.typ --font-path asssets/fonts/
    

This will watch your file and recompile it to a pdf when the file is saved.
For writing, you can use [ Vscode ](https://code.visualstudio.com/) with these
extensions: [ Tinymist Typst
](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist)
. Or use the [ typst web app ](https://typst.app/) (here you need to upload
the logo and the fonts).

Note that we add ` --font-path ` to ensure that the correct fonts are used.
Due to a bug (typst/typst#2917 typst/typst#2098) typst sometimes uses the font
` Roboto condensed ` instead of ` Roboto ` . To be on the safe side, double-
check the embedded fonts in the pdf (there should be no ` Roboto condensed `
). What also works is to uninstall/deactivate all ` Roboto condensed ` fonts
from your system.

##  Todos

  * [ todos of thesis template ](https://github.com/JeyRunner/tuda-typst-templates/blob/main/templates/tudapub/TODO.md)

[ Create project in app ](/app?template=athena-tu-darmstadt-
exercise&version=0.1.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/athena-tu-darmstadt-exercise:0.1.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  s  :

     [ JeyRunner ](https://github.com/JeyRunner) & [ FussballAndy ](https://github.com/FussballAndy)
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     November 25, 2024 
First released:

     November 25, 2024 
Minimum Typst version:

     0.12.0 
Archive size:

     10.9 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/athena-tu-darmstadt-exercise-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/JeyRunner/tuda-typst-templates)
Categor  y  :

    

  * ![Layout icon](/assets/icons/16-layout.svg) [ Layout ](https://typst.app/universe/search/?category=layout)

###  Where to report issues?

This  template  is a project of  JeyRunner and FussballAndy  .  Report issues
on  [ their repository ](https://github.com/JeyRunner/tuda-typst-templates) .
You can also try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  November 25, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

