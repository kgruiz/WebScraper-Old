  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Introspection ](/docs/reference/introspection/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Location ](/docs/reference/introspection/location/)

#  location

Identifies an element in the document.

A location uniquely identifies an element in the document and lets you access
its absolute position on the pages. You can retrieve the current location with
the [ ` here ` ](/docs/reference/introspection/here/ "`here`") function and
the location of a queried or shown element with the [ ` location() `
](/docs/reference/foundations/content/#definitions-location) method on
content.

##  Locatable elements

Currently, only a subset of element functions is locatable. Aside from
headings and figures, this includes equations, references, quotes and all
elements with an explicit label. As a result, you _can_ query for e.g. [ `
strong ` ](/docs/reference/model/strong/ "`strong`") elements, but you will
find only those that have an explicit label attached to them. This limitation
will be resolved in the future.

##  Definitions

Question mark

Functions and types and can have associated definitions. These are accessed by
specifying the function or type, followed by a period, and then the
definition's name.

###  ` page `

Returns the page number for this location.

Note that this does not return the value of the [ page counter
](/docs/reference/introspection/counter/) at this location, but the true page
number (starting from one).

If you want to know the value of the page counter, use ` counter  (  page  )
.  at  (  loc  )  ` instead.

Can be used with [ ` here ` ](/docs/reference/introspection/here/ "`here`") to
retrieve the physical page position of the current context:

self  .  page  (

)  -> [ int ](/docs/reference/foundations/int/)

    
    
    #context [
      I am located on
      page #here().page()
    ]
    

![Preview](/assets/docs/0ToVSLLUesTLkEw_YsnJkwAAAAAAAAAA.png)

###  ` position `

Returns a dictionary with the page number and the x, y position for this
location. The page number starts at one and the coordinates are measured from
the top-left of the page.

If you only need the page number, use ` page() ` instead as it allows Typst to
skip unnecessary work.

self  .  position  (

)  -> [ dictionary ](/docs/reference/foundations/dictionary/)

###  ` page-numbering `

Returns the page numbering pattern of the page at this location. This can be
used when displaying the page counter in order to obtain the local numbering.
This is useful if you are building custom indices or outlines.

If the page numbering is set to ` none  ` at that location, this function
returns ` none  ` .

self  .  page-numbering  (

)  -> [ none ](/docs/reference/foundations/none/) [ str
](/docs/reference/foundations/str/) [ function
](/docs/reference/foundations/function/)

[ ![â](/assets/icons/16-arrow-right.svg) Locate  Previous page
](/docs/reference/introspection/locate/) [ ![â](/assets/icons/16-arrow-
right.svg) Metadata  Next page  ](/docs/reference/introspection/metadata/)

