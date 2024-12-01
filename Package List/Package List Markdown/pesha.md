![A preview of the pesha Typst
template.](https://packages.typst.org/preview/thumbnails/pesha-0.4.0-small.webp)

#  pesha

0.4.0

A clean and minimal template for your rÃ©sumÃ© or CV

[ Create project in app ](/app?template=pesha&version=0.4.0)

> Pesha (Urdu: Ù¾ÛØ´Û) is the Urdu term for occupation/profession. It is
> pronounced as pay-sha.

A clean and minimal template for your CV or rÃ©sumÃ©.

This template is inspired by Matthew Butterickâs excellent [ _Practical
Typography_ ](https://practicaltypography.com/) book.

See [ example.pdf ](https://github.com/talal/pesha/blob/main/example.pdf) or [
example-profile-picture.pdf
](https://github.com/talal/pesha/blob/main/example-profile-picture.pdf) file
to see how it looks.

##  Usage

You can use this template in the Typst web app by clicking âStart from
templateâ on the dashboard and searching for ` pesha ` .

Alternatively, you can use the CLI to kick this project off using the command

    
    
    typst init @preview/pesha
    

Typst will create a new directory with all the files needed to get you
started.

##  Configuration

This template exports the ` pesha ` function with the following named
arguments:

Argument  |  Type  |  Description   
---|---|---  
` name ` |  [ string ](https://typst.app/docs/reference/foundations/str/) |  A string to specify the authorâs name.   
` address ` |  [ string ](https://typst.app/docs/reference/foundations/str/) |  A string to specify the authorâs address.   
` contacts ` |  [ array ](https://typst.app/docs/reference/foundations/array/) |  An array of content to specify your contact information. E.g., phone number, email, LinkedIn, etc.   
` profile-picture ` |  [ content ](https://typst.app/docs/reference/foundations/content/) |  The result of a call to the [ image function ](https://typst.app/docs/reference/visualize/image/) or ` none ` . For best result, make sure that your image has an 1:1 aspect ratio.   
` paper-size ` |  [ string ](https://typst.app/docs/reference/foundations/str/) |  Specify a [ paper size string ](https://typst.app/docs/reference/layout/page#parameters-paper) to change the page size (default is ` a4 ` ).   
` footer-text ` |  [ content ](https://typst.app/docs/reference/foundations/content/) |  Content that will be prepended to the page numbering in the footer.   
` page-numbering-format ` |  [ string ](https://typst.app/docs/reference/foundations/str/) |  [ Pattern ](https://typst.app/docs/reference/model/numbering/#parameters-numbering) that will be used for displaying page numbering in the footer (default is ` 1 of 1 ` ).   
  
The function also accepts a single, positional argument for the body.

The template will initialize your package with a sample call to the ` pesha `
function in a show rule. If you, however, want to change an existing project
to use this template, you can add a show rule like this at the top of your
file:

    
    
    #import "@preview/pesha:0.4.0": *
    
    #show: pesha.with(
      name: "Max Mustermann",
      address: "5419 Hollywood Blvd Ste c731, Los Angeles, CA 90027",
      contacts: (
        [(323) 555 1435],
        [#link("mailto:max@mustermann.com")],
      ),
      paper-size: "us-letter",
      footer-text: [Mustermann RÃ©sumÃ© ---]
    )
    
    // Your content goes below.
    

[ Create project in app ](/app?template=pesha&version=0.4.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/pesha:0.4.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Muhammad Talal Anwar ](https://github.com/talal)
License:

     MIT-0 
Current version:

     0.4.0 
Last updated:

     October 24, 2024 
First released:

     March 23, 2024 
Minimum Typst version:

     0.12.0 
Archive size:

     4.24 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/pesha-0.4.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/talal/pesha)
Categor  y  :

    

  * ![CV icon](/assets/icons/16-user.svg) [ CV ](https://typst.app/universe/search/?category=cv)

###  Where to report issues?

This  template  is a project of  Muhammad Talal Anwar  .  Report issues on  [
their repository ](https://github.com/talal/pesha) .  You can also try to ask
for help with this  template  on the  [ Forum ](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.4.0  |  October 24, 2024   
[ 0.3.1 ](https://typst.app/universe/package/pesha/0.3.1/) |  April 19, 2024   
[ 0.3.0 ](https://typst.app/universe/package/pesha/0.3.0/) |  April 15, 2024   
[ 0.2.0 ](https://typst.app/universe/package/pesha/0.2.0/) |  April 12, 2024   
[ 0.1.0 ](https://typst.app/universe/package/pesha/0.1.0/) |  March 23, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

