![A preview of the silver-dev-cv Typst
template.](https://packages.typst.org/preview/thumbnails/silver-dev-
cv-1.0.1-small.webp)

#  silver-dev-cv

1.0.1

A CV template by an engineer-recruiter, used by https://silver.dev

[ Create project in app ](/app?template=silver-dev-cv&version=1.0.1)

This Typst CV template is a streamlined version of the the Latex template [
Modernpro ](https://github.com/jxpeng98/Typst-CV-Resume) .

##  How to start

###  Use Typst CLI

If you use Typst CLI, you can use the following command to create a new
project:

    
    
    typst init silver-dev-cv
    

It will create a folder named ` silver-dev-cv ` with the following structure:

    
    
    silver-dev-cv
    âââ cv.typ
    

###  Typst website

If you want to use the template via [ Typst ](https://typst.app/) , You can `
start from template ` and search for ` silver-dev-cv ` .

##  How to use the template

###  The arguments

The template has the following arguments:

Argument  |  Description  |  Default   
---|---|---  
` font-type ` |  The font type. You can choose any supported font in your system.  |  ` Times New Roman `  
` continue-header ` |  Whether to continue the header on the follwing pages.  |  ` false `  
` name ` |  Your name.  |  ` "" `  
` address ` |  Your address.  |  ` "" `  
` lastupdated ` |  Whether to show the last updated date.  |  ` true `  
` pagecount ` |  Whether to show the page count.  |  ` true `  
` date ` |  The date of the CV.  |  ` today `  
` contacts ` |  contact details, e.g phone number, email, etc.  |  ` (text: "", link: "") `  
  
###  Starting the CV

    
    
    #import "@preview/silver-dev-cv:1.0.0": *
    
    #show: cv.with(
      font-type: "PT Serif",
      continue-header: "false",
      name: "",
      address: "",
      lastupdated: "true",
      pagecount: "true",
      date: "2024-07-03",
      contacts: (
        (text: "08856", link: ""),
        (text: "example.com", link: "https://www.example.com"),
        (text: "github.com", link: "https://www.github.com"),
        (text: "123@example.com", link: "mailto:123@example.com"),
      )
    )
    

###  Content

Once you set up the arguments, you can start to add details to your CV /
Resume.

I preset the following functions for you to create different parts:

Function  |  Description   
---|---  
` #section("Section Name") ` |  Start a new section   
` #sectionsep ` |  End the section   
` #oneline-title-item(title: "", content: "") ` |  Add a one-line item ( **Title:** content)   
` #oneline-two(entry1: "", entry2: "") ` |  Add a one-line item with two entries, aligned left and right   
` #descript("descriptions") ` |  Add a description for self-introduction   
` #award(award: "", date: "", institution: "") ` |  Add an award ( **award** , _institution_ _date_ )   
` #education(institution: "", major: "", date: "", institution: "", core-modules: "") ` |  Add an education experience   
` #job(position: "", institution: "", location: "", date: "", description: []) ` |  Add a job experience (description is optional)   
` #twoline-item(entry1: "", entry2: "", entry3: "", entry4: "") ` |  Two line items, similar to education and job experiences   
  
##  License

The template is released under the MIT License. For more information, please
refer to the [ LICENSE ](https://github.com/jxpeng98/Typst-CV-
Resume/blob/main/LICENSE) file.

[ Create project in app ](/app?template=silver-dev-cv&version=1.0.1)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/silver-dev-cv:1.0.1

![Copy](/assets/icons/16-copy.svg)

###  About

Author  s  :

     Gabriel Benmergui  & Santiago Barraza 
License:

     MIT 
Current version:

     1.0.1 
Last updated:

     November 26, 2024 
First released:

     October 31, 2024 
Archive size:

     4.13 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/silver-dev-cv-1.0.1.tar.gz)
Categor  y  :

    

  * ![CV icon](/assets/icons/16-user.svg) [ CV ](https://typst.app/universe/search/?category=cv)

###  Where to report issues?

This  template  is a project of  Gabriel Benmergui and Santiago Barraza  .
You can also try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
1.0.1  |  November 26, 2024   
[ 1.0.0 ](https://typst.app/universe/package/silver-dev-cv/1.0.0/) |  October 31, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

