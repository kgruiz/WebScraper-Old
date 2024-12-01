![A preview of the orange-book Typst
template.](https://packages.typst.org/preview/thumbnails/orange-
book-0.4.0-small.webp)

#  orange-book

0.4.0

A book template inspired by The Legrand Orange Book of Mathias Legrand and Vel

[ Create project in app ](/app?template=orange-book&version=0.4.0)

A book template inspired by The Legrand Orange Book of Mathias Legrand and Vel
[ https://www.latextemplates.com/template/legrand-orange-book
](https://www.latextemplates.com/template/legrand-orange-book) .

##  Usage

You can use this template in the Typst web app by clicking âStart from
templateâ on the dashboard and searching for ` orange-book ` .

Alternatively, you can use the CLI to kick this project off using the command

    
    
    typst init @preview/orange-book
    

Typst will create a new directory with all the files needed to get you
started.

##  Configuration

This template exports the ` book ` function with the following named
arguments:

  * ` title ` : The bookâs title as content. 
  * ` subtitle ` : The bookâs subtitle as content. 
  * ` author ` : Content or an array of content to specify the author. 
  * ` paper-size ` : Defaults to ` a4 ` . Specify a [ paper size string ](https://typst.app/docs/reference/layout/page/#parameters-paper) to change the page format. 
  * ` copyright ` : Details about the copyright or ` none ` . 
  * ` lowercase-references ` : True to have references in lowercase (Eg. table 1.1) 

The function also accepts a single, positional argument for the body of the
book.

The template will initialize your package with a sample call to the ` book `
function in a show rule. If you, however, want to change an existing project
to use this template, you can add a show rule like this at the top of your
file:

    
    
    #import "@preview/orange-book:0.1.0": book
    
    #show: book.with(
      title: "Exploring the Physical Manifestation of Humanityâs Subconscious Desires",
      subtitle: "A Practical Guide",
      date: "Anno scolastico 2023-2024",
      author: "Goro Akechi",
      mainColor: rgb("#F36619"),
      lang: "en",
      cover: image("./background.svg"),
      imageIndex: image("./orange1.jpg"),
      listOfFigureTitle: "List of Figures",
      listOfTableTitle: "List of Tables",
      supplementChapter: "Chapter",
      supplementPart: "Part",
      part_style: 0,
      copyright: [
        Copyright Â© 2023 Flavio Barisi
    
        PUBLISHED BY PUBLISHER
    
        #link("https://github.com/flavio20002/typst-orange-template", "TEMPLATE-WEBSITE")
    
        Licensed under the Apache 2.0 License (the âLicenseâ).
        You may not use this file except in compliance with the License. You may obtain a copy of
        the License at https://www.apache.org/licenses/LICENSE-2.0. Unless required by
        applicable law or agreed to in writing, software distributed under the License is distributed on an
        âAS ISâ BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
        See the License for the specific language governing permissions and limitations under the License.
    
        _First printing, July 2023_
      ],
      lowercase-references: false
    )
    
    // Your content goes below.
    

[ Create project in app ](/app?template=orange-book&version=0.4.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/orange-book:0.4.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     Flavio Barisi 
License:

     MIT-0 
Current version:

     0.4.0 
Last updated:

     November 4, 2024 
First released:

     August 26, 2024 
Minimum Typst version:

     0.12.0 
Archive size:

     661 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/orange-book-0.4.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/flavio20002/typst-orange-template)
Categor  y  :

    

  * ![Book icon](/assets/icons/16-docs.svg) [ Book ](https://typst.app/universe/search/?category=book)

###  Where to report issues?

This  template  is a project of  Flavio Barisi  .  Report issues on  [ their
repository ](https://github.com/flavio20002/typst-orange-template) .  You can
also try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.4.0  |  November 4, 2024   
[ 0.3.0 ](https://typst.app/universe/package/orange-book/0.3.0/) |  October 22, 2024   
[ 0.2.0 ](https://typst.app/universe/package/orange-book/0.2.0/) |  October 3, 2024   
[ 0.1.0 ](https://typst.app/universe/package/orange-book/0.1.0/) |  August 26, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

