![A preview of the tlacuache-thesis-fc-unam Typst
template.](https://packages.typst.org/preview/thumbnails/tlacuache-thesis-fc-
unam-0.1.1-small.webp)

#  tlacuache-thesis-fc-unam

0.1.1

Template para escribir una tesis para la facultad de ciencias.

[ Create project in app ](/app?template=tlacuache-thesis-fc-
unam&version=0.1.1)

Este es un template para tesis de la facultad de ciencias, en la Universidad
Nacional AutÃ³noma de MÃ©xico (UNAM).

This is a thesis template for the Science Faculty at Universidad Nacional
AutÃ³noma de MÃ©xico (UNAM) based on my thesis.

##  Uso/Usage

En la aplicaciÃ³n web de Typst da click en âStart from templateâ y busca `
tlacuache-thesis-fc-unam ` .

In the Typst web app simply click âStart from templateâ on the dashboard
and search for ` tlacuache-thesis-fc-unam ` .

Si estas usando la versiÃ³n de teminal usa el comando: From the CLI you can
initialize the project with the command:

    
    
    typst init @preview/tlacuache-thesis-fc-unam:0.1.1
    

##  ConfiguraciÃ³n/Configuration

Para configurar tu tesis puedes hacerlo con estas lineas al inicio de tu
archivo principal.

To set the thesis template, you can use the following lines in your main file.

    
    
    #import "@preview/tlacuache-thesis-fc-unam:0.1.1": thesis
    
    #show: thesis.with(
      ttitulo: [Titulo],
      grado: [Licenciatura],
      autor: [Autor],
      asesor: [Asesor],
      lugar: [Ciudad de MÃ©xico, MÃ©xico],
      agno: [#datetime.today().year()],
      bibliography: bibliography("references.bib"),
    )
    
    // Tu tesis va aquÃ­
    

Tambien puedes utilizar estas lineas para crear capÃ­tulos con bibliografÃ­a,
si deseas crear un pdf solomente para el capÃ­tulo.

You could also create a pdf for just a chapter with bibliography, by using the
following lines.

    
    
    #import "@preview/tlacuache-thesis-fc-unam:0.1.1": chapter
    
    // completamente opcional cargar la bibliografÃ­a, compilar el capÃ­tulo
    #show: chapter.with(bibliography: bibliography("references.bib"))
    
    // Tu capÃ­tulo va aquÃ­
    

Si quieres crear pdf aun mas cortos, puedes utilizar estas lineas para crear
un pdf solo para el secciÃ³n de tu capÃ­tulo.

You could even create a pdf for just a section of a chapter.

    
    
    #import "@preview/tlacuache-thesis-fc-unam:0.1.1": section
    
    // completamente opcional cargar la bibliografÃ­a, compilar el secciÃ³n
    #show: section.with(bibliography: bibliography("references.bib"))
    
    // Tu secciÃ³n va aquÃ­
    

[ Create project in app ](/app?template=tlacuache-thesis-fc-
unam&version=0.1.1)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/tlacuache-thesis-fc-unam:0.1.1

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     David Valencia, davidalencia@ciencias.unam.mx 
License:

     MIT 
Current version:

     0.1.1 
Last updated:

     April 9, 2024 
First released:

     April 9, 2024 
Archive size:

     3.14 MB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/tlacuache-thesis-fc-unam-0.1.1.tar.gz)
Categor  y  :

    

  * ![Thesis icon](/assets/icons/16-mortarboard.svg) [ Thesis ](https://typst.app/universe/search/?category=thesis)

###  Where to report issues?

This  template  is a project of  David Valencia, davidalencia@ciencias.unam.mx
.  You can also try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.1  |  April 9, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

