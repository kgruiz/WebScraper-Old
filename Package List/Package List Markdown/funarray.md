#  funarray

0.4.0

Package providing convenient functional functions to use on arrays.

This package provides some convinient functional functions for [ typst
](https://typst.app/) to use on arrays.

##  Usage

To use this package simply ` #import "@preview/funarray:0.3.0" ` . To import
all functions use ` : * ` and for specific ones, use either the module or as
described in the [ typst docs
](https://typst.app/docs/reference/scripting#modules) .

##  Important note

Almost all functions are one-liners, which could, instead of being loaded via
a package import, also be just copied directly into your source files.

##  Dokumentation

A prettier und easier to read version of the documentation exists in the
example folder, which is done in typst and exported to pdf. Otherwise, bellow
is the markdown version.

##  Functions

Let us define ` a = (1, "not prime", 2, "prime", 3, "prime", 4, "not prime",
5, "prime") `

###  chunks

The chunks function translates the array to an array of array. It groups the
elements to chunks of a given size and collects them in an bigger array.

` chunks(a, 2) = ( (1, "not prime"), (2, "prime"), (3, "prime"), (4, "not
prime"), (5, "prime") ) `

###  unzip

The unzip function is the inverse of the zip method, it transforms an array of
pairs to a pair of vectors. You can also give input an array of ` n ` -tuples
resulting in in ` n ` arrays.

` unzip(b) = ( (1, 2, 3, 4, 5), ( "not prime", "prime", "prime", "not prime",
"prime" ) ) `

###  cycle

The cycle function concatenates the array to itself until it has a given size.

    
    
    let c = cycle(range(5), 8)
    c = (0, 1, 2, 3, 4, 0, 1, 2)
    

Note that there is also the functionality to concatenate with ` + ` and ` * `
in typst.

###  windows and circular-windows

This function provides a running window

` windows(c, 5) = ( (0, 1, 2, 3, 4), (1, 2, 3, 4, 0), (2, 3, 4, 0, 1), (3, 4,
0, 1, 2) ) `

whereas the circular version wraps over.

` circular-windows(c, 5) = ( (0, 1, 2, 3, 4), (1, 2, 3, 4, 0), (2, 3, 4, 0,
1), (3, 4, 0, 1, 2), (4, 0, 1, 2, 4), (0, 1, 2, 4, 0), (1, 2, 4, 0, 1), (2, 4,
0, 1, 2) ) `

###  partition and partition-map

The partition function seperates the array in two according to a predicate
function. The result is an array with all elements, where the predicate
returned true followed by an array with all elements, where the predicate
returned false.

    
    
    let (primesp, nonprimesp) = partition(b, x => x.at(1) == "prime")
    primesp = ((2, "prime"), (3, "prime"), (5, "prime"))
    nonprimesp = ((1, "not prime"), (4, "not prime"))
    

There is also a partition-map function, which after partition also applies a
second function on both collections.

    
    
    let (primes, nonprimes) = partition-map(b, x => x.at(1) == "prime", x => x.at(0))
    primes = (2, 3, 5)
    nonprimes = (1, 4)
    

###  group-by

This functions groups according to a predicate into maximally sized chunks,
where all elements have the same predicate value.

    
    
    let f = (0,0,1,1,1,0,0,1)
    let g = group-by(f, x => x == 0)
    g = ((0, 0), (1, 1, 1), (0, 0), (1,))
    

###  flatten

Typst has a ` flatten ` method for arrays, however that method acts
recursively. For instance

` (((1,2,3), (2,3)), ((1,2,3), (1,2))).flatten() = (1, 2, 3, 2, 3, 1, 2, 3, 1,
2) `

Normally, one would only have flattened one level. To do this, we can use the
typst array concatenation method +, or by folding, the sum method for arrays:

` (((1,2,3), (2,3)), ((1,2,3), (1,2))).sum() = ((1, 2, 3), (2, 3), (1, 2, 3),
(1, 2)) `

To handle further depth, one can use flatten again, so that in our example:

` (((1,2,3), (2,3)), ((1,2,3), (1,2))).sum().sum() = (((1,2,3), (2,3)),
((1,2,3), (1,2))).flatten() `

###  intersperse

This function has been removed in version 0.3, as typst 0.8 provides such
functionality by default.

###  take-while and skip-while

These functions do exactly as they say.

    
    
    take-while(h, x => x < 1) = (0, 0, 0.25, 0.5, 0.75)
    skip-while(h, x => x < 1) = (1, 1, 1, 0.25, 0.5, 0.75, 0, 0, 0.25, 0.5, 0.75, 1)
    

##  Unsafe Functions

The core functions are defined in ` funarray-unsafe.typ ` . However,
assertions (error checking) are not there and it is generally not being
advised to use these directly. Still, if being cautious, one can use the
imported ` funarray-unsafe ` module in ` funarray(.typ) ` . All function names
are the same.

To do this from the package, do as follows:

    
    
    #import @preview/funarray:0.3.0
    
    #funarray.funarray-unsafe.chunks(range(10), 3)
    

###  How to add

Copy this into your project and use the import as  ` funarray `

    
    
    #import "@preview/funarray:0.4.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Ludwig Austermann 
License:

     MIT 
Current version:

     0.4.0 
Last updated:

     October 24, 2023 
First released:

     August 1, 2023 
Minimum Typst version:

     0.8.0 
Archive size:

     4.19 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/funarray-0.4.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/ludwig-austermann/typst-funarray)

###  Where to report issues?

This  package  is a project of  Ludwig Austermann  .  Report issues on  [
their repository ](https://github.com/ludwig-austermann/typst-funarray) .  You
can also try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.4.0  |  October 24, 2023   
[ 0.3.0 ](https://typst.app/universe/package/funarray/0.3.0/) |  September 25, 2023   
[ 0.2.0 ](https://typst.app/universe/package/funarray/0.2.0/) |  August 1, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

