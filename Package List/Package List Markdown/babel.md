#  babel

0.1.1

Redact text by replacing it with random characters

[ ![Package on the Typst
Universe](https://img.shields.io/badge/Typst_Universe-fdfdfd?logo=typst)
](https://typst.app/universe/package/babel) [ ![Babelâs Git
repository](https://img.shields.io/badge/Git_repo-fdfdfd?logo=codeberg)
](https://codeberg.org/afiaith/babel) [ ![A precompiled PDF file of the
manual](https://img.shields.io/badge/%F0%9F%93%96%20manual-.pdf-239dad?labelColor=fdfdfd)
](https://github.com/typst/packages/raw/main/packages/preview/babel/0.1.1/docs/manual.pdf)
[ ![Licence: MIT-0](https://img.shields.io/badge/licence-
MIT0-239dad?labelColor=fdfdfd)
](https://github.com/typst/packages/raw/main/packages/preview/babel/0.1.1/LICENSE)
[ ![Codeberg
release](https://img.shields.io/gitea/v/release/afiaith/babel?gitea_url=https%3A%2F%2Fcodeberg.org&labelColor=fdfdfd&color=239dad)
](https://codeberg.org/afiaith/babel/releases/) [ ![Codeberg
stars](https://img.shields.io/gitea/stars/afiaith/babel?gitea_url=https%3A%2F%2Fcodeberg.org&labelColor=fdfdfd&color=fdfdfd&logo=codeberg)
](https://codeberg.org/afiaith/babel/stars)

This package provides functions that replace actual text with random
characters, which is useful for redacting confidential information or sharing
the design and structure of an existing document without disclosing the
content itself. A variety of ready-made sets of characters for replacement are
available (75 in total; termed _alphabets_ ), representing diverse writing
systems, codes, notations and symbols. Some of these are more conservative
(such as emulating redaction using a wide black pen) and many are more
whimsical, as demonstrated by the following example:

    
    
    #baffle(alphabet: "welsh")[Hello]. My #tippex[name] is #baffle(alphabet: "underscore")[Inigo Montoya]. You #baffle(alphabet: "alchemy")[killed] my #baffle(alphabet: "shavian")[father]. Prepare to #redact[die].
    
    Using show rules strings, regular expressions and other selectors can be redacted automatically:
    
    #show "jan Maja": baffle.with(alphabet: "sitelen-pona")
    #show regex("[a-zA-Z0-9.!#$%&â*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*"): baffle.with(alphabet: "maze-3") 
    
    Iâm jan Maja, and my email is `foo@digitalwords.net`.
    

![The output of the above Typst
code](https://github.com/typst/packages/raw/main/packages/preview/babel/0.1.1/assets/example.webp)

##  ð The manual

Using  Babel  is quite straightforward. A [ **comprehensive manual**
](https://github.com/typst/packages/raw/main/packages/preview/babel/0.1.1/docs/manual.pdf)
covers:

  * Introductory background. 
  * How to use the provided functions ( ` baffle() ` , ` redact() ` and ` tippex() ` ). 
  * A list of the provided alphabets, each demonstrated by a line of random text. 

If the version of the precompiled manual doesnât match the version of the
package, it means no difference between the two versions is reflected in the
manual.

##  ð¼ The Tower of  Babel

A poster demonstrating the provided alphabets:

[ ![A demonstration of the provided alphabets in the shape of the Tower of
Babel](https://github.com/typst/packages/raw/main/packages/preview/babel/0.1.1/assets/poster.webp)
](https://github.com/typst/packages/raw/main/packages/preview/babel/0.1.1/assets/poster.webp)

##  ð¨ Complementary tools

If you wish to share the Typst source files of your document, not just the
precompiled output, a tool called [ _Typst Mutilate_
](https://github.com/frozolotl/typst-mutilate) might be useful for you. Unlike
Babel  , it is not a Typst package but an external tool, written in Rust. It
replaces the content of a Typst document with random words selected from a
wordlist or random characters (similarly to  Babel  ), changing the document
in place (so make sure to run it on a _copy_ !). As a package for Typst,
Babel  cannot change your source files.

###  How to add

Copy this into your project and use the import as  ` babel `

    
    
    #import "@preview/babel:0.1.1"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Maja Abramski-Kronenberg ](https://me.digitalwords.net)
License:

     MIT-0 
Current version:

     0.1.1 
Last updated:

     October 3, 2024 
First released:

     October 3, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     46.9 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/babel-0.1.1.tar.gz)
Repository:

     [ Codeberg ](https://codeberg.org/afiaith/babel)
Categor  ies  :

    

  * ![Languages icon](/assets/icons/16-world.svg) [ Languages ](https://typst.app/universe/search/?category=languages)
  * ![Text icon](/assets/icons/16-text.svg) [ Text ](https://typst.app/universe/search/?category=text)
  * ![Fun icon](/assets/icons/16-smile.svg) [ Fun ](https://typst.app/universe/search/?category=fun)

###  Where to report issues?

This  package  is a project of  Maja Abramski-Kronenberg  .  Report issues on
[ their repository ](https://codeberg.org/afiaith/babel) .  You can also try
to ask for help with this  package  on the  [ Forum ](https://forum.typst.app)
.

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.1  |  October 3, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

