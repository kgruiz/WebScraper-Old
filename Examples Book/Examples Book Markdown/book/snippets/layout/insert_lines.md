#  Lines between list items

    
    
    /// author: frozolotl
    #show enum.where(tight: false): it => {
      it.children
        .enumerate()
        .map(((n, item)) => block(below: .6em, above: .6em)[#numbering("1.", n + 1) #item.body])
        .join(line(length: 100%))
    }
    
    + Item 1
    
    + Item 2
    
    + Item 3

![Rendered image](typst-
img/b1660863fded6fc3d870f8a92f364040d5ba9beaaf5bbd4a114b5384abe3db4c-1.svg)

The same approach may be easily adapted to style the enums as you want.

