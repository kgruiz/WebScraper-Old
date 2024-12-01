![A preview of the silky-letter-insa Typst
template.](https://packages.typst.org/preview/thumbnails/silky-letter-
insa-0.2.2-small.webp)

#  silky-letter-insa

0.2.2

A template made for letters and short documents of INSA, a French engineering
school.

[ Create project in app ](/app?template=silky-letter-insa&version=0.2.2)

Typst Template for short documents and letters for the french engineering
school INSA.

##  Example

By default, the template initializes with the ` insa-letter ` show rule, with
parameters that you must fill in by yourself.

Here is an example of filled template:

    
    
    #import "@preview/silky-letter-insa:0.2.2": *
    #show: doc => insa-letter(
      author: "Youenn LE JEUNE, Kelian NINET",
      insa: "rennes"
      doc)
    
    #v(15pt)
    #align(center, text(size: 22pt, weight: "bold", smallcaps("ProbabilitÃ©s - Annale 2022 (V1)")))
    #v(5pt)
    
    #set heading(numbering: "1.")
    #show heading.where(level: 2): it => [
      #counter(heading).display()
      #text(weight: "medium", style: "italic", size: 13pt, it.body)
    
    ]
    
    = Intervalle de confiance
    == Calculer sur lâÃ©chantillon une estimation de la moyenne.
    $ overline(x_n) = 1/n sum_(i=1)^n x_i = 1885 $
    
    == Calculer sur lâÃ©chantillon une estimation de la variance.
    $
    "Variance biaisÃ©e :" s^2 &= 1/n sum_(i=1)^n (x_i - overline(x_n))^2 = 218^2\
    "Variance corrigÃ©e :" s'^2 &=  n/(n-1) s^2 = 231^2
    $
    
    Le bon estimateur est le second.
    
    == Ãcrire le code R permettant dâÃ©valuer les deux bornes de lâintervalle de confiance du temps dâexÃ©cution avec une confiance de 92%.
    Nous sommes dans le cas d'une recherche de moyenne avec variance inconnue, l'intervalle sera donc
    $ [overline(X) + t_(n-1)(alpha/2) S'/sqrt(n), quad overline(X) + t_(n-1)(1 - alpha/2) S'/sqrt(n)] $
    En R, avec l'Ã©chantillon nommÃ© `data`, Ã§a donne
    ```R
    data = c(1653, 2059, 2281, 1813, 2180, 1721, 1857, 1677, 1728)
    moyenne = mean(data)
    s_prime = sqrt(var(data)) # car la variance de R est dÃ©jÃ  corrigÃ©e
    n = 9
    alpha = 0.08
    
    IC_min = moyenne + qt(alpha / 2, df = n - 1) * s_prime / sqrt(n)
    IC_max = moyenne + qt(1 - alpha / 2, df = n - 1) * s_prime / sqrt(n)
    ```
    
    Ici on a $[1730, 2040]$.
    

##  Fonts

The graphic charter recommends the fonts **League Spartan** for headings and
**Source Serif** for regular text. To have the best look, you should install
those fonts.

To behave correctly on computers without those specific fonts installed, this
template will automatically fallback to other similar fonts:

  * **League Spartan** -> **Arial** (approved by INSAâs graphic charter, by default in Windows) -> **Liberation Sans** (by default in most Linux) 
  * **Source Serif** -> **Source Serif 4** (downloadable for free) -> **Georgia** (approved by the graphic charter) -> **Linux Libertine** (default Typst font) 

###  Note on variable fonts

If you want to install those fonts on your computer, Typst might not recognize
them if you install their _Variable_ versions. You should install the static
versions ( **League Spartan Bold** and most versions of **Source Serif** ).

Keep an eye on [ the issue in Typst bug tracker
](https://github.com/typst/typst/issues/185) to see when variable fonts will
be used!

##  Notes

This template is being developed by Youenn LE JEUNE from the INSA de Rennes in
[ this repository ](https://github.com/SkytAsul/INSA-Typst-Template) .

For now it includes assets from the graphic charters of those INSAs:

  * Rennes ( ` rennes ` ) 
  * Hauts de France ( ` hdf ` ) 
  * Centre Val de Loire ( ` cvl ` ) Users from other INSAs can open a pull request on the repository with the assets for their INSA. 

If you have any other feature request, open an issue on the repository as
well.

##  License

The typst template is licensed under the [ MIT license
](https://github.com/SkytAsul/INSA-Typst-Template/blob/main/LICENSE) . This
does _not_ apply to the image assets. Those image files are property of Groupe
INSA.

##  Changelog

###  0.2.2

  * Added INSA CVL assets 

###  0.2.1

  * Added ` insa ` option 
  * Added INSA HdF assets 

[ Create project in app ](/app?template=silky-letter-insa&version=0.2.2)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/silky-letter-insa:0.2.2

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     SkytAsul 
License:

     MIT 
Current version:

     0.2.2 
Last updated:

     November 21, 2024 
First released:

     March 23, 2024 
Archive size:

     269 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/silky-letter-insa-0.2.2.tar.gz)
Repository:

     [ GitHub ](https://github.com/SkytAsul/INSA-Typst-Template)
Discipline  s  :

    

  * [ Engineering ](https://typst.app/universe/search/?discipline=engineering)
  * [ Computer Science ](https://typst.app/universe/search/?discipline=computer-science)
  * [ Mathematics ](https://typst.app/universe/search/?discipline=mathematics)
  * [ Physics ](https://typst.app/universe/search/?discipline=physics)

Categor  y  :

    

  * ![Office icon](/assets/icons/16-envelope.svg) [ Office ](https://typst.app/universe/search/?category=office)

###  Where to report issues?

This  template  is a project of  SkytAsul  .  Report issues on  [ their
repository ](https://github.com/SkytAsul/INSA-Typst-Template) .  You can also
try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.2  |  November 21, 2024   
[ 0.2.1 ](https://typst.app/universe/package/silky-letter-insa/0.2.1/) |  September 24, 2024   
[ 0.2.0 ](https://typst.app/universe/package/silky-letter-insa/0.2.0/) |  June 10, 2024   
[ 0.1.0 ](https://typst.app/universe/package/silky-letter-insa/0.1.0/) |  March 23, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

