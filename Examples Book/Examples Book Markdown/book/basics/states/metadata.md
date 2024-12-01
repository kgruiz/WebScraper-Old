#  Metadata

Metadata is invisible content that can be extracted using query or other
content. This may be very useful with ` typst query  ` to pass values to
external tools.

    
    
    // Put metadata somewhere.
    #metadata("This is a note") <note>
    
    // And find it from anywhere else.
    #context {
      query(<note>).first().value
    }

![Rendered image](typst-
img/ef1c7d9faf74901f6c5266d48ae006167003a22754408a70ae9f9d1088b5fe24-1.svg)

