  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Foundations ](/docs/reference/foundations/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Regex ](/docs/reference/foundations/regex/)

#  regex

A regular expression.

Can be used as a [ show rule selector ](/docs/reference/styling/#show-rules)
and with [ string methods ](/docs/reference/foundations/str/) like ` find ` ,
` split ` , and ` replace ` .

[ See here ](https://docs.rs/regex/latest/regex/#syntax) for a specification
of the supported syntax.

##  Example

    
    
    // Works with string methods.
    #"a,b;c".split(regex("[,;]"))
    
    // Works with show rules.
    #show regex("\d+"): set text(red)
    
    The numbers 1 to 10.
    

![Preview](/assets/docs/UtfXJAklKdjyBZ3HmRwY-AAAAAAAAAAA.png)

##  Constructor

Question mark

If a type has a constructor, you can call it like a function to create a new
value of the type.

Create a regular expression from a string.

regex  (

[ str ](/docs/reference/foundations/str/)

)  -> [ regex ](/docs/reference/foundations/regex/)

####  ` regex `

[ str ](/docs/reference/foundations/str/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The regular expression as a string.

Most regex escape sequences just work because they are not valid Typst escape
sequences. To produce regex escape sequences that are also valid in Typst
(e.g. ` \\  ` ), you need to escape twice. Thus, to match a verbatim
backslash, you would need to write ` regex  (  "\\\\"  )  ` .

If you need many escape sequences, you can also create a raw element and
extract its text to use it for your regular expressions:

![](/assets/icons/16-arrow-right.svg) View example

` regex  (  `\d+\.\d+\.\d+`  .  text  )  ` .

[ ![â](/assets/icons/16-arrow-right.svg) Plugin  Previous page
](/docs/reference/foundations/plugin/) [ ![â](/assets/icons/16-arrow-
right.svg) Representation  Next page  ](/docs/reference/foundations/repr/)

