![A preview of the pro-letter Typst
template.](https://packages.typst.org/preview/thumbnails/pro-
letter-0.1.1-small.webp)

#  pro-letter

0.1.1

A formal business letter template.

[ Create project in app ](/app?template=pro-letter&version=0.1.1)

This Typst template lets you create professional business letters
effortlessly.

##  Features

  * **Flexible Styling** : Adjust fonts, sizes, and emphasis according to your preferences. 
  * **Customizable Sender and Recipient Details** : Easily configure names, addresses, and contact information. 
  * **Date and Subject Line** : Clearly define the date and subject of your letter. 
  * **Attachment Listings** : Describe any attachments that accompany your letter. 
  * **Notary Section** : Include an optional notary acknowledgment page. 

##  Usage

To use this template, import it and configure the parameters as shown:

    
    
    #import "@preview/pro-letter:0.1.1": pro-letter
    
    #show: pro-letter.with(
      sender: (
        name: "Alexandra Bloom",
        street: "123 Blueberry Lane",
        city: "Wonderland",
        state: "NA",
        zip: "56789",
        phone: "+1-555-987-6543",
        email: "alex@bloomworld.net",
      ),
    
      recipient: (
        company: "Fantasy Finance Faucets",
        attention: "Treasury Team",
        street: "456 Dreamscape Ave",
        city: "Fabletown",
        state: "IM",
        zip: "12345",
      ),
    
      date: "January 15, 2025",
    
      subject: "Account Closure Request",
    
      signer: "Alexandra Bloom",
    
      attachments: "Fae Council Closure Order.",
    )
    
    I am writing to formally request the closure of the enchanted vault at Fantasy
    Finance Faucets held in my name, Alexandra Bloom.
    
    Attached is the official Fae Council Closure Order for your verification and
    records.
    
    The account is identified by the vault number: *12345FAE*.
    
    As the rightful owner, I _authorize the closure of the aforementioned vault_ and
    _request that all enchanted funds be redirected to the Fae Council Reserve_.
    Please find the necessary details for the transfer enclosed.
    
    Thank you for your prompt attention to this magical matter.
    

##  Parameters

###  Address Information

Both ` sender ` and ` recipient ` parameters accept the following optional
fields in the form of a dictionary. Include only the fields necessary for your
letter:

  * **` name ` ** : Full name of the person. 
  * **` company ` ** : Company name. 
  * **` attention ` ** : Department or individual to address within the company. 
  * **` street ` ** : Street address. 
  * **` city ` ** : City. 
  * **` state ` ** : State or region. 
  * **` zip ` ** : ZIP or postal code. 
  * **` phone ` ** : Phone number. 
  * **` email ` ** : Email address. 

###  Letter Details

  * **` date ` ** : The date of the letter. Optional; defaults to none. 
  * **` subject ` ** : The subject line of the letter. Optional; defaults to none. 
  * **` salutation ` ** : The greeting in the letter. Optional; defaults to âTo whom it may concern,â. 
  * **` closing ` ** : The closing line of the letter. Required; defaults to âSincerely,â. 
  * **` signer ` ** : The name of the person signing the letter. Required. 

###  Additional Features

  * **` attachments ` ** : Description of any attachments accompanying the letter. Optional; defaults to none. 
  * **` notary-page ` ** : Boolean flag to include a notary public acknowledgment page. Defaults to false. 

###  Text and Style Settings

  * **` font ` ** : The typeface to use for the letter. Defaults to âLibertinus Serifâ. 
  * **` size ` ** : Font size. Defaults to 11pt. 
  * **` weight ` ** : Font weight. Defaults to âlightâ. 
  * **` strong-delta ` ** : Additional weight for bold text. Defaults to 300. 
  * **` lang ` ** : Language for the document. Defaults to âenâ. 

###  Page Settings

  * **` paper ` ** : Paper size for the document. Defaults to âus-letterâ. 
  * **` margin ` ** : Margin size around the edges of the page. Defaults to â1inâ. 

##  License

This work is licensed under the MIT License.

[ Create project in app ](/app?template=pro-letter&version=0.1.1)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/pro-letter:0.1.1

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Stephen Waits ](mailto:steve@waits.net)
License:

     MIT 
Current version:

     0.1.1 
Last updated:

     October 22, 2024 
First released:

     October 21, 2024 
Archive size:

     4.23 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/pro-letter-0.1.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/swaits/typst-collection)
Discipline  s  :

    

  * [ Business ](https://typst.app/universe/search/?discipline=business)
  * [ Communication ](https://typst.app/universe/search/?discipline=communication)

Categor  y  :

    

  * ![Office icon](/assets/icons/16-envelope.svg) [ Office ](https://typst.app/universe/search/?category=office)

###  Where to report issues?

This  template  is a project of  Stephen Waits  .  Report issues on  [ their
repository ](https://github.com/swaits/typst-collection) .  You can also try
to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.1  |  October 22, 2024   
[ 0.1.0 ](https://typst.app/universe/package/pro-letter/0.1.0/) |  October 21, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

