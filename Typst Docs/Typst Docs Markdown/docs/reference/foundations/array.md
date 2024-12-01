  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Foundations ](/docs/reference/foundations/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Array ](/docs/reference/foundations/array/)

#  array

A sequence of values.

You can construct an array by enclosing a comma-separated sequence of values
in parentheses. The values do not have to be of the same type.

You can access and update array items with the ` .at() ` method. Indices are
zero-based and negative indices wrap around to the end of the array. You can
iterate over an array using a [ for loop ](/docs/reference/scripting/#loops) .
Arrays can be added together with the ` + ` operator, [ joined together
](/docs/reference/scripting/#blocks) and multiplied with integers.

**Note:** An array of length one needs a trailing comma, as in ` (  1  ,  )  `
. This is to disambiguate from a simple parenthesized expressions like ` (  1
+  2  )  *  3  ` . An empty array is written as ` (  )  ` .

##  Example

    
    
    #let values = (1, 7, 4, -3, 2)
    
    #values.at(0) \
    #(values.at(0) = 3)
    #values.at(-1) \
    #values.find(calc.even) \
    #values.filter(calc.odd) \
    #values.map(calc.abs) \
    #values.rev() \
    #(1, (2, 3)).flatten() \
    #(("A", "B", "C")
        .join(", ", last: " and "))
    

![Preview](/assets/docs/uC3P-2nGePaWZlTLapiUowAAAAAAAAAA.png)

##  Constructor

Question mark

If a type has a constructor, you can call it like a function to create a new
value of the type.

Converts a value to an array.

Note that this function is only intended for conversion of a collection-like
value to an array, not for creation of an array from individual items. Use the
array syntax ` (1, 2, 3) ` (or ` (1,) ` for a single-element array) instead.

array  (

[ bytes ](/docs/reference/foundations/bytes/) [ array
](/docs/reference/foundations/array/) [ version
](/docs/reference/foundations/version/)

)  -> [ array ](/docs/reference/foundations/array/)

    
    
    #let hi = "Hello ð"
    #array(bytes(hi))
    

![Preview](/assets/docs/X4h0etegVnRbtNlLnkRA5AAAAAAAAAAA.png)

####  ` value `

[ bytes ](/docs/reference/foundations/bytes/) or  [ array
](/docs/reference/foundations/array/) or  [ version
](/docs/reference/foundations/version/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The value that should be converted to an array.

##  Definitions

Question mark

Functions and types and can have associated definitions. These are accessed by
specifying the function or type, followed by a period, and then the
definition's name.

###  ` len `

The number of values in the array.

self  .  len  (

)  -> [ int ](/docs/reference/foundations/int/)

###  ` first `

Returns the first item in the array. May be used on the left-hand side of an
assignment. Fails with an error if the array is empty.

self  .  first  (

)  -> any

###  ` last `

Returns the last item in the array. May be used on the left-hand side of an
assignment. Fails with an error if the array is empty.

self  .  last  (

)  -> any

###  ` at `

Returns the item at the specified index in the array. May be used on the left-
hand side of an assignment. Returns the default value if the index is out of
bounds or fails with an error if no default value was specified.

self  .  at  (

[ int ](/docs/reference/foundations/int/) ,  default  :  any  ,

)  -> any

####  ` index `

[ int ](/docs/reference/foundations/int/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The index at which to retrieve the item. If negative, indexes from the back.

####  ` default `

any

A default value to return if the index is out of bounds.

###  ` push `

Adds a value to the end of the array.

self  .  push  (

any

)

####  ` value `

any

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The value to insert at the end of the array.

###  ` pop `

Removes the last item from the array and returns it. Fails with an error if
the array is empty.

self  .  pop  (

)  -> any

###  ` insert `

Inserts a value into the array at the specified index, shifting all subsequent
elements to the right. Fails with an error if the index is out of bounds.

To replace an element of an array, use [ ` at `
](/docs/reference/foundations/array/#definitions-at) .

self  .  insert  (

[ int ](/docs/reference/foundations/int/) ,  any  ,

)

####  ` index `

[ int ](/docs/reference/foundations/int/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The index at which to insert the item. If negative, indexes from the back.

####  ` value `

any

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The value to insert into the array.

###  ` remove `

Removes the value at the specified index from the array and return it.

self  .  remove  (

[ int ](/docs/reference/foundations/int/) ,  default  :  any  ,

)  -> any

####  ` index `

[ int ](/docs/reference/foundations/int/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The index at which to remove the item. If negative, indexes from the back.

####  ` default `

any

A default value to return if the index is out of bounds.

###  ` slice `

Extracts a subslice of the array. Fails with an error if the start or end
index is out of bounds.

self  .  slice  (

[ int ](/docs/reference/foundations/int/) ,  [ none
](/docs/reference/foundations/none/) [ int ](/docs/reference/foundations/int/)
,  count  :  [ int ](/docs/reference/foundations/int/) ,

)  -> [ array ](/docs/reference/foundations/array/)

####  ` start `

[ int ](/docs/reference/foundations/int/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The start index (inclusive). If negative, indexes from the back.

####  ` end `

[ none ](/docs/reference/foundations/none/) or  [ int
](/docs/reference/foundations/int/)

Positional

Question mark

Positional parameters are specified in order, without names.

The end index (exclusive). If omitted, the whole slice until the end of the
array is extracted. If negative, indexes from the back.

Default: ` none  `

####  ` count `

[ int ](/docs/reference/foundations/int/)

The number of items to extract. This is equivalent to passing ` start + count
` as the ` end ` position. Mutually exclusive with ` end ` .

###  ` contains `

Whether the array contains the specified value.

This method also has dedicated syntax: You can write ` 2  in  (  1  ,  2  ,  3
)  ` instead of ` (  1  ,  2  ,  3  )  .  contains  (  2  )  ` .

self  .  contains  (

any

)  -> [ bool ](/docs/reference/foundations/bool/)

####  ` value `

any

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The value to search for.

###  ` find `

Searches for an item for which the given function returns ` true  ` and
returns the first match or ` none  ` if there is no match.

self  .  find  (

[ function ](/docs/reference/foundations/function/)

)  -> any  [ none ](/docs/reference/foundations/none/)

####  ` searcher `

[ function ](/docs/reference/foundations/function/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The function to apply to each item. Must return a boolean.

###  ` position `

Searches for an item for which the given function returns ` true  ` and
returns the index of the first match or ` none  ` if there is no match.

self  .  position  (

[ function ](/docs/reference/foundations/function/)

)  -> [ none ](/docs/reference/foundations/none/) [ int
](/docs/reference/foundations/int/)

####  ` searcher `

[ function ](/docs/reference/foundations/function/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The function to apply to each item. Must return a boolean.

###  ` range `

Create an array consisting of a sequence of numbers.

If you pass just one positional parameter, it is interpreted as the ` end ` of
the range. If you pass two, they describe the ` start ` and ` end ` of the
range.

This function is available both in the array function's scope and globally.

array  .  range  (

[ int ](/docs/reference/foundations/int/) ,  [ int
](/docs/reference/foundations/int/) ,  step  :  [ int
](/docs/reference/foundations/int/) ,

)  -> [ array ](/docs/reference/foundations/array/)

    
    
    #range(5) \
    #range(2, 5) \
    #range(20, step: 4) \
    #range(21, step: 4) \
    #range(5, 2, step: -1)
    

![Preview](/assets/docs/zrh5Y9Alyv5p1PUCuyz0bAAAAAAAAAAA.png)

####  ` start `

[ int ](/docs/reference/foundations/int/)

Positional

Question mark

Positional parameters are specified in order, without names.

The start of the range (inclusive).

Default: ` 0  `

####  ` end `

[ int ](/docs/reference/foundations/int/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The end of the range (exclusive).

####  ` step `

[ int ](/docs/reference/foundations/int/)

The distance between the generated numbers.

Default: ` 1  `

###  ` filter `

Produces a new array with only the items from the original one for which the
given function returns true.

self  .  filter  (

[ function ](/docs/reference/foundations/function/)

)  -> [ array ](/docs/reference/foundations/array/)

####  ` test `

[ function ](/docs/reference/foundations/function/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The function to apply to each item. Must return a boolean.

###  ` map `

Produces a new array in which all items from the original one were transformed
with the given function.

self  .  map  (

[ function ](/docs/reference/foundations/function/)

)  -> [ array ](/docs/reference/foundations/array/)

####  ` mapper `

[ function ](/docs/reference/foundations/function/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The function to apply to each item.

###  ` enumerate `

Returns a new array with the values alongside their indices.

The returned array consists of ` (index, value) ` pairs in the form of
length-2 arrays. These can be [ destructured
](/docs/reference/scripting/#bindings) with a let binding or for loop.

self  .  enumerate  (

start  :  [ int ](/docs/reference/foundations/int/)

)  -> [ array ](/docs/reference/foundations/array/)

####  ` start `

[ int ](/docs/reference/foundations/int/)

The index returned for the first pair of the returned list.

Default: ` 0  `

###  ` zip `

Zips the array with other arrays.

Returns an array of arrays, where the ` i ` th inner array contains all the `
i ` th elements from each original array.

If the arrays to be zipped have different lengths, they are zipped up to the
last element of the shortest array and all remaining elements are ignored.

This function is variadic, meaning that you can zip multiple arrays together
at once: ` (  1  ,  2  )  .  zip  (  (  "A"  ,  "B"  )  ,  (  10  ,  20  )  )
` yields ` (  (  1  ,  "A"  ,  10  )  ,  (  2  ,  "B"  ,  20  )  )  ` .

self  .  zip  (

exact  :  [ bool ](/docs/reference/foundations/bool/) ,  ..  [ array
](/docs/reference/foundations/array/) ,

)  -> [ array ](/docs/reference/foundations/array/)

####  ` exact `

[ bool ](/docs/reference/foundations/bool/)

Whether all arrays have to have the same length. For example, ` (  1  ,  2  )
.  zip  (  (  1  ,  2  ,  3  )  ,  exact  :  true  )  ` produces an error.

Default: ` false  `

####  ` others `

[ array ](/docs/reference/foundations/array/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

Variadic

Question mark

Variadic parameters can be specified multiple times.

The arrays to zip with.

###  ` fold `

Folds all items into a single value using an accumulator function.

self  .  fold  (

any  ,  [ function ](/docs/reference/foundations/function/) ,

)  -> any

####  ` init `

any

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The initial value to start with.

####  ` folder `

[ function ](/docs/reference/foundations/function/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The folding function. Must have two parameters: One for the accumulated value
and one for an item.

###  ` sum `

Sums all items (works for all types that can be added).

self  .  sum  (

default  :  any

)  -> any

####  ` default `

any

What to return if the array is empty. Must be set if the array can be empty.

###  ` product `

Calculates the product all items (works for all types that can be multiplied).

self  .  product  (

default  :  any

)  -> any

####  ` default `

any

What to return if the array is empty. Must be set if the array can be empty.

###  ` any `

Whether the given function returns ` true  ` for any item in the array.

self  .  any  (

[ function ](/docs/reference/foundations/function/)

)  -> [ bool ](/docs/reference/foundations/bool/)

####  ` test `

[ function ](/docs/reference/foundations/function/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The function to apply to each item. Must return a boolean.

###  ` all `

Whether the given function returns ` true  ` for all items in the array.

self  .  all  (

[ function ](/docs/reference/foundations/function/)

)  -> [ bool ](/docs/reference/foundations/bool/)

####  ` test `

[ function ](/docs/reference/foundations/function/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The function to apply to each item. Must return a boolean.

###  ` flatten `

Combine all nested arrays into a single flat one.

self  .  flatten  (

)  -> [ array ](/docs/reference/foundations/array/)

###  ` rev `

Return a new array with the same items, but in reverse order.

self  .  rev  (

)  -> [ array ](/docs/reference/foundations/array/)

###  ` split `

Split the array at occurrences of the specified value.

self  .  split  (

any

)  -> [ array ](/docs/reference/foundations/array/)

####  ` at `

any

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The value to split at.

###  ` join `

Combine all items in the array into one.

self  .  join  (

any  [ none ](/docs/reference/foundations/none/) ,  last  :  any  ,

)  -> any

####  ` separator `

any  or  [ none ](/docs/reference/foundations/none/)

Positional

Question mark

Positional parameters are specified in order, without names.

A value to insert between each item of the array.

Default: ` none  `

####  ` last `

any

An alternative separator between the last two items.

###  ` intersperse `

Returns an array with a copy of the separator value placed between adjacent
elements.

self  .  intersperse  (

any

)  -> [ array ](/docs/reference/foundations/array/)

####  ` separator `

any

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The value that will be placed between each adjacent element.

###  ` chunks `

Splits an array into non-overlapping chunks, starting at the beginning, ending
with a single remainder chunk.

All chunks but the last have ` chunk-size ` elements. If ` exact ` is set to `
true  ` , the remainder is dropped if it contains less than ` chunk-size `
elements.

self  .  chunks  (

[ int ](/docs/reference/foundations/int/) ,  exact  :  [ bool
](/docs/reference/foundations/bool/) ,

)  -> [ array ](/docs/reference/foundations/array/)

    
    
    #let array = (1, 2, 3, 4, 5, 6, 7, 8)
    #array.chunks(3)
    #array.chunks(3, exact: true)
    

![Preview](/assets/docs/Nt1-jyrzTUv2d90xr98pvAAAAAAAAAAA.png)

####  ` chunk-size `

[ int ](/docs/reference/foundations/int/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

How many elements each chunk may at most contain.

####  ` exact `

[ bool ](/docs/reference/foundations/bool/)

Whether to keep the remainder if its size is less than ` chunk-size ` .

Default: ` false  `

###  ` windows `

Returns sliding windows of ` window-size ` elements over an array.

If the array length is less than ` window-size ` , this will return an empty
array.

self  .  windows  (

[ int ](/docs/reference/foundations/int/)

)  -> [ array ](/docs/reference/foundations/array/)

    
    
    #let array = (1, 2, 3, 4, 5, 6, 7, 8)
    #array.windows(5)
    

![Preview](/assets/docs/Gacy-jUdBfccX43fxzwqPgAAAAAAAAAA.png)

####  ` window-size `

[ int ](/docs/reference/foundations/int/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

How many elements each window will contain.

###  ` sorted `

Return a sorted version of this array, optionally by a given key function. The
sorting algorithm used is stable.

Returns an error if two values could not be compared or if the key function
(if given) yields an error.

self  .  sorted  (

key  :  [ function ](/docs/reference/foundations/function/)

)  -> [ array ](/docs/reference/foundations/array/)

####  ` key `

[ function ](/docs/reference/foundations/function/)

If given, applies this function to the elements in the array to determine the
keys to sort by.

###  ` dedup `

Deduplicates all items in the array.

Returns a new array with all duplicate items removed. Only the first element
of each duplicate is kept.

self  .  dedup  (

key  :  [ function ](/docs/reference/foundations/function/)

)  -> [ array ](/docs/reference/foundations/array/)

    
    
    #(1, 1, 2, 3, 1).dedup()
    

![Preview](/assets/docs/N8Cp27Nhseeu9VhP3b-g0gAAAAAAAAAA.png)

####  ` key `

[ function ](/docs/reference/foundations/function/)

If given, applies this function to the elements in the array to determine the
keys to deduplicate by.

###  ` to-dict `

Converts an array of pairs into a dictionary. The first value of each pair is
the key, the second the value.

If the same key occurs multiple times, the last value is selected.

self  .  to-dict  (

)  -> [ dictionary ](/docs/reference/foundations/dictionary/)

    
    
    #(
      ("apples", 2),
      ("peaches", 3),
      ("apples", 5),
    ).to-dict()
    

![Preview](/assets/docs/LmuORFz3ft0CLd-WiUZHngAAAAAAAAAA.png)

###  ` reduce `

Reduces the elements to a single one, by repeatedly applying a reducing
operation.

If the array is empty, returns ` none  ` , otherwise, returns the result of
the reduction.

The reducing function is a closure with two arguments: an "accumulator", and
an element.

For arrays with at least one element, this is the same as [ ` array.fold `
](/docs/reference/foundations/array/#definitions-fold "`array.fold`") with the
first element of the array as the initial accumulator value, folding every
subsequent element into it.

self  .  reduce  (

[ function ](/docs/reference/foundations/function/)

)  -> any

####  ` reducer `

[ function ](/docs/reference/foundations/function/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The reducing function. Must have two parameters: One for the accumulated value
and one for an item.

[ ![â](/assets/icons/16-arrow-right.svg) Arguments  Previous page
](/docs/reference/foundations/arguments/) [ ![â](/assets/icons/16-arrow-
right.svg) Assert  Next page  ](/docs/reference/foundations/assert/)

