![A preview of the quick-minutes Typst
template.](https://packages.typst.org/preview/thumbnails/quick-
minutes-1.2.0-small.webp)

#  quick-minutes

1.2.0

A typst template for the keeping of minutes.

[ Create project in app ](/app?template=quick-minutes&version=1.2.0)

With Quick Minutes you can record any meeting event by just typing it out. No
function calls needed!

##  Usage

###  Import & Initialisation

    
    
    #import "@preview/quick-minutes:1.2.0": *
    
    #show: minutes.with(
      chairperson: "Name 1",
      secretary: "Name 2",
      date: auto,
      body-name: "Organisation",
      event-name: "Event",
      present: (
        "Name 1",
        "Name 2",
        "Name 3",
        "Name 4",
      )
    )
    
    ...
    
    

[ Commands
](https://github.com/typst/packages/raw/main/packages/preview/quick-
minutes/1.2.0/#commands)  
[ Formats ](https://github.com/typst/packages/raw/main/packages/preview/quick-
minutes/1.2.0/#formats)

###  Parameters

|  name  |  explaination  |  default  |  type   
---|---|---|---|---  
required  |  |  |  |   
|  |  |  |   
|  body-name  |  Name of the body holding the recorded meeting  |  ` none ` |  ` string `  
|  event-name  |  Name of the meeting  |  ` none ` |  ` string `  
|  date  |  Date of the meeting ( ` auto ` for current date, datetime for formatted date)  |  ` none ` |  ` string, auto, datetime `  
|  present  |  List with names of people present at the meeting  |  ` () ` |  list   
|  chairperson  |  Name of the person chairing the meeting   
Can be a ` list ` of people  |  ` none ` |  ` string ` , ` list(string) `  
|  secretary  |  Name of the person taking minutes   
Can be a ` list ` of people  |  ` none ` |  ` string ` , ` list(string) `  
optional  |  |  |  |   
|  |  |  |   
|  awareness  |  Name of the person responsible for awareness   
Can be a ` list ` of people  |  ` none ` |  ` string ` , ` list(string) `  
|  translation  |  Name of the person responsible for translating   
Can be a ` list ` of people  |  ` none ` |  ` string ` , ` list(string) `  
|  cosigner  |  Position of the Person signing the protocol, should they differ from the chairperson  |  ` none ` |  ` string `  
|  cosigner-name  |  Name of the person signing the protocol, should they differ from the chairperson  |  ` none ` |  ` string `  
customisation  |  |  |  |   
|  |  |  |   
|  logo  |  Logo of the body holding the meeting  |  ` none ` |  ` image `  
|  custom-header  |  Custom Header   
  
Arguments:  
(date, body-name, event-name, translate)  
  
Set to ` none ` for empty header  |  ` auto ` |  ` function(content, content, content, function(string, ..string)) ` , ` auto `  
|  custom-footer  |  Custom Footer   
  
Arguments:  
(current-page, page-count, translate)  
  
Set to ` none ` for empty footer  
  
Is called inside of ` context ` |  ` auto ` |  ` function(int, int, function(string, ..string)) ` , ` auto `  
|  custom-background  |  Custom Background   
  
Arguments:  
(hole-mark)  
  
Set to ` none ` for empty background  |  ` auto ` |  ` function(bool) ` , ` auto `  
|  custom-head-section  |  Custom Head Section   
  
Arguments:  
(chairperson, secretary, awareness, translation, present, present-count,
start-time, end-time, translate, four-digits-to-time)  
  
Set to ` none ` for empty head section  
  
Handle start-time & end-time like this:  

    
    
    let start-time = start-time.final()  
    if (start-time != none) [*#translate(âSTARTâ)*: #four-digits-to-time(start-time)\ ]

|  ` auto ` |  ` function(content, content, content/none, content/none, content, int/none, state, state, function(string, ..string), function(string)) ` , ` auto `  
|  custom-name-format  |  Formatting of names in the document  | 
    
    
    (first-name, last-name, numbered) => [  
     #if (numbered) [#first-name #last-name] else [  
      #if (last-name != none) [#last-name, ]#first-name]  
    ]

|  ` function(string, string, bool) `  
|  custom-name-style  |  Style of names in the document  | 
    
    
    (name) => [name]

|  ` function(string) `  
|  item-numbering  |  Numbering of items. Reverts to ` DEFAULT_ITEM_NUMBERING ` if ` none ` .  |  ` none ` |  ` function(..int) `  
|  time-format  |  Datetime format ` string ` for times taken. Reverts to ` DEFAULT_TIME_FORMAT ` if ` none ` .  |  ` none ` |  ` string `  
|  date-format  |  Datetime format ` string ` for the date of the event. Reverts to ` DEFAULT_DATE_FORMAT ` if ` none ` .  |  ` none ` |  ` string `  
|  timestamp-margin  |  Size of gutter between timestamps and text  |  ` 10pt ` |  ` length `   
(static (pt, cm â¦) recommended)  
|  line-numbering  |  ` none ` for no line numbering, ` int ` for every xth line numbered  |  ` 5 ` |  ` int `  
|  fancy-decisions  |  Draws a diagram underneath decisions  |  ` false ` |  ` bool `  
|  fancy-dialogue  |  Splits dialogue up into paragraphs  |  ` false ` |  ` bool `  
|  hole-mark  |  Draws a mark for the alignment of a hole punch  |  ` true ` |  ` bool `  
|  separator-lines  |  Draws lines next to the titles  |  ` true ` |  ` bool `  
|  signing  |  Do people have to sign this document?  |  ` true ` |  ` bool `  
|  title-page  |  Should the actual protocol start after a ` pagebreak ` ?  |  ` false ` |  ` bool `  
|  number-present  |  Should the number of people present be shown?  |  ` false ` |  ` bool `  
|  show-arrival-time  |  Should the time of arrival be schown in the list of people present?  |  ` true ` |  ` bool `  
|  locale  |  language of the document  |  ` "en" ` |  ` string `  
|  translation-overrides  |  [ Translation ](https://github.com/typst/packages/raw/main/packages/preview/quick-minutes/1.2.0/lang.json) Overrides  |  ` (:) ` |  ` dictionary `  
|  custom-royalty-connectors  |  Additional ` list ` of surname beginnings like âvonâ.   
Already recognises âvonâ, âvon derâ & âdeâ  |  ` () ` |  ` list `  
debug  |  |  |  |   
|  |  |  |   
|  display-all-warnings  |  Shows all warnings directly beneath their occurence  |  ` false ` |  ` bool `  
|  hide-warnings  |  Hides all warnings  |  ` false ` |  ` bool `  
|  warning-color  |  Color warnings are displayed in  |  ` red ` |  ` color `  
|  enable-help-text  |  Should a help/debug text with state info be shown?  |  ` false ` |  ` bool `  
  
###  Commands

name  |  format  |  description   
---|---|---  
Join  | 
    
    
    +(<time>/)?<name>  
    ++(<time>/)?<name>

|  Marks the arrival of someone  
+: Come back from pause etc.  
++: Arrive at event  
  
_Time is optional_  
Leave  | 
    
    
    -(<time>/)?<name>  
    â(<time>/)?<name>

|  Marks the departure of someone.  
-: Leave into pause etc.   
â: Leave event  
  
_Time is optional_  
Time  | 
    
    
    <time>/<text>

|  Time the following text  
Mark Name  | 
    
    
    /<name>

|  Marks following name  
Vote  | 
    
    
    !(<time>/)?<text>/<vote>/<vote>â¦

|  Vote on something (described in text)  
  
/<vote> can be repeated as many times as needed (min. 2)  
3 unnamed & uncolored votes will result in a âForâ (green), âAgainstâ
(red), âAbstainâ (blue) vote  
  
If you want to use ` / ` inside of a label or the text, you can use ` -/ ` to
escape into a normal ` / `  
  
_Time is optional_  
Dialogue  | 
    
    
    <name>: <text>

|  Marks that someone is speaking  
  
Can be escaped with a ` - ` ( ` <name>-: ` ) to avoid restructuring  
End  | 
    
    
    /<time>

|  End of the meeting.  
  
Replace <time> with ` "end" ` if you dont want to set a time  
  
###  Formats

name  |  format  |  example   
---|---|---  
<vote> | 
    
    
    <label>(|<color>)?<count>

|  ` First Party|green42 `  
` Third choice22 `  
<time> |  1-4 numbers  |  ` 1312 ` -> 01:12 pm   
` 650 ` -> 06:50 pm  
` 21 ` -> last timed hour:21 (pm/am)  
` 4 ` -> last timed hour:04 (pm/am)  
<name> |  Name in various formats  |  ` Last Name, First Name `   
` First Name Last Name `  
` First Name `  
` Last Name `  
` First Name L `  
` F Last Name `  
` FL `  
  
Last name can also start with a royalty connector like âdeâ or âvonâ  
  
` Name 1 ` , ` Name 2 ` will render with the number after the name, but the
number is handled as a last name.  
  
If you just want your name formatted by ` custom-name-style ` you can escape
the restructuring process with a ` - ` ( ` /-<name> ` ).  
[ Create project in app ](/app?template=quick-minutes&version=1.2.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/quick-minutes:1.2.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  s  :

     [ Katharina ThÃ¶le ](https://github.com/katharinathoele) & [ Lyx RothbÃ¶ck ](https://github.com/Lypsilonx)
License:

     MIT 
Current version:

     1.2.0 
Last updated:

     November 12, 2024 
First released:

     October 28, 2024 
Minimum Typst version:

     0.12.0 
Archive size:

     13.0 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/quick-minutes-1.2.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/Lypsilonx/quick-minutes)
Discipline  s  :

    

  * [ Business ](https://typst.app/universe/search/?discipline=business)
  * [ Communication ](https://typst.app/universe/search/?discipline=communication)
  * [ Education ](https://typst.app/universe/search/?discipline=education)
  * [ Journalism ](https://typst.app/universe/search/?discipline=journalism)
  * [ Law ](https://typst.app/universe/search/?discipline=law)

Categor  y  :

    

  * ![Layout icon](/assets/icons/16-layout.svg) [ Layout ](https://typst.app/universe/search/?category=layout)

###  Where to report issues?

This  template  is a project of  Katharina ThÃ¶le and Lyx RothbÃ¶ck  .  Report
issues on  [ their repository ](https://github.com/Lypsilonx/quick-minutes) .
You can also try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
1.2.0  |  November 12, 2024   
[ 1.1.2 ](https://typst.app/universe/package/quick-minutes/1.1.2/) |  October 31, 2024   
[ 1.1.1 ](https://typst.app/universe/package/quick-minutes/1.1.1/) |  October 30, 2024   
[ 1.1.0 ](https://typst.app/universe/package/quick-minutes/1.1.0/) |  October 29, 2024   
[ 1.0.1 ](https://typst.app/universe/package/quick-minutes/1.0.1/) |  October 28, 2024   
[ 1.0.0 ](https://typst.app/universe/package/quick-minutes/1.0.0/) |  October 28, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

