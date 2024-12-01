#  curryst

0.3.0

Typeset trees of inference rules.

Featured  Package

A Typst package for typesetting proof trees.

##  Import

You can import the latest version of this package with:

    
    
    #import "@preview/curryst:0.3.0": rule, proof-tree
    

##  Basic usage

To display a proof tree, you first need to create a tree, using the ` rule `
function. Its first argument is the conclusion, and the other positional
arguments are the premises. It also accepts a ` name ` for the rule name,
displayed on the right of the bar, as well as a ` label ` , displayed on the
left of the bar.

    
    
    #let tree = rule(
      label: [Label],
      name: [Rule name],
      [Conclusion],
      [Premise 1],
      [Premise 2],
      [Premise 3]
    )
    

Then, you can display the tree with the ` proof-tree ` function:

    
    
    #proof-tree(tree)
    

In this case, we get the following result:

![A proof tree with three premises, a conclusion, and a rule
name.](https://github.com/typst/packages/raw/main/packages/preview/curryst/0.3.0/examples/usage.svg)

Proof trees can be part of mathematical formulas:

    
    
    Consider the following tree:
    $
      Pi quad = quad #proof-tree(
        rule(
          $phi$,
          $Pi_1$,
          $Pi_2$,
        )
      )
    $
    $Pi$ constitutes a derivation of $phi$.s
    

![The rendered
document.](https://github.com/typst/packages/raw/main/packages/preview/curryst/0.3.0/examples/math-
formula.svg)

You can specify a rule as the premises of a rule in order to create a tree:

    
    
    #proof-tree(
      rule(
        name: $R$,
        $C_1 or C_2 or C_3$,
        rule(
          name: $A$,
          $C_1 or C_2 or L$,
          rule(
            $C_1 or L$,
            $Pi_1$,
          ),
        ),
        rule(
          $C_2 or overline(L)$,
          $Pi_2$,
        ),
      )
    )
    

![The rendered
tree.](https://github.com/typst/packages/raw/main/packages/preview/curryst/0.3.0/examples/rule-
as-premise.svg)

As an example, here is a natural deduction proof tree generated with Curryst:

![The rendered
tree.](https://github.com/typst/packages/raw/main/packages/preview/curryst/0.3.0/examples/natural-
deduction.svg)

Show code

    
    
    #let ax = rule.with(name: [ax])
    #let and-el = rule.with(name: $and_e^ell$)
    #let and-er = rule.with(name: $and_e^r$)
    #let impl-i = rule.with(name: $scripts(->)_i$)
    #let impl-e = rule.with(name: $scripts(->)_e$)
    #let not-i = rule.with(name: $not_i$)
    #let not-e = rule.with(name: $not_e$)
    
    #proof-tree(
      impl-i(
        $tack (p -> q) -> not (p and not q)$,
        not-i(
          $p -> q tack  not (p and not q)$,
          not-e(
            $ underbrace(p -> q\, p and not q, Gamma) tack bot $,
            impl-e(
              $Gamma tack q$,
              ax($Gamma tack p -> q$),
              and-el(
                $Gamma tack p$,
                ax($Gamma tack p and not q$),
              ),
            ),
            and-er(
              $Gamma tack not q$,
              ax($Gamma tack p and not q$),
            ),
          ),
        ),
      )
    )
    

##  Advanced usage

The ` proof-tree ` function accepts multiple named arguments that let you
customize the tree:

` prem-min-spacing `

     The minimum amount of space between two premises. 
` title-inset `

     The amount width with which to extend the horizontal bar beyond the content. Also determines how far from the bar labels and names are displayed. 
` stroke `

     The stroke to use for the horizontal bars. 
` horizontal-spacing `

     The space between the bottom of the bar and the conclusion, and between the top of the bar and the premises. 
` min-bar-height `

     The minimum height of the box containing the horizontal bar. 

For more information, please refer to the documentation in [ ` curryst.typ `
](https://github.com/typst/packages/raw/main/packages/preview/curryst/0.3.0/curryst.typ)
.

###  How to add

Copy this into your project and use the import as  ` curryst `

    
    
    #import "@preview/curryst:0.3.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  s  :

     [ RÃ©mi Hutin ](https://github.com/remih23) , [ Paul Adam ](https://github.com/pauladam94) , & [ Malo ](https://github.com/MDLC01)
License:

     MIT 
Current version:

     0.3.0 
Last updated:

     April 16, 2024 
First released:

     December 7, 2023 
Minimum Typst version:

     0.11.0 
Archive size:

     4.71 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/curryst-0.3.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/pauladam94/curryst)
Discipline  s  :

    

  * [ Computer Science ](https://typst.app/universe/search/?discipline=computer-science)
  * [ Mathematics ](https://typst.app/universe/search/?discipline=mathematics)

Categor  ies  :

    

  * ![Components icon](/assets/icons/16-package.svg) [ Components ](https://typst.app/universe/search/?category=components)
  * ![Visualization icon](/assets/icons/16-chart.svg) [ Visualization ](https://typst.app/universe/search/?category=visualization)
  * ![Integration icon](/assets/icons/16-integration.svg) [ Integration ](https://typst.app/universe/search/?category=integration)

###  Where to report issues?

This  package  is a project of  RÃ©mi Hutin, Paul Adam, and Malo  .  Report
issues on  [ their repository ](https://github.com/pauladam94/curryst) .  You
can also try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.3.0  |  April 16, 2024   
[ 0.2.0 ](https://typst.app/universe/package/curryst/0.2.0/) |  March 19, 2024   
[ 0.1.1 ](https://typst.app/universe/package/curryst/0.1.1/) |  January 31, 2024   
[ 0.1.0 ](https://typst.app/universe/package/curryst/0.1.0/) |  December 7, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

