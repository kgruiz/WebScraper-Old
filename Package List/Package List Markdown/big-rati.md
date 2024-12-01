#  big-rati

0.1.0

Utilities to work with big rational numbers in Typst

` big-rati ` is a package to work with rational numbers in Typst

##  Usage

    
    
    #import "@preview/big-rati:0.1.0"
    
    #let a = 2      // 2/1
    #let b = (1, 2) // 1/2
    
    #let sum = big-rati.add(a, b) // 5/2
    
    #let c = ("4", 6)
    #let prod = big-rati.mul(c, sum) // 5/3
    
    $#big-rati.repr(prod)$
    

Functions, exported by the package are:

    
    
    // Converts `x` to bytes, representing the rational number,
    // that can be used in the functions below.
    // `x` might be an integer or a big integer string.
    // If `x` is an array of length two, which elements are integers
    // or big integer strings, then it is converted to the array of all
    // big integer strings, and then into the bytes representation.
    #let rational(x)
    
    // Functions below work with "rational numbers", integers or big integer strings
    
    // Returns `a + b`
    #let add(a, b)
    
    // Returns `a - b`
    #let sub(a, b)
    
    // Returns `a / b`
    #let div(a, b)
    
    // Returns `a * b`
    #let mul(a, b)
    
    // Returns `a % b`
    #let rem(a, b)
    
    // Returns `|a - b|`
    #let abs-diff(a, b)
    
    // Returns `-1` if `a < b`, `0` if `a == b`, `1` if `a > b`
    #let cmp(a, b)
    
    // Returns `-x`
    #let neg(x)
    
    // Returns `|x|`
    #let abs(x)
    
    // Rounds towards plus infinity
    #let ceil(x)
    
    // Rounds towards minus infinity
    #let floor(x)
    
    // Rounds to the nearest integer. Rounds half-way cases away from zero.
    #let round(x)
    
    // Rounds towards zero.
    #let trunc(x)
    
    // Returns the fractional part of a number, with division rounded towards zero.
    // Satisfies `number == add(trunc(number), fract(number))`.
    #let fract(number)
    
    // Returns the reciprocal.
    // Panics if the number is zero.
    #let recip(x)
    
    // Returns `x^y`. `y` must be an `int`, in range of `-2^32` to `2^32 - 1`
    #let pow(x, y)
    
    // Restrict a value to a certain interval.
    //
    // Returns `max` if `number` is greater than `max`,
    // and `min` if `number` is less than `min`.
    // Otherwise returns `number`.
    //
    // Returns error if `min` is greater than `max`.
    #let clamp(number, min, max)
    
    // Compares and returns the minimum of two values.
    #let min(a, b)
    
    // Compares and returns the maximum of two values.
    #let max(a, b)
    
    // Returns a value of type `content`, representing the rational number.
    // If `is-mixed` is true, then the result is a mixed fraction,
    // otherwise, it is a simple fraction.
    #let repr(x, is-mixed: true)
    
    // Returns a string, representing the rational number
    #let to-decimal-str(x, precision: 8)
    
    // Returns a floating-point number, representing the rational number
    #let to-float(x, precision: 8)
    
    // Returns a decimal number, representing the rational number
    #let to-decimal(x, precision: 8)
    

###  How to add

Copy this into your project and use the import as  ` big-rati `

    
    
    #import "@preview/big-rati:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Danik Vitek 
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     October 29, 2024 
First released:

     October 29, 2024 
Archive size:

     33.9 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/big-rati-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/DanikVitek/typst-plugin-bigrational)
Discipline  :

    

  * [ Mathematics ](https://typst.app/universe/search/?discipline=mathematics)

Categor  y  :

    

  * ![Scripting icon](/assets/icons/16-code.svg) [ Scripting ](https://typst.app/universe/search/?category=scripting)

###  Where to report issues?

This  package  is a project of  Danik Vitek  .  Report issues on  [ their
repository ](https://github.com/DanikVitek/typst-plugin-bigrational) .  You
can also try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  October 29, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

