#  ascii-ipa

2.0.0

Converter for ASCII representations of the International Phonetic Alphabet
(IPA)

ð ASCII / IPA conversion for Typst

This package allows you to easily convert different ASCII representations of
the International Phonetic Alphabet (IPA) to and from the IPA. It also offers
some minor utilities to make phonetic transcriptions easier to use overall.
The package is being maintained [ here ](https://github.com/imatpot/typst-
ascii-ipa) .

Note: This is an extended port of the [ ` ipa-translate `
](https://github.com/tirimid/ipa-translate) Rust crate by [ tirimid
](https://github.com/tirimid) âs conversion features into native Typst. Most
conversions are implemented according to [ this Wikipedia article
](https://en.wikipedia.org/wiki/Comparison_of_ASCII_encodings_of_the_International_Phonetic_Alphabet)
which in turn relies of the official specifications of the respective ASCII
representations.

##  Conversion

The package supports multiple ASCII representations for the IPA with one
function each:

Notation  |  Function name   
---|---  
Branner  |  ` #branner(...) `  
Praat  |  ` #praat(...) `  
SIL  |  ` #sil(...) `  
X-SAMPA  |  ` #xsampa(...) `  
  
They all return the converted value as a [ ` string `
](https://typst.app/docs/reference/foundations/str/) and accept the set of
same parameters:

Parameter  |  Type  |  Positional / Named  |  Default  |  Description   
---|---|---|---|---  
` value ` |  [ ` string ` ](https://typst.app/docs/reference/foundations/str/) |  positional  |  |  Main input to the function. Usually the transcription in the corresponsing ASCII-based notation.   
` reverse ` |  [ ` bool ` ](https://typst.app/docs/reference/foundations/bool/) |  named  |  ` false ` |  Reverses the conversion. Pass Unicode IPA into ` value ` to get the corresponsing ASCII-based notation back.   
  
###  Examples

All examples use the Swiss German word [ â¨ChuchichÃ¤schtliâ©
[ËÏÊÏËiËÏÃ¦ÊËtlÉª]
](https://als.wikipedia.org/wiki/Chuchich%C3%A4schtli) for the conversion.

    
    
    #import "@preview/ascii-ipa:2.0.0": *
    
    // returns "ËÏÊÏËiËÏÃ¦ÊËtlÉª"
    #branner("'XUX:i,Xae)S:tlI")
    
    // returns "'XUX:i,Xae)S:tlI"
    #branner("ËÏÊÏËiËÏÃ¦ÊËtlÉª", reverse: true)
    
    // returns "ËÏÊÏËiËÏÃ¦ÊËtlÉª"
    #praat("\\'1\\cf\\hs\\cf\\:f\\'2\\ae\\sh\\:ftl\\ic")
    
    // returns "\\'1\\cf\\hs\\cf\\:f\\'2\\ae\\sh\\:ftl\\ic"
    #praat("ËÏÊÏËiËÏÃ¦ÊËtlÉª", reverse: true)
    
    // returns "ËÏÊÏËiËÏÃ¦ÊËtlÉª"
    #sil("}x=u<x=:i}}x=a<s=:tli=")
    
    // returns "}x=u<x=:i}}x=a<s=:tli="
    #sil("ËÏÊÏËiËÏÃ¦ÊËtlÉª", reverse: true)
    
    // returns "ËÏÊÏËiËÏÃ¦ÊËtlÉª"
    #xsampa("\"XUX:i%X{S:tlI")
    
    // returns "\"XUX:i%X{S:tlI"
    #xsampa("ËÏÊÏËiËÏÃ¦ÊËtlÉª", reverse: true)
    

###  With ` raw `

You can also use [ ` raw ` ](https://typst.app/docs/reference/text/raw/) for
the conversion. This is useful if the notation uses a lot of backslashes.

    
    
    #import "@preview/ascii-ipa:2.0.0": praat
    
    // regular string
    #praat("\\'1\\cf\\hs\\cf\\:f\\'2\\ae\\sh\\:ftl\\ic")
    
    // raw
    #praat(`\'1\cf\hs\cf\:f\'2\ae\sh\:ftl\ic`)
    

Note: ` raw ` will not play nicely with notations that use ` ` ` a lot.

##  Brackets & Braces

You can easily mark your notation text as different types of brackets or
braces.

    
    
    #import "@preview/ascii-ipa:2.0.0": *
    
    #phonetic("prÊ²ÉªËvÊ²et") // [prÊ²ÉªËvÊ²et]
    #phnt("prÊ²ÉªËvÊ²et")     // [prÊ²ÉªËvÊ²et]
    
    #precise("prÊ²ÉªËvÊ²et") // â¦prÊ²ÉªËvÊ²etâ§
    #prec("prÊ²ÉªËvÊ²et")    // â¦prÊ²ÉªËvÊ²etâ§
    
    #phonemic("prÉªvet") // /prÉªvet/
    #phnm("prÉªvet")     // /prÉªvet/
    
    #morphophonemic("prÉªvet") // â«½prÉªvetâ«½
    #mphnm("prÉªvet")          // â«½prÉªvetâ«½
    
    #indistinguishable("prÊ²ÉªËvÊ²et") // (prÊ²ÉªËvÊ²et)
    #idst("prÊ²ÉªËvÊ²et")              // (prÊ²ÉªËvÊ²et)
    
    #obscured("prÊ²ÉªËvÊ²et") // â¸¨prÊ²ÉªËvÊ²etâ¸©
    #obsc("prÊ²ÉªËvÊ²et")     // â¸¨prÊ²ÉªËvÊ²etâ¸©
    
    #orthographic("Ð¿ÑÐ¸Ð²ÐµÑ") // â¨Ð¿ÑÐ¸Ð²ÐµÑâ©
    #orth("Ð¿ÑÐ¸Ð²ÐµÑ")         // â¨Ð¿ÑÐ¸Ð²ÐµÑâ©
    
    #transliterated("privyet") // âªprivyetâ«
    #trlt("privyet")           // âªprivyetâ«
    
    #prosodic("prÊ²ÉªËvÊ²et") // {prÊ²ÉªËvÊ²et}
    #prsd("prÊ²ÉªËvÊ²et")     // {prÊ²ÉªËvÊ²et}
    

###  How to add

Copy this into your project and use the import as  ` ascii-ipa `

    
    
    #import "@preview/ascii-ipa:2.0.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     imatpot 
License:

     MIT 
Current version:

     2.0.0 
Last updated:

     May 14, 2024 
First released:

     March 26, 2024 
Minimum Typst version:

     0.10.0 
Archive size:

     9.84 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/ascii-ipa-2.0.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/imatpot/typst-ascii-ipa)
Discipline  :

    

  * [ Linguistics ](https://typst.app/universe/search/?discipline=linguistics)

Categor  y  :

    

  * ![Text icon](/assets/icons/16-text.svg) [ Text ](https://typst.app/universe/search/?category=text)

###  Where to report issues?

This  package  is a project of  imatpot  .  Report issues on  [ their
repository ](https://github.com/imatpot/typst-ascii-ipa) .  You can also try
to ask for help with this  package  on the  [ Forum ](https://forum.typst.app)
.

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
2.0.0  |  May 14, 2024   
[ 1.1.1 ](https://typst.app/universe/package/ascii-ipa/1.1.1/) |  March 26, 2024   
[ 1.1.0 ](https://typst.app/universe/package/ascii-ipa/1.1.0/) |  March 26, 2024   
[ 1.0.0 ](https://typst.app/universe/package/ascii-ipa/1.0.0/) |  March 26, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

