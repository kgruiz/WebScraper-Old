![A preview of the vercanard Typst
template.](https://packages.typst.org/preview/thumbnails/vercanard-1.0.2-small.webp)

#  vercanard

1.0.2

A colorful CV template

[ Create project in app ](/app?template=vercanard&version=1.0.2)

A colorful resume template for Typst.

The [ demo
](https://github.com/typst/packages/raw/main/packages/preview/vercanard/1.0.2/template/main.typ)
file showcases what it is possible to do. You can see the result in [ the
corresponding PDF
](https://github.com/typst/packages/raw/main/packages/preview/vercanard/1.0.2/demo.pdf)
.

First of all, copy the template to your Typst project, and import it.

    
    
    #import "@preview/vercanard:1.0.2": *
    

Then, call the ` resume ` in a global ` show ` rule function to use it. This
function takes a few arguments that we explain in comments below:

    
    
    #show: resume.with(
      // The title of your resume, generally your name
      name: "Your name",
      // The subtitle, which is the position you are looking for most of the time
      title: "What you are looking for",
      // The accent color to use (here a vibrant yellow)
      accent-color: rgb("f3bc54"),
      // the margins (only used for top and left page margins actually,
      // but the other ones are proportional)
      margin: 2.6cm,
      // The content to put in the right aside block
      aside: [
        = Contact
    
        // lists in the aside are right aligned
        - #link("mailto:example@example.org")
        - +33 6 66 66 66 66
      ]
    )
    
    // And finally the main body of your resume can come here
    

When writing the body, you can use level-1 headings as section titles, and
format an entry with the ` entry ` function (that takes three content blocks
as arguments, for title, description and details).

    
    
    = Personal projects
    
    #entry[Vercanard][A resume template for Typst][2023 â Typst]
    

This template is under the GPLv3 licence, but resume built using it are not
considered binary derivatives, only output from another program, so you can
keep full copyright on them and chose not to licence them under a free
licence.

[ Create project in app ](/app?template=vercanard&version=1.0.2)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/vercanard:1.0.2

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Ana Gelez ](https://ana.gelez.xyz)
License:

     GPL-3.0 
Current version:

     1.0.2 
Last updated:

     October 21, 2024 
First released:

     April 2, 2024 
Archive size:

     14.3 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/vercanard-1.0.2.tar.gz)
Repository:

     [ GitHub ](https://github.com/elegaanz/vercanard)
Categor  y  :

    

  * ![CV icon](/assets/icons/16-user.svg) [ CV ](https://typst.app/universe/search/?category=cv)

###  Where to report issues?

This  template  is a project of  Ana Gelez  .  Report issues on  [ their
repository ](https://github.com/elegaanz/vercanard) .  You can also try to ask
for help with this  template  on the  [ Forum ](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
1.0.2  |  October 21, 2024   
[ 1.0.1 ](https://typst.app/universe/package/vercanard/1.0.1/) |  May 23, 2024   
[ 1.0.0 ](https://typst.app/universe/package/vercanard/1.0.0/) |  April 2, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

