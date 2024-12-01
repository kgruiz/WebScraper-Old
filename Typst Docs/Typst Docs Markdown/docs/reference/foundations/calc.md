  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Foundations ](/docs/reference/foundations/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Calculation ](/docs/reference/foundations/calc)

#  Calculation

Module for calculations and processing of numeric values.

These definitions are part of the ` calc ` module and not imported by default.
In addition to the functions listed below, the ` calc ` module also defines
the constants ` pi ` , ` tau ` , ` e ` , and ` inf ` .

##  Functions

###  ` abs `

Calculates the absolute value of a numeric value.

calc  .  abs  (

[ int ](/docs/reference/foundations/int/) [ float
](/docs/reference/foundations/float/) [ length
](/docs/reference/layout/length/) [ angle ](/docs/reference/layout/angle/) [
ratio ](/docs/reference/layout/ratio/) [ fraction
](/docs/reference/layout/fraction/) [ decimal
](/docs/reference/foundations/decimal/)

)  -> any

    
    
    #calc.abs(-5) \
    #calc.abs(5pt - 2cm) \
    #calc.abs(2fr) \
    #calc.abs(decimal("-342.440"))
    

![Preview](/assets/docs/1nPNk-RAyXUEHrAszyCnUgAAAAAAAAAA.png)

####  ` value `

[ int ](/docs/reference/foundations/int/) or  [ float
](/docs/reference/foundations/float/) or  [ length
](/docs/reference/layout/length/) or  [ angle ](/docs/reference/layout/angle/)
or  [ ratio ](/docs/reference/layout/ratio/) or  [ fraction
](/docs/reference/layout/fraction/) or  [ decimal
](/docs/reference/foundations/decimal/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The value whose absolute value to calculate.

###  ` pow `

Raises a value to some exponent.

calc  .  pow  (

[ int ](/docs/reference/foundations/int/) [ float
](/docs/reference/foundations/float/) [ decimal
](/docs/reference/foundations/decimal/) ,  [ int
](/docs/reference/foundations/int/) [ float
](/docs/reference/foundations/float/) ,

)  -> [ int ](/docs/reference/foundations/int/) [ float
](/docs/reference/foundations/float/) [ decimal
](/docs/reference/foundations/decimal/)

    
    
    #calc.pow(2, 3) \
    #calc.pow(decimal("2.5"), 2)
    

![Preview](/assets/docs/YQoOsFNxPEgW0b-n9B_VrAAAAAAAAAAA.png)

####  ` base `

[ int ](/docs/reference/foundations/int/) or  [ float
](/docs/reference/foundations/float/) or  [ decimal
](/docs/reference/foundations/decimal/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The base of the power.

If this is a [ ` decimal ` ](/docs/reference/foundations/decimal/ "`decimal`")
, the exponent can only be an [ integer ](/docs/reference/foundations/int/) .

####  ` exponent `

[ int ](/docs/reference/foundations/int/) or  [ float
](/docs/reference/foundations/float/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The exponent of the power.

###  ` exp `

Raises a value to some exponent of e.

calc  .  exp  (

[ int ](/docs/reference/foundations/int/) [ float
](/docs/reference/foundations/float/)

)  -> [ float ](/docs/reference/foundations/float/)

    
    
    #calc.exp(1)
    

![Preview](/assets/docs/D3jiA5mgoQIx6MVn4Oy4zwAAAAAAAAAA.png)

####  ` exponent `

[ int ](/docs/reference/foundations/int/) or  [ float
](/docs/reference/foundations/float/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The exponent of the power.

###  ` sqrt `

Calculates the square root of a number.

calc  .  sqrt  (

[ int ](/docs/reference/foundations/int/) [ float
](/docs/reference/foundations/float/)

)  -> [ float ](/docs/reference/foundations/float/)

    
    
    #calc.sqrt(16) \
    #calc.sqrt(2.5)
    

![Preview](/assets/docs/rSjz1bWkkKYqxmWjxezFTwAAAAAAAAAA.png)

####  ` value `

[ int ](/docs/reference/foundations/int/) or  [ float
](/docs/reference/foundations/float/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The number whose square root to calculate. Must be non-negative.

###  ` root `

Calculates the real nth root of a number.

If the number is negative, then n must be odd.

calc  .  root  (

[ float ](/docs/reference/foundations/float/) ,  [ int
](/docs/reference/foundations/int/) ,

)  -> [ float ](/docs/reference/foundations/float/)

    
    
    #calc.root(16.0, 4) \
    #calc.root(27.0, 3)
    

![Preview](/assets/docs/g3rxlqoTGgoCjLtiE7bcKAAAAAAAAAAA.png)

####  ` radicand `

[ float ](/docs/reference/foundations/float/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The expression to take the root of

####  ` index `

[ int ](/docs/reference/foundations/int/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

Which root of the radicand to take

###  ` sin `

Calculates the sine of an angle.

When called with an integer or a float, they will be interpreted as radians.

calc  .  sin  (

[ int ](/docs/reference/foundations/int/) [ float
](/docs/reference/foundations/float/) [ angle ](/docs/reference/layout/angle/)

)  -> [ float ](/docs/reference/foundations/float/)

    
    
    #calc.sin(1.5) \
    #calc.sin(90deg)
    

![Preview](/assets/docs/DRz-f64JvhHssm4WgSEL2QAAAAAAAAAA.png)

####  ` angle `

[ int ](/docs/reference/foundations/int/) or  [ float
](/docs/reference/foundations/float/) or  [ angle
](/docs/reference/layout/angle/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The angle whose sine to calculate.

###  ` cos `

Calculates the cosine of an angle.

When called with an integer or a float, they will be interpreted as radians.

calc  .  cos  (

[ int ](/docs/reference/foundations/int/) [ float
](/docs/reference/foundations/float/) [ angle ](/docs/reference/layout/angle/)

)  -> [ float ](/docs/reference/foundations/float/)

    
    
    #calc.cos(1.5) \
    #calc.cos(90deg)
    

![Preview](/assets/docs/RQec6gdJF5QvRwZkvI-50gAAAAAAAAAA.png)

####  ` angle `

[ int ](/docs/reference/foundations/int/) or  [ float
](/docs/reference/foundations/float/) or  [ angle
](/docs/reference/layout/angle/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The angle whose cosine to calculate.

###  ` tan `

Calculates the tangent of an angle.

When called with an integer or a float, they will be interpreted as radians.

calc  .  tan  (

[ int ](/docs/reference/foundations/int/) [ float
](/docs/reference/foundations/float/) [ angle ](/docs/reference/layout/angle/)

)  -> [ float ](/docs/reference/foundations/float/)

    
    
    #calc.tan(1.5) \
    #calc.tan(90deg)
    

![Preview](/assets/docs/Mu6UfN_4464KJhy78wvp_wAAAAAAAAAA.png)

####  ` angle `

[ int ](/docs/reference/foundations/int/) or  [ float
](/docs/reference/foundations/float/) or  [ angle
](/docs/reference/layout/angle/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The angle whose tangent to calculate.

###  ` asin `

Calculates the arcsine of a number.

calc  .  asin  (

[ int ](/docs/reference/foundations/int/) [ float
](/docs/reference/foundations/float/)

)  -> [ angle ](/docs/reference/layout/angle/)

    
    
    #calc.asin(0) \
    #calc.asin(1)
    

![Preview](/assets/docs/R-fP2bsKqek6CrHRxsmlvQAAAAAAAAAA.png)

####  ` value `

[ int ](/docs/reference/foundations/int/) or  [ float
](/docs/reference/foundations/float/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The number whose arcsine to calculate. Must be between -1 and 1.

###  ` acos `

Calculates the arccosine of a number.

calc  .  acos  (

[ int ](/docs/reference/foundations/int/) [ float
](/docs/reference/foundations/float/)

)  -> [ angle ](/docs/reference/layout/angle/)

    
    
    #calc.acos(0) \
    #calc.acos(1)
    

![Preview](/assets/docs/34tvtgPRx9Zb0oFQtdkEngAAAAAAAAAA.png)

####  ` value `

[ int ](/docs/reference/foundations/int/) or  [ float
](/docs/reference/foundations/float/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The number whose arcsine to calculate. Must be between -1 and 1.

###  ` atan `

Calculates the arctangent of a number.

calc  .  atan  (

[ int ](/docs/reference/foundations/int/) [ float
](/docs/reference/foundations/float/)

)  -> [ angle ](/docs/reference/layout/angle/)

    
    
    #calc.atan(0) \
    #calc.atan(1)
    

![Preview](/assets/docs/Ks5iB4MwWXNAVXeSMihDJAAAAAAAAAAA.png)

####  ` value `

[ int ](/docs/reference/foundations/int/) or  [ float
](/docs/reference/foundations/float/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The number whose arctangent to calculate.

###  ` atan2 `

Calculates the four-quadrant arctangent of a coordinate.

The arguments are ` (x, y) ` , not ` (y, x) ` .

calc  .  atan2  (

[ int ](/docs/reference/foundations/int/) [ float
](/docs/reference/foundations/float/) ,  [ int
](/docs/reference/foundations/int/) [ float
](/docs/reference/foundations/float/) ,

)  -> [ angle ](/docs/reference/layout/angle/)

    
    
    #calc.atan2(1, 1) \
    #calc.atan2(-2, -3)
    

![Preview](/assets/docs/R3PgftYITRsSLYBeQqKe3wAAAAAAAAAA.png)

####  ` x `

[ int ](/docs/reference/foundations/int/) or  [ float
](/docs/reference/foundations/float/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The X coordinate.

####  ` y `

[ int ](/docs/reference/foundations/int/) or  [ float
](/docs/reference/foundations/float/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The Y coordinate.

###  ` sinh `

Calculates the hyperbolic sine of a hyperbolic angle.

calc  .  sinh  (

[ float ](/docs/reference/foundations/float/)

)  -> [ float ](/docs/reference/foundations/float/)

    
    
    #calc.sinh(0) \
    #calc.sinh(1.5)
    

![Preview](/assets/docs/Si7LVr220y-yjr6frD5mYQAAAAAAAAAA.png)

####  ` value `

[ float ](/docs/reference/foundations/float/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The hyperbolic angle whose hyperbolic sine to calculate.

###  ` cosh `

Calculates the hyperbolic cosine of a hyperbolic angle.

calc  .  cosh  (

[ float ](/docs/reference/foundations/float/)

)  -> [ float ](/docs/reference/foundations/float/)

    
    
    #calc.cosh(0) \
    #calc.cosh(1.5)
    

![Preview](/assets/docs/Vut_ujHW8enJAdOI95v6bgAAAAAAAAAA.png)

####  ` value `

[ float ](/docs/reference/foundations/float/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The hyperbolic angle whose hyperbolic cosine to calculate.

###  ` tanh `

Calculates the hyperbolic tangent of an hyperbolic angle.

calc  .  tanh  (

[ float ](/docs/reference/foundations/float/)

)  -> [ float ](/docs/reference/foundations/float/)

    
    
    #calc.tanh(0) \
    #calc.tanh(1.5)
    

![Preview](/assets/docs/8omHKWMEXh9ltcsWpm4RDQAAAAAAAAAA.png)

####  ` value `

[ float ](/docs/reference/foundations/float/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The hyperbolic angle whose hyperbolic tangent to calculate.

###  ` log `

Calculates the logarithm of a number.

If the base is not specified, the logarithm is calculated in base 10.

calc  .  log  (

[ int ](/docs/reference/foundations/int/) [ float
](/docs/reference/foundations/float/) ,  base  :  [ float
](/docs/reference/foundations/float/) ,

)  -> [ float ](/docs/reference/foundations/float/)

    
    
    #calc.log(100)
    

![Preview](/assets/docs/4te-fP3EFYf9CFfXTNeLbgAAAAAAAAAA.png)

####  ` value `

[ int ](/docs/reference/foundations/int/) or  [ float
](/docs/reference/foundations/float/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The number whose logarithm to calculate. Must be strictly positive.

####  ` base `

[ float ](/docs/reference/foundations/float/)

The base of the logarithm. May not be zero.

Default: ` 10.0  `

###  ` ln `

Calculates the natural logarithm of a number.

calc  .  ln  (

[ int ](/docs/reference/foundations/int/) [ float
](/docs/reference/foundations/float/)

)  -> [ float ](/docs/reference/foundations/float/)

    
    
    #calc.ln(calc.e)
    

![Preview](/assets/docs/ahMgc30uVaXMdJx4f9b76gAAAAAAAAAA.png)

####  ` value `

[ int ](/docs/reference/foundations/int/) or  [ float
](/docs/reference/foundations/float/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The number whose logarithm to calculate. Must be strictly positive.

###  ` fact `

Calculates the factorial of a number.

calc  .  fact  (

[ int ](/docs/reference/foundations/int/)

)  -> [ int ](/docs/reference/foundations/int/)

    
    
    #calc.fact(5)
    

![Preview](/assets/docs/Hx0vydXttNRUJbbdDSvGlwAAAAAAAAAA.png)

####  ` number `

[ int ](/docs/reference/foundations/int/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The number whose factorial to calculate. Must be non-negative.

###  ` perm `

Calculates a permutation.

Returns the ` k ` -permutation of ` n ` , or the number of ways to choose ` k
` items from a set of ` n ` with regard to order.

calc  .  perm  (

[ int ](/docs/reference/foundations/int/) ,  [ int
](/docs/reference/foundations/int/) ,

)  -> [ int ](/docs/reference/foundations/int/)

    
    
    $ "perm"(n, k) &= n!/((n - k)!) \
      "perm"(5, 3) &= #calc.perm(5, 3) $
    

![Preview](/assets/docs/7mAf4sPmhe6rKKzamBE-iAAAAAAAAAAA.png)

####  ` base `

[ int ](/docs/reference/foundations/int/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The base number. Must be non-negative.

####  ` numbers `

[ int ](/docs/reference/foundations/int/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The number of permutations. Must be non-negative.

###  ` binom `

Calculates a binomial coefficient.

Returns the ` k ` -combination of ` n ` , or the number of ways to choose ` k
` items from a set of ` n ` without regard to order.

calc  .  binom  (

[ int ](/docs/reference/foundations/int/) ,  [ int
](/docs/reference/foundations/int/) ,

)  -> [ int ](/docs/reference/foundations/int/)

    
    
    #calc.binom(10, 5)
    

![Preview](/assets/docs/3evQc1ME4eQqbzXhrmJ5lAAAAAAAAAAA.png)

####  ` n `

[ int ](/docs/reference/foundations/int/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The upper coefficient. Must be non-negative.

####  ` k `

[ int ](/docs/reference/foundations/int/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The lower coefficient. Must be non-negative.

###  ` gcd `

Calculates the greatest common divisor of two integers.

calc  .  gcd  (

[ int ](/docs/reference/foundations/int/) ,  [ int
](/docs/reference/foundations/int/) ,

)  -> [ int ](/docs/reference/foundations/int/)

    
    
    #calc.gcd(7, 42)
    

![Preview](/assets/docs/qOIwQyXpCnrSkONAOnIDgAAAAAAAAAAA.png)

####  ` a `

[ int ](/docs/reference/foundations/int/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The first integer.

####  ` b `

[ int ](/docs/reference/foundations/int/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The second integer.

###  ` lcm `

Calculates the least common multiple of two integers.

calc  .  lcm  (

[ int ](/docs/reference/foundations/int/) ,  [ int
](/docs/reference/foundations/int/) ,

)  -> [ int ](/docs/reference/foundations/int/)

    
    
    #calc.lcm(96, 13)
    

![Preview](/assets/docs/BsSZQG52_995RG9zgRumuAAAAAAAAAAA.png)

####  ` a `

[ int ](/docs/reference/foundations/int/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The first integer.

####  ` b `

[ int ](/docs/reference/foundations/int/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The second integer.

###  ` floor `

Rounds a number down to the nearest integer.

If the number is already an integer, it is returned unchanged.

Note that this function will always return an [ integer
](/docs/reference/foundations/int/) , and will error if the resulting [ `
float ` ](/docs/reference/foundations/float/ "`float`") or [ ` decimal `
](/docs/reference/foundations/decimal/ "`decimal`") is larger than the maximum
64-bit signed integer or smaller than the minimum for that type.

calc  .  floor  (

[ int ](/docs/reference/foundations/int/) [ float
](/docs/reference/foundations/float/) [ decimal
](/docs/reference/foundations/decimal/)

)  -> [ int ](/docs/reference/foundations/int/)

    
    
    #calc.floor(500.1)
    #assert(calc.floor(3) == 3)
    #assert(calc.floor(3.14) == 3)
    #assert(calc.floor(decimal("-3.14")) == -4)
    

![Preview](/assets/docs/3pMWbIkij09wRgebD43VQgAAAAAAAAAA.png)

####  ` value `

[ int ](/docs/reference/foundations/int/) or  [ float
](/docs/reference/foundations/float/) or  [ decimal
](/docs/reference/foundations/decimal/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The number to round down.

###  ` ceil `

Rounds a number up to the nearest integer.

If the number is already an integer, it is returned unchanged.

Note that this function will always return an [ integer
](/docs/reference/foundations/int/) , and will error if the resulting [ `
float ` ](/docs/reference/foundations/float/ "`float`") or [ ` decimal `
](/docs/reference/foundations/decimal/ "`decimal`") is larger than the maximum
64-bit signed integer or smaller than the minimum for that type.

calc  .  ceil  (

[ int ](/docs/reference/foundations/int/) [ float
](/docs/reference/foundations/float/) [ decimal
](/docs/reference/foundations/decimal/)

)  -> [ int ](/docs/reference/foundations/int/)

    
    
    #calc.ceil(500.1)
    #assert(calc.ceil(3) == 3)
    #assert(calc.ceil(3.14) == 4)
    #assert(calc.ceil(decimal("-3.14")) == -3)
    

![Preview](/assets/docs/XVF6AbxDnXwmraGN-Eh1MgAAAAAAAAAA.png)

####  ` value `

[ int ](/docs/reference/foundations/int/) or  [ float
](/docs/reference/foundations/float/) or  [ decimal
](/docs/reference/foundations/decimal/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The number to round up.

###  ` trunc `

Returns the integer part of a number.

If the number is already an integer, it is returned unchanged.

Note that this function will always return an [ integer
](/docs/reference/foundations/int/) , and will error if the resulting [ `
float ` ](/docs/reference/foundations/float/ "`float`") or [ ` decimal `
](/docs/reference/foundations/decimal/ "`decimal`") is larger than the maximum
64-bit signed integer or smaller than the minimum for that type.

calc  .  trunc  (

[ int ](/docs/reference/foundations/int/) [ float
](/docs/reference/foundations/float/) [ decimal
](/docs/reference/foundations/decimal/)

)  -> [ int ](/docs/reference/foundations/int/)

    
    
    #calc.trunc(15.9)
    #assert(calc.trunc(3) == 3)
    #assert(calc.trunc(-3.7) == -3)
    #assert(calc.trunc(decimal("8493.12949582390")) == 8493)
    

![Preview](/assets/docs/0ASdokWmhACxp3cbdBzSiwAAAAAAAAAA.png)

####  ` value `

[ int ](/docs/reference/foundations/int/) or  [ float
](/docs/reference/foundations/float/) or  [ decimal
](/docs/reference/foundations/decimal/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The number to truncate.

###  ` fract `

Returns the fractional part of a number.

If the number is an integer, returns ` 0 ` .

calc  .  fract  (

[ int ](/docs/reference/foundations/int/) [ float
](/docs/reference/foundations/float/) [ decimal
](/docs/reference/foundations/decimal/)

)  -> [ int ](/docs/reference/foundations/int/) [ float
](/docs/reference/foundations/float/) [ decimal
](/docs/reference/foundations/decimal/)

    
    
    #calc.fract(-3.1)
    #assert(calc.fract(3) == 0)
    #assert(calc.fract(decimal("234.23949211")) == decimal("0.23949211"))
    

![Preview](/assets/docs/3TGIWh2MEGFIDAB8C1nEQAAAAAAAAAAA.png)

####  ` value `

[ int ](/docs/reference/foundations/int/) or  [ float
](/docs/reference/foundations/float/) or  [ decimal
](/docs/reference/foundations/decimal/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The number to truncate.

###  ` round `

Rounds a number to the nearest integer away from zero.

Optionally, a number of decimal places can be specified.

If the number of digits is negative, its absolute value will indicate the
amount of significant integer digits to remove before the decimal point.

Note that this function will return the same type as the operand. That is,
applying ` round ` to a [ ` float ` ](/docs/reference/foundations/float/
"`float`") will return a ` float ` , and to a [ ` decimal `
](/docs/reference/foundations/decimal/ "`decimal`") , another ` decimal ` .
You may explicitly convert the output of this function to an integer with [ `
int ` ](/docs/reference/foundations/int/ "`int`") , but note that such a
conversion will error if the ` float ` or ` decimal ` is larger than the
maximum 64-bit signed integer or smaller than the minimum integer.

In addition, this function can error if there is an attempt to round beyond
the maximum or minimum integer or ` decimal ` . If the number is a ` float ` ,
such an attempt will cause ` float  .  inf ` or ` -  float  .  inf ` to be
returned for maximum and minimum respectively.

calc  .  round  (

[ int ](/docs/reference/foundations/int/) [ float
](/docs/reference/foundations/float/) [ decimal
](/docs/reference/foundations/decimal/) ,  digits  :  [ int
](/docs/reference/foundations/int/) ,

)  -> [ int ](/docs/reference/foundations/int/) [ float
](/docs/reference/foundations/float/) [ decimal
](/docs/reference/foundations/decimal/)

    
    
    #calc.round(3.1415, digits: 2)
    #assert(calc.round(3) == 3)
    #assert(calc.round(3.14) == 3)
    #assert(calc.round(3.5) == 4.0)
    #assert(calc.round(3333.45, digits: -2) == 3300.0)
    #assert(calc.round(-48953.45, digits: -3) == -49000.0)
    #assert(calc.round(3333, digits: -2) == 3300)
    #assert(calc.round(-48953, digits: -3) == -49000)
    #assert(calc.round(decimal("-6.5")) == decimal("-7"))
    #assert(calc.round(decimal("7.123456789"), digits: 6) == decimal("7.123457"))
    #assert(calc.round(decimal("3333.45"), digits: -2) == decimal("3300"))
    #assert(calc.round(decimal("-48953.45"), digits: -3) == decimal("-49000"))
    

![Preview](/assets/docs/S2fXMNcPylTq6uwl7ZRpoAAAAAAAAAAA.png)

####  ` value `

[ int ](/docs/reference/foundations/int/) or  [ float
](/docs/reference/foundations/float/) or  [ decimal
](/docs/reference/foundations/decimal/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The number to round.

####  ` digits `

[ int ](/docs/reference/foundations/int/)

If positive, the number of decimal places.

If negative, the number of significant integer digits that should be removed
before the decimal point.

Default: ` 0  `

###  ` clamp `

Clamps a number between a minimum and maximum value.

calc  .  clamp  (

[ int ](/docs/reference/foundations/int/) [ float
](/docs/reference/foundations/float/) [ decimal
](/docs/reference/foundations/decimal/) ,  [ int
](/docs/reference/foundations/int/) [ float
](/docs/reference/foundations/float/) [ decimal
](/docs/reference/foundations/decimal/) ,  [ int
](/docs/reference/foundations/int/) [ float
](/docs/reference/foundations/float/) [ decimal
](/docs/reference/foundations/decimal/) ,

)  -> [ int ](/docs/reference/foundations/int/) [ float
](/docs/reference/foundations/float/) [ decimal
](/docs/reference/foundations/decimal/)

    
    
    #calc.clamp(5, 0, 4)
    #assert(calc.clamp(5, 0, 10) == 5)
    #assert(calc.clamp(5, 6, 10) == 6)
    #assert(calc.clamp(decimal("5.45"), 2, decimal("45.9")) == decimal("5.45"))
    #assert(calc.clamp(decimal("5.45"), decimal("6.75"), 12) == decimal("6.75"))
    

![Preview](/assets/docs/IT7doIU2fH1UJf0E_SPc6QAAAAAAAAAA.png)

####  ` value `

[ int ](/docs/reference/foundations/int/) or  [ float
](/docs/reference/foundations/float/) or  [ decimal
](/docs/reference/foundations/decimal/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The number to clamp.

####  ` min `

[ int ](/docs/reference/foundations/int/) or  [ float
](/docs/reference/foundations/float/) or  [ decimal
](/docs/reference/foundations/decimal/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The inclusive minimum value.

####  ` max `

[ int ](/docs/reference/foundations/int/) or  [ float
](/docs/reference/foundations/float/) or  [ decimal
](/docs/reference/foundations/decimal/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The inclusive maximum value.

###  ` min `

Determines the minimum of a sequence of values.

calc  .  min  (

..  any

)  -> any

    
    
    #calc.min(1, -3, -5, 20, 3, 6) \
    #calc.min("typst", "is", "cool")
    

![Preview](/assets/docs/afOSrjdOAc_1RzzU2hxUIgAAAAAAAAAA.png)

####  ` values `

any

Required  Positional

Question mark

Positional parameters are specified in order, without names.

Variadic

Question mark

Variadic parameters can be specified multiple times.

The sequence of values from which to extract the minimum. Must not be empty.

###  ` max `

Determines the maximum of a sequence of values.

calc  .  max  (

..  any

)  -> any

    
    
    #calc.max(1, -3, -5, 20, 3, 6) \
    #calc.max("typst", "is", "cool")
    

![Preview](/assets/docs/B8vbsVaOK7Ilt-aRhfDiFwAAAAAAAAAA.png)

####  ` values `

any

Required  Positional

Question mark

Positional parameters are specified in order, without names.

Variadic

Question mark

Variadic parameters can be specified multiple times.

The sequence of values from which to extract the maximum. Must not be empty.

###  ` even `

Determines whether an integer is even.

calc  .  even  (

[ int ](/docs/reference/foundations/int/)

)  -> [ bool ](/docs/reference/foundations/bool/)

    
    
    #calc.even(4) \
    #calc.even(5) \
    #range(10).filter(calc.even)
    

![Preview](/assets/docs/YVF-q96_WeIoAbwweursAAAAAAAAAAAA.png)

####  ` value `

[ int ](/docs/reference/foundations/int/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The number to check for evenness.

###  ` odd `

Determines whether an integer is odd.

calc  .  odd  (

[ int ](/docs/reference/foundations/int/)

)  -> [ bool ](/docs/reference/foundations/bool/)

    
    
    #calc.odd(4) \
    #calc.odd(5) \
    #range(10).filter(calc.odd)
    

![Preview](/assets/docs/54xiVFQnQ9FIdgInF0A_jAAAAAAAAAAA.png)

####  ` value `

[ int ](/docs/reference/foundations/int/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The number to check for oddness.

###  ` rem `

Calculates the remainder of two numbers.

The value ` calc.rem(x, y) ` always has the same sign as ` x ` , and is
smaller in magnitude than ` y ` .

This can error if given a [ ` decimal ` ](/docs/reference/foundations/decimal/
"`decimal`") input and the dividend is too small in magnitude compared to the
divisor.

calc  .  rem  (

[ int ](/docs/reference/foundations/int/) [ float
](/docs/reference/foundations/float/) [ decimal
](/docs/reference/foundations/decimal/) ,  [ int
](/docs/reference/foundations/int/) [ float
](/docs/reference/foundations/float/) [ decimal
](/docs/reference/foundations/decimal/) ,

)  -> [ int ](/docs/reference/foundations/int/) [ float
](/docs/reference/foundations/float/) [ decimal
](/docs/reference/foundations/decimal/)

    
    
    #calc.rem(7, 3) \
    #calc.rem(7, -3) \
    #calc.rem(-7, 3) \
    #calc.rem(-7, -3) \
    #calc.rem(1.75, 0.5)
    

![Preview](/assets/docs/h9kAd8BZ_4qaZUm7WWIpgQAAAAAAAAAA.png)

####  ` dividend `

[ int ](/docs/reference/foundations/int/) or  [ float
](/docs/reference/foundations/float/) or  [ decimal
](/docs/reference/foundations/decimal/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The dividend of the remainder.

####  ` divisor `

[ int ](/docs/reference/foundations/int/) or  [ float
](/docs/reference/foundations/float/) or  [ decimal
](/docs/reference/foundations/decimal/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The divisor of the remainder.

###  ` div-euclid `

Performs euclidean division of two numbers.

The result of this computation is that of a division rounded to the integer `
n ` such that the dividend is greater than or equal to ` n ` times the
divisor.

calc  .  div-euclid  (

[ int ](/docs/reference/foundations/int/) [ float
](/docs/reference/foundations/float/) [ decimal
](/docs/reference/foundations/decimal/) ,  [ int
](/docs/reference/foundations/int/) [ float
](/docs/reference/foundations/float/) [ decimal
](/docs/reference/foundations/decimal/) ,

)  -> [ int ](/docs/reference/foundations/int/) [ float
](/docs/reference/foundations/float/) [ decimal
](/docs/reference/foundations/decimal/)

    
    
    #calc.div-euclid(7, 3) \
    #calc.div-euclid(7, -3) \
    #calc.div-euclid(-7, 3) \
    #calc.div-euclid(-7, -3) \
    #calc.div-euclid(1.75, 0.5) \
    #calc.div-euclid(decimal("1.75"), decimal("0.5"))
    

![Preview](/assets/docs/496IGVvoarlmERajiTFs_gAAAAAAAAAA.png)

####  ` dividend `

[ int ](/docs/reference/foundations/int/) or  [ float
](/docs/reference/foundations/float/) or  [ decimal
](/docs/reference/foundations/decimal/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The dividend of the division.

####  ` divisor `

[ int ](/docs/reference/foundations/int/) or  [ float
](/docs/reference/foundations/float/) or  [ decimal
](/docs/reference/foundations/decimal/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The divisor of the division.

###  ` rem-euclid `

This calculates the least nonnegative remainder of a division.

Warning: Due to a floating point round-off error, the remainder may equal the
absolute value of the divisor if the dividend is much smaller in magnitude
than the divisor and the dividend is negative. This only applies for floating
point inputs.

In addition, this can error if given a [ ` decimal `
](/docs/reference/foundations/decimal/ "`decimal`") input and the dividend is
too small in magnitude compared to the divisor.

calc  .  rem-euclid  (

[ int ](/docs/reference/foundations/int/) [ float
](/docs/reference/foundations/float/) [ decimal
](/docs/reference/foundations/decimal/) ,  [ int
](/docs/reference/foundations/int/) [ float
](/docs/reference/foundations/float/) [ decimal
](/docs/reference/foundations/decimal/) ,

)  -> [ int ](/docs/reference/foundations/int/) [ float
](/docs/reference/foundations/float/) [ decimal
](/docs/reference/foundations/decimal/)

    
    
    #calc.rem-euclid(7, 3) \
    #calc.rem-euclid(7, -3) \
    #calc.rem-euclid(-7, 3) \
    #calc.rem-euclid(-7, -3) \
    #calc.rem-euclid(1.75, 0.5) \
    #calc.rem-euclid(decimal("1.75"), decimal("0.5"))
    

![Preview](/assets/docs/ysX2HLC-rfWACinwigYcWgAAAAAAAAAA.png)

####  ` dividend `

[ int ](/docs/reference/foundations/int/) or  [ float
](/docs/reference/foundations/float/) or  [ decimal
](/docs/reference/foundations/decimal/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The dividend of the remainder.

####  ` divisor `

[ int ](/docs/reference/foundations/int/) or  [ float
](/docs/reference/foundations/float/) or  [ decimal
](/docs/reference/foundations/decimal/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The divisor of the remainder.

###  ` quo `

Calculates the quotient (floored division) of two numbers.

Note that this function will always return an [ integer
](/docs/reference/foundations/int/) , and will error if the resulting [ `
float ` ](/docs/reference/foundations/float/ "`float`") or [ ` decimal `
](/docs/reference/foundations/decimal/ "`decimal`") is larger than the maximum
64-bit signed integer or smaller than the minimum for that type.

calc  .  quo  (

[ int ](/docs/reference/foundations/int/) [ float
](/docs/reference/foundations/float/) [ decimal
](/docs/reference/foundations/decimal/) ,  [ int
](/docs/reference/foundations/int/) [ float
](/docs/reference/foundations/float/) [ decimal
](/docs/reference/foundations/decimal/) ,

)  -> [ int ](/docs/reference/foundations/int/)

    
    
    $ "quo"(a, b) &= floor(a/b) \
      "quo"(14, 5) &= #calc.quo(14, 5) \
      "quo"(3.46, 0.5) &= #calc.quo(3.46, 0.5) $
    

![Preview](/assets/docs/AEhIvOjgCcBZo0GMCLQ9tQAAAAAAAAAA.png)

####  ` dividend `

[ int ](/docs/reference/foundations/int/) or  [ float
](/docs/reference/foundations/float/) or  [ decimal
](/docs/reference/foundations/decimal/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The dividend of the quotient.

####  ` divisor `

[ int ](/docs/reference/foundations/int/) or  [ float
](/docs/reference/foundations/float/) or  [ decimal
](/docs/reference/foundations/decimal/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The divisor of the quotient.

[ ![â](/assets/icons/16-arrow-right.svg) Bytes  Previous page
](/docs/reference/foundations/bytes/) [ ![â](/assets/icons/16-arrow-
right.svg) Content  Next page  ](/docs/reference/foundations/content/)

