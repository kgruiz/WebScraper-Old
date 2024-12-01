#  Code

##  ` codly  `

> See docs [ there ](https://github.com/Dherse/codly)
    
    
    #import "@preview/codly:0.1.0": codly-init, codly, disable-codly
    #show: codly-init.with()
    
    #codly(languages: (
            typst: (name: "Typst", color: rgb("#41A241"), icon: none),
        ),
        breakable: false
    )
    
    ```typst
    #import "@preview/codly:0.1.0": codly-init
    #show: codly-init.with()
    ```
    
    // Still formatted!
    ```rust
    pub fn main() {
        println!("Hello, world!");
    }
    ```
    
    #disable-codly()

![Rendered image](typst-
img/eaa07afd21b4783a4be0a9726e714a8a4644421e5a93383e7deaeffaf4765105-1.svg)

##  Codelst

    
    
    #import "@preview/codelst:2.0.0": sourcecode
    
    #sourcecode[```typ
    #show "ArtosFlow": name => box[
      #box(image(
        "logo.svg",
        height: 0.7em,
      ))
      #name
    ]
    
    This report is embedded in the
    ArtosFlow project. ArtosFlow is a
    project of the Artos Institute.
    ```]

![Rendered image](typst-
img/2b2bbf130111979e4bc4cbc33171a39842467b3ea5e67a7fa0fcbf26222e8f90-1.svg)

