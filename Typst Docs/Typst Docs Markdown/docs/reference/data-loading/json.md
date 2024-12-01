  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Data Loading ](/docs/reference/data-loading/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ JSON ](/docs/reference/data-loading/json/)

#  ` json `

Reads structured data from a JSON file.

The file must contain a valid JSON value, such as object or array. JSON
objects will be converted into Typst dictionaries, and JSON arrays will be
converted into Typst arrays. Strings and booleans will be converted into the
Typst equivalents, ` null ` will be converted into ` none  ` , and numbers
will be converted to floats or integers depending on whether they are whole
numbers.

Be aware that integers larger than 2  63  -1 will be converted to floating
point numbers, which may result in an approximative value.

The function returns a dictionary, an array or, depending on the JSON file,
another JSON data type.

The JSON files in the example contain objects with the keys ` temperature ` ,
` unit ` , and ` weather ` .

##  Example

    
    
    #let forecast(day) = block[
      #box(square(
        width: 2cm,
        inset: 8pt,
        fill: if day.weather == "sunny" {
          yellow
        } else {
          aqua
        },
        align(
          bottom + right,
          strong(day.weather),
        ),
      ))
      #h(6pt)
      #set text(22pt, baseline: -8pt)
      #day.temperature Â°#day.unit
    ]
    
    #forecast(json("monday.json"))
    #forecast(json("tuesday.json"))
    

![Preview](/assets/docs/9TGGThvdnznDbVRRo5-HsgAAAAAAAAAA.png)

##  Parameters

Question mark

Parameters are the inputs to a function. They are specified in parentheses
after the function name.

json  (

[ str ](/docs/reference/foundations/str/)

)  -> any

###  ` path `

[ str ](/docs/reference/foundations/str/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

Path to a JSON file.

For more details, see the [ Paths section ](/docs/reference/syntax/#paths) .

##  Definitions

Question mark

Functions and types and can have associated definitions. These are accessed by
specifying the function or type, followed by a period, and then the
definition's name.

###  ` decode `

Reads structured data from a JSON string/bytes.

json  .  decode  (

[ str ](/docs/reference/foundations/str/) [ bytes
](/docs/reference/foundations/bytes/)

)  -> any

####  ` data `

[ str ](/docs/reference/foundations/str/) or  [ bytes
](/docs/reference/foundations/bytes/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

JSON data.

###  ` encode `

Encodes structured data into a JSON string.

json  .  encode  (

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

Whether to pretty print the JSON with newlines and indentation.

Default: ` true  `

[ ![â](/assets/icons/16-arrow-right.svg) CSV  Previous page
](/docs/reference/data-loading/csv/) [ ![â](/assets/icons/16-arrow-
right.svg) Read  Next page  ](/docs/reference/data-loading/read/)

