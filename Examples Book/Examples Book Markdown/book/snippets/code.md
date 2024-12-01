#  Code formatting

##  Inline highlighting

    
    
    #let r = raw.with(lang: "r")
    
    This can then be used like: #r("x <- c(10, 42)")

![Rendered image](typst-
img/dadb41acb1c458d9af5b909d657de5f46dca019f1a81cc17b75b9863d60fa9eb-1.svg)

##  Tab size

    
    
    #set raw(tab-size: 8)
    ```tsv
    Year	Month	Day
    2000	2	3
    2001	2	1
    2002	3	10
    ```

![Rendered image](typst-
img/1c3900a79521f6b9cd852a68a3dea627ddbd1b8fc6062d3ca344e4259a30d212-1.svg)

##  Theme

See [ reference ](https://typst.app/docs/reference/text/raw/#parameters-theme)

##  Enable ligatures for code

    
    
    #show raw: set text(ligatures: true, font: "Cascadia Code")
    
    Then the code becomes `x <- a`

![Rendered image](typst-
img/3513eee2f5ca33825d09149f4ad9169abf95d3b8ad02cc5a7bf91cc9b96517d0-1.svg)

##  Advanced formatting

See [ packages ](../packages/code.html) section.

