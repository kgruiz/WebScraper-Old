#  Fake italic & Text shadows

##  Skew

    
    
    // author: Enivex
    #set page(width: 21cm, height: 3cm)
    #set text(size:25pt)
    #let skew(angle,vscale: 1,body) = {
      let (a,b,c,d)= (1,vscale*calc.tan(angle),0,vscale)
      let E = (a + d)/2
      let F = (a - d)/2
      let G = (b + c)/2
      let H = (c - b)/2
      let Q = calc.sqrt(E*E + H*H)
      let R = calc.sqrt(F*F + G*G)
      let sx = Q + R
      let sy = Q - R
      let a1 = calc.atan2(F,G)
      let a2 = calc.atan2(E,H)
      let theta = (a2 - a1) /2
      let phi = (a2 + a1)/2
    
      set rotate(origin: bottom+center)
      set scale(origin: bottom+center)
    
      rotate(phi,scale(x: sx*100%, y: sy*100%,rotate(theta,body)))
    }
    
    #let fake-italic(body) = skew(-12deg,body)
    #fake-italic[This is fake italic text]
    
    #let shadowed(body) = box(place(skew(-50deg, vscale: 0.8, text(fill:luma(200),body)))+place(body))
    #shadowed[This is some fancy text with a shadow]

![Rendered image](typst-
img/1c00de41a0643ecf254de80601efa4a043302c1e76aedfbf2458a9e30f1c7fd3-1.svg)

