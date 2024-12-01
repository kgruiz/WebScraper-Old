![A preview of the simple-preavis Typst
template.](https://packages.typst.org/preview/thumbnails/simple-
preavis-0.1.0-small.webp)

#  simple-preavis

0.1.0

ð a french move out letter

[ Create project in app ](/app?template=simple-preavis&version=0.1.0)

**simple-preavis** est un template typst pour Ã©crire une lettre de prÃ©avis
dâÃ©tat des lieux Ã son propriÃ©taire.

Il est fortement inspirÃ© de cet [ outil ](https://www.service-
public.fr/simulateur/calcul/CongeLogement) rÃ©alisÃ©s par les services publics
ð.

##  Utilisation

###  Exemple dâutilisation

    
    
    #import "@preview/simple-preavis:0.1.0":*
    #lettre-preavis(
      locataire: locataire(
         "Dupont locataire",
         "Jean",
         adresse(
           "123 rue de la Paix",
           "75000",
           "Paris",
           complement: "Appartement 2"
        )
      ),
      proprietaire: proprietaire(
         "Martin proprietaire",
        "Sophie",
         adresse(
           "456 avenue des Champs-ÃlysÃ©es",
           "75008",
           "Paris"
        ),
        "Madame"
      ),
      date-etat-des-lieux: datetime(year:2024, month:9, day:21)
    )
    

##  TODO

  * [ ] Supporter plusieurs locataires 
  * [ ] Supporter la lÃ©gislation zone tendu en fonction du code postal 
  * [ ] AmÃ©liorer la documentation des fonctions 
  * [ ] SÃ©parer en une librairie et un template pour que cela ressemble plus aux autres template types 

##  Mention license

ConformÃ©ment Ã la license [ etalab ](https://github.com/etalab/licence-
ouverte/blob/master/LO.md)

  * CondÃ©rant : Direction de lâinformation lÃ©gale et administrative (Premier ministre) 
  * Date de mise Ã jour : VÃ©rifiÃ© le 23 Avril 2024 

##  License

[ license MIT
](https://github.com/typst/packages/raw/main/packages/preview/simple-
preavis/0.1.0/LICENSE)

[ Create project in app ](/app?template=simple-preavis&version=0.1.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/simple-preavis:0.1.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Mathias APARICIO ](https://github.com/mathias-aparicio/)
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     July 23, 2024 
First released:

     July 23, 2024 
Archive size:

     3.09 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/simple-preavis-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/mathias-aparicio/simple-preavis)
Categor  y  :

    

  * ![Office icon](/assets/icons/16-envelope.svg) [ Office ](https://typst.app/universe/search/?category=office)

###  Where to report issues?

This  template  is a project of  Mathias APARICIO  .  Report issues on  [
their repository ](https://github.com/mathias-aparicio/simple-preavis) .  You
can also try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  July 23, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

