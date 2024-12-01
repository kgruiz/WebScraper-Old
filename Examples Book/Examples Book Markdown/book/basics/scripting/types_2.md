#  Types, part II

In Typst, most of things are **immutable** . You can't change content, you can
just create new using this one (for example, using addition).

Immutability is very important for Typst since it tries to be _as pure
language as possible_ . Functions do nothing outside of returning some value.

However, purity is partly "broken" by these types. They are _super-useful_ and
not adding them would make Typst much pain.

However, using them adds complexity.

##  Arrays ( ` array  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/array/) .

Mutable object that stores data with their indices.

###  Working with indices

    
    
    #let values = (1, 7, 4, -3, 2)
    
    // take value at index 0
    #values.at(0) \
    // set value at 0 to 3
    #(values.at(0) = 3)
    // negative index => start from the back
    #values.at(-1) \
    // add index of something that is even
    #values.find(calc.even)

![Rendered image](typst-
img/0374c20b28fbf2b2d15bc32e5428f7f5121ea9d673d96de3274a0c6d988d5fb5-1.svg)

###  Iterating methods

    
    
    #let values = (1, 7, 4, -3, 2)
    
    // leave only what is odd
    #values.filter(calc.odd) \
    // create new list of absolute values of list values
    #values.map(calc.abs) \
    // reverse
    #values.rev() \
    // convert array of arrays to flat array
    #(1, (2, 3)).flatten() \
    // join array of string to string
    #(("A", "B", "C")
     .join(", ", last: " and "))

![Rendered image](typst-
img/684400186916f8f16a2d7edb151b7f5023c7e4c010b23a2c6566f0bd7a224061-1.svg)

###  List operations

    
    
    // sum of lists:
    #((1, 2, 3) + (4, 5, 6))
    
    // list product:
    #((1, 2, 3) * 4)

![Rendered image](typst-
img/abe2d311638b351e0938be0e432f10265ca81a69a9ed7d2e6f88f656c60dfc65-1.svg)

###  Empty list

    
    
    #() \ // this is an empty list
    #(1,) \  // this is a list with one element
    BAD: #(1) // this is just an element, not a list!

![Rendered image](typst-
img/da4f77f8784462ca5c4f73862e58420695916064d56921e4adef7a7e37d5a532-1.svg)

##  Dictionaries ( ` dict  ` )

> [ Link to Reference
> ](https://typst.app/docs/reference/foundations/dictionary/) .

Dictionaries are objects that store a string "key" and a value, associated
with that key.

    
    
    #let dict = (
      name: "Typst",
      born: 2019,
    )
    
    #dict.name \
    #(dict.launch = 20)
    #dict.len() \
    #dict.keys() \
    #dict.values() \
    #dict.at("born") \
    #dict.insert("city", "Berlin ")
    #("name" in dict)

![Rendered image](typst-
img/638ada64eb36af0b1891def1b2c0a2cc97a14d87987df8c16f5f3872244553d6-1.svg)

###  Empty dictionary

    
    
    This is an empty list: #() \
    This is an empty dict: #(:)

![Rendered image](typst-
img/6ef41801d46f0b7256bb6913482fde054c811a1850ecae3a446660eb6d1c8850-1.svg)

