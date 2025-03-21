#  big-todo

0.2.0

Package to insert clear TODOs, optionally with an outline.

Create clearly visible TODOs in your document, and add an outline to keep
track of them.

##  Usage

Import the package

    
    
    import "@preview/big-todo:0.2.0": *
    

And use the ` todo ` function to create a TODO, and the put the ` todo_outline
` somewhere to keep track of them.

    
    
    = Pirates
    
    Pirates, a term often associated with seafaring outlaws, have left an indelible mark on world history. The term conjures images of Jolly Roger flags, eye patches, and treasure chests, but the reality of piracy is more complex and varied than its romanticized image suggests. Historically, pirates were motivated by wealth, adventure, or desperation and were not confined to the seas of the Caribbean but roamed the waters of the Mediterranean, the South China Sea, and the Atlantic Ocean. Pirate societies were notorious for their flouting of societal norms, and many pirate ships operated under democratic principles, offering crew members an equal share in the spoils and voting rights on important decisions. To get a better picture, it's worth looking into how the social structures onboard these pirate vessels contrasted with those on merchant or navy vessels of the same era. #todo([Research and provide more _detail_ on #underline[pirate ship] governance and societal norms ])
    
    Pirates' influence on history extends beyond their shipboard societies, however. Many pirates played important roles in global trade, war, and politics, often acting as privateers for countries at war. At times, they acted as de facto naval forces, protecting their patron countries' interests or disrupting those of their enemies. During the Golden Age of Piracy, roughly from 1650 to 1720, pirates were a major force in the Atlantic and the Caribbean #todo("other seas?", inline: true), attacking the heavily laden ships of the Spanish Empire and others. They have also impacted popular culture, inspiring countless books, movies, and games. But their story is not finished. Modern-day piracy, especially off the coast of Somalia, has become a significant issue in international shipping.
    
    #todo_outline
    

![Screenshot of above Example](https://user-
images.githubusercontent.com/64754924/250580952-e427a139-1c6e-4eb6-9eee-c07d98875c88.png)

The ` todo ` function has the follwin parameters and defaults:

Parameter  |  Default  |  Type  |  Description   
---|---|---|---  
` body ` |  /  |  Content  |  Content of the todo   
` inline ` |  false  |  Boolean  |  If true, the todo will be inline, otherwise it will be block   
` big_text ` |  40pt  |  Length  |  Size of the ` ! TODO ! ` text   
` small_text ` |  15pt  |  Length  |  Size of the content   
` gap ` |  2mm  |  Length  |  Gap between the ` ! TODO ! ` text and the content   
  
###  How to add

Copy this into your project and use the import as  ` big-todo `

    
    
    #import "@preview/big-todo:0.2.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Raik Rohde 
License:

     Unlicense 
Current version:

     0.2.0 
Last updated:

     July 4, 2023 
First released:

     July 4, 2023 
Archive size:

     2.81 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/big-todo-0.2.0.tar.gz)

###  Where to report issues?

This  package  is a project of  Raik Rohde  .  You can also try to ask for
help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.0  |  July 4, 2023   
[ 0.1.0 ](https://typst.app/universe/package/big-todo/0.1.0/) |  July 7, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

