  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Data Loading ](/docs/reference/data-loading/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ YAML ](/docs/reference/data-loading/yaml/)

#  ` yaml `

Reads structured data from a YAML file.

The file must contain a valid YAML object or array. YAML mappings will be
converted into Typst dictionaries, and YAML sequences will be converted into
Typst arrays. Strings and booleans will be converted into the Typst
equivalents, null-values ( ` null ` , ` ~ ` or empty ``) will be converted
into ` none  ` , and numbers will be converted to floats or integers depending
on whether they are whole numbers. Custom YAML tags are ignored, though the
loaded value will still be present.

Be aware that integers larger than 2  63  -1 will be converted to floating
point numbers, which may give an approximative value.

The YAML files in the example contain objects with authors as keys, each with
a sequence of their own submapping with the keys "title" and "published"

##  Example

    
    
    #let bookshelf(contents) = {
      for (author, works) in contents {
        author
        for work in works [
          - #work.title (#work.published)
        ]
      }
    }
    
    #bookshelf(
      yaml("scifi-authors.yaml")
    )
    

![Preview](/assets/docs/zhzvOjbNeHnb4ZYJg032GwAAAAAAAAAA.png)

##  Parameters

Question mark

Parameters are the inputs to a function. They are specified in parentheses
after the function name.

yaml  (

[ str ](/docs/reference/foundations/str/)

)  -> any

###  ` path `

[ str ](/docs/reference/foundations/str/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

Path to a YAML file.

For more details, see the [ Paths section ](/docs/reference/syntax/#paths) .

##  Definitions

Question mark

Functions and types and can have associated definitions. These are accessed by
specifying the function or type, followed by a period, and then the
definition's name.

###  ` decode `

Reads structured data from a YAML string/bytes.

yaml  .  decode  (

[ str ](/docs/reference/foundations/str/) [ bytes
](/docs/reference/foundations/bytes/)

)  -> any

####  ` data `

[ str ](/docs/reference/foundations/str/) or  [ bytes
](/docs/reference/foundations/bytes/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

YAML data.

###  ` encode `

Encode structured data into a YAML string.

yaml  .  encode  (

any

)  -> [ str ](/docs/reference/foundations/str/)

####  ` value `

any

Required  Positional

Question mark

Positional parameters are specified in order, without names.

Value to be encoded.

[ ![â](/assets/icons/16-arrow-right.svg) XML  Previous page
](/docs/reference/data-loading/xml/) [ ![â](/assets/icons/16-arrow-
right.svg) Guides  Next page  ](/docs/guides/)

