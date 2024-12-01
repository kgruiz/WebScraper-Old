![A preview of the classy-german-invoice Typst
template.](https://packages.typst.org/preview/thumbnails/classy-german-
invoice-0.3.0-small.webp)

#  classy-german-invoice

0.3.0

Minimalistic invoice for Germany-based freelancers

Featured  Template

[ Create project in app ](/app?template=classy-german-invoice&version=0.3.0)

A template for writing invoices, inspired by the [ beautiful LaTeX template by
@mrzool. ](https://github.com/mrzool/invoice-boilerplate/)

    
    
    #import "@preview/classy-german-invoice:0.3.0": invoice
    
    #show: invoice(
      // Invoice number
      "2023-001",
      // Invoice date
      datetime(year: 2024, month: 09, day: 03),
      // Items
      (
        (
          description: "The first service provided. The first service provided. The first service provided",
          price: 200,
        ),
        (
          description: "The second service provided",
          price: 150.2
        ),
      ),
      // Author
      (
        name: "Kerstin Humm",
        street: "StraÃe der PrivatsphÃ¤re und Stille 1",
        zip: "54321",
        city: "Potsdam",
        tax_nr: "12345/67890",
        // optional signature, can be omitted
        signature: image("example_signature.png", width: 5em)
      ),
      // Recipient
      (
        name: "Erika Mustermann",
        street: "Musterallee",
        zip: "12345",
        city: "Musterstadt",
      ),
      // Bank account
      (
        name: "Todd Name",
        bank: "Deutsche Postbank AG",
        iban: "DE89370400440532013000",
        bic: "PBNKDEFF",
        // There is currently only one gendered term in this template.
        // You can overwrite it, or omit it and just choose the default.
        gender: (account_holder: "Kontoinhaberin")
      ),
      // Umsatzsteuersatz (VAT)
      vat: 0.19,
      kleinunternehmer: true,
    )
    

![](https://github.com/typst/packages/raw/main/packages/preview/classy-german-
invoice/0.3.0/thumbnail.png)

##  Scope

This template should work well for freelancers and small companies in the
german market, that donât have an existing system in place for order
tracking. Or to put it the other way round; This template is for people that
mostly have to fulfill outside requirements with their invoices and donât so
much benefit from extensive tracking themselfes.

##  Features

  * [X] multiple invoice items 
  * [X] configurable VAT 
  * [X] configurable Â§ 19 UStG (Kleinunternehmerregelung) note 
  * [X] configurable signature from PNG file 
  * [X] employs both lining and old-style number types, depending on the application 
  * [X] [ EPC QR Code ](https://en.wikipedia.org/wiki/EPC_QR_code) for easier banking transactions 
  * [ ] recipient address is guaranteed to fit in a windowed envolope (DIN 5008) 

##  Disclaimer

This template doesnât constitute legal advice. Please check for yourself
wether it fulfills your legal requirements!

[ Create project in app ](/app?template=classy-german-invoice&version=0.3.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/classy-german-invoice:0.3.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Kerstin Humm ](https://github.com/erictapen)
License:

     MIT-0 
Current version:

     0.3.0 
Last updated:

     September 18, 2024 
First released:

     September 11, 2024 
Minimum Typst version:

     0.10.0 
Archive size:

     23.9 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/classy-german-invoice-0.3.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/erictapen/typst-invoice)
Categor  ies  :

    

  * ![Layout icon](/assets/icons/16-layout.svg) [ Layout ](https://typst.app/universe/search/?category=layout)
  * ![Office icon](/assets/icons/16-envelope.svg) [ Office ](https://typst.app/universe/search/?category=office)

###  Where to report issues?

This  template  is a project of  Kerstin Humm  .  Report issues on  [ their
repository ](https://github.com/erictapen/typst-invoice) .  You can also try
to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.3.0  |  September 18, 2024   
[ 0.2.0 ](https://typst.app/universe/package/classy-german-invoice/0.2.0/) |  September 11, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

