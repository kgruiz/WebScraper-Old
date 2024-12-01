  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Text ](/docs/reference/text/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Smartquote ](/docs/reference/text/smartquote/)

#  ` smartquote ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

A language-aware quote that reacts to its context.

Automatically turns into an appropriate opening or closing quote based on the
active [ text language ](/docs/reference/text/text/#parameters-lang) .

##  Example

    
    
    "This is in quotes."
    
    #set text(lang: "de")
    "Das ist in AnfÃ¼hrungszeichen."
    
    #set text(lang: "fr")
    "C'est entre guillemets."
    

![Preview](/assets/docs/dhrUjSwC3cH8VIWvplWrzwAAAAAAAAAA.png)

##  Syntax

This function also has dedicated syntax: The normal quote characters ( ` ' `
and ` " ` ). Typst automatically makes your quotes smart.

##  Parameters

Question mark

Parameters are the inputs to a function. They are specified in parentheses
after the function name.

smartquote  (

double  :  [ bool ](/docs/reference/foundations/bool/) ,  enabled  :  [ bool
](/docs/reference/foundations/bool/) ,  alternative  :  [ bool
](/docs/reference/foundations/bool/) ,  quotes  :  [ auto
](/docs/reference/foundations/auto/) [ str ](/docs/reference/foundations/str/)
[ array ](/docs/reference/foundations/array/) [ dictionary
](/docs/reference/foundations/dictionary/) ,

)  -> [ content ](/docs/reference/foundations/content/)

###  ` double `

[ bool ](/docs/reference/foundations/bool/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

Whether this should be a double quote.

Default: ` true  `

###  ` enabled `

[ bool ](/docs/reference/foundations/bool/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

Whether smart quotes are enabled.

To disable smartness for a single quote, you can also escape it with a
backslash.

Default: ` true  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set smartquote(enabled: false)
    
    These are "dumb" quotes.
    

![Preview](/assets/docs/ykeeFPAnOBNAwmLXSDxTqAAAAAAAAAAA.png)

###  ` alternative `

[ bool ](/docs/reference/foundations/bool/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

Whether to use alternative quotes.

Does nothing for languages that don't have alternative quotes, or if explicit
quotes were set.

Default: ` false  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set text(lang: "de")
    #set smartquote(alternative: true)
    
    "Das ist in anderen AnfÃ¼hrungszeichen."
    

![Preview](/assets/docs/lyTPNxNjIzyFJbp-JlBMpgAAAAAAAAAA.png)

###  ` quotes `

[ auto ](/docs/reference/foundations/auto/) or  [ str
](/docs/reference/foundations/str/) or  [ array
](/docs/reference/foundations/array/) or  [ dictionary
](/docs/reference/foundations/dictionary/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The quotes to use.

  * When set to ` auto  ` , the appropriate single quotes for the [ text language ](/docs/reference/text/text/#parameters-lang) will be used. This is the default. 
  * Custom quotes can be passed as a string, array, or dictionary of either 
    * [ string ](/docs/reference/foundations/str/) : a string consisting of two characters containing the opening and closing double quotes (characters here refer to Unicode grapheme clusters) 
    * [ array ](/docs/reference/foundations/array/ "array") : an array containing the opening and closing double quotes 
    * [ dictionary ](/docs/reference/foundations/dictionary/ "dictionary") : an array containing the double and single quotes, each specified as either ` auto  ` , string, or array 

Default: ` auto  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set text(lang: "de")
    'Das sind normale AnfÃ¼hrungszeichen.'
    
    #set smartquote(quotes: "()")
    "Das sind eigene AnfÃ¼hrungszeichen."
    
    #set smartquote(quotes: (single: ("[[", "]]"),  double: auto))
    'Das sind eigene AnfÃ¼hrungszeichen.'
    

![Preview](/assets/docs/bSqE_vffbQfTFgF9cX2J6AAAAAAAAAAA.png)

[ ![â](/assets/icons/16-arrow-right.svg) Small Capitals  Previous page
](/docs/reference/text/smallcaps/) [ ![â](/assets/icons/16-arrow-right.svg)
Strikethrough  Next page  ](/docs/reference/text/strike/)

