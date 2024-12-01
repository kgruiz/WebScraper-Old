#  Tables and grids

While tables are not that necessary to know if you don't plan to use them in
your documents, grids may be very useful for _document layout_ . We will use
both of them them in the book later.

Let's not bother with copying examples from official documentation. Just make
sure to skim through it, okay?

##  Basic snippets

###  Spreading

Spreading operators (see [ there ](../scripting/arguments.html) ) may be
especially useful for the tables:

    
    
    #set text(size: 9pt)
    
    #let yield_cells(n) = {
      for i in range(0, n + 1) {
        for j in range(0, n + 1) {
          let product = if i * j != 0 {
            // math is used for the better look 
            if j <= i { $#{ j * i }$ } 
            else {
              // upper part of the table
              text(gray.darken(50%), str(i * j))
            }
          } else {
            if i == j {
              // the top right corner 
              $times$
            } else {
              // on of them is zero, we are at top/left
              $#{i + j}$
            }
          }
          // this is an array, for loops merge them together
          // into one large array of cells
          (
            table.cell(
              fill: if i == j and j == 0 { orange } // top right corner
              else if i == j { yellow } // the diagonal
              else if i * j == 0 { blue.lighten(50%) }, // multipliers
              product,),
          )
        }
      }
    }
    
    #let n = 10
    #table(
      columns: (0.6cm,) * (n + 1), rows: (0.6cm,) * (n + 1), align: center + horizon, inset: 3pt, ..yield_cells(n),
    )

![Rendered image](typst-
img/0640c1d0e5f79bdcb5e60f7675ff1b1eb18810078f5bbbdfaf1c5648b987706e-1.svg)

###  Highlighting table row

    
    
    #table(
      columns: 2,
      fill: (x, y) => if y == 2 { highlight.fill },
      [A], [B],
      [C], [D],
      [E], [F],
      [G], [H],
    )

![Rendered image](typst-
img/4ff8cbb75f85dbab08a336be31115bcb4cb8ca505799641534d937d444e88082-1.svg)

For individual cells, use

    
    
    #table(
      columns: 2,
      [A], [B],
      table.cell(fill: yellow)[C], table.cell(fill: yellow)[D],
      [E], [F],
      [G], [H],
    )

![Rendered image](typst-
img/07676a86d4643ff83988c0907aa17995b3d1f8fa7b5be4f11959551afd674bc9-1.svg)

###  Splitting tables

Tables are split between pages automatically.

    
    
    #set page(height: 8em)
    #(
    table(
      columns: 5,
      [Aligner], [publication], [Indexing], [Pairwise alignment], [Max. read length  (bp)],
      [BWA], [2009], [BWT-FM], [Semi-Global], [125],
      [Bowtie], [2009], [BWT-FM], [HD], [76],
      [CloudBurst], [2009], [Hashing], [Landau-Vishkin], [36],
      [GNUMAP], [2009], [Hashing], [NW], [36]
      )
    )

![Rendered image](typst-
img/34794c27fefc5c307a1dfdc9ad7958c1dcca0ff8fb64962047051c6a216e0ff7-1.svg)

![Rendered image](typst-
img/34794c27fefc5c307a1dfdc9ad7958c1dcca0ff8fb64962047051c6a216e0ff7-2.svg)

However, if you want to make it breakable inside other element, you'll have to
make that element breakable too:

    
    
    #set page(height: 8em)
    // Without this, the table fails to split upon several pages
    #show figure: set block(breakable: true)
    #figure(
    table(
      columns: 5,
      [Aligner], [publication], [Indexing], [Pairwise alignment], [Max. read length  (bp)],
      [BWA], [2009], [BWT-FM], [Semi-Global], [125],
      [Bowtie], [2009], [BWT-FM], [HD], [76],
      [CloudBurst], [2009], [Hashing], [Landau-Vishkin], [36],
      [GNUMAP], [2009], [Hashing], [NW], [36]
      )
    )

![Rendered image](typst-
img/5be04bf8770a33256599791fb50751bcb24fa5108c13d0e5e2807b675fed00fb-1.svg)

![Rendered image](typst-
img/5be04bf8770a33256599791fb50751bcb24fa5108c13d0e5e2807b675fed00fb-2.svg)

