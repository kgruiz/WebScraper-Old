#  minienvs

0.1.0

Theorem environments with minimal fuss

Theorem environments in [ Typst ](https://typst.app/) with minimal fuss.

To use, import and add a show rule:

    
    
    #import "@preview/minienvs:0.1.0": *
    #show: minienvs
    

You can optionally pass a custom configuration in the show-rule via `
minienvs.with(â¦) ` (see [ Customization
](https://github.com/typst/packages/raw/main/packages/preview/minienvs/0.1.0/#customization)
).

You can now just add a theorem along with its proof using the term list
syntax. For example:

    
    
    / Theorem (Ville's inequality):
      Let $X_0, ...$ be a non-negative supermartingale. Then, for any real number $a > 0$,
    
      $ PP[sup_(n>=0) X_n >= a] <= EE[X_0]/a. $
    
    Let us now prove it:
    
    / Proof:
      Consider the stopping time $N = inf {t >= 1 : X_t >= a}$.
      By the optional stopping theorem and the supermartingale convergence theorem, we have that
    
      $
        EE[X_0] >= EE[X_N]
        &= EE[X_N | N < oo] PP[N < oo] + EE[X_oo | N = oo] PP[N = oo] \
        &>= EE[X_N | N < oo] PP[N < oo]
        = EE[X_N/a | N < oo] a PP[N < oo]. \
      $
    
      And, therefore,
    
      $ PP[N < oo] <= EE[X_0] \/ a EE[X_N/a | N < oo] <= EE[X_0] \/ a. $
    

![](https://github.com/typst/packages/raw/main/packages/preview/minienvs/0.1.0/assets/ville.png)

##  Labels and references

Currently, in order to label a minienv one needs to use the ` envlabel `
function. For example:

    
    
    / Lemma (Donsker and Varadhan's variational formula) #envlabel(<change-of-measure>):
      For any measureable, bounded function $h : Theta -> RR$ we have:
    
      $ log EE_(theta ~ pi)[exp h(theta)] = sup_(rho in cal(P)(Theta)) [ EE_(theta~rho)[h(theta)] - KL(rho || pi) ]. $
    
    As we will see, @change-of-measure is a fundamental building block of PAC-Bayes bounds.
    

![](https://github.com/typst/packages/raw/main/packages/preview/minienvs/0.1.0/assets/donsker-
varadhan.png)

##  Customization

You can customize the appearance of minienvs by providing a configuration to
the show-rule. For example, for the default configuration, you can do:

    
    
    #show: minienvs.with(config: (
      // Whether to give numbers for environments.
      // If the environment is not mentioned in this dict, it has a number.
      no-numbering: (
        proof: true,
      ),
      // Additional options for the `block` containing the minienv (e.g., to put a box around the minienv).
      // If the environment is not mentioned in this dict, no additional options are passed.
      bbox: (:),
      // How to format the head of the minienv.
      // If the environment is not mentioned in this dict, then it is formatted in bold.
      head-style: (
        proof: it => [_#{it}_],
      ),
      // How to format the body of the minienv.
      // If the environment is not mentioned in this dict, then it is formatted in italic.
      transforms: (
        proof: it => [#it #h(1fr) $space qed$],
      )
    ))
    

##  Coming soon / Work in progress

  * Presets for multiple languages 
  * Separate counters 
  * More customization 

###  How to add

Copy this into your project and use the import as  ` minienvs `

    
    
    #import "@preview/minienvs:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Daniel Csillag 
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     December 14, 2023 
First released:

     December 14, 2023 
Archive size:

     3.13 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/minienvs-0.1.0.tar.gz)

###  Where to report issues?

This  package  is a project of  Daniel Csillag  .  You can also try to ask for
help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  December 14, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

