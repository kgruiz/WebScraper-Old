  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Visualize ](/docs/reference/visualize/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Image ](/docs/reference/visualize/image/)

#  ` image ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

A raster or vector graphic.

You can wrap the image in a [ ` figure ` ](/docs/reference/model/figure/
"`figure`") to give it a number and caption.

Like most elements, images are _block-level_ by default and thus do not
integrate themselves into adjacent paragraphs. To force an image to become
inline, put it into a [ ` box ` ](/docs/reference/layout/box/ "`box`") .

##  Example

    
    
    #figure(
      image("molecular.jpg", width: 80%),
      caption: [
        A step in the molecular testing
        pipeline of our lab.
      ],
    )
    

![Preview](/assets/docs/znWnPh4HT5GrpkEcbnfOxAAAAAAAAAAA.png)

##  Parameters

Question mark

Parameters are the inputs to a function. They are specified in parentheses
after the function name.

image  (

[ str ](/docs/reference/foundations/str/) ,  format  :  [ auto
](/docs/reference/foundations/auto/) [ str ](/docs/reference/foundations/str/)
,  width  :  [ auto ](/docs/reference/foundations/auto/) [ relative
](/docs/reference/layout/relative/) ,  height  :  [ auto
](/docs/reference/foundations/auto/) [ relative
](/docs/reference/layout/relative/) [ fraction
](/docs/reference/layout/fraction/) ,  alt  :  [ none
](/docs/reference/foundations/none/) [ str ](/docs/reference/foundations/str/)
,  fit  :  [ str ](/docs/reference/foundations/str/) ,

)  -> [ content ](/docs/reference/foundations/content/)

###  ` path `

[ str ](/docs/reference/foundations/str/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

Path to an image file

For more details, see the [ Paths section ](/docs/reference/syntax/#paths) .

###  ` format `

[ auto ](/docs/reference/foundations/auto/) or  [ str
](/docs/reference/foundations/str/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The image's format. Detected automatically by default.

Supported formats are PNG, JPEG, GIF, and SVG. Using a PDF as an image is [
not currently supported ](https://github.com/typst/typst/issues/145) .

Variant  |  Details   
---|---  
` "  png  " ` |  Raster format for illustrations and transparent graphics.   
` "  jpg  " ` |  Lossy raster format suitable for photos.   
` "  gif  " ` |  Raster format that is typically used for short animated clips.   
` "  svg  " ` |  The vector graphics format of the web.   
  
Default: ` auto  `

###  ` width `

[ auto ](/docs/reference/foundations/auto/) or  [ relative
](/docs/reference/layout/relative/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The width of the image.

Default: ` auto  `

###  ` height `

[ auto ](/docs/reference/foundations/auto/) or  [ relative
](/docs/reference/layout/relative/) or  [ fraction
](/docs/reference/layout/fraction/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The height of the image.

Default: ` auto  `

###  ` alt `

[ none ](/docs/reference/foundations/none/) or  [ str
](/docs/reference/foundations/str/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

A text describing the image.

Default: ` none  `

###  ` fit `

[ str ](/docs/reference/foundations/str/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

How the image should adjust itself to a given area (the area is defined by the
` width ` and ` height ` fields). Note that ` fit ` doesn't visually change
anything if the area's aspect ratio is the same as the image's one.

Variant  |  Details   
---|---  
` "  cover  " ` |  The image should completely cover the area (preserves aspect ratio by cropping the image only horizontally or vertically). This is the default.   
` "  contain  " ` |  The image should be fully contained in the area (preserves aspect ratio; doesn't crop the image; one dimension can be narrower than specified).   
` "  stretch  " ` |  The image should be stretched so that it exactly fills the area, even if this means that the image will be distorted (doesn't preserve aspect ratio and doesn't crop the image).   
  
Default: ` "cover"  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set page(width: 300pt, height: 50pt, margin: 10pt)
    #image("tiger.jpg", width: 100%, fit: "cover")
    #image("tiger.jpg", width: 100%, fit: "contain")
    #image("tiger.jpg", width: 100%, fit: "stretch")
    

![Preview](/assets/docs/oZRwamqZZ0p_tV8oioYxxgAAAAAAAAAA.png)
![Preview](/assets/docs/oZRwamqZZ0p_tV8oioYxxgAAAAAAAAAB.png)
![Preview](/assets/docs/oZRwamqZZ0p_tV8oioYxxgAAAAAAAAAC.png)

##  Definitions

Question mark

Functions and types and can have associated definitions. These are accessed by
specifying the function or type, followed by a period, and then the
definition's name.

###  ` decode `

Decode a raster or vector graphic from bytes or a string.

image  .  decode  (

[ str ](/docs/reference/foundations/str/) [ bytes
](/docs/reference/foundations/bytes/) ,  format  :  [ auto
](/docs/reference/foundations/auto/) [ str ](/docs/reference/foundations/str/)
,  width  :  [ auto ](/docs/reference/foundations/auto/) [ relative
](/docs/reference/layout/relative/) ,  height  :  [ auto
](/docs/reference/foundations/auto/) [ relative
](/docs/reference/layout/relative/) [ fraction
](/docs/reference/layout/fraction/) ,  alt  :  [ none
](/docs/reference/foundations/none/) [ str ](/docs/reference/foundations/str/)
,  fit  :  [ str ](/docs/reference/foundations/str/) ,

)  -> [ content ](/docs/reference/foundations/content/)

    
    
    #let original = read("diagram.svg")
    #let changed = original.replace(
      "#2B80FF", // blue
      green.to-hex(),
    )
    
    #image.decode(original)
    #image.decode(changed)
    

![Preview](/assets/docs/yVFFVjYQ7xibSWu-658yNwAAAAAAAAAA.png)

####  ` data `

[ str ](/docs/reference/foundations/str/) or  [ bytes
](/docs/reference/foundations/bytes/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The data to decode as an image. Can be a string for SVGs.

####  ` format `

[ auto ](/docs/reference/foundations/auto/) or  [ str
](/docs/reference/foundations/str/)

The image's format. Detected automatically by default.

Variant  |  Details   
---|---  
` "  png  " ` |  Raster format for illustrations and transparent graphics.   
` "  jpg  " ` |  Lossy raster format suitable for photos.   
` "  gif  " ` |  Raster format that is typically used for short animated clips.   
` "  svg  " ` |  The vector graphics format of the web.   
  
####  ` width `

[ auto ](/docs/reference/foundations/auto/) or  [ relative
](/docs/reference/layout/relative/)

The width of the image.

####  ` height `

[ auto ](/docs/reference/foundations/auto/) or  [ relative
](/docs/reference/layout/relative/) or  [ fraction
](/docs/reference/layout/fraction/)

The height of the image.

####  ` alt `

[ none ](/docs/reference/foundations/none/) or  [ str
](/docs/reference/foundations/str/)

A text describing the image.

####  ` fit `

[ str ](/docs/reference/foundations/str/)

How the image should adjust itself to a given area.

Variant  |  Details   
---|---  
` "  cover  " ` |  The image should completely cover the area (preserves aspect ratio by cropping the image only horizontally or vertically). This is the default.   
` "  contain  " ` |  The image should be fully contained in the area (preserves aspect ratio; doesn't crop the image; one dimension can be narrower than specified).   
` "  stretch  " ` |  The image should be stretched so that it exactly fills the area, even if this means that the image will be distorted (doesn't preserve aspect ratio and doesn't crop the image).   
  
[ ![â](/assets/icons/16-arrow-right.svg) Gradient  Previous page
](/docs/reference/visualize/gradient/) [ ![â](/assets/icons/16-arrow-
right.svg) Line  Next page  ](/docs/reference/visualize/line/)

