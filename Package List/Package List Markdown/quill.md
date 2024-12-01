#  quill

0.5.0

Effortlessly create quantum circuit diagrams.

Featured  Package

![Quill logo](https://github.com/user-
attachments/assets/bf6bfe99-6667-41b0-9b45-13c73ed18590)

[ ![Typst
Package](https://img.shields.io/badge/dynamic/toml?url=https%3A%2F%2Fraw.githubusercontent.com%2FMc-
Zen%2Fquill%2Fv0.5.0%2Ftypst.toml&query=%24.package.version&prefix=v&logo=typst&label=package&color=239DAD)
](https://typst.app/universe/package/quill) [ ![Test
Status](https://github.com/Mc-
Zen/quill/actions/workflows/run_tests.yml/badge.svg) ](https://github.com/Mc-
Zen/quill/actions/workflows/run_tests.yml) [ ![MIT
License](https://img.shields.io/badge/license-MIT-blue)
](https://github.com/Mc-Zen/quill/blob/main/LICENSE) [ ![User
Manual](https://img.shields.io/badge/manual-.pdf-purple)
](https://github.com/Mc-Zen/quill/releases/download/v0.5.0/quill-guide.pdf)

**Quill** is a package for creating quantum circuit diagrams in [ Typst
](https://typst.app/) .

_Note, that this package is in beta and may still be undergoing breaking
changes. As new features like data types and scoped functions will be added to
Typst, this package will be adapted to profit from the new paradigms._

_Meanwhile, we suggest importing everything from the package in a local scope
to avoid polluting the global namespace (see example below)._

  * [ **Usage** ](https://github.com/typst/packages/raw/main/packages/preview/quill/0.5.0/#basic-usage) _quick introduction_
  * [ **Cheat sheet** ](https://github.com/typst/packages/raw/main/packages/preview/quill/0.5.0/#cheat-sheet) _gallery for quickly viewing all kinds of gates_
  * [ **Tequila** ](https://github.com/typst/packages/raw/main/packages/preview/quill/0.5.0/#tequila) _building (sub-)circuits in a way similar to QASM or Qiskit_
  * [ **Examples** ](https://github.com/typst/packages/raw/main/packages/preview/quill/0.5.0/#examples)
  * [ **Changelog** ](https://github.com/typst/packages/raw/main/packages/preview/quill/0.5.0/#changelog)

##  Basic usage

The function ` quantum-circuit() ` takes any number of positional gates and
works somewhat similarly to the built-int Typst functions ` table() ` or `
grid() ` . A variety of different gate and instruction commands are available
for adding elements and integers can be used to produce any number of empty
cells (filled with the current wire style). A new wire is started by adding a
` [\ ] ` item.

    
    
    #{
      import "@preview/quill:0.5.0": *
    
      quantum-circuit(
        lstick($|0âª$), $H$, ctrl(1), rstick($(|00âª+|11âª)/â2$, n: 2), [\ ],
        lstick($|0âª$), 1, targ(), 1
      )
    }
    

![Bell circuit](https://github.com/user-
attachments/assets/53d0c581-ab62-44e3-abf5-5497993d7aba)

Plain quantum gates â such as a Hadamard gate â can be written with the
shorthand notation ` $H$ ` instead of the more lengthy ` gate($H$) ` . The
latter offers more options, however.

Refer to the [ user guide ](https://github.com/Mc-
Zen/quill/releases/download/v0.5.0/quill-guide.pdf) for a full documentation
of this package. You can also look up the documentation of any function by
calling the help module, e.g., ` help("gate") ` in order to print the
signature and description of the ` gate ` command, just where you are
currently typing (powered by [ tidy ](https://github.com/Mc-Zen/tidy) ).

##  Cheat Sheet

Instead of listing every featured gate (as is done in the [ user guide
](https://github.com/Mc-Zen/quill/releases/download/v0.5.0/quill-guide.pdf) ),
this gallery quickly showcases a large selection of possible gates and
decorations that can be added to any quantum circuit.

![Gallery](https://github.com/user-
attachments/assets/29987e5b-c373-4cd6-86a0-58e27d778fb1)

##  Tequila

_Tequila_ is a submodule that adds a completely different way of building
circuits.

    
    
    #import "@preview/quill:0.5.0" as quill: tequila as tq
    
    #quill.quantum-circuit(
      ..tq.build(
        tq.h(0),
        tq.cx(0, 1),
        tq.cx(0, 2),
      ),
      quill.gategroup(x: 2, y: 0, 3, 2)
    )
    

This is similar to how _QASM_ and _Qiskit_ work: gates are successively
applied to the circuit which is then layed out automatically by packing gates
as tightly as possible. We start by calling the ` tq.build() ` function and
filling it with quantum operations. This returns a collection of gates which
we expand into the circuit with the ` .. ` syntax. Now, we still have the
option to add annotations, groups, slices, or even more gates via manual
placement.

The syntax works analog to Qiskit. Available gates are ` x ` , ` y ` , ` z ` ,
` h ` , ` s ` , ` sdg ` , ` sx ` , ` sxdg ` , ` t ` , ` tdg ` , ` p ` , ` rx `
, ` ry ` , ` rz ` , ` u ` , ` cx ` , ` cz ` , and ` swap ` . With ` barrier `
, an invisible barrier can be inserted to prevent gates on different qubits to
be packed tightly. Finally, with ` tq.gate ` and ` tq.mqgate ` , a generic
gate can be created. These two accept the same styling arguments as the normal
` gate ` (or ` mqgate ` ).

Also like Qiskit, all qubit arguments support ranges, e.g., ` tq.h(range(5)) `
adds a Hadamard gate on the first five qubits and ` tq.cx((0, 1), (1, 2)) `
adds two CX gates: one from qubit 0 to 1 and one from qubit 1 to 2.

With Tequila, it is easy to build templates for quantum circuits and to
compose circuits of various building blocks. For this purpose, ` tq.build() `
and the built-in templates all feature optional ` x ` and ` y ` arguments to
allow placing a subcircuit at an arbitrary position of the circuit. As an
example, Tequila provides a ` tq.graph-state() ` template for quickly drawing
graph state preparation circuits.

The following example demonstrates how to compose multiple subcircuits.

    
    
    #import tequila as tq
    
    #quantum-circuit(
      ..tq.graph-state((0, 1), (1, 2)),
      ..tq.build(y: 3, 
          tq.p($pi$, 0), 
          tq.cx(0, (1, 2)), 
        ),
      ..tq.graph-state(x: 6, y: 2, invert: true, (0, 1), (0, 2)),
      gategroup(x: 1, 3, 3),
      gategroup(x: 1, y: 3, 3, 3),
      gategroup(x: 6, y: 2, 3, 3),
      slice(x: 5)
    )
    

![composition](https://github.com/user-
attachments/assets/41c8d60a-1a5e-4d0b-a7f4-82756423f5a8)

##  Examples

Some show-off examples, loosely replicating figures from [ Quantum Computation
and Quantum Information by M. Nielsen and I. Chuang
](https://www.cambridge.org/highereducation/books/quantum-computation-and-
quantum-information/01E10196D0A682A6AEFFEA52D53BE9AE#overview) . The code for
these examples can be found in the [ example folder ](https://github.com/Mc-
Zen/quill/tree/v0.5.0/examples) or in the [ user guide
](https://github.com/Mc-Zen/quill/releases/download/v0.5.0/quill-guide.pdf) .

![Quantum teleportation circuit](https://github.com/user-
attachments/assets/f38abeb9-fc2f-4be4-9592-7932e07af764)

![Quantum circuit for phase estimation](https://github.com/user-
attachments/assets/6e947f71-67dc-4522-936e-6d9b795a1bba)

![Quantum fourier transformation circuit](https://github.com/user-
attachments/assets/3fc92cd0-915e-4c5e-893d-63dac6f83ade)

##  Contribution

If you spot an issue or have a suggestion, you are invited to [ post it
](https://github.com/Mc-Zen/quill/issues) or to contribute. In [
architecture.md ](https://github.com/Mc-
Zen/quill/tree/v0.5.0/docs/architecture.md) , you can also find a description
of the algorithm that forms the base of ` quantum-circuit() ` .

##  Tests

This package uses [ typst-test ](https://github.com/tingerrr/typst-test/) for
running [ tests ](https://github.com/Mc-Zen/quill/tree/v0.5.0/tests/) .

##  Changelog

###  v0.5.0

  * Added support for multi-controlled gates with Tequila. 
  * Switched to using ` context ` instead of the now deprecated ` style() ` for measurement. Note: Starting with this version, Typst 0.11.0 or higher is required. 

###  v0.4.0

  * Alternative model for creating and composing circuits: [ Tequila ](https://github.com/typst/packages/raw/main/packages/preview/quill/0.5.0/#tequila) . 

###  v0.3.0

  * New features 
    * Enable manual placement of gates, ` gate($X$, x: 3, y: 1) ` , similar to built-in ` table() ` in addition to automatic placement. This works for most elements, not only gates. 
    * Add parameter ` pad ` to ` lstick() ` and ` rstick() ` . 
    * Add parameter ` fill-wires ` to ` quantum-circuit() ` . All wires are filled unto the end (determined by the longest wire) by default (breaking change â ï¸). This behavior can be reverted by setting ` fill-wires: false ` . 
    * ` gategroup() ` ` slice() ` and ` annotate() ` can now be placed above or below the circuit with ` z: "above" ` and ` z: "below" ` . 
    * ` help() ` command for quickly displaying the documentation of a given function, e.g., ` help("gate") ` . Powered by [ tidy ](https://github.com/Mc-Zen/tidy) . 
  * Improvements: 
    * Complete rework of circuit layout implementation 
      * allows transparent gates since wires are not drawn through gates anymore. The default fill is now ` auto ` and using ` none ` sets the background to transparent. 
      * ` midstick ` is now transparent by default. 
    * ` setwire() ` can now be used to override only partial wire settings, such as wire color ` setwire(1, stroke: blue) ` , width ` setwire(1, stroke: 1pt) ` or wire distance, all separately. Before, some settings were reset. 
  * Fixes: 
    * Fixed ` lstick ` / ` rstick ` when equation numbering is turned on. 
  * Removed: 
    * The already deprecated ` scale-factor ` (use ` scale ` instead) 

###  v0.2.1

  * Improvements: 
    * Add ` fill ` parameter to ` midstick() ` . 
    * Add ` bend ` parameter to ` permute() ` . 
    * Add ` separation ` parameter to ` permute() ` . 
  * Fixes: 
    * With Typst 0.11.0, ` scale() ` now takes into account outer alignment. This broke the positioning of centered/right-aligned circuits, e.g., ones put into a ` figure() ` . 
    * Change wires to be drawn all through ` ctrl() ` , making it consistent to ` swap() ` and ` targ() ` . 

###  v0.2.0

  * New features: 
    * Add arbitrary labels to any ` gate ` (also derived gates such as ` meter ` , ` ctrl ` , â¦), ` gategroup ` or ` slice ` that can be anchored to any of the nine 2d alignments. 
    * Add optional gate inputs and outputs for multi-qubit gates (see gallery). 
    * Implicit gates (breaking change â ï¸): a content item automatically becomes a gate, so you can just type ` $H$ ` instead of ` gate($H$) ` (of course, the ` gate() ` function is still important in order to use the many available options). 
  * Other breaking changes â ï¸: 
    * ` slice() ` has no ` dx ` and ` dy ` parameters anymore. Instead, labels are handled through ` label ` exactly as in ` gate() ` . Also the ` wires ` parameter is replaced with ` n ` for consistency with other multi-qubit gates. 
    * Swap order of row and column parameters in ` annotate() ` to make it consistent with built-in Typst functions. 
  * Improvements: 
    * Improve layout (allow row/column spacing and min lengths to be specified in em-lengths). 
    * Automatic bounds computation, even for labels. 
    * Improve meter (allow multi-qubit gate meters and respect global (per-circuit) gate padding).d 
  * Fixes: 
    * ` lstick ` / ` rstick ` braces broke with Typst 0.7.0. 
    * ` lstick ` / ` rstick ` bounds. 
  * Documentation 
    * Add section on creating custom gates. 
    * Add section on using labels. 
    * Explain usage of ` slice() ` and ` gategroup() ` . 

###  v0.1.0

Initial Release

###  How to add

Copy this into your project and use the import as  ` quill `

    
    
    #import "@preview/quill:0.5.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Mc-Zen ](https://github.com/Mc-Zen)
License:

     MIT 
Current version:

     0.5.0 
Last updated:

     October 24, 2024 
First released:

     June 28, 2023 
Minimum Typst version:

     0.11.0 
Archive size:

     24.9 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/quill-0.5.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/Mc-Zen/quill)
Discipline  s  :

    

  * [ Physics ](https://typst.app/universe/search/?discipline=physics)
  * [ Computer Science ](https://typst.app/universe/search/?discipline=computer-science)

Categor  y  :

    

  * ![Visualization icon](/assets/icons/16-chart.svg) [ Visualization ](https://typst.app/universe/search/?category=visualization)

###  Where to report issues?

This  package  is a project of  Mc-Zen  .  Report issues on  [ their
repository ](https://github.com/Mc-Zen/quill) .  You can also try to ask for
help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.5.0  |  October 24, 2024   
[ 0.4.0 ](https://typst.app/universe/package/quill/0.4.0/) |  September 16, 2024   
[ 0.3.0 ](https://typst.app/universe/package/quill/0.3.0/) |  May 22, 2024   
[ 0.2.1 ](https://typst.app/universe/package/quill/0.2.1/) |  March 11, 2024   
[ 0.2.0 ](https://typst.app/universe/package/quill/0.2.0/) |  September 28, 2023   
[ 0.1.0 ](https://typst.app/universe/package/quill/0.1.0/) |  June 28, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

