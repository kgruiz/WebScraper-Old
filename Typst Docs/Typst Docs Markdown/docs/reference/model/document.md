  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Model ](/docs/reference/model/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Document ](/docs/reference/model/document/)

#  ` document ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

The root element of a document and its metadata.

All documents are automatically wrapped in a ` document ` element. You cannot
create a document element yourself. This function is only used with [ set
rules ](/docs/reference/styling/#set-rules) to specify document metadata. Such
a set rule must not occur inside of any layout container.

    
    
    #set document(title: [Hello])
    
    This has no visible output, but
    embeds metadata into the PDF!
    

![Preview](/assets/docs/g-R4wkXOtFnr5QmDRHynVAAAAAAAAAAA.png)

Note that metadata set with this function is not rendered within the document.
Instead, it is embedded in the compiled PDF file.

##  Parameters

Question mark

Parameters are the inputs to a function. They are specified in parentheses
after the function name.

document  (

title  :  [ none ](/docs/reference/foundations/none/) [ content
](/docs/reference/foundations/content/) ,  author  :  [ str
](/docs/reference/foundations/str/) [ array
](/docs/reference/foundations/array/) ,  keywords  :  [ str
](/docs/reference/foundations/str/) [ array
](/docs/reference/foundations/array/) ,  date  :  [ none
](/docs/reference/foundations/none/) [ auto
](/docs/reference/foundations/auto/) [ datetime
](/docs/reference/foundations/datetime/) ,

)  -> [ content ](/docs/reference/foundations/content/)

###  ` title `

[ none ](/docs/reference/foundations/none/) or  [ content
](/docs/reference/foundations/content/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The document's title. This is often rendered as the title of the PDF viewer
window.

While this can be arbitrary content, PDF viewers only support plain text
titles, so the conversion might be lossy.

Default: ` none  `

###  ` author `

[ str ](/docs/reference/foundations/str/) or  [ array
](/docs/reference/foundations/array/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The document's authors.

Default: ` (  )  `

###  ` keywords `

[ str ](/docs/reference/foundations/str/) or  [ array
](/docs/reference/foundations/array/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The document's keywords.

Default: ` (  )  `

###  ` date `

[ none ](/docs/reference/foundations/none/) or  [ auto
](/docs/reference/foundations/auto/) or  [ datetime
](/docs/reference/foundations/datetime/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The document's creation date.

If this is ` auto  ` (default), Typst uses the current date and time. Setting
it to ` none  ` prevents Typst from embedding any creation date into the PDF
metadata.

The year component must be at least zero in order to be embedded into a PDF.

If you want to create byte-by-byte reproducible PDFs, set this to something
other than ` auto  ` .

Default: ` auto  `

[ ![â](/assets/icons/16-arrow-right.svg) Cite  Previous page
](/docs/reference/model/cite/) [ ![â](/assets/icons/16-arrow-right.svg)
Emphasis  Next page  ](/docs/reference/model/emph/)

