#  Physics

##  ` physica  `

> Physica (Latin for _natural sciences_ ) provides utilities that simplify
> otherwise complex and repetitive mathematical expressions in natural
> sciences.

> Its [ manual ](https://github.com/Leedehai/typst-
> physics/blob/master/physica-manual.pdf) provides a full set of
> demonstrations of how the package could be helpful.

###  Mathematical physics

The [ packages/math.md ](./math.html#common-notations) page has more examples
on its math capabilities. Below is a preview that may be of particular
interest in the domain of physics:

  * Calculus: differential, ordinary and partial derivatives 
    * Optional function name, 
    * Optional order number or array of order numbers, 
    * Customizable "d" symbol and product joiner (say, exterior product), 
    * Overridable total order calculation, 
  * Vectors and vector fields: div, grad, curl, 
  * Taylor expansion, 
  * Dirac braket notations, 
  * Tensors with abstract index notations, 
  * Matrix transpose and dagger (conjugate transpose). 
  * Special matrices: determinant, (anti-)diagonal, identity, zero, Jacobian, Hessian, etc. 

A partial glimpse:

    
    
    #import "@preview/physica:0.9.1": *
    #show: super-T-as-transpose // put in a #[...] to limit its scope...
    #show: super-plus-as-dagger // ...or use scripts() to manually override
    
    $ dd(x,y,2) quad dv(f,x,d:Delta)      quad pdv(,x,y,[2i+1,2+i]) quad
      vb(a) va(a) vu(a_i)  quad mat(laplacian, div; grad, curl)     quad
      tensor(T,+a,-b,+c)   quad ket(phi)  quad A^+ e^scripts(+) A^T integral^T $

![Rendered image](typst-
img/fa8a12d2904a08958d4f83d69dda6bb38308b431055a25790d286a250e364c6c-1.svg)

###  Isotopes

    
    
    #import "@preview/physica:0.9.1": isotope
    
    // a: mass number A
    // z: the atomic number Z
    $
    isotope(I, a:127), quad isotope("Fe", z:26), quad
    isotope("Tl",a:207,z:81) --> isotope("Pb",a:207,z:82) + isotope(e,a:0,z:-1)
    $

![Rendered image](typst-
img/b290d801c6760a41e50520401d9e72cb63a8691aa136308cbad87349e7e436f0-1.svg)

###  Reduced Planck constant (hbar)

In the default font, the Typst built-in symbol ` planck.reduce  ` looks a bit
off: on letter "h" there is a slash instead of a horizontal bar, contrary to
the symbol's colloquial name "h-bar". This package offers ` hbar  ` to render
the symbol in the familiar form⁠. Contrast:

    
    
    #import "@preview/physica:0.9.1": hbar
    
    $ E = planck.reduce omega => E = hbar omega, wide
      frac(planck.reduce^2, 2m) => frac(hbar^2, 2m), wide
      (pi G^2) / (planck.reduce c^4) => (pi G^2) / (hbar c^4), wide
      e^(frac(i(p x - E t), planck.reduce)) => e^(frac(i(p x - E t), hbar)) $

![Rendered image](typst-
img/efab3b0486d1cddc3388248c4100e1cc919088cdb93f3e072001547c40005f01-1.svg)

##  ` quill  ` : quantum diagrams

> See [ documentation ](https://github.com/Mc-Zen/quill/tree/main) .
    
    
    #import "@preview/quill:0.2.0": *
    #quantum-circuit(
      lstick($|0〉$), gate($H$), ctrl(1), rstick($(|00〉+|11〉)/√2$, n: 2), [\ ],
      lstick($|0〉$), 1, targ(), 1
    )

![Rendered image](typst-
img/bd14c65cd60e1efc4d15ae7234e364c6d5740a168e2cb275743ed1fbcc9483eb-1.svg)

    
    
    #import "@preview/quill:0.2.0": *
    
    #let ancillas = (setwire(0), 5, lstick($|0〉$), setwire(1), targ(), 2, [\ ],
    setwire(0), 5, lstick($|0〉$), setwire(1), 1, targ(), 1)
    
    #quantum-circuit(
      scale-factor: 80%,
      lstick($|ψ〉$), 1, 10pt, ctrl(3), ctrl(6), $H$, 1, 15pt, 
        ctrl(1), ctrl(2), 1, [\ ],
      ..ancillas, [\ ],
      lstick($|0〉$), 1, targ(), 1, $H$, 1, ctrl(1), ctrl(2), 
        1, [\ ],
      ..ancillas, [\ ],
      lstick($|0〉$), 2, targ(),  $H$, 1, ctrl(1), ctrl(2), 
        1, [\ ],
      ..ancillas
    )

![Rendered image](typst-
img/597640923e31369199c6e7158de9094a2c94f2c5dae6ced72c6b83b1067fa8e4-1.svg)

    
    
    #import "@preview/quill:0.2.0": *
    
    #quantum-circuit(
      lstick($|psi〉$),  ctrl(1), gate($H$), 1, ctrl(2), meter(), [\ ],
      lstick($|beta_00〉$, n: 2), targ(), 1, ctrl(1), 1, meter(), [\ ],
      3, gate($X$), gate($Z$),  midstick($|psi〉$)
    )

![Rendered image](typst-
img/cc71bc052c7a80c702289f780ee42a168c1491076dd5934408373895ca95c35e-1.svg)

