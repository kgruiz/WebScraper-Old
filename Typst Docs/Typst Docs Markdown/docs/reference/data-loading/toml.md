  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Data Loading ](/docs/reference/data-loading/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ TOML ](/docs/reference/data-loading/toml/)

#  ` toml `

Reads structured data from a TOML file.

The file must contain a valid TOML table. TOML tables will be converted into
Typst dictionaries, and TOML arrays will be converted into Typst arrays.
Strings, booleans and datetimes will be converted into the Typst equivalents
and numbers will be converted to floats or integers depending on whether they
are whole numbers.

The TOML file in the example consists of a table with the keys ` title ` , `
version ` , and ` authors ` .

##  Example

    
    
    #let details = toml("details.toml")
    
    Title: #details.title \
    Version: #details.version \
    Authors: #(details.authors
      .join(", ", last: " and "))
    

![Preview](/assets/docs/f26frHBWUfr7bIomQ1qwWAAAAAAAAAAA.png)

##  Parameters

Question mark

Parameters are the inputs to a function. They are specified in parentheses
after the function name.

toml  (

[ str ](/docs/reference/foundations/str/)

)  -> any

###  ` path `

[ str ](/docs/reference/foundations/str/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

Path to a TOML file.

For more details, see the [ Paths section ](/docs/reference/syntax/#paths) .

##  Definitions

Question mark

Functions and types and can have associated definitions. These are accessed by
specifying the function or type, followed by a period, and then the
definition's name.

###  ` decode `

Reads structured data from a TOML string/bytes.

toml  .  decode  (

[ str ](/docs/reference/foundations/str/) [ bytes
](/docs/reference/foundations/bytes/)

)  -> any

####  ` data `

[ str ](/docs/reference/foundations/str/) or  [ bytes
](/docs/reference/foundations/bytes/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

TOML data.

###  ` encode `

Encodes structured data into a TOML string.

toml  .  encode  (

any  ,  pretty  :  [ bool ](/docs/reference/foundations/bool/) ,

)  -> [ str ](/docs/reference/foundations/str/)

####  ` value `

any

Required  Positional

Question mark

Positional parameters are specified in order, without names.

Value to be encoded.

####  ` pretty `

[ bool ](/docs/reference/foundations/bool/)

Whether to pretty-print the resulting TOML.

Default: ` true  `

[ ![â](/assets/icons/16-arrow-right.svg) Read  Previous page
](/docs/reference/data-loading/read/) [ ![â](/assets/icons/16-arrow-
right.svg) XML  Next page  ](/docs/reference/data-loading/xml/)

