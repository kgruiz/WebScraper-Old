#  Grouping

Every grouping can be (currently) done by parenthesis. So the parenthesis may
be both "real" parenthesis and grouping ones.

For example, these parentheses specify nominator of the fraction:

    
    
    $ (a^2 + b^2)/2 $

![Rendered image](typst-
img/6f4767b2aee69b5c3a22df5f394105df9f19c9762678d02b297c4d4f8d1cf6ad-1.svg)

##  Left-right

> See [ official documentation ](https://typst.app/docs/reference/math/lr) .

If there are two matching braces of any kind, they will be wrapped as ` lr  `
(left-right) group.

    
    
    $
    {[((a + b)/2) + 1]_0}
    $

![Rendered image](typst-
img/a4137ff5d1f577cc816776cb4279cce4cd964601c20eb244d12e170deecd5d6a-1.svg)

You can disable it by escaping.

You can also match braces of any kind by using ` lr  ` directly:

    
    
    $
    lr([a/2, b)) \
    lr([a/2, b), size: #150%)
    $

![Rendered image](typst-
img/fb81420a901d8b570ef03d1f50c83f7b8c483c9366222156ea193ac2976b63ed-1.svg)

##  Fences

Fences _are not matched automatically_ because of large amount of false-
positives.

You can use ` abs  ` or ` norm  ` to match them:

    
    
    $
    abs(a + b), norm(a + b), floor(a + b), ceil(a + b), round(a + b)
    $

![Rendered image](typst-
img/fd8454b2a97d649525827367f459f3163d830b5db9181178304d5fd2b44fcca1-1.svg)

