  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Model ](/docs/reference/model/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Link ](/docs/reference/model/link/)

#  ` link ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

Links to a URL or a location in the document.

By default, links are not styled any different from normal text. However, you
can easily apply a style of your choice with a show rule.

##  Example

    
    
    #show link: underline
    
    https://example.com \
    
    #link("https://example.com") \
    #link("https://example.com")[
      See example.com
    ]
    

![Preview](/assets/docs/mBfQJYO4ObjIyuLi_FjKfgAAAAAAAAAA.png)

##  Syntax

This function also has dedicated syntax: Text that starts with ` http:// ` or
` https:// ` is automatically turned into a link.

##  Parameters

Question mark

Parameters are the inputs to a function. They are specified in parentheses
after the function name.

link  (

[ str ](/docs/reference/foundations/str/) [ label
](/docs/reference/foundations/label/) [ location
](/docs/reference/introspection/location/) [ dictionary
](/docs/reference/foundations/dictionary/) ,  [ content
](/docs/reference/foundations/content/) ,

)  -> [ content ](/docs/reference/foundations/content/)

###  ` dest `

[ str ](/docs/reference/foundations/str/) or  [ label
](/docs/reference/foundations/label/) or  [ location
](/docs/reference/introspection/location/) or  [ dictionary
](/docs/reference/foundations/dictionary/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The destination the link points to.

  * To link to web pages, ` dest ` should be a valid URL string. If the URL is in the ` mailto: ` or ` tel: ` scheme and the ` body ` parameter is omitted, the email address or phone number will be the link's body, without the scheme. 

  * To link to another part of the document, ` dest ` can take one of three forms: 

    * A [ label ](/docs/reference/foundations/label/ "label") attached to an element. If you also want automatic text for the link based on the element, consider using a [ reference ](/docs/reference/model/ref/) instead. 

    * A [ ` location ` ](/docs/reference/introspection/location/ "`location`") (typically retrieved from [ ` here ` ](/docs/reference/introspection/here/ "`here`") , [ ` locate ` ](/docs/reference/introspection/locate/ "`locate`") or [ ` query ` ](/docs/reference/introspection/query/ "`query`") ). 

    * A dictionary with a ` page ` key of type [ integer ](/docs/reference/foundations/int/) and ` x ` and ` y ` coordinates of type [ length ](/docs/reference/layout/length/ "length") . Pages are counted from one, and the coordinates are relative to the page's top left corner. 

![](/assets/icons/16-arrow-right.svg) View example

    
    
    = Introduction <intro>
    #link("mailto:hello@typst.app") \
    #link(<intro>)[Go to intro] \
    #link((page: 1, x: 0pt, y: 0pt))[
      Go to top
    ]
    

![Preview](/assets/docs/r-LwcI2C1K4OtUWhtvg8QgAAAAAAAAAA.png)

###  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The content that should become a link.

If ` dest ` is an URL string, the parameter can be omitted. In this case, the
URL will be shown as the link.

[ ![â](/assets/icons/16-arrow-right.svg) Heading  Previous page
](/docs/reference/model/heading/) [ ![â](/assets/icons/16-arrow-right.svg)
Numbered List  Next page  ](/docs/reference/model/enum/)

