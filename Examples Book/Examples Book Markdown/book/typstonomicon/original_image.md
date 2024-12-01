#  Image with original size

This function renders image with the size it "naturally" has.

**Note: starting from v0.11** , Typst tries using default image size when
width and height are ` auto  ` . It only uses container's size if the image
doesn't fit. So this code is more like a legacy, but still may be useful.

This works because measure conceptually places the image onto a page with
infinite size and then the image defaults to 1pt per pixel instead of becoming
infinitely larger itself.

    
    
    // author: laurmaedje
    #let natural-image(..args) = style(styles => {
      let (width, height) = measure(image(..args), styles)
      image(..args, width: width, height: height)
    })
    
    #image("../tiger.jpg")
    #natural-image("../tiger.jpg")

![Rendered image](typst-
img/59503efa7e4aa0d37418ed3d0cb2c0c123268fae37cdcd54f8f7eb06b556e05d-1.svg)

