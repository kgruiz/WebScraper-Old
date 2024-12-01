#  pinit

0.2.2

Relative positioning by pins, especially useful for making slides in typst.

Featured  Package

Relative positioning by pins, especially useful for making slides in typst.

##  Example

###  Pin things as you like

Have a look at the source [ here
](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/examples/example.typ)
.

![Example](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/examples/example.png)

###  Dynamic Slides

Pinit works with [ Touying ](https://github.com/touying-typ/touying) or [
Polylux ](https://github.com/andreasKroepelin/polylux) animations.

Have a look at the pdf file [ here ](https://github.com/OrangeX4/typst-
pinit/blob/main/examples/example.pdf) .

![Example
Pages](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/examples/example-
pages.png)

##  Usage

###  Examples

The idea of pinit is pinning pins on the normal flow of the text, and then
placing the content on the page by ` absolute-place ` function.

For example, we can highlight text and add a tip by pins simply:

    
    
    #import "@preview/pinit:0.2.2": *
    
    #set text(size: 24pt)
    
    A simple #pin(1)highlighted text#pin(2).
    
    #pinit-highlight(1, 2)
    
    #pinit-point-from(2)[It is simple.]
    

![simple-
demo](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/examples/simple-
demo.png)

If you want to place the content relative to the center of some pins, you use
a array of pins:

    
    
    #import "@preview/pinit:0.2.2": *
    
    #set text(size: 12pt)
    
    A simple #pin(1)highlighted text#pin(2).
    
    #pinit-highlight(1, 2)
    
    #pinit-point-from((1, 2))[It is simple.]
    

![simple-
demo2](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/examples/simple-
demo2.png)

A more complex example, Have a look at the source [ here
](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/examples/equation-
desc.typ) .

![equation-
desc](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/examples/equation-
desc.png)

###  Fletcher edge support

[ Fletcher ](https://github.com/Jollywatt/typst-fletcher) is a powerful Typst
package for drawing diagrams with arrows. We can use fletcher to draw more
complex arrows.

[ ` pinit-fletcher-edge `
](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#pinit-
fletcher-edge)

    
    
    #import "@preview/pinit:0.2.2": *
    #import "@preview/fletcher:0.5.1"
    
    Con#pin(1)#h(4em)#pin(2)nect
    
    #pinit-fletcher-edge(
      fletcher, 1, end: 2, (1, 0), [bend], bend: -20deg, "<->",
      decorations: fletcher.cetz.decorations.wave.with(amplitude: .1),
    )
    

![fletcher](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/examples/fletcher.png)

###  Pinit for raw

In the code block, we need to use a regex trick to get pinit to work, for
example

    
    
    #show raw: it => {
      show regex("pin\d"): it => pin(eval(it.text.slice(3)))
      it
    }
    
    `print(pin1"hello, world"pin2)`
    
    #pinit-highlight(1, 2)
    

![equation-
desc](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/examples/pinit-
for-raw.png)

Note that typstâs code highlighting breaks up the text, causing overly
complex regular expressions such as â#pin(.*?)â to not work properly.

However, you may want to consider putting it in a comment to avoid
highlighting the text and breaking it up.

##  Notice

**Since Typst does not provide a reliable` absolute-place ` function, you may
consider taking the following steps if a MISALIGNMENT occurs: **

  1. **You could try to add a` #box() ` after the ` #pinit-xxx ` function call, like ` #pinit-xxx()#box() ` . **
  2. **You should add a blank line before the` #pinit-xxx ` function call, otherwise it will cause misalignment. **
  3. **You can try moving` #pinit-xxx() ` in front of or behind ` #pin() ` , or otherwhere, in short, try more. **
  4. **Try to add a offset to the` dx ` or ` dy ` argument of ` #pinit-xxx ` function by yourself. **
  5. **Open an issue if you have any questions you canât solve.**

##  Outline

  * [ Pinit ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#pinit)
    * [ Example ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#example)
      * [ Pin things as you like ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#pin-things-as-you-like)
      * [ Dynamic Slides ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#dynamic-slides)
    * [ Usage ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#usage)
      * [ Examples ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#examples)
      * [ Fletcher edge support ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#fletcher-edge-support)
      * [ Pinit for raw ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#pinit-for-raw)
    * [ Notice ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#notice)
    * [ Outline ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#outline)
    * [ Reference ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#reference)
      * [ ` pin ` ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#pin)
      * [ ` pinit ` ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#pinit-1)
      * [ ` absolute-place ` ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#absolute-place)
      * [ ` pinit-place ` ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#pinit-place)
      * [ ` pinit-rect ` ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#pinit-rect)
      * [ ` pinit-highlight ` ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#pinit-highlight)
      * [ ` pinit-line ` ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#pinit-line)
      * [ ` pinit-line-to ` ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#pinit-line-to)
      * [ ` pinit-arrow ` ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#pinit-arrow)
      * [ ` pinit-double-arrow ` ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#pinit-double-arrow)
      * [ ` pinit-point-to ` ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#pinit-point-to)
      * [ ` pinit-point-from ` ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#pinit-point-from)
      * [ ` simple-arrow ` ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#simple-arrow)
      * [ ` double-arrow ` ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#double-arrow)
      * [ ` pinit-fletcher-edge ` ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#pinit-fletcher-edge)
    * [ Changelog ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#changelog)
      * [ 0.2.2 ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#022)
      * [ 0.2.1 ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#021)
      * [ 0.2.0 ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#020)
      * [ 0.1.4 ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#014)
      * [ 0.1.3 ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#013)
      * [ 0.1.2 ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#012)
      * [ 0.1.1 ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#011)
      * [ 0.1.0 ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#010)
    * [ Acknowledgements ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#acknowledgements)
    * [ License ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#license)

##  Reference

###  ` pin `

Pinning a pin in text, the pin is supposed to be unique in one page.

    
    
    #let pin(name) = { .. }
    

**Arguments:**

  * ` name ` : [ ` int ` or ` str ` or ` any ` ] â Name of pin, which can be any types with unique ` repr() ` return value, such as integer and string. 

###  ` pinit `

Query positions of pins in the same page, then call the callback function `
callback ` .

    
    
    #let pinit(callback: none, ..pins) = { .. }
    

**Arguments:**

  * ` ..pins ` : [ ` pin ` ] â Names of pins you want to query. It is supposed to be arguments of pin or a group of pins. 
  * ` callback ` : [ ` (..positions) => { .. } ` ] â A callback function accepting an array of positions (or a single position) as a parameter. Each position is a dictionary like ` (page: 1, x: 319.97pt, y: 86.66pt) ` . You can use the ` absolute-place ` function in this callback function to display something around the pins. 

###  ` absolute-place `

Place content at a specific location on the page relative to the top left
corner of the page, regardless of margins, current containers, etc.

> This function comes from [ typst-drafting ](https://github.com/ntjess/typst-
> drafting) .
    
    
    #let absolute-place(
      dx: 0em,
      dy: 0em,
      body,
    ) = { .. }
    

**Arguments:**

  * ` dx ` : [ ` length ` ] â Length in the x-axis relative to the left edge of the page. 
  * ` dy ` : [ ` length ` ] â Length in the y-axis relative to the top edge of the page. 
  * ` content ` : [ ` content ` ] â The content you want to place. 

###  ` pinit-place `

Place content at a specific location on the page relative to the pin.

    
    
    #let pinit-place(
      dx: 0pt,
      dy: 0pt,
      pin-name,
      body,
    ) = { .. }
    

**Arguments:**

  * ` dx ` : [ ` length ` ] â Offset X relative to the pin. 
  * ` dy ` : [ ` length ` ] â Offset Y relative to the pin. 
  * ` pin-name ` : [ ` pin ` ] â Name of the pin to which you want to locate. 
  * ` body ` : [ ` content ` ] â The content you want to place. 

###  ` pinit-rect `

Draw a rectangular shape on the page **containing all pins** with optional
extended width and height.

    
    
    #let pinit-rect(
      dx: 0em,
      dy: -1em,
      extended-width: 0em,
      extended-height: 1.4em,
      pin1,
      pin2,
      pin3,  // Optional
      ..pinX,
      ..args,
    ) = { .. }
    

**Arguments:**

  * ` dx ` : [ ` length ` ] â Offset X relative to the min-left of pins. 
  * ` dy ` : [ ` length ` ] â Offset Y relative to the min-top of pins. 
  * ` extended-width ` : [ ` length ` ] â Optional extended width of the rectangular shape. 
  * ` extended-height ` : [ ` length ` ] â Optional extended height of the rectangular shape. 
  * ` pin1 ` : [ ` pin ` ] â One of these pins. 
  * ` pin2 ` : [ ` pin ` ] â One of these pins. 
  * ` pin3 ` : [ ` pin ` ] â One of these pins, optionally. 
  * ` ...args ` : Additional named arguments or settings for [ ` rect ` ](https://typst.app/docs/reference/visualize/rect/) , like ` fill ` , ` stroke ` and ` radius ` . 

###  ` pinit-highlight `

Highlight a specific area on the page with a filled color and optional radius
and stroke. It is just a simply styled ` pinit-rect ` .

    
    
    #let pinit-highlight(
      fill: rgb(255, 0, 0, 20),
      radius: 5pt,
      stroke: 0pt,
      dx: 0em,
      dy: -1em,
      extended-width: 0em,
      extended-height: 1.4em,
      pin1,
      pin2,
      pin3,  // Optional
      ..pinX,
      ...args,
    ) = { .. }
    

**Arguments:**

  * ` fill ` : [ ` color ` ] â The fill color for the highlighted area. 
  * ` radius ` : [ ` length ` ] â Optional radius for the highlight. 
  * ` stroke ` : [ ` stroke ` ] â Optional stroke width for the highlight. 
  * ` dx ` : [ ` length ` ] â Offset X relative to the min-left of pins. 
  * ` dy ` : [ ` length ` ] â Offset Y relative to the min-top of pins. 
  * ` extended-width ` : [ ` length ` ] â Optional extended width of the rectangular shape. 
  * ` extended-height ` : [ ` length ` ] â Optional extended height of the rectangular shape. 
  * ` pin1 ` : [ ` pin ` ] â One of these pins. 
  * ` pin2 ` : [ ` pin ` ] â One of these pins. 
  * ` pin3 ` : [ ` pin ` ] â One of these pins, optionally. 
  * ` ...args ` : Additional arguments or settings for [ ` pinit-rect ` ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#pinit-rect) . 

###  ` pinit-line `

Draw a line on the page between two specified pins with an optional stroke.

    
    
    #let pinit-line(
      stroke: 1pt,
      start-dx: 0pt,
      start-dy: 0pt,
      end-dx: 0pt,
      end-dy: 0pt,
      start,
      end,
    ) = { ... }
    

**Arguments:**

  * ` stroke ` : [ ` stroke ` ] â The stroke for the line. 
  * ` start-dx ` : [ ` length ` ] â Offset X relative to the start pin. 
  * ` start-dy ` : [ ` length ` ] â Offset Y relative to the start pin. 
  * ` end-dx ` : [ ` length ` ] â Offset X relative to the end pin. 
  * ` end-dy ` : [ ` length ` ] â Offset Y relative to the end pin. 
  * ` start ` : [ ` pin ` ] â The start pin. 
  * ` end ` : [ ` pin ` ] â The end pin. 

###  ` pinit-line-to `

Draw an line from a specified pin to a point on the page with optional
settings.

    
    
    #let pinit-line-to(
      stroke: 1pt,
      pin-dx: 5pt,
      pin-dy: 5pt,
      body-dx: 5pt,
      body-dy: 5pt,
      offset-dx: 35pt,
      offset-dy: 35pt,
      pin-name,
      body,
    ) = { ... }
    

**Arguments:**

  * ` stroke ` : [ ` stroke ` ] â The stroke for the line. 
  * ` pin-dx ` : [ ` length ` ] â Offset X of arrow start relative to the pin. 
  * ` pin-dy ` : [ ` length ` ] â Offset Y of arrow start relative to the pin. 
  * ` body-dx ` : [ ` length ` ] â Offset X of arrow end relative to the body. 
  * ` body-dy ` : [ ` length ` ] â Offset Y of arrow end relative to the body. 
  * ` offset-dx ` : [ ` length ` ] â Offset X relative to the pin. 
  * ` offset-dy ` : [ ` length ` ] â Offset Y relative to the pin. 
  * ` pin-name ` : [ ` pin ` ] â The name of the pin to start from. 
  * ` body ` : [ ` content ` ] â The content to draw the arrow to. 

###  ` pinit-arrow `

Draw an arrow between two specified pins with optional settings.

    
    
    #let pinit-arrow(
      start-dx: 0pt,
      start-dy: 0pt,
      end-dx: 0pt,
      end-dy: 0pt,
      start,
      end,
      ..args,
    ) = { ... }
    

**Arguments:**

  * ` start-dx ` : [ ` length ` ] â Offset X relative to the start pin. 
  * ` start-dy ` : [ ` length ` ] â Offset Y relative to the start pin. 
  * ` end-dx ` : [ ` length ` ] â Offset X relative to the end pin. 
  * ` end-dy ` : [ ` length ` ] â Offset Y relative to the end pin. 
  * ` start ` : [ ` pin ` ] â The start pin. 
  * ` end ` : [ ` pin ` ] â The end pin. 
  * ` ...args ` : Additional arguments or settings for [ ` simple-arrow ` ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#simple-arrow) , like ` fill ` , ` stroke ` and ` thickness ` . 

###  ` pinit-double-arrow `

Draw an double arrow between two specified pins with optional settings.

    
    
    #let pinit-double-arrow(
      start-dx: 0pt,
      start-dy: 0pt,
      end-dx: 0pt,
      end-dy: 0pt,
      start,
      end,
      ..args,
    ) = { ... }
    

**Arguments:**

  * ` start-dx ` : [ ` length ` ] â Offset X relative to the start pin. 
  * ` start-dy ` : [ ` length ` ] â Offset Y relative to the start pin. 
  * ` end-dx ` : [ ` length ` ] â Offset X relative to the end pin. 
  * ` end-dy ` : [ ` length ` ] â Offset Y relative to the end pin. 
  * ` start ` : [ ` pin ` ] â The start pin. 
  * ` end ` : [ ` pin ` ] â The end pin. 
  * ` ...args ` : Additional arguments or settings for [ ` double-arrow ` ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#double-arrow) , like ` fill ` , ` stroke ` and ` thickness ` . 

###  ` pinit-point-to `

Draw an arrow from a specified pin to a point on the page with optional
settings.

    
    
    #let pinit-point-to(
      pin-dx: 5pt,
      pin-dy: 5pt,
      body-dx: 5pt,
      body-dy: 5pt,
      offset-dx: 35pt,
      offset-dy: 35pt,
      double: false,
      pin-name,
      body,
      ..args,
    ) = { ... }
    

**Arguments:**

  * ` pin-dx ` : [ ` length ` ] â Offset X of arrow start relative to the pin. 
  * ` pin-dy ` : [ ` length ` ] â Offset Y of arrow start relative to the pin. 
  * ` body-dx ` : [ ` length ` ] â Offset X of arrow end relative to the body. 
  * ` body-dy ` : [ ` length ` ] â Offset Y of arrow end relative to the body. 
  * ` offset-dx ` : [ ` length ` ] â Offset X relative to the pin. 
  * ` offset-dy ` : [ ` length ` ] â Offset Y relative to the pin. 
  * ` double ` : [ ` bool ` ] â Draw a double arrow, default is ` false ` . 
  * ` pin-name ` : [ ` pin ` ] â The name of the pin to start from. 
  * ` body ` : [ ` content ` ] â The content to draw the arrow to. 
  * ` ...args ` : Additional arguments or settings for [ ` simple-arrow ` ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#simple-arrow) , like ` fill ` , ` stroke ` and ` thickness ` . 

###  ` pinit-point-from `

Draw an arrow from a point on the page to a specified pin with optional
settings.

    
    
    #let pinit-point-from(
      pin-dx: 5pt,
      pin-dy: 5pt,
      body-dx: 5pt,
      body-dy: 5pt,
      offset-dx: 35pt,
      offset-dy: 35pt,
      double: false,
      pin-name,
      body,
      ..args,
    ) = { ... }
    

**Arguments:**

  * ` pin-dx ` : [ ` length ` ] â Offset X relative to the pin. 
  * ` pin-dy ` : [ ` length ` ] â Offset Y relative to the pin. 
  * ` body-dx ` : [ ` length ` ] â Offset X relative to the body. 
  * ` body-dy ` : [ ` length ` ] â Offset Y relative to the body. 
  * ` offset-dx ` : [ ` length ` ] â Offset X relative to the left edge of the page. 
  * ` offset-dy ` : [ ` length ` ] â Offset Y relative to the top edge of the page. 
  * ` double ` : [ ` bool ` ] â Draw a double arrow, default is ` false ` . 
  * ` pin-name ` : [ ` pin ` ] â The name of the pin that the arrow to. 
  * ` body ` : [ ` content ` ] â The content to draw the arrow from. 
  * ` ...args ` : Additional arguments or settings for [ ` simple-arrow ` ](https://github.com/typst/packages/raw/main/packages/preview/pinit/0.2.2/#simple-arrow) , like ` fill ` , ` stroke ` and ` thickness ` . 

###  ` simple-arrow `

Draw a simple arrow on the page with optional settings, implemented by [ `
polygon ` ](https://typst.app/docs/reference/visualize/polygon/) .

    
    
    #let simple-arrow(
      fill: black,
      stroke: 0pt,
      start: (0pt, 0pt),
      end: (30pt, 0pt),
      thickness: 2pt,
      arrow-width: 4,
      arrow-height: 4,
      inset: 0.5,
      tail: (),
    ) = { ... }
    

**Arguments:**

  * ` fill ` : [ ` color ` ] â The fill color for the arrow. 
  * ` stroke ` : [ ` stroke ` ] â The stroke for the arrow. 
  * ` start ` : [ ` point ` ] â The starting point of the arrow. 
  * ` end ` : [ ` point ` ] â The ending point of the arrow. 
  * ` thickness ` : [ ` length ` ] â The thickness of the arrow. 
  * ` arrow-width ` : [ ` int ` or ` float ` ] â The width of the arrowhead relative to thickness. 
  * ` arrow-height ` : [ ` int ` or ` float ` ] â The height of the arrowhead relative to thickness. 
  * ` inset ` : [ ` int ` or ` float ` ] â The inset value for the arrowhead relative to thickness. 
  * ` tail ` : [ ` array ` ] â The tail settings for the arrow. 

###  ` double-arrow `

Draw a double arrow on the page with optional settings, implemented by [ `
polygon ` ](https://typst.app/docs/reference/visualize/polygon/) .

    
    
    #let double-arrow(
      fill: black,
      stroke: 0pt,
      start: (0pt, 0pt),
      end: (30pt, 0pt),
      thickness: 2pt,
      arrow-width: 4,
      arrow-height: 4,
      inset: 0.5,
      tail: (),
    ) = { ... }
    

**Arguments:**

  * ` fill ` : [ ` color ` ] â The fill color for the arrow. 
  * ` stroke ` : [ ` stroke ` ] â The stroke for the arrow. 
  * ` start ` : [ ` point ` ] â The starting point of the arrow. 
  * ` end ` : [ ` point ` ] â The ending point of the arrow. 
  * ` thickness ` : [ ` length ` ] â The thickness of the arrow. 
  * ` arrow-width ` : [ ` int ` or ` float ` ] â The width of the arrowhead relative to thickness. 
  * ` arrow-height ` : [ ` int ` or ` float ` ] â The height of the arrowhead relative to thickness. 
  * ` inset ` : [ ` int ` or ` float ` ] â The inset value for the arrowhead relative to thickness. 
  * ` tail ` : [ ` array ` ] â The tail settings for the arrow. 

###  ` pinit-fletcher-edge `

Draw a connecting line or arc in an fletcher arrow diagram.

    
    
    #let pinit-fletcher-edge(
      fletcher,
      start,
      end: none,
      start-dx: 0pt,
      start-dy: 0pt,
      end-dx: 0pt,
      end-dy: 0pt,
      width-scale: 100%,
      height-scale: 100%,
      default-width: 30pt,
      default-height: 30pt,
    	..args,
    ) = { ... }
    

**Arguments:**

  * ` fletcher ` (module): The Fletcher module. You can import it with something like ` #import "@preview/fletcher:0.5.1" `
  * ` start ` (pin): The starting pin of the edge. It is assumed that the pin is at the _origin point (0, 0)_ of the edge. 
  * ` end ` (pin): The ending pin of the edge. If not provided, the edge will use default values for the width and height. 
  * ` start-dx ` (length): The x-offset of the starting pin. You should use pt units. 
  * ` start-dy ` (length): The y-offset of the starting pin. You should use pt units. 
  * ` end-dx ` (length): The x-offset of the ending pin. You should use pt units. 
  * ` end-dy ` (length): The y-offset of the ending pin. You should use pt units. 
  * ` width-scale ` (percent): The width scale of the edge. The default value is 100%. If you set the width scale to 50%, the width of the edge will be half of the default width. Then you can use ` "r,r" ` which is equivalent to single ` "r" ` . 
  * ` height-scale ` (percent): The height scale of the edge. The default value is 100%. 
  * ` default-width ` (length): The default width of the edge. The default value is 30pt, which will only be used if the end pin is not provided or the width is 0pt or 0em. 
  * ` default-height ` (length): The default height of the edge. The default value is 30pt, which will only be used if the end pin is not provided or the height is 0pt or 0em. 
  * ` ..args ` (any): An edgeâs positional arguments may specify: 
    * the edgeâs #param[edge][vertices], each specified with a CeTZ-style coordinate 
    * the #param[edge][label] content 
    * arrow #param[edge][marks], like ` "=>" ` or ` "<<-|-o" `
    * other style flags, like ` "double" ` or ` "wave" `

##  Changelog

###  0.2.2

  * Fix bugs. 

###  0.2.1

  * To be compatible with Typst 0.12. 

###  0.2.0

  * **Breaking changes** : ` #pinit(pins, func) ` is replaced by ` #pinit(callback: none, ..pins) ` and the callback argument will receive an ` (..positions) => { .. } ` function instead of a ` (positions) => { .. } ` function. 
    * **Migration** : you need to use a named argument ` callback: (..positions) => { .. } ` to specify the callback function. 
    * **Migration** : you cannot use a array as a pin name. Now ` #pinit((pin1, pin2), callback: func) ` means that we use ` pin1 ` and ` pin2 ` as a group of pins, and the callback function will receive **a single position** (the center of the bounding box of ` pin1 ` and ` pin2 ` ). 
    * **Benefit** : you can use ` #pinit(pin1, pin2, callback: func) ` to query the positions of ` pin1 ` and ` pin2 ` separately, and ` #pinit((pin1, pin2), callback: func) ` to query the position of the center of the bounding box of ` pin1 ` and ` pin2 ` . 
  * Add ` pinit-fletcher-edge ` function to draw a connecting line or arc in an fletcher arrow diagram. 
  * Add ` double-arrow ` function and ` pinit-double-arrow ` function. 
  * Add ` double ` argument for ` pinit-point-to ` and ` pinit-point-from ` functions. 
  * Better comments and documentation. 

###  0.1.4

  * Update documentation. 

###  0.1.3

  * Add ` pinit-line-to ` function. 

###  0.1.2

  * Add em unit support for ` simple-arrow ` . 

###  0.1.1

  * Fix some bugs. 

###  0.1.0

  * Initial release. 

##  Acknowledgements

  * Some of the inspirations and codes comes from [ typst-drafting ](https://github.com/ntjess/typst-drafting) . 
  * The concise and aesthetic example slide style come from course _Data Structures and Algorithms_ of [ Chaodong ZHENG ](https://chaodong.me/) . 
  * Thank [ PaulS ](https://github.com/psads-git) for double arrow feature. 
  * Thank [ Jollywatt ](https://github.com/Jollywatt) for fletcher package. 

##  License

This project is licensed under the MIT License.

###  How to add

Copy this into your project and use the import as  ` pinit `

    
    
    #import "@preview/pinit:0.2.2"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     OrangeX4 
License:

     MIT 
Current version:

     0.2.2 
Last updated:

     October 17, 2024 
First released:

     November 7, 2023 
Archive size:

     14.0 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/pinit-0.2.2.tar.gz)
Repository:

     [ GitHub ](https://github.com/OrangeX4/typst-pinit)
Categor  ies  :

    

  * ![Layout icon](/assets/icons/16-layout.svg) [ Layout ](https://typst.app/universe/search/?category=layout)
  * ![Utility icon](/assets/icons/16-hammer.svg) [ Utility ](https://typst.app/universe/search/?category=utility)

###  Where to report issues?

This  package  is a project of  OrangeX4  .  Report issues on  [ their
repository ](https://github.com/OrangeX4/typst-pinit) .  You can also try to
ask for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.2  |  October 17, 2024   
[ 0.2.1 ](https://typst.app/universe/package/pinit/0.2.1/) |  October 16, 2024   
[ 0.2.0 ](https://typst.app/universe/package/pinit/0.2.0/) |  August 26, 2024   
[ 0.1.4 ](https://typst.app/universe/package/pinit/0.1.4/) |  April 12, 2024   
[ 0.1.3 ](https://typst.app/universe/package/pinit/0.1.3/) |  December 23, 2023   
[ 0.1.2 ](https://typst.app/universe/package/pinit/0.1.2/) |  November 29, 2023   
[ 0.1.1 ](https://typst.app/universe/package/pinit/0.1.1/) |  November 7, 2023   
[ 0.1.0 ](https://typst.app/universe/package/pinit/0.1.0/) |  November 7, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

