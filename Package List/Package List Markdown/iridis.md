#  iridis

0.1.0

A package to colors matching parenthesis

Iridis is a package to colorize parenthesis in your typst document. Iridis is
a latin word that means ârainbowâ. This package is inspired by the many
rainbow parenthesis plugins available for code editors.

##  Usage

The package provides a single show-rule ` iridis-show ` that can be used to
colorize parenthesis in your document and a palette ` iridis-palette ` that
can be used to define the colors used.

The rule takes 3 arguments:

  * ` opening-parenthesis ` : The opening parenthesis character. Default is ` ("(", "[", "{") ` . 
  * ` closing-parenthesis ` : The closing parenthesis character. Default is ` (")", "]", "}") ` . 
  * ` palette ` : The color palette to use. Default is ` iridis-palette ` . 

If the symbols are single characters, they are interpreted as normal strings
but if you use multi-character strings, then they are interpreted as regular
expressions.

##  Exemples

    
    
    #show: iridis.iridis-show
    
    ```rs
    fn main() {
        let n = false;
        if n {
            println!("Hello, world!");
        } else {
            println!("Goodbye, world!");
        }
    }
    ```
    
    ```cpp
    #include <iostream>
    
    int main() {
        bool n = false;
        if (n) {
            std::cout << "Hello, world!" << std::endl;
        } else {
            std::cout << "Goodbye, world!" << std::endl;
        }
    }
    ```
    
    ```py
    if __name__ == "__main__":
        n = False
        if n:
            print("Hello, world!")
        else:
            print("Goodbye, world!")
    ```
    

![code](https://raw.githubusercontent.com/Robotechnic/iridis/master/images/code1.png)

    
    
    #show: iridis.iridis-show
    
    $
        "plus" equiv lambda m. f lambda n. lambda f. lambda x. m f (n f x) \
        "succ" equiv lambda n. lambda f. lambda x. f (n f x) \
        "mult" equiv lambda m. lambda n. lambda f. lambda x. m (n f) x \
        "pred" equiv lambda n. lambda f. lambda x. n (lambda g. lambda h. h (g f)) (lambda u. x) (lambda u. u) \
        "zero" equiv lambda f. lambda x. x \
        "one" equiv lambda f. lambda x. f x \
        "two" equiv lambda f. lambda x. f (f x) \
        "three" equiv lambda f. lambda x. f (f (f x)) \
        "four" equiv lambda f. lambda x. f (f (f (f x))) \
    $
    
    $
        (((1 + 5) * 7) / (5 - 8 * 7) + 3) * 2 approx 4.352941176
    $
    
    $ mat(
      1, 2, ..., (10 / 2);
      2, 2, ..., 10;
      dots.v, dots.v, dots.down, dots.v;
      10, (10 - (5 * 8)) / 2, ..., 10;
    ) $
    

![math](https://raw.githubusercontent.com/Robotechnic/iridis/master/images/math1.png)

##  Changelog

###  0.1.0

  * Initial release 

###  How to add

Copy this into your project and use the import as  ` iridis `

    
    
    #import "@preview/iridis:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Robotechnic ](https://github.com/Robotechnic)
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     June 24, 2024 
First released:

     June 24, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     3.17 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/iridis-0.1.0.tar.gz)

###  Where to report issues?

This  package  is a project of  Robotechnic  .  You can also try to ask for
help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  June 24, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

