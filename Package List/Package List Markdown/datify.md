#  datify

0.1.3

Datify is a simple date package that allows users to format dates in new ways
and addresses the issue of lacking date formats in different languages.

Datify is a simple date package that allows users to format dates in new ways
and addresses the issue of lacking date formats in different languages.

##  Installation

To include this package in your Typst project, add the following to your
project file:

    
    
    #import "@preview/datify:0.1.3": day-name, month-name, custom-date-format
    

##  Reference

###  ` day-name `

Returns the name of the weekday.

####  Example

    
    
    #import "@preview/datify:0.1.3": day-name
    
    #day-name(2)
    #day-name(1,"fr",true)
    

Output:

    
    
    tuesday
    Lundi
    

####  Parameters

    
    
    day-name(weekday: int or str, lang: str, upper: boolean) --> str
    

Parameter  |  Description  |  Default   
---|---|---  
weekday*  |  The weekday as an integer (1-7) or a string (â1â-â7â).  |  none   
lang  |  An ISO 639-1 code representing the language.  |  en   
upper  |  A boolean that sets the first letter to be uppercase.  |  false   
  
* required 

###  ` month-name `

Returns the name of the month.

####  Example

    
    
    #import "@preview/datify:0.1.3": month-name
    
    #month-name(2)
    #month-name(1, "fr", true)
    

Output:

    
    
    february
    Janvier
    

####  Parameters

    
    
    month-name(month: int or str, lang: str = 'en', upper: bool = false) -> str
    

Parameter  |  Description  |  Default   
---|---|---  
month*  |  The month as an integer (1-12) or a string (â1â-â12â).  |  none   
lang  |  An ISO 639-1 code representing the language.  |  en   
upper  |  A boolean that sets the first letter to be uppercase.  |  false   
  
* required 

###  ` custom-date-format `

Formats a given date according to a specified format and language.

####  Example

    
    
    #import "@preview/datify:0.1.3": custom-date-format
    
    #let my-date = datetime(year: 2024, month: 8, day: 4)
    #custom-date-format(my-date, "MMMM DDth, YYYY")
    

Output:

    
    
    August 04th, 2024
    

####  Parameters

    
    
    custom-date-format(date: datetime, format: str, lang: str = 'en') -> str
    

Parameter  |  Description  |  Default   
---|---|---  
date*  |  A datetime object representing the date.  |  none   
format*  |  A string representing the desired date format.  |  none   
lang  |  An ISO 639-1 code representing the language.  |  en   
  
* required 

####  Format Types

Below is a table of all possible format types that can be used in the format
string:

Format  |  Description  |  Example   
---|---|---  
` DD ` |  Day of the month, 2 digits  |  05   
` day ` |  Full name of the day  |  tuesday   
` Day ` |  Capitalized full name of the day  |  Tuesday   
` DAY ` |  Uppercase full name of the day  |  TUESDAY   
` MMMM ` |  Capitalized full name of the month  |  May   
` MMM ` |  Short name of the month (first 3 chars)  |  May   
` MM ` |  Month number, 2 digits  |  05   
` month ` |  Full name of the month  |  may   
` Month ` |  Capitalized full name of the month  |  May   
` MONTH ` |  Uppercase full name of the month  |  MAY   
` YYYY ` |  4-digit year  |  2023   
` YY ` |  Last 2 digits of the year  |  23   
  
##  Examples

Here are some examples demonstrating the usage of the functions provided by
the Datify package:

    
    
    #let my-date = datetime(year: 2024, month: 12, day: 25)
    
    #custom-date-format(my-date, "DD-MM-YYYY")  // Output: 25-12-2024
    #custom-date-format(my-date, "Day, DD Month YYYY", "fr")  // Output: Mercredi, 25 DÃ©cembre 2024
    #custom-date-format(my-date, "day, DD de month de YYYY", "es") // Output: miÃ©rcoles, 25 de diciembre de 2024
    #custom-date-format(my-date, "day, DD de month de YYYY", "pt") // Output: terÃ§a-feira, 25 de dezembro de 2024
    
    #day-name(4)  // Output: thursday
    
    #month-name(12)  // Output: december
    

##  Supported language

ISO 639-1 code  |  Status   
---|---  
aa  |  â   
ab  |  â   
ae  |  â   
af  |  â   
ak  |  â   
am  |  â   
an  |  â   
ar  |  â   
as  |  â   
av  |  â   
ay  |  â   
az  |  â   
ba  |  â   
be  |  â   
bg  |  â   
bh  |  â   
bi  |  â   
bm  |  â   
bn  |  â   
bo  |  â   
br  |  â   
bs  |  â   
ca  |  â   
ce  |  â   
ch  |  â   
co  |  â   
cr  |  â   
cs  |  â   
cu  |  â   
cv  |  â   
cy  |  â   
da  |  â   
de  |  â   
dv  |  â   
dz  |  â   
ee  |  â   
el  |  â   
en  |  â   
eo  |  â   
es  |  â   
et  |  â   
eu  |  â   
fa  |  â   
ff  |  â   
fi  |  â   
fj  |  â   
fo  |  â   
fr  |  â   
fy  |  â   
ga  |  â   
gd  |  â   
gl  |  â   
gn  |  â   
gu  |  â   
gv  |  â   
ha  |  â   
he  |  â   
hi  |  â   
ho  |  â   
hr  |  â   
ht  |  â   
hu  |  â   
hy  |  â   
hz  |  â   
ia  |  â   
id  |  â   
ie  |  â   
ig  |  â   
ii  |  â   
ik  |  â   
io  |  â   
is  |  â   
it  |  â   
iu  |  â   
ja  |  â   
jv  |  â   
ka  |  â   
kg  |  â   
ki  |  â   
kj  |  â   
kk  |  â   
kl  |  â   
km  |  â   
kn  |  â   
ko  |  â   
kr  |  â   
ks  |  â   
ku  |  â   
kv  |  â   
kw  |  â   
ky  |  â   
la  |  â   
lb  |  â   
lg  |  â   
li  |  â   
ln  |  â   
lo  |  â   
lt  |  â   
lu  |  â   
lv  |  â   
mg  |  â   
mh  |  â   
mi  |  â   
mk  |  â   
ml  |  â   
mn  |  â   
mr  |  â   
ms  |  â   
mt  |  â   
my  |  â   
na  |  â   
nb  |  â   
nd  |  â   
ne  |  â   
ng  |  â   
nl  |  â   
nn  |  â   
no  |  â   
nr  |  â   
nv  |  â   
ny  |  â   
oc  |  â   
oj  |  â   
om  |  â   
or  |  â   
os  |  â   
pa  |  â   
pi  |  â   
pl  |  â   
ps  |  â   
pt  |  â   
qu  |  â   
rm  |  â   
rn  |  â   
ro  |  â   
ru  |  â   
rw  |  â   
sa  |  â   
sc  |  â   
sd  |  â   
se  |  â   
sg  |  â   
si  |  â   
sk  |  â   
sl  |  â   
sm  |  â   
sn  |  â   
so  |  â   
sq  |  â   
sr  |  â   
ss  |  â   
st  |  â   
su  |  â   
sv  |  â   
sw  |  â   
ta  |  â   
te  |  â   
tg  |  â   
th  |  â   
ti  |  â   
tk  |  â   
tl  |  â   
tn  |  â   
to  |  â   
tr  |  â   
ts  |  â   
tt  |  â   
tw  |  â   
ty  |  â   
ug  |  â   
uk  |  â   
ur  |  â   
uz  |  â   
ve  |  â   
vi  |  â   
vo  |  â   
wa  |  â   
wo  |  â   
xh  |  â   
yi  |  â   
yo  |  â   
za  |  â   
zh  |  â   
zu  |  â   
  
##  Contributing

Contributions are welcome! Please feel free to submit a pull request or open
an issue if you encounter any problems.

##  License

This project is licensed under the MIT License.

##  Planned

  * Adding support for more language 
  * Adding set and get method to set default language for a whole document 
  * Adding new methods 

###  How to add

Copy this into your project and use the import as  ` datify `

    
    
    #import "@preview/datify:0.1.3"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Jeomhps 
License:

     MIT 
Current version:

     0.1.3 
Last updated:

     November 4, 2024 
First released:

     May 27, 2024 
Minimum Typst version:

     0.11.1 
Archive size:

     4.81 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/datify-0.1.3.tar.gz)
Repository:

     [ GitHub ](https://github.com/Jeomhps/datify)

###  Where to report issues?

This  package  is a project of  Jeomhps  .  Report issues on  [ their
repository ](https://github.com/Jeomhps/datify) .  You can also try to ask for
help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.3  |  November 4, 2024   
[ 0.1.2 ](https://typst.app/universe/package/datify/0.1.2/) |  May 31, 2024   
[ 0.1.1 ](https://typst.app/universe/package/datify/0.1.1/) |  May 27, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

