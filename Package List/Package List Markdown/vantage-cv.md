![A preview of the vantage-cv Typst
template.](https://packages.typst.org/preview/thumbnails/vantage-
cv-1.0.0-small.webp)

#  vantage-cv

1.0.0

An ATS friendly simple Typst CV template

[ Create project in app ](/app?template=vantage-cv&version=1.0.0)

An ATS friendly simple Typst CV template, inspired by [ alta-typst by George
Honeywood ](https://github.com/GeorgeHoneywood/alta-typst) .

##  Features

  * **Two-column layout** : Experience on the left and other important details on the right, organized for easy scanning. 
  * **Customizable icons** : Add and replace icons to suit your personal style. 
  * **Responsive design** : Adjusts well for various print formats. 

##  Usage

###  Running Locally with Typst CLI

  1. **Install Typst CLI** : Follow the installation instructions on the [ Typst CLI GitHub page ](https://github.com/typst/typst#installation) to set up Typst on your machine. 

  2. **Clone the repository** : 
    
        git clone https://github.com/sardorml/vantage-typst.git
    cd vantage-typst
    

  3. **Run Typst** : 

Use the following command to render your CV:

    
        typst compile example.typ
    

This will generate a PDF output in the same directory.

  4. **Edit your CV** : 

Open the ` example.typ ` file in your preferred text editor to customize the
layout.

###  Configuration

You can easily customize your personal data by editing the `
configuration.yaml ` file. This file allows you to set your name, contact
information, work experience, education, and skills. Hereâs how to do it:

  1. Open the ` configuration.yaml ` file in your text editor. 
  2. Update the fields with your personal information. 
  3. Save the file, and your CV will automatically reflect these changes when you compile it. 

##  Icons

You can enhance your CV with additional icons by following these steps:

  1. **Upload Icons** : Place your ` .svg ` files in the ` icons/ ` folder. 

  2. **Reference Icons** : Modify the ` links ` array in the Typst file to include your new icons by referencing their filenames as the ` name ` values. 

Example:

    
        links: [
      { name: "your-icon-name", url: "https://example.com" },
    ]
    

For existing icons, the current selection is sourced from [ Lucide Icons
](https://lucide.dev/icons/) .

##  License

This project is licensed under the [ MIT License
](https://github.com/typst/packages/raw/main/packages/preview/vantage-
cv/1.0.0/LICENSE) .

Icons are from Lucide Icons and are subject to [ their terms
](https://lucide.dev/license) .

##  Acknowledgments

  * Inspired by the work of [ George Honeywood ](https://github.com/GeorgeHoneywood/alta-typst) . 
  * Thanks to [ Lucide Icons ](https://lucide.dev/icons/) for providing the icon library. 

For any questions or contributions, feel free to open an issue or submit a
pull request!

[ Create project in app ](/app?template=vantage-cv&version=1.0.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/vantage-cv:1.0.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Sardor ](https://github.com/sardorml)
License:

     MIT 
Current version:

     1.0.0 
Last updated:

     October 9, 2024 
First released:

     October 9, 2024 
Archive size:

     6.59 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/vantage-cv-1.0.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/sardorml/vantage-typst)
Categor  ies  :

    

  * ![CV icon](/assets/icons/16-user.svg) [ CV ](https://typst.app/universe/search/?category=cv)
  * ![Layout icon](/assets/icons/16-layout.svg) [ Layout ](https://typst.app/universe/search/?category=layout)

###  Where to report issues?

This  template  is a project of  Sardor  .  Report issues on  [ their
repository ](https://github.com/sardorml/vantage-typst) .  You can also try to
ask for help with this  template  on the  [ Forum ](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
1.0.0  |  October 9, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

