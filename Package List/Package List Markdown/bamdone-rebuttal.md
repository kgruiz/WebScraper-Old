![A preview of the bamdone-rebuttal Typst
template.](https://packages.typst.org/preview/thumbnails/bamdone-
rebuttal-0.1.1-small.webp)

#  bamdone-rebuttal

0.1.1

Rebuttal/response letter template that allows authors to respond to feedback
given by reviewers in a peer-review process on a point-by-point basis.

Featured  Template

[ Create project in app ](/app?template=bamdone-rebuttal&version=0.1.1)

This is a Typst template for a rebuttal/response letter. It allows authors to
respond to feedback given by reviewers in a peer-review process on a point-by-
point basis. This template is based heavily on the LaTeX template from Zenke
Lab (see [ here ](https://zenkelab.org/resources/latex-rebuttal-response-to-
reviewers-template/) ).

##  Usage

You can use this template in the Typst web app by clicking âStart from
templateâ on the dashboard and searching for ` bamdone-rebuttal ` .

Alternatively, you can use the CLI to kick this project off using the command

    
    
    typst init @preview/bamdone-rebuttal
    

Typst will create a new directory with all the files needed to get you
started.

##  Configuration

This template exports the ` rebuttal ` function with the following named
arguments:

  * ` title ` : (content), something like âResponse Letterâ (the default) or âRebuttalâ. 
  * ` authors ` : (content), list of author names the top of the first column in boldface. 
  * ` date ` : (content), defaults to ` datetime.today().display() `
  * ` paper-size ` : Defaults to ` us-letter ` . Specify a [ paper size string ](https://typst.app/docs/reference/layout/page/#parameters-paper) to change the page format. Specifying this will configure numeric, IEEE-style citations. 

The function also accepts a single, positional argument for the body of the
letter.

In addition, the template exports the ` configure ` function which accepts the
following named arguments corresponding to the text color of various pieces of
the letter:

  * ` point-color ` : defaults to ` blue.darken(30%) ` , the text color for reviewersâ points 
  * ` response-color ` : defaults to ` black ` , the text color for the authorsâ responses 
  * ` new-color ` : defaults to ` green.darken(30%) ` , the text color for changes/additions to the manuscript (i.e., within a ` quote ` block to show whatâs changed from the initial submission) 

The template will initialize your package with a sample call to the ` rebuttal
` function in a show rule.

    
    
    // Optional color configuration
    #let (point, response, new) = configure(
      point-color: blue.darken(30%),
      response-color: black,
      new-color: green.darken(30%)
    )
    
    // Setup the rebuttal
    #show: rebuttal.with(
      authors: [First A. Author and Second B. Author],
      // date: ,
      // paper-size: ,
    )
    
    // Your content goes below
    We thank the reviewers...
    

[ Create project in app ](/app?template=bamdone-rebuttal&version=0.1.1)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/bamdone-rebuttal:0.1.1

![Copy](/assets/icons/16-copy.svg)

###  About

Author  s  :

     [ Alexander Von Moll ](https://avonmoll.github.io) & [ Isaac Weintraub ](https://wwww.isaacew.com)
License:

     MIT-0 
Current version:

     0.1.1 
Last updated:

     November 12, 2024 
First released:

     May 16, 2024 
Minimum Typst version:

     0.12.0 
Archive size:

     4.26 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/bamdone-rebuttal-0.1.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/avonmoll/bamdone-rebuttal)
Categor  ies  :

    

  * ![Office icon](/assets/icons/16-envelope.svg) [ Office ](https://typst.app/universe/search/?category=office)
  * ![Report icon](/assets/icons/16-speak.svg) [ Report ](https://typst.app/universe/search/?category=report)

###  Where to report issues?

This  template  is a project of  Alexander Von Moll and Isaac Weintraub  .
Report issues on  [ their repository ](https://github.com/avonmoll/bamdone-
rebuttal) .  You can also try to ask for help with this  template  on the  [
Forum ](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.1  |  November 12, 2024   
[ 0.1.0 ](https://typst.app/universe/package/bamdone-rebuttal/0.1.0/) |  May 16, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

