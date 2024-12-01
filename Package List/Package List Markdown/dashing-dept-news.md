![A preview of the dashing-dept-news Typst
template.](https://packages.typst.org/preview/thumbnails/dashing-dept-
news-0.1.1-small.webp)

#  dashing-dept-news

0.1.1

Share the news with bold graphic design and a modern layout

Featured  Template

[ Create project in app ](/app?template=dashing-dept-news&version=0.1.1)

A fun newsletter layout for departmental news. The template contains a hero
image, a main column, and a margin with secondary articles.

Place content in the sidebar with the ` article ` function, and use the cool
customized ` blockquote ` s and ` figure ` s!

##  Usage

You can use this template in the Typst web app by clicking âStart from
templateâ on the dashboard and searching for ` dashing-dept-news ` .

Alternatively, you can use the CLI to kick this project off using the command

    
    
    typst init @preview/dashing-dept-news
    

Typst will create a new directory with all the files needed to get you
started.

##  Configuration

This template exports the ` newsletter ` function with the following named
arguments:

  * ` title ` : The newsletterâs title as content. 
  * ` edition ` : The edition of the newsletter as content or ` none ` . This is displayed at the top of the sidebar. 
  * ` hero-image ` : A dictionary with the keys ` image ` and ` caption ` or ` none ` . Image is content with the hero image while ` caption ` is content that is displayed to the right of the image. 
  * ` publication-info ` : More information about the publication as content or ` none ` . It is displayed at the end of the document. 

The function also accepts a single, positional argument for the body of the
newsletterâs main column and exports the ` article ` function accepting a
single content argument to populate the sidebar.

The template will initialize your package with a sample call to the `
newsletter ` function in a show rule. If you, however, want to change an
existing project to use this template, you can add a show rule like this at
the top of your file:

    
    
    #import "@preview/dashing-dept-news:0.1.1": newsletter, article
    #show: newsletter.with(
      title: [Chemistry Department],
      edition: [
        March 18th, 2023 \
        Purview College
      ],
      hero-image: (
        image: image("newsletter-cover.jpg"),
        caption: [Award-wining science],
      ),
      publication-info: [
        The Dean of the Department of Chemistry. \
        Purview College, 17 Earlmeyer D, Exampleville, TN 59341. \
        #link("mailto:newsletter@chem.purview.edu")
      ],
    )
    
    // Your content goes here. Use `article` to populate the sidebar and `blockquote` for cool pull quotes.
    

[ Create project in app ](/app?template=dashing-dept-news&version=0.1.1)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/dashing-dept-news:0.1.1

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Typst GmbH ](https://typst.app)
License:

     MIT-0 
Current version:

     0.1.1 
Last updated:

     October 29, 2024 
First released:

     March 6, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     125 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/dashing-dept-news-0.1.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/typst/templates)
Categor  y  :

    

  * ![Office icon](/assets/icons/16-envelope.svg) [ Office ](https://typst.app/universe/search/?category=office)

###  Where to report issues?

This  template  is a project of  Typst GmbH  .  Report issues on  [ their
repository ](https://github.com/typst/templates) .  You can also try to ask
for help with this  template  on the  [ Forum ](https://forum.typst.app) .

###  Version history

Version  |  Release Date   
---|---  
0.1.1  |  October 29, 2024   
[ 0.1.0 ](https://typst.app/universe/package/dashing-dept-news/0.1.0/) |  March 6, 2024 

