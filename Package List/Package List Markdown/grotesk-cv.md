![A preview of the grotesk-cv Typst
template.](https://packages.typst.org/preview/thumbnails/grotesk-
cv-1.0.1-small.webp)

#  grotesk-cv

1.0.1

A clean CV and cover letter template based on Brilliant-cv and fireside
templates.

[ Create project in app ](/app?template=grotesk-cv&version=1.0.1)

Version 1.0.1

grotesk-cv provides a pair of elegant and simple, one-page CV and cover letter
templates, inspired by the [ Brilliant-cv
](https://typst.app/universe/package/brilliant-cv/) and [ fireside
](https://typst.app/universe/package/fireside/1.0.0/) templates.

###  Features

  * Templates for multilingual CV and cover letter, enabled by flag 
  * Separation of styling and content 
  * Customizable fonts, colors and icons 

##  Preview

CV  |  Cover Letter   
---|---  
![CV](https://raw.githubusercontent.com/AsiSkarp/grotesk-cv/main/examples/cv_example.png?raw=true) |  ![Cover Letter](https://raw.githubusercontent.com/AsiSkarp/grotesk-cv/main/examples/cover_letter_example.png?raw=true)  
  
##  Getting Started

To edit this template, changes are mostly made in either of two places.
Changes to contact information or layout settings are made in ` info.toml ` .
To change the section contents, navigate to the corresponding section file
e.g. ` content/profile.typ ` to edit the **Profile** section.

###  Adding or Removing Sections

To add a new section, create a new ` .typ ` file in the ` content ` directory
with the desired section name. To include the section in the CV, add the
section at the desired position in either left or right panes in the ` cv.typ
` file. To remove sections, simply remove or comment-out the section name in
the same list of section names in the ` cv.typ ` file. Sections are rendered
in the order they appear in the list. The section column width can be adjusted
in the ` info.toml ` file under the ` left_pane_width ` value. In the
following example, the ` projects.typ ` section file has been created and is
included in the left pane of the CV, and the ` education.typ ` section has
been removed.

    
    
    #let left-pane = (
      "profile",
      "experience",
      //"education",
      "projects",
    )
    

###  Changing Profile Photo

To change the profile photo, upload your image to the ` content/img ` folder.
To enable the new image, update the ` profile_image ` value in ` info.toml `
with the name of your uploaded image.

###  Changing FontAwesome Icons

The template uses [ FontAwesome ](https://fontawesome.com/) for all icons. To
change an icon, change the desired icon string in the ` info.toml ` file with
the corresponding FontAwesome icon name. Icon strings can be found in the [
cheat sheet ](https://fontawesome.com/v4/cheatsheet/) . Note that the icon
strings must be written without the ` fa- ` prefix. To disable the use of
icons, set the ` include_icons ` value to ` false ` .

###  Customizing Contact Information

To change or add contact information, update the corresponding value under `
[personal.info] ` in the ` info.toml ` file. Information is rendered in the
order it appears in the file. To add a new contact information field, add a
new variable under ` [personal.info] ` with the desired string value. Next,
assign a valid FontAwesome icon string to a variable of the same name under `
[personal.icon] ` . In the following example, a homepage field has been added
to the contact information.

    
    
    [personal.info]
    homepage = "www.myawesomehomepage.com"
    
    [personal.icon]
    homepage = "globe"
    

###  Changing language

The template provides the option to instantly change the language of the CV
and cover letter by using a variable in the ` info.toml ` file. The template
demonstrates the use of the ` language ` variable to switch between English
and Spanish, but any language can be used, provided that the information is
entered manually inside the corresponding section files. For instance, to
change the alternate language to German, changes would have to be made in the
section files to include the German text. In the following example, the
language of the **Profile** section has been changed from Spanish to German,
and the required changes have been made in the ` content/profile.typ ` file.

    
    
    // = Summary
    = #if include-icon [#fa-icon(icon) #h(5pt)] #if language == "en" [Summary] else if language == "ger" [Zusammenfassung]
    
    #v(5pt)
    
    #if language == "en" [
    
      Experienced Software Engineer specializing in artificial intelligence, machine learning, and robotics. Proficient in C++, Python, and Java, with a knack for developing sentient AI systems capable of complex decision-making. Passionate about ethical AI development and eager to contribute to groundbreaking projects in dynamic environments.
    
    ] else if language == "ger" [
    
      Erfahrener Software-Ingenieur, der sich auf kÃ¼nstliche Intelligenz, maschinelles Lernen und Robotik spezialisiert hat. Er beherrscht C++, Python und Java und hat ein HÃ¤ndchen fÃ¼r die Entwicklung empfindungsfÃ¤higer KI-Systeme, die in der Lage sind, komplexe Entscheidungen zu treffen. Leidenschaft fÃ¼r ethische KI-Entwicklung und bestrebt, zu bahnbrechenden Projekten in dynamischen Umgebungen beizutragen.
    
    ]
    
    

###  Changing Fonts

If using the template online with Typst Universe, multiple font types are
available to use, a list of which can be found by pressing the ` Ag ` button.
To use a different font, upload a ` ttf ` or ` otf ` file to the `
content/fonts ` folder and update the ` font ` value in the ` info.toml ` file
with the name of the uploaded font.

###  Installation

To use the template offline, clone this repository to your local machine.
Typst can be used and rendered offline by installing the Typst CLI. My
preferred workflow has been to use VSCode with the [ Tinymist
](https://github.com/Myriad-Dreamin/tinymist/releases) extension, which
provides LSP support, syntax highlighting, and error checking, live rendered
previews and automatic exports to PDF.

Please feel free to fork this repository and create PRs for any changes or
improvements.

[ Create project in app ](/app?template=grotesk-cv&version=1.0.1)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/grotesk-cv:1.0.1

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ ÃsbjÃ¶rn SkarphÃ©Ã°insson ](https://github.com/AsiSkarp)
License:

     Unlicense 
Current version:

     1.0.1 
Last updated:

     October 21, 2024 
First released:

     September 30, 2024 
Archive size:

     1.38 MB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/grotesk-cv-1.0.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/AsiSkarp/grotesk-cv)
Categor  ies  :

    

  * ![CV icon](/assets/icons/16-user.svg) [ CV ](https://typst.app/universe/search/?category=cv)
  * ![Layout icon](/assets/icons/16-layout.svg) [ Layout ](https://typst.app/universe/search/?category=layout)

###  Where to report issues?

This  template  is a project of  ÃsbjÃ¶rn SkarphÃ©Ã°insson  .  Report issues
on  [ their repository ](https://github.com/AsiSkarp/grotesk-cv) .  You can
also try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
1.0.1  |  October 21, 2024   
[ 1.0.0 ](https://typst.app/universe/package/grotesk-cv/1.0.0/) |  October 17, 2024   
[ 0.1.6 ](https://typst.app/universe/package/grotesk-cv/0.1.6/) |  October 11, 2024   
[ 0.1.5 ](https://typst.app/universe/package/grotesk-cv/0.1.5/) |  October 10, 2024   
[ 0.1.4 ](https://typst.app/universe/package/grotesk-cv/0.1.4/) |  October 9, 2024   
[ 0.1.3 ](https://typst.app/universe/package/grotesk-cv/0.1.3/) |  October 8, 2024   
[ 0.1.2 ](https://typst.app/universe/package/grotesk-cv/0.1.2/) |  October 7, 2024   
[ 0.1.1 ](https://typst.app/universe/package/grotesk-cv/0.1.1/) |  October 2, 2024   
[ 0.1.0 ](https://typst.app/universe/package/grotesk-cv/0.1.0/) |  September 30, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

