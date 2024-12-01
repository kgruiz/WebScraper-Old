#  Types, part I

Each value in Typst has a type. You don't have to specify it, but it is
important.

##  Content ( ` content  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/content/)
> .

We have already seen it. A type that represents what is displayed in document.

    
    
    #let c = [It is _content_!]
    
    // Check type of c
    #(type(c) == content)
    
    #c
    
    // repr gives an "inner representation" of value
    #repr(c)

![Rendered image](typst-
img/21fd80460de8e8a377a9ef2046a27232ad88924070509ccf8647c9135c9c2fe3-1.svg)

**Important:** It is very hard to convert _content_ to _plain text_ , as
_content_ may contain _anything_ ! So be careful when passing and storing
content in variables.

##  None ( ` none  ` )

Nothing. Also known as ` null  ` in other languages. It isn't displayed,
converts to empty content.

    
    
    #none
    #repr(none)

![Rendered image](typst-
img/c4100c1d1df8fc0a51bd99945d9bac3c5aa67de19b8f872fd33fd9068bb2507b-1.svg)

##  String ( ` str  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/str/) .

String contains only plain text and no formatting. Just some chars. That
allows us to work with chars:

    
    
    #let s = "Some large string. There could be escape sentences: \n,
     line breaks, and even unicode codes: \u{1251}"
    #s \
    #type(s) \
    `repr`: #repr(s)
    
    #let s = "another small string"
    #s.replace("a", sym.alpha) \
    #s.split(" ") // split by space

![Rendered image](typst-
img/b797f9c4a540fcf1429bec801d0b334e7d88dc9ccd10e3b7b859f451e269f30f-1.svg)

You can convert other types to their string representation using this type's
constructor (e.g. convert number to string):

    
    
    #str(5) // string, can be worked with as string

![Rendered image](typst-
img/ab4d4a5d93533525f7f9b2cc8378b79f1561904f3c5d5f6d2ec4bdc448669cb5-1.svg)

##  Boolean ( ` bool  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/bool/) .

true/false. Used in ` if  ` and many others

    
    
    #let b = false
    #b \
    #repr(b) \
    #(true and not true or true) = #((true and (not true)) or true) \
    #if (4 > 3) {
      "4 is more than 3"
    }

![Rendered image](typst-
img/e848d78e220ca8cf3b6c323a99d5d963e529aad36857f0e6753c56c02984a616-1.svg)

##  Integer ( ` int  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/int/) .

A whole number.

The number can also be specified as hexadecimal, octal, or binary by starting
it with a zero followed by either x, o, or b.

    
    
    #let n = 5
    #n \
    #(n += 1) \
    #n \
    #calc.pow(2, n) \
    #type(n) \
    #repr(n)

![Rendered image](typst-
img/6f1c9e02393e14aa23add33d0e6dc2b596ee97a0d425cd3edb3e2b912c6ef6b0-1.svg)

    
    
    #(1 + 2) \
    #(2 - 5) \
    #(3 + 4 < 8)

![Rendered image](typst-
img/e610f15659cb6b64c3516be48740b54e6caf3d933919004157ba64b757389ba5-1.svg)

    
    
    #0xff \
    #0o10 \
    #0b1001

![Rendered image](typst-
img/1446dba05ee6f8006884c280ff32e31ede8425d4847445e97cae5dfcde1efe7f-1.svg)

You can convert a value to an integer with this type's constructor (e.g.
convert string to int).

    
    
    #int(false) \
    #int(true) \
    #int(2.7) \
    #(int("27") + int("4"))

![Rendered image](typst-
img/b44779a87fd984d317ec4d1aed732c0ebdc6220fd4764e407f77fedd139c0d8c-1.svg)

##  Float ( ` float  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/float/) .

Works the same way as integer, but can store floating point numbers. However,
precision may be lost.

    
    
    #let n = 5.0
    
    // You can mix floats and integers, 
    // they will be implicitly converted
    #(n += 1) \
    #calc.pow(2, n) \
    #(0.2 + 0.1) \
    #type(n) 

![Rendered image](typst-
img/21cafe751ec803dd9598c871b283a29bc3c6b2e302f0f9bd78edc17330b45616-1.svg)

    
    
    #3.14 \
    #1e4 \
    #(10 / 4)

![Rendered image](typst-
img/05bd400096c1df5a954fda0897f3c1756c9f99f73503d32d992b3222667a45cd-1.svg)

You can convert a value to a float with this type's constructor (e.g. convert
string to float).

    
    
    #float(40%) \
    #float("2.7") \
    #float("1e5")

![Rendered image](typst-
img/f50a22cbea42fded97ab8340f0939e786e5c1cdb5ea531cd4b35b1f732947b7f-1.svg)

