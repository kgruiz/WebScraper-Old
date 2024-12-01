![A preview of the enunciado-facil-fcfm Typst
template.](https://packages.typst.org/preview/thumbnails/enunciado-facil-
fcfm-0.1.0-small.webp)

#  enunciado-facil-fcfm

0.1.0

Documentos de ejercicios (controles, auxiliares, tareas, pautas) para la FCFM,
UChile

[ Create project in app ](/app?template=enunciado-facil-fcfm&version=0.1.0)

Template de Typst para documentos de la FCFM (auxiliares, controles, pautas)

##  Ejemplo de uso

###  En [ typst.app ](https://typst.app/)

Si utilizas la aplicaciÃ³n web oficial, puedes presionar âStart from
templateâ y buscar âenunciado-facil-fcfmâ para crear un proyecto ya
inicializado con el template.

###  En CLI

Si usas Typst de manera local, puedes ejecutar:

    
    
    typst init @preview/enunciado-facil-fcfm:0.1.0
    

lo cual inicializarÃ¡ un proyecto usando el template en el directorio actual.

###  Manualmente

Basta crear un archivo con el siguiente contenido para usar el template:

    
    
    #import "@preview/enunciado-facil-fcfm:0.1.0" as template
    
    #show: template.conf.with(
      titulo: "Auxiliar 1",
      subtitulo: "Typst",
      titulo-extra: (
        [*Profesora*: Ada Lovelace],
        [*Auxiliares*: Grace Hopper y Alan Turing],
      ),
      departamento: template.departamentos.dcc,
      curso: "CC4034 - ComposiciÃ³n de documentos",
    )
    
    ...el resto del documento comienza acÃ¡
    

Puedes ver un ejemplo mÃ¡s completo en [ main.typ
](https://github.com/typst/packages/raw/main/packages/preview/enunciado-facil-
fcfm/0.1.0/template/main.typ) . Para aprender la sintÃ¡xis de Typst existe la
[ documentaciÃ³n oficial ](https://typst.app/docs) . Si vienes desde LaTeX, te
recomiendo la [ guÃ­a para usuarios de LaTeX
](https://typst.app/docs/guides/guide-for-latex-users/) .

##  ConfiguraciÃ³n

La funciÃ³n ` conf ` importada desde el template recibe los siguientes
parÃ¡metros:

ParÃ¡metro  |  DescripciÃ³n   
---|---  
` titulo ` |  TÃ­tulo del documento   
` subtitulo ` |  SubtÃ­tulo del documento   
` titulo-extra ` |  Arreglo con bloques de contenido adicionales a agregar despuÃ©s del tÃ­tulo. Ãtil para mostrar los nombres del equipo docente.   
` departamento ` |  Diccionario que contiene el nombre ( ` string ` ) y el logo del departamento ( ` content ` ). El template viene con uno ya creado para cada departamento bajo ` template.departamentos ` . Valor por defecto: ` template.departamentos.dcc `  
` curso ` |  CÃ³digo y/o nombre del curso.   
` page-conf ` |  Diccionario con parÃ¡metros adicionales (tamaÃ±o de pÃ¡gina, mÃ¡rgenes, etc) para pasarle a la funciÃ³n [ page ](https://typst.app/docs/reference/layout/page/) .   
  
##  FAQ

###  CÃ³mo cambiar el logo del departamento

El parÃ¡metro ` departamento ` solamente es un diccionario de Typst con las
llaves ` nombre ` y ` logo ` . Puedes crear un diccionario con un logo
personalizado y pasÃ¡rselo al template:

    
    
    #import "@preview/enunciado-facil-fcfm:0.1.0" as template
    
    #let mi-departamento = (
      nombre: "Mi sÃºper departamento personalizado",
      logo: image("mi-super-logo.png"),
    )
    
    #show: template.conf.with(
      titulo: "Documento con logo personalizado",
      departamento: mi-departamento,
      curso: "CC4034 - ComposiciÃ³n de documentos",
    )
    

###  CÃ³mo cambiar mÃ¡rgenes, tamaÃ±o de pÃ¡gina, etcÃ©tera

Para cambiar la configuraciÃ³n de la pÃ¡gina hay que interceptar la [ set rule
](https://typst.app/docs/reference/styling/#set-rules) que se hace sobre `
page ` . Para ello, el template expone el parÃ¡metro ` page-conf ` que permit
sobreescribir la configuraciÃ³n de pÃ¡gina del template. Por ejemplo, para
cambiar el tamaÃ±o del papel a A4:

    
    
    #import "@preview/enunciado-facil-fcfm:0.1.0" as template
    
    #show: template.conf.with(
      titulo: "Documento con tamaÃ±o A4",
      departamento: template.departamentos.dcc,
      curso: "CC4034 - ComposiciÃ³n de documentos",
      page-conf: (paper: "a4")
    )
    

###  CÃ³mo cambiar la fuente, headings, etc

Usando [ show y set rules ](https://typst.app/docs/reference/styling/) puedes
personalizar mucho mÃ¡s el template. Por ejemplo, para cambiar la fuente:

    
    
    #import "@preview/enunciado-facil-fcfm:0.1.0" as template
    
    // En este caso hay que cambiar la fuente
    // antes de que se configure el template
    // para que se aplique en el tÃ­tulo y encabezado
    #set text(font: "New Computer Modern")
    
    #show: template.conf.with(
      titulo: "Documento con la fuente de LaTeX",
      departamento: template.departamentos.dcc,
      curso: "CC4034 - ComposiciÃ³n de documentos",
    )
    

[ Create project in app ](/app?template=enunciado-facil-fcfm&version=0.1.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/enunciado-facil-fcfm:0.1.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Blaz Korecic ](https://github.com/bkorecic)
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     October 9, 2024 
First released:

     October 9, 2024 
Archive size:

     264 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/enunciado-facil-fcfm-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/bkorecic/enunciado-facil-fcfm)
Categor  y  :

    

  * ![Report icon](/assets/icons/16-speak.svg) [ Report ](https://typst.app/universe/search/?category=report)

###  Where to report issues?

This  template  is a project of  Blaz Korecic  .  Report issues on  [ their
repository ](https://github.com/bkorecic/enunciado-facil-fcfm) .  You can also
try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  October 9, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

