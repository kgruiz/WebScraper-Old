#  Math

##  General

###  ` physica  `

> Physica (Latin for _natural sciences_ ) provides utilities that simplify
> otherwise complex and repetitive mathematical expressions in natural
> sciences.

> Its [ manual ](https://github.com/Leedehai/typst-
> physics/blob/master/physica-manual.pdf) provides a full set of
> demonstrations of how the package could be helpful.

####  Common notations

  * Calculus: differential, ordinary and partial derivatives 
    * Optional function name, 
    * Optional order number or an array of thereof, 
    * Customizable "d" symbol and product joiner (say, exterior product), 
    * Overridable total order calculation, 
  * Vectors and vector fields: div, grad, curl, 
  * Taylor expansion, 
  * Dirac braket notations, 
  * Tensors with abstract index notations, 
  * Matrix transpose and dagger (conjugate transpose). 
  * Special matrices: determinant, (anti-)diagonal, identity, zero, Jacobian, Hessian, etc. 

Below is a preview of those notations.

    
    
    #import "@preview/physica:0.9.1": * // Symbol names annotated below
    
    #table(
      columns: 4, align: horizon, stroke: none, gutter: 1em,
    
      // vectors: bold, unit, arrow
      [$ vb(a), vb(e_i), vu(a), vu(e_i), va(a), va(e_i) $],
      // dprod (dot product), cprod (cross product), iprod (innerproduct)
      [$ a dprod b, a cprod b, iprod(a, b) $],
      // laplacian (different from built-in laplace)
      [$ dot.double(u) = laplacian u =: laplace u $],
      // grad, div, curl (vector fields)
      [$ grad phi, div vb(E), \ curl vb(B) $],
    )

![Rendered image](typst-
img/3be7ef86d6c5f7044a42c69fcf93afccd936eb0fcbe987122702c7dda467480f-1.svg)

    
    
    #import "@preview/physica:0.9.1": * // Symbol names annotated below
    
    #table(
      columns: 4, align: horizon, stroke: none, gutter: 1em,
    
      // Row 1.
      // dd (differential), var (variation), difference
      [$ dd(f), var(f), difference(f) $],
      // dd, with an order number or an array thereof
      [$ dd(x,y), dd(x,y,2), \ dd(x,y,[1,n]), dd(vb(x),t,[3,]) $],
      // dd, with custom "d" symbol and joiner
      [$ dd(x,y,p:and), dd(x,y,d:Delta), \ dd(x,y,z,[1,1,n+1],d:d,p:dot) $],
      // dv (ordinary derivative), with custom "d" symbol and joiner
      [$ dv(phi,t,d:Delta), dv(phi,t,d:upright(D)), dv(phi,t,d:delta) $],
    
      // Row 2.
      // dv, with optional function name and order
      [$ dv(,t) (dv(x,t)) = dv(x,t,2) $],
      // pdv (partial derivative)
      [$ pdv(f,x,y,2), pdv(,x,y,[k,]) $],
      // pdv, with auto-added overridable total
      [$ pdv(,x,y,[i+2,i+1]), pdv(,y,x,[i+1,i+2],total:3+2i) $],
      // In a flat form
      [$ dv(u,x,s:slash), \ pdv(u,x,y,2,s:slash) $],
    )

![Rendered image](typst-
img/0835a840454f88ed2e3b98ddfe37d6f8026729812372a6298d86129611f348c3-1.svg)

    
    
    #import "@preview/physica:0.9.1": * // Symbol names annotated below
    
    #table(
      columns: 3, align: horizon, stroke: none, gutter: 1em,
    
      // tensor
      [$ tensor(T,+a,-b,-c) != tensor(T,-b,-c,+a) != tensor(T,+a',-b,-c) $],
      // Set builder notation
      [$ Set(p, {q^*, p} = 1) $],
      // taylorterm (Taylor series term)
      [$ taylorterm(f,x,x_0,1) \ taylorterm(f,x,x_0,(n+1)) $],
    )

![Rendered image](typst-
img/5c08b65761578f38762229692a33e2b05f096aa8fb7859238b1018240f054d10-1.svg)

    
    
    #import "@preview/physica:0.9.1": * // Symbol names annotated below
    
    #table(
      columns: 3, align: horizon, stroke: none, gutter: 1em,
    
      // expval (mean/expectation value), eval (evaluation boundary)
      [$ expval(X) = eval(f(x)/g(x))^oo_1 $],
      // Dirac braket notations
      [$
        bra(u), braket(u), braket(u, v), \
        ket(u), ketbra(u), ketbra(u, v), \
        mel(phi, hat(p), psi) $],
      // Superscript show rules that need to be enabled explicitly.
      // If put in a content block, they only control that block's scope.
      [
        #show: super-T-as-transpose // "..^T" just like handwriting
        #show: super-plus-as-dagger // "..^+" just like handwriting
        $ op("conj")A^T =^"def" A^+ \
          e^scripts(T), e^scripts(+) $ ], // Override with scripts()
    )

![Rendered image](typst-
img/8965812a9c349892988d61872ff06418581098d15169b775f67b30e3460dd854-1.svg)

####  Matrices

In addition to Typst's built-in ` mat()  ` to write a matrix, physica provides
a number of handy tools to make it even easier.

    
    
    #import "@preview/physica:0.9.1": TT, mdet
    
    $
    // Matrix transpose with "TT", though it is recommended to
    // use super-T-as-transpose so that "A^T" also works (more on that later).
    A^TT,
    // Determinant with "mdet(...)".
    det mat(a, b; c, d) := mdet(a, b; c, d)
    $

![Rendered image](typst-
img/7eccaa3a0cf838bca4daf9ebf573452506d3ea724086fcda0c9eb4264e66b5d9-1.svg)

Diagonal matrix ` dmat(  ...  )  ` , antidiagonal matrix ` admat(  ...  )  ` ,
identity matrix ` imat(n)  ` , and zero matrix ` zmat(n)  ` .

    
    
    #import "@preview/physica:0.9.1": dmat, admat, imat, zmat
    
    $ dmat(1, 2)  dmat(1, a_1, xi, fill:0)               quad
      admat(1, 2) admat(1, a_1, xi, fill:dot, delim:"[") quad
      imat(2)     imat(3, delim:"{",fill:*) quad
      zmat(2)     zmat(3, delim:"|") $

![Rendered image](typst-
img/66bbf5294be293cc58d98de6ca078eb17c58539169325e6b59a6aa78e7a49f62-1.svg)

Jacobian matrix with ` jmat(func;  ...  )  ` or the longer name `
jacobianmatrix  ` , Hessian matrix with ` hmat(func;  ...  )  ` or the longer
name ` hessianmatrix  ` , and finally ` xmat(row, col, func)  ` to build a
matrix.

    
    
    #import "@preview/physica:0.9.1": jmat, hmat, xmat
    
    $
    jmat(f_1,f_2; x,y) jmat(f,g; x,y,z; delim:"[") quad
    hmat(f; x,y)       hmat(; x,y; big:#true)      quad
    
    #let elem-ij = (i,j) => $g^(#(i - 1)#(j - 1)) = #calc.pow(i,j)$
    xmat(2, 2, #elem-ij)
    $

![Rendered image](typst-
img/7cd30cef52b187d17459d7806a94d5ae56118d0f969760bbbaabeb83007e6869-1.svg)

###  ` mitex  `

> MiTeX provides LaTeX support powered by WASM in Typst, including real-time
> rendering of LaTeX math equations. You can also use LaTeX syntax to write `
> \r  ef  ` and ` \l  abel  ` .

> Please refer to the [ manual ](https://github.com/mitex-rs/mitex) for more
> details.
    
    
    #import "@preview/mitex:0.2.4": *
    
    Write inline equations like #mi("x") or #mi[y].
    
    Also block equations:
    
    #mitex(`
      \newcommand{\f}[2]{#1f(#2)}
      \f\relax{x} = \int_{-\infty}^\infty
        \f\hat\xi\,e^{2 \pi i \xi x}
        \,d\xi
    `)
    
    Text mode:
    
    #mitext(`
      \iftypst
        #set math.equation(numbering: "(1)", supplement: "equation")
      \fi
    
      An inline equation $x + y$ and block \eqref{eq:pythagoras}.
    
      \begin{equation}
        a^2 + b^2 = c^2 \label{eq:pythagoras}
      \end{equation}
    `)

![Rendered image](typst-
img/a3ff500a39b6d93d85b223af0aa162a5bfbe93fad3436dba80ee022638ed727a-1.svg)

###  ` i-figured  `

Configurable equation numbering per section in Typst. There is also figure
numbering per section, see more examples in its [ manual
](https://github.com/RubixDev/typst-i-figured) .

    
    
    #import "@preview/i-figured:0.2.3"
    
    // make sure you have some heading numbering set
    #set heading(numbering: "1.1")
    
    // apply the show rules (these can be customized)
    #show heading: i-figured.reset-counters
    #show math.equation: i-figured.show-equation.with(
      level: 1,
      zero-fill: true,
      leading-zero: true,
      numbering: "(1.1)",
      prefix: "eqt:",
      only-labeled: false,  // numbering all block equations implicitly
      unnumbered-label: "-",
    )
    
    
    = Introduction
    
    You can write inline equations such as $x + y$, and numbered block equations like:
    
    $ phi.alt := (1 + sqrt(5)) / 2 $ <ratio>
    
    To reference a math equation, please use the `eqt:` prefix. For example, with @eqt:ratio, we have:
    
    $ F_n = floor(1 / sqrt(5) phi.alt^n) $
    
    
    = Appdendix
    
    Additionally, you can use the <-> tag to indicate that a block formula should not be numbered:
    
    $ y = integral_1^2 x^2 dif x $ <->
    
    Subsequent math equations will continue to be numbered as usual:
    
    $ F_n = floor(1 / sqrt(5) phi.alt^n) $

![Rendered image](typst-
img/b338b679a09371841be9322ac7cee901b6a1415582c3495677833602e344cae0-1.svg)

##  Theorems

###  ` ctheorem  `

A numbered theorem environment in Typst. See more examples in its [ manual
](https://github.com/sahasatvik/typst-theorems/blob/main/manual.pdf) .

    
    
    #import "@preview/ctheorems:1.1.0": *
    #show: thmrules
    
    #set page(width: 16cm, height: auto, margin: 1.5cm)
    #set heading(numbering: "1.1")
    
    #let theorem = thmbox("theorem", "Theorem", fill: rgb("#eeffee"))
    #let corollary = thmplain("corollary", "Corollary", base: "theorem", titlefmt: strong)
    #let definition = thmbox("definition", "Definition", inset: (x: 1.2em, top: 1em))
    
    #let example = thmplain("example", "Example").with(numbering: none)
    #let proof = thmplain(
      "proof", "Proof", base: "theorem",
      bodyfmt: body => [#body #h(1fr) $square$]
    ).with(numbering: none)
    
    = Prime Numbers
    #lorem(7)
    #definition[ A natural number is called a #highlight[_prime number_] if ... ]
    #example[
      The numbers $2$, $3$, and $17$ are prime. See @cor_largest_prime shows that
      this list is not exhaustive!
    ]
    #theorem("Euclid")[There are infinitely many primes.]
    #proof[
      Suppose to the contrary that $p_1, p_2, dots, p_n$ is a finite enumeration
      of all primes. ... a contradiction.
    ]
    #corollary[
      There is no largest prime number.
    ] <cor_largest_prime>
    #corollary[There are infinitely many composite numbers.]

![Rendered image](typst-
img/54d7817ddc4a8481da09052aa51dc6e4dde19bd85f40173b92750c402b07ff73-1.svg)

###  ` lemmify  `

Lemmify is another theorem evironment generator with many selector and
numbering capabilities. See documentations in its [ readme
](https://github.com/Marmare314/lemmify) .

    
    
    #import "@preview/lemmify:0.1.5": *
    
    #let my-thm-style(
      thm-type, name, number, body
    ) = grid(
      columns: (1fr, 3fr),
      column-gutter: 1em,
      stack(spacing: .5em, [#strong(thm-type) #number], emph(name)),
      body
    )
    #let my-styling = ( thm-styling: my-thm-style )
    #let (
      definition, theorem, proof, lemma, rules
    ) = default-theorems("thm-group", lang: "en", ..my-styling)
    #show: rules
    #show thm-selector("thm-group"): box.with(inset: 0.8em)
    #show thm-selector("thm-group", subgroup: "theorem"): it => box(
      it, fill: rgb("#eeffee"))
    
    #set heading(numbering: "1.1")
    
    = Prime numbers
    #lorem(7) @proof and @thm[theorem]
    #definition[ A natural number is called a #highlight[_prime number_] if ... ]
    #theorem(name: "Theorem name")[There are infinitely many primes.]<thm>
    #proof[
      Suppose to the contrary that $p_1, p_2, dots, p_n$ is a finite enumeration
      of all primes. ... #highlight[_a contradiction_].]<proof>
    #lemma[There are infinitely many composite numbers.]

![Rendered image](typst-
img/46b0a27243980ee99b20133dbba1f00d4d819adff6e645ca0749820f5caf3589-1.svg)

