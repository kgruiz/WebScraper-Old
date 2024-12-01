![A preview of the imprecv Typst
template.](https://packages.typst.org/preview/thumbnails/imprecv-1.0.1-small.webp)

#  imprecv

1.0.1

A no-frills curriculum vitae (CV) template using Typst and YAML to version
control CV data.

[ Create project in app ](/app?template=imprecv&version=1.0.1)

[ ![Apache-2
License](https://img.shields.io/badge/Star%20Repo-%E2%AD%90-1081c2.svg)
](https://github.com/jskherman/imprecv/stargazers) [ ![Apache-2
License](https://img.shields.io/badge/license-Apache%202-brightgreen)
](https://github.com/typst/packages/raw/main/packages/preview/imprecv/1.0.1/LICENSE)
[ ![Release](https://img.shields.io/github/v/release/jskherman/imprecv)
](https://github.com/jskherman/imprecv/releases)

` imprecv ` is a no-frills curriculum vitae (CV) template for [ Typst
](https://github.com/typst/typst) that uses a YAML file for data input in
order to version control CV data easily.

This is based on the [ popular template on Reddit
](https://web.archive.org/https://old.reddit.com/r/jobs/comments/7y8k6p/im_an_exrecruiter_for_some_of_the_top_companies/)
by [ u/SheetsGiggles
](https://web.archive.org/https://old.reddit.com/user/SheetsGiggles) and the
recommendations of the [ r/EngineeringResumes wiki
](https://web.archive.org/https://old.reddit.com/r/EngineeringResumes/comments/m2cc65/new_and_improved_wiki)
.

##  Demo

See [ **example CV**
](https://github.com/jskherman/imprecv/releases/latest/download/example.pdf)
and [ @jskhermanâs CV ](https://go.jskherman.com/cv) :

![Sample CV Page
1](https://raw.githubusercontent.com/jskherman/imprecv/main/assets/thumbnail.1.png)
![Sample CV Page
2](https://raw.githubusercontent.com/jskherman/imprecv/main/assets/thumbnail.2.png)

##  Usage

This ` imprecv ` is intended to be used by importing the templateâs [
package entrypoint
](https://github.com/typst/packages/raw/main/packages/preview/imprecv/1.0.1/cv.typ)
from a âcontentâ file (see [ ` template.typ `
](https://github.com/typst/packages/raw/main/packages/preview/imprecv/1.0.1/template/template.typ)
as an example). In this content file, call the functions which apply document
styles, show CV components, and load CV data from a YAML file (see [ `
template.yml `
](https://github.com/typst/packages/raw/main/packages/preview/imprecv/1.0.1/template/template.yml)
as an example). Inside the content file you can modify several style variables
and even override existing function implementations to your own needs and
preferences.

###  With the [ Typst CLI ](https://github.com/typst/typst)

The recommended usage with the Typst CLI is by running the command ` typst
init @preview/imprecv:1.0.1 ` in your project directory. This will create a
new Typst project with the ` imprecv ` template and the necessary files to get
started. You can then run ` typst compile template.typ ` to compile your file
to PDF.

Take a look at the [ example setup ](https://github.com/jskherman/cv.typ-
example-repo) for ideas on how to get started. It includes a GitHub action
workflow to compile the Typst files to PDF and upload it to Cloudflare R2.

###  With [ typst.app ](https://typst.app/)

From the Dashboard, select âStart from templateâ, search and choose the `
imprecv ` template. From there, decide on a name for your project and click
âCreateâ. You can now edit the template files and preview the result on
the right.

You can also click the ` Create project in app ` button in [ Typst Universe
](https://typst.app/universe/package/imprecv) to create a new project with the
` imprecv ` template.

##  Contributing

[ Iâm ](https://github.com/jskherman) only doing programming as a hobby so
it might take me a while to respond to issues and pull requests. If you would
like to contribute to this project, I would be happy to review your pull
requests when I can. Thank you for your understanding.

[ Create project in app ](/app?template=imprecv&version=1.0.1)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/imprecv:1.0.1

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Je Sian Keith Herman ](https://jskherman.com)
License:

     Apache-2.0 
Current version:

     1.0.1 
Last updated:

     June 17, 2024 
First released:

     June 3, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     51.6 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/imprecv-1.0.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/jskherman/imprecv)
Categor  y  :

    

  * ![CV icon](/assets/icons/16-user.svg) [ CV ](https://typst.app/universe/search/?category=cv)

###  Where to report issues?

This  template  is a project of  Je Sian Keith Herman  .  Report issues on  [
their repository ](https://github.com/jskherman/imprecv) .  You can also try
to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
1.0.1  |  June 17, 2024   
[ 1.0.0 ](https://typst.app/universe/package/imprecv/1.0.0/) |  June 3, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

