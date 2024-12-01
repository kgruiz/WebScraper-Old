![A preview of the minerva-report-fcfm Typst
template.](https://packages.typst.org/preview/thumbnails/minerva-report-
fcfm-0.2.1-small.webp)

#  minerva-report-fcfm

0.2.1

Template de artÃ­culos, informes y tareas para la Facultad de Ciencias
FÃ­sicas y MatemÃ¡ticas (FCFM).

[ Create project in app ](/app?template=minerva-report-fcfm&version=0.2.1)

Template para hacer tareas, informes y trabajos, para estudiantes y
acadÃ©micos de la Facultad de Ciencias FÃ­sicas y MatemÃ¡ticas de la
Universidad de Chile que han usado templates similares para LaTeX.

##  GuÃ­a RÃ¡pida

###  [ Webapp ](https://typst.app/)

Si utilizas la webapp de Typst puedes presionar âStart from templateâ y
buscar âminerva-report-fcfmâ para crear un nuevo proyecto con este
template.

###  Typst CLI

Teniendo el CLI con la versiÃ³n 0.11.0 o mayor, puedes realizar:

    
    
    typst init @preview/minerva-report-fcfm:0.2.1
    

Esto va a descargar el template en la cache de typst y luego va a iniciar el
proyecto en la carpeta actual.

##  ConfiguraciÃ³n

La mayorÃ­a de la configuraciÃ³n se realiza a travÃ©s del archivo ` meta.typ `
, allÃ­ podrÃ¡s elegir un tÃ­tulo, indicar los autores, el equipo docente,
entre otras configuraciones.

El campo ` autores ` solo puede ser ` string ` o un ` array ` de strings.

La configuraciÃ³n ` departamento ` puede ser personalizada a cualquier
organizaciÃ³n pasandole un diccionario de esta forma:

    
    
    #let departamento = (
      nombre: (
        "Universidad TÃ©cnica Federico Santa MarÃ­a",
      )
    )
    

Las demÃ¡s configuraciones pueden ser un ` content ` arbitrario, o un ` string
` .

###  ConfiguraciÃ³n Avanzada

Algunos aspectos mÃ¡s avanzados pueden ser configurados a travÃ©s de la show
rule que inicializa el documento ` #show: minerva.report.with( ... ) ` , los
parÃ¡metros opcionales que recibe la funciÃ³n ` report ` son los siguientes:

nombre  |  tipo  |  descriciÃ³n   
---|---|---  
portada  |  (meta) => content  |  Una funciÃ³n que recibe el diccionario ` meta.typ ` y retorna una pÃ¡gina.   
header  |  (meta) => content  |  Header a aplicarse a cada pÃ¡gina.   
footer  |  (meta) => content  |  Footer a aplicarse a cada pÃ¡gina.   
showrules  |  bool  |  El template aplica ciertas show-rules para que sea mÃ¡s fÃ¡cil de utilizar. Si quires mÃ¡s personalizaciÃ³n, es probable que necesites desactivarlas y luego solo utilizar las que necesites.   
  
####  Show Rules

El template incluye show rules que pueden ser incluidas opcionalmente. Todas
estas show rules pueden ser activadas agregando:

    
    
    #show: minerva.<nombre-funciÃ³n>
    

Justo despuÃ©s de la lÃ­nea ` #show minerva.report.with( ... ) ` reemplazando
` <nombre-funciÃ³n> ` por el nombre de la show rule a aplicar.

#####  primer-heading-en-nueva-pag (activada por defecto)

Esta show rule hace que el primer heading que tenga ` outlined: true ` se
muestre en una nueva pÃ¡gina (con ` weak: true ` ). Notar que al ser ` weak:
true ` si la pÃ¡gina ya de por si estaba vacÃ­a, no se crea otra pÃ¡gina
adicional, pero para que la pÃ¡gina realmente se considere vacÃ­a no debe
contener absolutamente nada, incluso tener elementos invisibles va a causar
que se agregue una pÃ¡gina extra.

#####  operadores-es (activada por defecto)

Cambia los operadores matemÃ¡ticos que define Typst por defecto a sus
contrapartes en espaÃ±ol, esto es, cambia ` lim ` por ` lÃ­m ` , ` inf ` por `
Ã­nf ` y asÃ­ con todos.

#####  formato-numeros-es

Cambia los nÃºmeros dentro de las ecuaciones para que usen coma decimal en vez
de punto decimal, como es convenciÃ³n en el espaÃ±ol. Esta show rule no viene
activa por defecto.

[ Create project in app ](/app?template=minerva-report-fcfm&version=0.2.1)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/minerva-report-fcfm:0.2.1

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ David IbÃ¡Ã±ez ](https://github.com/Dav1com)
License:

     MIT-0 
Current version:

     0.2.1 
Last updated:

     October 14, 2024 
First released:

     April 15, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     246 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/minerva-report-fcfm-0.2.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/Dav1com/minerva-report-fcfm)
Categor  y  :

    

  * ![Report icon](/assets/icons/16-speak.svg) [ Report ](https://typst.app/universe/search/?category=report)

###  Where to report issues?

This  template  is a project of  David IbÃ¡Ã±ez  .  Report issues on  [ their
repository ](https://github.com/Dav1com/minerva-report-fcfm) .  You can also
try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.1  |  October 14, 2024   
[ 0.2.0 ](https://typst.app/universe/package/minerva-report-fcfm/0.2.0/) |  April 29, 2024   
[ 0.1.0 ](https://typst.app/universe/package/minerva-report-fcfm/0.1.0/) |  April 15, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

