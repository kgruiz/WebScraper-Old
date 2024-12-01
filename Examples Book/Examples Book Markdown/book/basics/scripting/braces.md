#  Braces, brackets and default

##  Square brackets

You may remember that square brackets convert everything inside to _content_ .

    
    
    #let v = [Some text, _markup_ and other #strong[functions]]
    #v

![Rendered image](typst-
img/5ba617daa8d4c166d96a0abbba02d6502fe7fde1ded460afa78682993295142d-1.svg)

We may use same for functions bodies:

    
    
    #let f(name) = [Hello, #name]
    #f[World] // also don't forget we can use it to pass content!

![Rendered image](typst-
img/4545deeee45655ee6666feb4773416cd075fe7522cbfd80d0847c615c6c5f30a-1.svg)

**Important:** It is very hard to convert _content_ to _plain text_ , as
_content_ may contain _anything_ ! Sp be careful when passing and storing
content in variables.

##  Braces

However, we often want to use code inside functions. That's when we use ` {}
` :

    
    
    #let f(name) = {
      // this is code mode
    
      // First part of our output
      "Hello, "
    
      // we check if name is empty, and if it is,
      // insert placeholder
      if name == "" {
          "anonym"
      } else {
          name
      }
    
      // finish sentence
      "!"
    }
    
    #f("")
    #f("Joe")
    #f("world")

![Rendered image](typst-
img/f2bc6aebef06f213c9a8e740266a96e424318d953c09cffba6c5811375e91395-1.svg)

##  Scopes

**This is a very important thing to remember** .

_You can't use variables outside of scopes they are defined (unless it is file
root, then you can import them)_ . _Set and show rules affect things in their
scope only._

    
    
    #{
      let a = 3;
    }
    // can't use "a" there.
    
    #[
      #show "true": "false"
    
      This is true.
    ]
    
    This is true.

![Rendered image](typst-
img/c25d356831eeea19bb243b87c0f32d062c7086a55b4ee432e41b388d626f875b-1.svg)

##  Return

**Important** : by default braces return anything that "returns" into them.
For example,

    
    
    #let change_world() = {
      // some code there changing everything in the world
      str(4e7)
      // another code changing the world
    }
    
    #let g() = {
      "Hahaha, I will change the world now! "
      change_world()
      " So here is my long evil monologue..."
    }
    
    #g()

![Rendered image](typst-
img/160d9672bd7abc64ea61943d1bfcbd1b06dc70f87be5e5cf9c411fe4ee6d2a44-1.svg)

To avoid returning everything, return only what you want explicitly, otherwise
everything will be joined:

    
    
    #let f() = {
      "Some long text"
      // Crazy numbers
      "2e7"
      return none
    }
    
    // Returns nothing
    #f()

![Rendered image](typst-
img/14c935733a8c91165ee4ebe8246efb841207feeaa0309e36a1cde2888acffb10-1.svg)

##  Default values

What we made just now was inventing "default values".

They are very common in styling, so there is a special syntax for them:

    
    
    #let f(name: "anonym") = [Hello, #name!]
    
    #f()
    #f(name: "Joe")
    #f(name: "world")

![Rendered image](typst-
img/e9730d0d1f30ec9f2404179560ae4a4b19dd788b1afc2f6b956fb32268439cb6-1.svg)

You may have noticed that the argument became _named_ now. In Typst, named
argument is an argument _that has default value_ .

