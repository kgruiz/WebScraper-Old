![A preview of the letter-pro Typst
template.](https://packages.typst.org/preview/thumbnails/letter-
pro-3.0.0-small.webp)

#  letter-pro

3.0.0

DIN 5008 letter template for Typst.

[ Create project in app ](/app?template=letter-pro&version=3.0.0)

A template for creating business letters following the DIN 5008 standard.

##  Overview

typst-letter-pro provides a convenient and professional way to generate
business letters with a standardized layout. The template follows the
guidelines specified in the DIN 5008 standard, ensuring that your letters
adhere to the commonly accepted business communication practices.

The goal of typst-letter-pro is to simplify the process of creating business
letters while maintaining a clean and professional appearance. It offers
predefined sections for the sender and recipient information, subject, date,
header, footer and more.

##  [ Documentation ](https://raw.githubusercontent.com/wiki/Sematre/typst-
letter-pro/documentation-v3.0.0.pdf)

##  Example

Text source: [ Musterbrief Widerspruch gegen Einkommensteuerbescheid
](https://web.archive.org/web/20230927152049/https://www.deutschepost.de/de/b/briefvorlagen/beschwerden.html#Einspruch)

###  Preview ( [ PDF version
](https://raw.githubusercontent.com/wiki/Sematre/typst-letter-
pro/simple_letter.pdf) )

![Image of a simple letter created with typst-letter-
pro](https://github.com/typst/packages/raw/main/packages/preview/letter-
pro/3.0.0/template/thumbnail.png)

###  Code

    
    
    #import "@preview/letter-pro:3.0.0": letter-simple
    
    #set text(lang: "de")
    
    #show: letter-simple.with(
      sender: (
        name: "Anja Ahlsen",
        address: "Deutschherrenufer 28, 60528 Frankfurt",
        extra: [
          Telefon: #link("tel:+4915228817386")[+49 152 28817386]\
          E-Mail: #link("mailto:aahlsen@example.com")[aahlsen\@example.com]\
        ],
      ),
      
      annotations: [Einschreiben - RÃ¼ckschein],
      recipient: [
        Finanzamt Frankfurt\
        Einkommenssteuerstelle\
        GutleutstraÃe 5\
        60329 Frankfurt
      ],
      
      reference-signs: (
        ([Steuernummer], [333/24692/5775]),
      ),
      
      date: "12. November 2014",
      subject: "Einspruch gegen den ESt-Bescheid",
    )
    
    Sehr geehrte Damen und Herren,
    
    die von mir bei den Werbekosten geltend gemachte Abschreibung fÃ¼r den im
    vergangenen Jahr angeschafften Fotokopierer wurde von Ihnen nicht berÃ¼cksichtigt.
    Der Fotokopierer steht in meinem BÃ¼ro und wird von mir ausschlieÃlich zu beruflichen
    Zwecken verwendet.
    
    Ich lege deshalb Einspruch gegen den oben genannten Einkommensteuerbescheid ein
    und bitte Sie, die Abschreibung anzuerkennen.
    
    Anbei erhalten Sie eine Kopie der Rechnung des GerÃ¤tes.
    
    Mit freundlichen GrÃ¼Ãen
    #v(1cm)
    Anja Ahlsen
    
    #v(1fr)
    *Anlagen:*
    - Rechnung
    

##  Usage

###  Preview repository

Import the package in your document:

    
    
    #import "@preview/letter-pro:3.0.0": letter-simple
    

###  Local namespace

Download the repository to the local package namespace using Git:

    
    
    $ git clone -c advice.detachedHead=false https://github.com/Sematre/typst-letter-pro.git --depth 1 --branch v3.0.0 ~/.local/share/typst/packages/local/letter-pro/3.0.0
    

Then import the package in your document:

    
    
    #import "@local/letter-pro:3.0.0": letter-simple
    

###  Manual

Download the ` letter-pro-v3.0.0.typ ` file from the [ releases page
](https://github.com/Sematre/typst-letter-pro/releases) and place it next to
your document file, e.g., using _wget_ :

    
    
    $ wget https://github.com/Sematre/typst-letter-pro/releases/download/v3.0.0/letter-pro-v3.0.0.typ
    

Then import the package in your document:

    
    
    #import "letter-pro-v3.0.0.typ": letter-simple
    

##  Contributing

Contributions to typst-letter-pro are welcome! If you encounter any issues or
have suggestions for improvements, please open an issue on GitHub or submit a
pull request.

Before making any significant changes, please discuss your ideas with the
project maintainers to ensure they align with the projectâs goals and
direction.

##  Acknowledgments

This project is inspired by the following projects and resources:

  * [ Wikipedia / DIN 5008 ](https://de.wikipedia.org/wiki/DIN_5008)
  * [ Deutsche Post / DIN 5008 Vorlage ](https://web.archive.org/web/20240223035339/https://www.deutschepost.de/de/b/briefvorlagen/normbrief-din-5008-vorlage.html)
  * [ Deutsche Post / AutomationsfÃ¤hige Briefsendungen ](https://www.deutschepost.de/dam/dpag/images/P_p/printmailing/downloads/dp-automationsfaehige-briefsendungen-2024.pdf)
  * [ EDV Lehrgang / DIN-5008 ](https://www.edv-lehrgang.de/din-5008/)
  * [ Ludwig Austermann / typst-din-5008-letter ](https://github.com/ludwig-austermann/typst-din-5008-letter)
  * [ Pascal Huber / typst-letter-template ](https://github.com/pascal-huber/typst-letter-template)

##  License

Distributed under the **MIT License** . See ` LICENSE ` for more information.

[ Create project in app ](/app?template=letter-pro&version=3.0.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/letter-pro:3.0.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     Sematre 
License:

     MIT 
Current version:

     3.0.0 
Last updated:

     October 28, 2024 
First released:

     April 2, 2024 
Archive size:

     7.08 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/letter-pro-3.0.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/Sematre/typst-letter-pro)
Categor  y  :

    

  * ![Office icon](/assets/icons/16-envelope.svg) [ Office ](https://typst.app/universe/search/?category=office)

###  Where to report issues?

This  template  is a project of  Sematre  .  Report issues on  [ their
repository ](https://github.com/Sematre/typst-letter-pro) .  You can also try
to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
3.0.0  |  October 28, 2024   
[ 2.1.0 ](https://typst.app/universe/package/letter-pro/2.1.0/) |  April 2, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

