#  cvssc

0.1.0

Common Vulnerability Scoring System Calculator

[
![Contributors](https://img.shields.io/github/contributors/DrakeAxelrod/cvssc.svg?style=for-
the-badge) ](https://github.com/DrakeAxelrod/cvssc/graphs/contributors) [
![Forks](https://img.shields.io/github/forks/DrakeAxelrod/cvssc.svg?style=for-
the-badge) ](https://github.com/DrakeAxelrod/cvssc/network/members) [
![Stargazers](https://img.shields.io/github/stars/DrakeAxelrod/cvssc.svg?style=for-
the-badge) ](https://github.com/DrakeAxelrod/cvssc/stargazers) [
![Issues](https://img.shields.io/github/issues/DrakeAxelrod/cvssc.svg?style=for-
the-badge) ](https://github.com/DrakeAxelrod/cvssc/issues) [ ![MIT
License](https://img.shields.io/github/license/DrakeAxelrod/cvssc.svg?style=for-
the-badge) ](https://github.com/DrakeAxelrod/cvssc/blob/master/LICENSE.txt)

  

###  cvssc

####  Common Vulnerability Scoring System Calculator

The CVSS Typst Library is a [ Typst ](https://github.com/typst/) package
designed to facilitate the calculation of Common Vulnerability Scoring System
(CVSS) scores for vulnerabilities across multiple versions, including CVSS
2.0, 3.0, 3.1, and 4.0. This library provides developers, security analysts,
and researchers with a reliable and efficient toolset for assessing the
severity of security vulnerabilities based on the CVSS standards.  
[ **Explore the docs Â»**
](https://github.com/DrakeAxelrod/cvssc/tree/main/cvssc/0.1.0/src/docs.pdf)  
  
[ Report Bug ](https://github.com/DrakeAxelrod/cvssc/issues) Â· [ Request
Feature ](https://github.com/DrakeAxelrod/cvssc/issues)

Table of Contents

  1. [ About The Project ](https://github.com/typst/packages/raw/main/packages/preview/cvssc/0.1.0/#about-the-project)
     * [ Built With ](https://github.com/typst/packages/raw/main/packages/preview/cvssc/0.1.0/#built-with)
  2. [ Getting Started ](https://github.com/typst/packages/raw/main/packages/preview/cvssc/0.1.0/#getting-started)
     * [ Prerequisites ](https://github.com/typst/packages/raw/main/packages/preview/cvssc/0.1.0/#prerequisites)
     * [ Installation ](https://github.com/typst/packages/raw/main/packages/preview/cvssc/0.1.0/#installation)
  3. [ Usage ](https://github.com/typst/packages/raw/main/packages/preview/cvssc/0.1.0/#usage)
  4. [ Roadmap ](https://github.com/typst/packages/raw/main/packages/preview/cvssc/0.1.0/#roadmap)
  5. [ Contributing ](https://github.com/typst/packages/raw/main/packages/preview/cvssc/0.1.0/#contributing)
  6. [ License ](https://github.com/typst/packages/raw/main/packages/preview/cvssc/0.1.0/#license)
  7. [ Contact ](https://github.com/typst/packages/raw/main/packages/preview/cvssc/0.1.0/#contact)
  8. [ Acknowledgments ](https://github.com/typst/packages/raw/main/packages/preview/cvssc/0.1.0/#acknowledgments)

( [ back to top
](https://github.com/typst/packages/raw/main/packages/preview/cvssc/0.1.0/#readme-
top) )

###  Built With

  * [ ![Typst](https://img.shields.io/badge/Typst-239dad?style=for-the-badge&logo=typst&logoColor=white) ](https://typst.app/)
  * [ ![Rust](https://img.shields.io/badge/Rust-b7410e?style=for-the-badge&logo=rust&logoColor=white) ](https://www.rust-lang.org/)
  * [ ![WASM](https://img.shields.io/badge/WebAssembly-654FF0?style=for-the-badge&logo=webassembly&logoColor=white) ](https://webassembly.org/)

( [ back to top
](https://github.com/typst/packages/raw/main/packages/preview/cvssc/0.1.0/#readme-
top) )

##  Getting Started

Ensure you have the Typst CLI installed.

  1. Import the package 

    
    
    #import "@preview/cvssc:0.1.0";
    

  2. Use the various library functions to calculate CVSS scores and severities. 

    
    
    #import "@preview/cvssc:0.1.0";
    
    #cvssc.v2("CVSS:2.0/AV:L/AC:H/Au:M/C:P/I:C/A:C")
    
    #cvssc.v3("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H")
    
    #cvssc.v3("CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:L/A:H")
    
    #cvssc.v4("CVSS:4.0/AV:A/AC:H/AT:P/PR:L/UI:P/VC:H/VI:H/VA:L/SC:L/SI:L/SA:L")
    

###  Prerequisites

  * typst (see [ Typst ](https://typst.app/) ) 

##  Usage

_Please refer to the[ Docs
](https://github.com/typst/packages/raw/main/packages/preview/cvssc/0.1.0/cvssc/0.1.0/src/docs.pdf)
_

( [ back to top
](https://github.com/typst/packages/raw/main/packages/preview/cvssc/0.1.0/#readme-
top) )

##  Roadmap

See the [ open issues ](https://github.com/DrakeAxelrod/cvssc/issues) for a
full list of proposed features (and known issues).

( [ back to top
](https://github.com/typst/packages/raw/main/packages/preview/cvssc/0.1.0/#readme-
top) )

##  Contributing

Contributions are what make the open source community such an amazing place to
learn, inspire, and create. Any contributions you make are **greatly
appreciated** .

If you have a suggestion that would make this better, please fork the repo and
create a pull request. You can also simply open an issue with the tag
âenhancementâ. Donât forget to give the project a star! Thanks again!

  1. Fork the Project 
  2. Create your Feature Branch ( ` git checkout -b feature/AmazingFeature ` ) 
  3. Commit your Changes ( ` git commit -m 'Add some AmazingFeature' ` ) 
  4. Push to the Branch ( ` git push origin feature/AmazingFeature ` ) 
  5. Open a Pull Request 

( [ back to top
](https://github.com/typst/packages/raw/main/packages/preview/cvssc/0.1.0/#readme-
top) )

##  License

Distributed under the MIT License. See ` LICENSE.txt ` for more information.

( [ back to top
](https://github.com/typst/packages/raw/main/packages/preview/cvssc/0.1.0/#readme-
top) )

##  Contact

Drake Axelrod - [ Github Profile
](https://github.com/typst/packages/raw/main/packages/preview/cvssc/0.1.0/%5Bhttps://github/%5D\(https://github.com/DrakeAxelrod/\))
\- [ drakeaxelrod@gmail.com ](mailto:drakeaxelrod@gmail.com)

Project Link: [ https://github.com/DrakeAxelrod/cvssc
](https://github.com/DrakeAxelrod/cvssc)

##  Contributors

[ ![Drake Axelrod](https://avatars.githubusercontent.com/u/51012876?v=4?s=64)  
**Drake Axelrod** ](https://github.com/DrakeAxelrod)  
  
---  
  
( [ back to top
](https://github.com/typst/packages/raw/main/packages/preview/cvssc/0.1.0/#readme-
top) )

##  Acknowledgments

  * [ Typst ](https://typst.app/)
  * [ First.org ](https://www.first.org/)
  * [ Rust Library - nvd-cvss ](https://docs.rs/nvd-cvss)

( [ back to top
](https://github.com/typst/packages/raw/main/packages/preview/cvssc/0.1.0/#readme-
top) )

###  How to add

Copy this into your project and use the import as  ` cvssc `

    
    
    #import "@preview/cvssc:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Drake Axelrod ](mailto:drakeaxelrod@gmail.com)
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     October 28, 2024 
First released:

     October 28, 2024 
Minimum Typst version:

     0.12.0 
Archive size:

     193 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/cvssc-0.1.0.tar.gz)

###  Where to report issues?

This  package  is a project of  Drake Axelrod  .  You can also try to ask for
help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  October 28, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

