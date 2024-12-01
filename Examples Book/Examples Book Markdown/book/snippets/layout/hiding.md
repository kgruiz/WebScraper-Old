#  Hiding things

    
    
    // author: GeorgeMuscat
    #let redact(text, fill: black, height: 1em) = {
      box(rect(fill: fill, height: height)[#hide(text)])
    }
    
    Example:
      - Unredacted text
      - Redacted #redact("text")

![Rendered image](typst-
img/6b85fdf4b9ba387543271058b6acb27e202dab93b01c2cd7ac93187c1e8b643c-1.svg)

