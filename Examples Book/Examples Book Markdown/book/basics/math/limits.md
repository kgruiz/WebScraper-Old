#  Setting limits

Sometimes we want to change how the default attaching should work.

##  Limits

For example, in many countries it is common to write definite integrals with
limits below and above. To set this, use ` limits  ` function:

    
    
    $
    integral_a^b\
    limits(integral)_a^b
    $

![Rendered image](typst-
img/ade8f85a6178d42d58769da477afa5349a3db9df3075a3d5f8e4a6b546c3d43e-1.svg)

You can set this by default using ` show  ` rule:

    
    
    #show math.integral: math.limits
    
    $
    integral_a^b
    $
    
    This is inline equation: $integral_a^b$

![Rendered image](typst-
img/e0011edccf76468c3d77a7502ce1dc001c82bfd9d590b258d8c8453d056bc966-1.svg)

##  Only display mode

Notice that this will also affect inline equations. To enable limits for
display math only, use ` limits(inline: false)  ` :

    
    
    #show math.integral: math.limits.with(inline: false)
    
    $
    integral_a^b
    $
    
    This is inline equation: $integral_a^b$.

![Rendered image](typst-
img/d37f1132cdf338670e131079a57ae724a7dfcb102f3125dad712173fbf115bcd-1.svg)

Of course, it is possible to move them back as bottom attachments:

    
    
    $
    sum_a^b, scripts(sum)_a^b
    $

![Rendered image](typst-
img/7134a72120f7217b1f11438e166fa7e53f3a9287fa4c9079019181a6e16affb8-1.svg)

##  Operations

The same scheme works for operations. By default, they are attached to the
bottom and top:

    
    
    $a =_"By lemme 1" b, a scripts(=)_+ b$

![Rendered image](typst-
img/98d790005c43aa666b392f8a35f1e9564ff315aaf9881ceb309e53bd5db542b1-1.svg)

