#  yats

0.1.0

Serialization module for Typst

serialize the Typst objects into bytes and deserialize the bytes into Typst
objects

##  Reason

I want to interactive between the wasm and typst. But I found that the input
arguments and output argument are all bytes. It is not convenient for me to
use WASM. So I designed the serialization protocol and implemented this
serialization module for reference.

Although there have been some serialization APIs like cbor, yaml, json and
others, this is a good learning material and a good example to show the
abilities of Typst.

##  Example

Have a look at the example [ here
](https://github.com/typst/packages/raw/main/packages/preview/yats/0.1.0/example.typ)
.

##  Usage

Simply import 2 functions : ` serialize ` , ` deserialize ` .

And enjoy it

    
    
    #import "@preview/yats:0.1.0": serialize, deserialize
    #{
      let obj = (
        name : "0warning0error",
        age : 100,
        height : 1.8,
        birthday : datetime(year : 1998,month : 7,day:8)
      )
      deserialize(serialize(obj))
    }
    

##  Supported Types

  * ` none `
  * ` bool `
  * ` type ` : type is a type 
  * ` int `
  * ` float ` : (implemented in string, for convenience) 
  * ` datetime ` : only support ` year ` , ` month ` , ` day ` ; ` hour ` , ` minute ` , ` second ` ; both combined. 
  * ` duration `
  * ` bytes `
  * ` string `
  * ` regex ` : (dealing with it is a little tricky) 
  * ` array ` : the element in it can be anything listed. 
  * ` dictionary ` : the value in it can be anything listed. 

##  ` Yats ` function

    
    
    #let serialize(
      data : any
    ) = { .. }
    

**Arguments:**

  * ` data ` : [ ` any ` ] â Any supported object . 

**Return**

The serialized bytes.

    
    
    #let deserialize(
      data : array
    ) = { .. }
    

**Arguments:**

  * ` data ` : [ ` bytes ` ] â serialized objects represented by bytes . 

**Return**

binary array. (the first one is the object deserialized, the second one is the
valid length of the bytes)

##  Potential Problems and limitation

  * Some problem can be caused by changes of ` repr ` . For example, the serialization of ` regex ` relies on the ` repr ` of ` regex ` . And there are no method to directly catch the inner ` string ` . 

  * Because of lack of time, only basic types are supported. But more types can be supported in Typst. 

##  License

This project is licensed under the Apache 2.0 License.

###  How to add

Copy this into your project and use the import as  ` yats `

    
    
    #import "@preview/yats:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Zhao Yuanhang ](https://github.com/0warning0error)
License:

     Apache-2.0 
Current version:

     0.1.0 
Last updated:

     March 15, 2024 
First released:

     March 15, 2024 
Minimum Typst version:

     0.10.0 
Archive size:

     7.92 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/yats-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/0warning0error/typst-yats)

###  Where to report issues?

This  package  is a project of  Zhao Yuanhang  .  Report issues on  [ their
repository ](https://github.com/0warning0error/typst-yats) .  You can also try
to ask for help with this  package  on the  [ Forum ](https://forum.typst.app)
.

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  March 15, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

