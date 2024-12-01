![A preview of the caidan Typst
template.](https://packages.typst.org/preview/thumbnails/caidan-0.1.0-small.webp)

#  caidan

0.1.0

A clean and minimal food menu template

[ Create project in app ](/app?template=caidan&version=0.1.0)

Caidan (èå in Chinese, /cÃ i dÄn/, meaning food menu) is a clean and
minimal food menu template.

See the [ example.pdf
](https://github.com/cu1ch3n/caidan/blob/main/example.pdf) file to see how it
looks. Additionally, [ cu1ch3n/menu ](https://github.com/cu1ch3n/menu) serves
as a practical example project utilizing this template.

##  Usage

Ensure that [ WebOMints GD
](http://www.galapagosdesign.com/original/webomints.htm) , [ LXGW WenKai
](https://github.com/lxgw/LxgwWenKai) , and [ Ysabeau Infant
](https://fonts.google.com/specimen/Ysabeau+Infant) fonts are installed first.
The required fonts are provided in [ fonts
](https://github.com/cu1ch3n/caidan/tree/main/fonts) .

To use this template with typst.app, you may upload the required fonts
manually ( **Note** : [ LXGW WenKai ](https://github.com/lxgw/LxgwWenKai) may
be too large to upload onto typst.app).

##  Configuration

This template includes the ` caidan ` function, which comes with several
configurable named arguments:

Argument  |  Default Value  |  Type  |  Description   
---|---|---|---  
` title ` |  ` none ` |  [ content ](https://typst.app/docs/reference/foundations/content/) |  The title for your menu   
` cover_image ` |  ` none ` |  [ content ](https://typst.app/docs/reference/foundations/content/) |  The image on the menuâs cover page   
` update_date ` |  ` none ` |  [ datetime ](https://typst.app/docs/reference/foundations/datetime/) |  This date will be displayed on the cover page in both Chinese and English   
` page_height ` |  ` 595.28pt ` |  [ length ](https://typst.app/docs/reference/layout/length/) |  Page height of your menu   
` page_width ` |  ` 841.89pt ` |  [ length ](https://typst.app/docs/reference/layout/length/) |  Page width of your menu   
` num_columns ` |  ` 3 ` |  [ int ](https://typst.app/docs/reference/foundations/int/) |  The number of columns per page   
  
The function also accepts a single, positional argument for the body.

##  Example

    
    
    #import "@preview/caidan:0.1.0": *
    
    #show: caidan.with(
      title: [#en_text(22pt, fill: nord0)[Chen's Private Cuisine]],
      cover_image: image("cover.png"),
      update_date: datetime.today(),
      num_columns: 3,
    )
    
    #cuisine[é²è][Shandong Cuisine]
    - #item[è±ç§æµ·å][Braised Sea Cucumber w/ Scallions]
    - #item[è±ççè][Scallion Beef Stir-Fry]
    - #item[éæºç½è][Napa Cabbage Stir-Fry w/ Vinegar]
    
    #cuisine[å·è][Sichuan Cuisine]
    - #item[å®«ä¿é¸¡ä¸][Gong Bao Chicken]
    - #item[åéè][Twice-cooked pork]
    - #item[éº»å©è±è][Mapo Tofu]
    

[ Create project in app ](/app?template=caidan&version=0.1.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/caidan:0.1.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Chen Cui ](https://github.com/cu1ch3n)
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     April 3, 2024 
First released:

     April 3, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     360 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/caidan-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/cu1ch3n/caidan)
Categor  y  :

    

  * ![Flyer icon](/assets/icons/16-map.svg) [ Flyer ](https://typst.app/universe/search/?category=flyer)

###  Where to report issues?

This  template  is a project of  Chen Cui  .  Report issues on  [ their
repository ](https://github.com/cu1ch3n/caidan) .  You can also try to ask for
help with this  template  on the  [ Forum ](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  April 3, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

