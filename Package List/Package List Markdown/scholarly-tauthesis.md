![A preview of the scholarly-tauthesis Typst
template.](https://packages.typst.org/preview/thumbnails/scholarly-
tauthesis-0.9.0-small.webp)

#  scholarly-tauthesis

0.9.0

A template for writing Tampere University theses.

[ Create project in app ](/app?template=scholarly-tauthesis&version=0.9.0)

This is a TAU thesis template written in the [ ` typst `
](https://github.com/typst/typst) typesetting language, a potential successor
to LaTeÎ§. The version of typst used to test this template is [ ` 0.12.0 `
](https://github.com/typst/typst/releases/tag/v0.12.0) .

##  Using the template on typst.app

This template is also available on [ Typst Universe
](https://typst.app/universe) as [ ` scholarly-tauthesis `
](https://typst.app/universe/package/scholarly-tauthesis) . Simply create an
account on [ https://typst.app/ ](https://typst.app/) and start a new `
scholarly-tauthesis ` project by clicking on **Start from template** and
searching for **scholarly-tauthesis** .

If you have initialized your project with an older stable version of this
template and wish to upgrade to a newer release, the simplest way to do it is
to change the value of ` $VERSION ` â¥ ` 0.9.0 ` in the import statements

    
    
    #import "@preview/scholarly-tauthesis:$VERSION" as tauthesis
    

to correspond to a newer released version. Alternatively, you could download
the ` tauthesis.typ ` file from the [ thesis template repository
](https://gitlab.com/tuni-official/thesis-templates/tau-typst-thesis-template)
, and upload it into you project on [ https://typst.app/ ](https://typst.app/)
. Then use

    
    
    #import "path/to/tauthesis.typ" as tauthesis
    

instead of

    
    
    #import "@preview/scholarly-tauthesis:$VERSION" as tauthesis
    

to import the ` tauthesis ` module.

###  Note

Versions of this template before 0.9.0 do not actually work with typst.app due
to a packaging issue.

##  Local installation

If [ Typst Universe ](https://typst.app/universe) is online, this template
will be downloaded automatically to

    
    
    $CACHEDIR/typst/packages/preview/scholarly-tauthesis/$VERSION/
    

when one runs the command

    
    
    typst init @preview/scholarly-tauthesis:$VERSION mythesis
    

Here ` $VERSION ` should be â¥ 0.9.0. The value ` $CACHEDIR ` for your OS can
be discovered from [ https://docs.rs/dirs/latest/dirs/fn.cache_dir.html
](https://docs.rs/dirs/latest/dirs/fn.cache_dir.html) .

For a manual installation, download the contents of this repository via Git or
as a ZIP file from the template [ tags ](https://gitlab.com/tuni-
official/thesis-templates/tau-typst-thesis-template/-/tags) page. Then, make a
symbolic link

    
    
    $DATADIR/typst/packages/preview/scholarly-tauthesis/$VERSION/ â /path/to/root/of/tauthesis/
    

so that a local installation of ` typst ` can discover the ` tauthesis.typ `
file no matter where you are running it from. To find out the value ` $DATADIR
` for your operating system, see [
https://docs.rs/dirs/latest/dirs/fn.data_dir.html
](https://docs.rs/dirs/latest/dirs/fn.data_dir.html) . The value ` $VERSION `
is the version ` A.B.C ` â¥ ` 0.9.0 ` of this template you wish to use.

Once the package has been installed, the command

    
    
    typst init @preview/scholarly-tauthesis:$VERSION mythesis
    

creates a folder ` mythesis ` with the template files in place. Simply make
the ` mythesis ` folder you current working directory and run

    
    
    typst compile main.typ
    

in the shell of your choice to compile the document from scratch.
Alternatively, type

    
    
    typst watch main.typ &> typst.log &
    

to have a [ ` typst ` ](https://github.com/typst/typst) process watch the file
for changes and compile it when a file is changed. Possible error messages can
then be viewed by checking the contents of the mentioned file ` typst.log ` .

This template can also be uploaded to the typst online editor at [
https://typst.app/ ](https://typst.app/) . However, the file paths related to
the ` tauthesis ` file will need to be changed if this is done manually. See
the tutorial at [ https://typst.app/docs/tutorial/
](https://typst.app/docs/tutorial/) to learn the basics of the language. Some
examples are also given in the template itself.

##  Archiving the final version of your work

Before submitting your thesis to the university archives, it needs to be
converted to PDF/A format. Typst versions â¥ 0.12.0 should support the
creation of PDF/A-2b files, when run with the command

    
    
    typst compile --pdf-standard a-2b template/main.typ
    

If a verification program such as [ veraPDF
](https://docs.verapdf.org/install/) still complains that the file `
template/main.pdf ` does not conform to the standard, the Muuntaja-service of
Tampere University should be used to do the final conversion. See the related
instructions ( [ link ](https://libguides.tuni.fi/opinnaytteet/pdfa) ) for how
to do it. Basically it boils down to feeding your compiled PDF document to the
converter at [ https://muuntaja.tuni.fi ](https://muuntaja.tuni.fi/) .
**Remember to check that the output of the converter is not corrupted, before
submitting your thesis to the archives.**

##  Usage

You can either write your entire _main matter_ in the [ ` main.typ ` ](https://github.com/typst/packages/raw/main/packages/preview/scholarly-tauthesis/0.9.0/template/main.typ) file, or more preferrably, split it into multiple chapter-specific files and place those in the [ ` contents/ ` ](https://github.com/typst/packages/raw/main/packages/preview/scholarly-tauthesis/0.9.0/template/content) folder, which this template tries to demonstrate. If you choose to write your own commands (functions) in the [ ` preamble.typ ` ](https://github.com/typst/packages/raw/main/packages/preview/scholarly-tauthesis/0.9.0/template/preamble.typ) file, this needs to be imported at the start of each chapter you plan to use the commands in. Sections that come before the main matter, like the Finnish and English abstracts ( [ ` tiivistelmÃ¤.typ ` ](https://github.com/typst/packages/raw/main/packages/preview/scholarly-tauthesis/0.9.0/template/content/tiivistelm%C3%A4.typ) | [ ` abstract.typ ` ](https://github.com/typst/packages/raw/main/packages/preview/scholarly-tauthesis/0.9.0/template/content/abstract.typ) ) and [ ` preface.typ ` ](https://github.com/typst/packages/raw/main/packages/preview/scholarly-tauthesis/0.9.0/template/content/preface.typ) must _not_ be removed from the [ ` contents ` ](https://github.com/typst/packages/raw/main/packages/preview/scholarly-tauthesis/0.9.0/template/content) folder, as the automation supposes that they are located there. 

You should probably _not_ modify the file [ ` tauthesis.typ `
](https://github.com/typst/packages/raw/main/packages/preview/scholarly-
tauthesis/0.9.0/tauthesis.typ) , unless there is a bug that needs fixing right
now, and not when the maintainer of this project manages to find the time to
do it.

##  Contributing

Issues may be created in the issue tracker on the [ template GitLab repository
](https://gitlab.com/tuni-official/thesis-templates/tau-typst-thesis-template)
, if one has a GitLab account. Merge requests may also be performed after
GitLab account creation, and forking the project. See GitLabâs documentation
on this to find out how to do it [ link
](https://docs.gitlab.com/ee/user/project/repository/forking_workflow.html) .

##  License

This project itself uses the MIT license. See the [ LICENSE
](https://github.com/typst/packages/raw/main/packages/preview/scholarly-
tauthesis/0.9.0/LICENSE) file for details.

[ Create project in app ](/app?template=scholarly-tauthesis&version=0.9.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/scholarly-tauthesis:0.9.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Santtu SÃ¶derholm ](mailto:santtu.soderholm@tuni.fi)
License:

     MIT 
Current version:

     0.9.0 
Last updated:

     November 12, 2024 
First released:

     April 9, 2024 
Minimum Typst version:

     0.12.0 
Archive size:

     36.4 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/scholarly-tauthesis-0.9.0.tar.gz)
Repository:

     [ GitLab ](https://gitlab.com/tuni-official/thesis-templates/tau-typst-thesis-template)
Discipline  :

    

  * [ Education ](https://typst.app/universe/search/?discipline=education)

Categor  y  :

    

  * ![Thesis icon](/assets/icons/16-mortarboard.svg) [ Thesis ](https://typst.app/universe/search/?category=thesis)

###  Where to report issues?

This  template  is a project of  Santtu SÃ¶derholm  .  Report issues on  [
their repository ](https://gitlab.com/tuni-official/thesis-templates/tau-
typst-thesis-template) .  You can also try to ask for help with this  template
on the  [ Forum ](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.9.0  |  November 12, 2024   
[ 0.8.0 ](https://typst.app/universe/package/scholarly-tauthesis/0.8.0/) |  October 21, 2024   
[ 0.7.0 ](https://typst.app/universe/package/scholarly-tauthesis/0.7.0/) |  September 17, 2024   
[ 0.6.2 ](https://typst.app/universe/package/scholarly-tauthesis/0.6.2/) |  April 29, 2024   
[ 0.5.0 ](https://typst.app/universe/package/scholarly-tauthesis/0.5.0/) |  April 15, 2024   
[ 0.4.1 ](https://typst.app/universe/package/scholarly-tauthesis/0.4.1/) |  April 13, 2024   
[ 0.4.0 ](https://typst.app/universe/package/scholarly-tauthesis/0.4.0/) |  April 9, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

