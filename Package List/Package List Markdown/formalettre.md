![A preview of the formalettre Typst
template.](https://packages.typst.org/preview/thumbnails/formalettre-0.1.1-small.webp)

#  formalettre

0.1.1

French formal letter template

[ Create project in app ](/app?template=formalettre&version=0.1.1)

Un template destinÃ© Ã Ã©crire des lettres selon une typographie francophone,
et inspirÃ© du package LaTeX [ lettre ](https://ctan.org/pkg/lettre) .

Pour utiliser le template, il est possible de recopier le fichier exemple.

##  Documentation des variables

###  ExpÃ©diteur

  * ` expediteur.nom ` : nom de famille de lâexpÃ©diteurÂ·ice, **requis** . 
  * ` expediteur.prenom ` : prÃ©nom de lâexpÃ©diteurÂ·ice, **requis** . 
  * ` expediteur.voie ` : numÃ©ro de voie et nom de la voie, **requis** . 
  * ` expediteur.complement_adresse ` : la seconde ligne parfois requise dans une adresse, _facultatif_ . 
  * ` expediteur.code_postal ` : code postal, **requis** . 
  * ` expediteur.commune ` : commune de lâexpÃ©diteurÂ·ice, **requis** . 
  * ` expediteur.telephone ` : numÃ©ro de tÃ©lÃ©phone. Le format est libre et lâaffichage en police mono. _Facultatif_ . 
  * ` expediteur.email ` : lâemail fourni sera affichÃ© en police mono et cliquable. _Facultatif_
  * ` expediteur.signature ` : peut Ãªtre ` true ` ou ` false ` , par dÃ©faut ` false ` . PrÃ©vient le paquet quâune image de signature sera ajoutÃ©e, de maniÃ¨re Ã organiser la superposition de la signature et du nom apposÃ© en fin de courrier. 

##  Destinataire

  * ` destinataire.titre ` : titre du ou de la destinataire, **requis** . 
  * ` destinataire.voie ` : numÃ©ro de voie et nom de la voie, **requis** . 
  * ` destinataire.complement_adresse ` : la seconde ligne parfois requise dans une adresse, _facultatif_ . 
  * ` destinataire.code_postal ` : code postal, **requis** . 
  * ` destinataire.commune ` : commune de lâexpÃ©diteurÂ·ice, **requis** . 
  * ` destinataire.sc ` : si le courrier est envoyÃ© âsous couvertâ dâune hiÃ©rarchie intermÃ©diaire, spÃ©cifier cette autoritÃ©. _Facultatif_ . 

##  Lettre

  * ` objet ` : lâobjet du courrier, **requis** . 
  * ` date ` : date Ã indiquer sous forme libre, **requis** . 
  * ` lieu ` : lieu de rÃ©daction, **requis** . 
  * ` pj ` : permet dâindiquer la prÃ©sence de piÃ¨ces jointes. Il est possible dâen faire une liste, par exemple : 

    
    
    pj: [
    	+ Dossier nÂ°1
    	+ Dossier nÂ° 2
    	+ Attestation
    	]
    

Le texte de la lettre proprement dite se situe aprÃ¨s la configuration de la
lettre.

Ã la fin de la lettre, il est possible de dÃ©commenter les deux derniÃ¨res
lignes pour ajouter une image en guise de signature. Veillez dans ce cas Ã
positionner la varibale ` expediteur.signature ` Ã ` true ` .

[ Create project in app ](/app?template=formalettre&version=0.1.1)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/formalettre:0.1.1

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     @Brndan 
License:

     BSD-3-Clause 
Current version:

     0.1.1 
Last updated:

     October 23, 2024 
First released:

     October 22, 2024 
Archive size:

     3.20 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/formalettre-0.1.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/Brndan/lettre)
Categor  y  :

    

  * ![Office icon](/assets/icons/16-envelope.svg) [ Office ](https://typst.app/universe/search/?category=office)

###  Where to report issues?

This  template  is a project of  @Brndan  .  Report issues on  [ their
repository ](https://github.com/Brndan/lettre) .  You can also try to ask for
help with this  template  on the  [ Forum ](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.1  |  October 23, 2024   
[ 0.1.0 ](https://typst.app/universe/package/formalettre/0.1.0/) |  October 22, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

