#  Make all math display math

May slightly interfere with math blocks.

    
    
    // author: eric1102
    #show math.equation: it => {
      if it.body.fields().at("size", default: none) != "display" {
        return math.display(it)
      }
      it
    }
    
    Inline math: $sum_(n=0)^oo e^(x^2 - n/x^2)$\
    Some other text on new line.
    
    
    $
    sum_(n=0)^oo e^(x^2 - n/x^2)
    $

![Rendered image](typst-
img/e339a54461b130913bf4f724b29b763aec7dffa0662827935aeb7b258538523b-1.svg)

