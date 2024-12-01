#  Boxing & Blocking

    
    
    You can use boxes to wrap anything
    into text: #box(image("../tiger.jpg", height: 2em)).
    
    Blocks will always be "separate paragraphs".
    They will not fit into a text: #block(image("../tiger.jpg", height: 2em))

![Rendered image](typst-
img/8e3bd89485b00259666bd636cf28586f92db9c3c3922f0adcdad765ee66a06b1-1.svg)

Both have similar useful properties:

    
    
    #box(stroke: red, inset: 1em)[Box text]
    #block(stroke: red, inset: 1em)[Block text]

![Rendered image](typst-
img/9e3562619cb8a31b3d2311f53c3815a214f081e033a564e63dc003dfbc50d68d-1.svg)

##  ` rect  `

There is also ` rect  ` that works like ` block  ` , but has useful default
inset and stroke:

    
    
    #rect[Block text]

![Rendered image](typst-
img/c778d1e94a3663a4f258985368c02e294a1333554c550b6cfe0465275a2eef0f-1.svg)

##  Figures

For the purposes of adding a _figure_ to your document, use ` figure  `
function. Don't try to use boxes or blocks there.

Figures are that things like centered images (probably with captions), tables,
even code.

    
    
    @tiger shows a tiger. Tigers
    are animals.
    
    #figure(
      image("../tiger.jpg", width: 80%),
      caption: [A tiger.],
    ) <tiger>

![Rendered image](typst-
img/09a8b5b3c3bfffd81be7f34c31cc93ca5f8341b2594d022b2b92ac285aeb959d-1.svg)

In fact, you can put there anything you want:

    
    
    They told me to write a letter to you. Here it is:
    
    #figure(
      text(size: 5em)[I],
      caption: [I'm cool, right?],
    ) 

![Rendered image](typst-
img/e009534c4572064346490dfac659ff94a5a11d7f46af7a2b46c2136d206088c6-1.svg)

