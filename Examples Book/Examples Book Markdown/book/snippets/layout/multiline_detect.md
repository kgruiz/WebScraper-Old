#  Multiline detection

Detects if figure caption (may be any other element) _has more than one line_
.

If the caption is multiline, it makes it left-aligned.

Breaks on manual linebreaks.

    
    
    #show figure.caption: it => {
      layout(size => context [
        #let text-size = measure(
          ..size,
          it.supplement + it.separator + it.body,
        )
    
        #let my-align
    
        #if text-size.width < size.width {
          my-align = center
        } else {
          my-align = left
        }
    
        #align(my-align, it)
      ])
    }
    
    #figure(caption: lorem(6))[
        ```rust
        pub fn main() {
            println!("Hello, world!");
        }
        ```
    ]
    
    #figure(caption: lorem(20))[
        ```rust
        pub fn main() {
            println!("Hello, world!");
        }
        ```
    ]

![Rendered image](typst-
img/8e2a1d9e2e66f654938733a2ed1d9a0dcc771165a60d89c4410f4d970054121c-1.svg)

