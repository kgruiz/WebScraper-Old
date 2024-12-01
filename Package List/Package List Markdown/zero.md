#  zero

0.3.0

Advanced scientific number formatting.

Featured  Package

_Advanced scientific number formatting._

[ ![Typst
Package](https://img.shields.io/badge/dynamic/toml?url=https%3A%2F%2Fraw.githubusercontent.com%2FMc-
Zen%2Fzero%2Fv0.3.0%2Ftypst.toml&query=%24.package.version&prefix=v&logo=typst&label=package&color=239DAD)
](https://typst.app/universe/package/zero) [ ![Test
Status](https://github.com/Mc-
Zen/zero/actions/workflows/run_tests.yml/badge.svg) ](https://github.com/Mc-
Zen/zero/actions/workflows/run_tests.yml) [ ![MIT
License](https://img.shields.io/badge/license-MIT-blue)
](https://github.com/Mc-Zen/zero/blob/main/LICENSE)

  * [ Introduction ](https://github.com/typst/packages/raw/main/packages/preview/zero/0.3.0/#introduction)
  * [ Quick Demo ](https://github.com/typst/packages/raw/main/packages/preview/zero/0.3.0/#quick-demo)
  * [ Documentation ](https://github.com/typst/packages/raw/main/packages/preview/zero/0.3.0/#documentation)
  * [ Table alignment ](https://github.com/typst/packages/raw/main/packages/preview/zero/0.3.0/#table-alignment)
  * [ Zero for third-party packages ](https://github.com/typst/packages/raw/main/packages/preview/zero/0.3.0/#zero-for-third-party-packages)

##  Introduction

Proper number formatting requires some love for detail to guarantee a readable
and clear output. This package provides tools to ensure consistent formatting
and to simplify the process of following established publication practices.
Key features are

  * **standardized** formatting, 
  * digit [ **grouping** ](https://github.com/typst/packages/raw/main/packages/preview/zero/0.3.0/#grouping) , e.g., 299â¯792â¯458 instead of 299792458, 
  * **plug-and-play** number [ **alignment in tables** ](https://github.com/typst/packages/raw/main/packages/preview/zero/0.3.0/#table-alignment) , 
  * quick scientific notation, e.g., ` "2e4" ` becomes 2Ã10â´, 
  * symmetric and asymmetric [ **uncertainties** ](https://github.com/typst/packages/raw/main/packages/preview/zero/0.3.0/#specifying-uncertainties) , 
  * [ **rounding** ](https://github.com/typst/packages/raw/main/packages/preview/zero/0.3.0/#rounding) in various modes, 
  * and some specials for package authors. 

A number in scientific notation consists of three parts of which the latter
two are optional. The first part is the _mantissa_ that may consist of an
_integer_ and a _fractional_ part. In many fields of science, values are not
known exactly and the corresponding _uncertainty_ is then given along with the
mantissa. Lastly, to facilitate reading very large or small numbers, the
mantissa may be multiplied with a _power_ of 10 (or another base).

The anatomy of a formatted number is shown in the following figure.

![Anatomy of a formatted number](https://github.com/user-
attachments/assets/7ca9fa48-b732-4f4e-911f-b719e83305be)

##  Quick Demo

Code  |  Output  |  Code  |  Output   
---|---|---|---  
` num("1.2e4") ` |  1.2Ã10â´  |  ` num[1.2e4] ` |  1.2Ã10â´   
` num("-5e-4") ` |  â5Ã10â»â´  |  ` num(fixed: -2)[0.02] ` |  2Ã10â»Â²   
` num("9.81+-.01") ` |  9.81Â±0.01  |  ` num("9.81+0.02-.01") ` |  9.81âºÂ²ââ   
` num("9.81+-.01e2") ` |  (9.81Â±0.01)Ã10Â²  |  ` num(base: 2)[3e4] ` |  3Ã2â´   
  
##  Documentation

  * [ Function ` num ` ](https://github.com/typst/packages/raw/main/packages/preview/zero/0.3.0/#num)
  * [ Grouping ](https://github.com/typst/packages/raw/main/packages/preview/zero/0.3.0/#grouping)
  * [ Rounding ](https://github.com/typst/packages/raw/main/packages/preview/zero/0.3.0/#rounding)
  * [ Uncertainties ](https://github.com/typst/packages/raw/main/packages/preview/zero/0.3.0/#specifying-uncertainties)
  * [ Table alignment ](https://github.com/typst/packages/raw/main/packages/preview/zero/0.3.0/#table-alignment)

###  ` num `

The function ` num() ` is the heart of _Zero_ . It provides a wide range of
number formatting utilities and its default values are configurable via ` set-
num() ` which takes the same named arguments as ` num() ` .

    
    
    #let num(
      number:                 str |âcontent | int | float | dictionary | array,
      digits:                 auto |âint = auto,
      fixed:                  none | int = none,
    
      decimal-separator:      str = ".",
      product:                content = sym.times,
      tight:                  boolean = false,
      math:                   boolean = true,
      omit-unity-mantissa:    boolean = true,
      positive-sign:          boolean = false,
      positive-sign-exponent: boolean = false,
      base:                   int | content = 10,
      uncertainty-mode:       str = "separate",
      round:                  dictionary,
      group:                  dictionary,
    )
    

  * ` number: str |âcontent | int | float | array ` : Number input; ` str ` is preferred. If the input is ` content ` , it may only contain text nodes. Numeric types ` int ` and ` float ` are supported but not encouraged because of information loss (e.g., the number of trailing â0â digits or the exponent). The remaining types ` dictionary ` and ` array ` are intended for advanced use, see [ below ](https://github.com/typst/packages/raw/main/packages/preview/zero/0.3.0/#zero-for-third-party-packages) . 
  * ` digits: auto |âint = auto ` : Truncates the number at a given (positive) number of decimal places or pads the number with zeros if necessary. This is independent of [ rounding ](https://github.com/typst/packages/raw/main/packages/preview/zero/0.3.0/#rounding) . 
  * ` fixed: none | int = none ` : If not ` none ` , forces a fixed exponent. Additional exponents given in the number input are taken into account. 
  * ` decimal-separator: str = "." ` : Specifies the marker that is used for separating integer and decimal part. 
  * ` product: content = sym.times ` : Specifies the multiplication symbol used for scientific notation. 
  * ` tight: boolean = false ` : If true, tight spacing is applied between operands (applies to Ã and Â±). 
  * ` math: boolean = true ` : If set to ` false ` , the parts of the number wonât be wrapped in a ` math.equation ` wherever feasible. This makes it possible to use ` num() ` with non-math fonts to some extent. Powers are always rendered in math mode. 
  * ` omit-unity-mantissa: boolean = false ` : Determines whether a mantissa of 1 is omitted in scientific notation, e.g., 10â´ instead of 1Â·10â´. 
  * ` positive-sign: boolean = false ` : If set to ` true ` , positive coefficients are shown with a + sign. 
  * ` positive-sign-exponent: boolean = false ` : If set to ` true ` , positive exponents are shown with a + sign. 
  * ` base: int | content = 10 ` : The base used for scientific power notation. 
  * ` uncertainty-mode: str = "separate" ` : Selects one of the modes ` "separate" ` , ` "compact" ` , or ` "compact-separator" ` for displaying uncertainties. The different behaviors are shown below: 

` "separate" ` |  ` "compact" ` |  ` "compact-separator" `  
---|---|---  
1.7Â±0.2  |  1.7(2)  |  1.7(2)   
6.2Â±2.1  |  6.2(21)  |  6.2(2.1)   
1.7âºâ°ËÌÂ²ââ.â  |  1.7âºÂ²ââ  |  1.7âºÂ²ââ   
1.7âºÂ²ËÌâ°ââ .â  |  1.7âºÂ²â°ââ â  |  1.7âºÂ²ËÌâ°ââ .â   
  
  * ` round: dictionary ` : You can provide one or more rounding options in a dictionary. Also see [ rounding ](https://github.com/typst/packages/raw/main/packages/preview/zero/0.3.0/#rounding) . 
  * ` group: dictionary ` : You can provide one or more grouping options in a dictionary. Also see [ grouping ](https://github.com/typst/packages/raw/main/packages/preview/zero/0.3.0/#grouping) . 

Configuration example:

    
    
    #set-num(product: math.dot, tight: true)
    

###  Grouping

Digit grouping is important for keeping large figures readable. It is
customary to separate thousands with a thin space, a period, comma, or an
apostrophe (however, we discourage using a period or a comma to avoid
confusion since both are used for decimal separators in various countries).

![Digit grouping](https://github.com/user-
attachments/assets/1f53ae33-3e99-483d-ac6a-6e3cbed5484b)

Digit grouping can be configured with the ` set-group() ` function.

    
    
    #let set-group(
      size:       int = 3, 
      separator:  content = sym.space.thin,
      threshold:  int = 5
    )
    

  * ` size: int = 3 ` : Determines the size of the groups. 
  * ` separator: content = sym.space.thin ` : Separator between groups. 
  * ` threshold: int = 5 ` : Necessary number of digits needed for digit grouping to kick in. Four-digit numbers for example are usually not grouped at all since they can still be read easily. 

Configuration example:

    
    
    #set-group(separator: "'", threshold: 4)
    

Grouping can be turned off altogether by setting the ` threshold ` to `
calc.inf ` .

###  Rounding

Rounding can be configured with the ` set-round() ` function.

    
    
    #let set-round(
      mode:       none |âstr = none,
      precision:  int = 2,
      pad:        boolean = true,
      direction:  str = "nearest",
    )
    

  * ` mode: none |âstr = none ` : Sets the rounding mode. The possible options are 
    * ` none ` : Rounding is turned off. 
    * ` "places" ` : The number is rounded to the number of decimal places given by the ` precision ` parameter. 
    * ` "figures" ` : The number is rounded to a number of significant figures given by the ` precision ` parameter. 
    * ` "uncertainty" ` : Requires giving an uncertainty value. The uncertainty is rounded to significant figures according to the ` precision ` argument and then the number is rounded to the same number of decimal places as the uncertainty. 
  * ` precision: int = 2 ` : The precision to round to. Also see parameter ` mode ` . 
  * ` pad: boolean = true ` : Whether to pad the number with zeros if the number has fewer digits than the rounding precision. 
  * ` direction: str = "nearest" ` : Sets the rounding direction. 
    * ` "nearest" ` : Rounding takes place in the usual fashion, rounding to the nearer number, e.g., 2.34 â 2.3 and 2.36 â 2.4. 
    * ` "down" ` : Always rounds down, e.g., 2.38 â 2.3 and 2.30 â 2.3. 
    * ` "up" ` : Always rounds up, e.g., 2.32 â 2.4 and 2.30 â 2.3. 

###  Specifying uncertainties

There are two ways of specifying uncertainties:

  * Applying an uncertainty to the least significant digits using parentheses, e.g., ` 2.3(4) ` , 
  * Denoting an absolute uncertainty, e.g., ` 2.3+-0.4 ` becomes 2.3Â±0.4. 

Zero supports both and can convert between these two, so that you can pick the
displayed style (configured via ` uncertainty-mode ` , see above)
independently of the input style.

How do uncertainties interplay with exponents? The uncertainty needs to come
first, and the exponent applies to both the mantissa and the uncertainty,
e.g., ` num("1.23+-.04e2") ` becomes

(1.23â¯Â±â¯0.03)Ã10Â²

Note that the mantissa is now put in parentheses to disambiguate the
application of the power.

In some cases, the uncertainty is asymmetric which can be expressed via `
num("1.23+0.02-0.01") `

1.23âºâ°ËÌâ°Â²ââ.ââ

###  Table alignment

In scientific publication, presenting many numbers in a readable fashion can
be a difficult discipline. A good starting point is to align numbers in a
table at the decimal separator. With _Zero_ , this can be accomplished by
using ` ztable ` , a wrapper for the built-in ` table ` function. It features
an additional parameter ` format ` which takes an array of ` none ` , ` auto `
, or ` dictionary ` values to turn on number alignment for specific columns.

    
    
    #ztable(
      columns: 3,
      align: center,
      format: (none, auto, auto),
      $n$, $Î±$, $Î²$,
      [1], [3.45], [-11.1],
      ..
    )
    

Non-number entries (e.g., in the header) are automatically recognized in some
cases and will not be aligned. In ambiguous cases, adding a leading or
trailing space tells _Zero_ not to apply alignment to this cell, e.g., `
[Angle ] ` instead of ` [Angle] ` .

![Number alignment in tables](https://github.com/user-
attachments/assets/2effb7f0-0d9b-401a-92e1-20461d0c1fcb)

In addition, you can prefix or suffix a numeral with content wrapped by the
function ` nonum[] ` to mark it as _not belonging to the number_ . The
remaining content may still be recognized as a number and formatted/aligned
accordingly.

    
    
    #ztable(
      format: (auto,),
      [#nonum[â¬]123.0#nonum(footnote[A special number])],
      [12.111],
    )
    

![Number alignment in tables](https://github.com/user-
attachments/assets/270ae789-2a8c-44a3-b3a9-0ca588bfbad3)

Zero not only aligns numbers at the decimal point but also at the uncertainty
and exponent part. Moreover, by passing a ` dictionary ` instead of ` auto ` ,
a set of ` num() ` arguments to apply to all numbers in a column can be
specified.

    
    
    #ztable(
      columns: 4,
      align: center,
      format: (none, auto, auto, (digits: 1)),
      $n$, $Î±$, $Î²$, $Î³$,
      [1], [3.45e2], [-11.1+-3], [0],
      ..
    )
    

![Advanced number alignment in tables](https://github.com/user-
attachments/assets/c96941bc-f002-4b93-b2cd-705c8104682f)

##  Zero for third-party packages

This package provides some useful extras for third-party packages that
generate formatted numbers (for example graphics libraries).

Instead of passing a ` str ` to ` num() ` , it is also possible to pass a
dictionary of the form

    
    
    (
      mantissa:  str | int | float,
      e:         none | str,
      pm:        none | array
    )
    

This way, parsing the number can be avoided which makes especially sense for
packages that generate numbers (e.g., tick labels for a diagram axis) with
independent mantissa and exponent.

Furthermore, ` num() ` also allows ` array ` arguments for ` number ` which
allows for more efficient batch-processing of numbers with the same setup. In
this case, the caller of the function needs to provide ` context ` .

##  Changelog

###  Version 0.3.0

  * Adds ` nonum[] ` function that can be used to mark content in cells as _not belonging to the number_ . The remaining content may still be recognized as a number and formatted/aligned accordingly. The content wrapped by ` nonum[] ` is preserved. 
  * Fixes number alignment tables with new version Typst 0.12. 

###  Version 0.2.0

  * Adds support for using non-math fonts for ` num ` via the option ` math ` . This can be activated by calling ` #set-num(math: false) ` . 
  * Performance improvements for both ` num() ` and ` ztable(9) `

###  Version 0.1.0

###  How to add

Copy this into your project and use the import as  ` zero `

    
    
    #import "@preview/zero:0.3.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Mc-Zen ](https://github.com/Mc-Zen)
License:

     MIT 
Current version:

     0.3.0 
Last updated:

     October 28, 2024 
First released:

     September 16, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     15.7 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/zero-0.3.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/Mc-Zen/zero)
Categor  ies  :

    

  * ![Visualization icon](/assets/icons/16-chart.svg) [ Visualization ](https://typst.app/universe/search/?category=visualization)
  * ![Layout icon](/assets/icons/16-layout.svg) [ Layout ](https://typst.app/universe/search/?category=layout)

###  Where to report issues?

This  package  is a project of  Mc-Zen  .  Report issues on  [ their
repository ](https://github.com/Mc-Zen/zero) .  You can also try to ask for
help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.3.0  |  October 28, 2024   
[ 0.2.0 ](https://typst.app/universe/package/zero/0.2.0/) |  October 4, 2024   
[ 0.1.0 ](https://typst.app/universe/package/zero/0.1.0/) |  September 16, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

