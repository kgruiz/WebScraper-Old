  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Data Loading ](/docs/reference/data-loading/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ CBOR ](/docs/reference/data-loading/cbor/)

#  ` cbor `

Reads structured data from a CBOR file.

The file must contain a valid CBOR serialization. Mappings will be converted
into Typst dictionaries, and sequences will be converted into Typst arrays.
Strings and booleans will be converted into the Typst equivalents, null-values
( ` null ` , ` ~ ` or empty ``) will be converted into ` none  ` , and numbers
will be converted to floats or integers depending on whether they are whole
numbers.

Be aware that integers larger than 2  63  -1 will be converted to floating
point numbers, which may result in an approximative value.

##  Parameters

Question mark

Parameters are the inputs to a function. They are specified in parentheses
after the function name.

cbor  (

[ str ](/docs/reference/foundations/str/)

)  -> any

###  ` path `

[ str ](/docs/reference/foundations/str/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

Path to a CBOR file.

For more details, see the [ Paths section ](/docs/reference/syntax/#paths) .

##  Definitions

Question mark

Functions and types and can have associated definitions. These are accessed by
specifying the function or type, followed by a period, and then the
definition's name.

###  ` decode `

Reads structured data from CBOR bytes.

cbor  .  decode  (

[ bytes ](/docs/reference/foundations/bytes/)

)  -> any

####  ` data `

[ bytes ](/docs/reference/foundations/bytes/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

cbor data.

###  ` encode `

Encode structured data into CBOR bytes.

cbor  .  encode  (

any

)  -> [ bytes ](/docs/reference/foundations/bytes/)

####  ` value `

any

Required  Positional

Question mark

Positional parameters are specified in order, without names.

Value to be encoded.

[ ![â](/assets/icons/16-arrow-right.svg) Data Loading  Previous page
](/docs/reference/data-loading/) [ ![â](/assets/icons/16-arrow-right.svg)
CSV  Next page  ](/docs/reference/data-loading/csv/)

