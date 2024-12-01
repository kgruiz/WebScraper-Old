#  icu-datetime

0.1.2

Date and time formatting using ICU4X via WASM

This library is a wrapper around [ ICU4X ](https://github.com/unicode-
org/icu4x) â ` datetime ` formatting for Typst which provides
internationalized formatting for dates, times, and timezones.

As the WASM bundle includes all localization data, itâs quite large (about 8
MiB).

See [ nerixyz.github.io/icu-typ ](https://nerixyz.github.io/icu-typ) for a
full API reference with more examples.

##  Example

    
    
    #import "@preview/icu-datetime:0.1.2": fmt-date, fmt-time, fmt-datetime, experimental
    // These functions may change at any time
    #import experimental: fmt-timezone, fmt-zoned-datetime
    
    #let day = datetime(
      year: 2024,
      month: 5,
      day: 31,
    )
    #let time = datetime(
      hour: 18,
      minute: 2,
      second: 23,
    )
    #let dt = datetime(
      year: 2024,
      month: 5,
      day: 31,
      hour: 18,
      minute: 2,
      second: 23,
    )
    #let tz = (
      offset: "-07",
      iana: "America/Los_Angeles",
      zone-variant: "st", // standard
    )
    
    = Dates
    #fmt-date(day, locale: "km", length: "full") \
    #fmt-date(day, locale: "af", length: "full") \
    #fmt-date(day, locale: "za", length: "full") \
    
    = Time
    #fmt-time(time, locale: "id", length: "medium") \
    #fmt-time(time, locale: "en", length: "medium") \
    #fmt-time(time, locale: "ga", length: "medium") \
    
    = Date and Time
    #fmt-datetime(dt, locale: "ru", date-length: "full") \
    #fmt-datetime(dt, locale: "en-US", date-length: "full") \
    #fmt-datetime(dt, locale: "zh-Hans-CN", date-length: "full") \
    #fmt-datetime(dt, locale: "ar", date-length: "full") \
    #fmt-datetime(dt, locale: "fi", date-length: "full")
    
    = Timezones (experimental)
    #fmt-timezone(
      ..tz,
      local-date: datetime.today(),
      format: "specific-non-location-long"
    ) \
    #fmt-timezone(
      ..tz,
      format: (
        iso8601: (
          format: "utc-extended",
          minutes: "required",
          seconds: "optional",
        )
      )
    )
    
    = Zoned Datetimes (experimental)
    #fmt-zoned-datetime(dt, tz) \
    #fmt-zoned-datetime(dt, tz, locale: "lv") \
    #fmt-zoned-datetime(dt, tz, locale: "en-CA-u-hc-h24-ca-buddhist")
    

![Example](https://github.com/typst/packages/raw/main/packages/preview/icu-
datetime/0.1.2/res/example.png)

Locales must be [ Unicode Locale Identifier
](https://unicode.org/reports/tr35/tr35.html#Unicode_locale_identifier) s. Use
[ ` locale-info(locale) ` ](https://nerixyz.github.io/icu-typ/locale-info/) to
get information on how a locale is parsed. Unicode extensions are supported,
so you can, for example, set the hour cycle with ` hc-h12 ` or set the
calendar with ` ca-buddhist ` (e.g. ` en-CA-u-hc-h24-ca-buddhist ` ).

##  Documentation

Documentation can be found on [ nerixyz.github.io/icu-typ
](https://nerixyz.github.io/icu-typ) .

##  Using Locally

Download the [ latest release ](https://github.com/Nerixyz/icu-typ/releases) ,
unzip it to your [ local Typst packages
](https://github.com/typst/packages#local-packages) , and use ` #import
"@local/icu-datetime:0.1.2" ` .

##  Building

To build the library, you need to have [ Rust ](https://www.rust-lang.org/) ,
[ just ](https://just.systems/) , and [ ` wasm-opt `
](https://github.com/WebAssembly/binaryen) installed.

    
    
    just build
    # to deploy the package locally, use `just deploy`
    

While developing, you can symlink the WASM file into the root of the
repository (itâs in the ` .gitignore ` ):

    
    
    # Windows (PowerShell)
    New-Item icu-datetime.wasm -ItemType SymbolicLink -Value ./target/wasm32-unknown-unknown/debug/icu_typ.wasm
    # Unix
    ln -s ./target/wasm32-unknown-unknown/debug/icu_typ.wasm icu-datetime.wasm
    

Use ` cargo b --target wasm32-unknown-unknown ` to build in debug mode.

###  How to add

Copy this into your project and use the import as  ` icu-datetime `

    
    
    #import "@preview/icu-datetime:0.1.2"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Nerixyz ](https://github.com/Nerixyz)
License:

     MIT 
Current version:

     0.1.2 
Last updated:

     June 14, 2024 
First released:

     June 3, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     1.55 MB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/icu-datetime-0.1.2.tar.gz)
Repository:

     [ GitHub ](https://github.com/Nerixyz/icu-typ)
Categor  y  :

    

  * ![Languages icon](/assets/icons/16-world.svg) [ Languages ](https://typst.app/universe/search/?category=languages)

###  Where to report issues?

This  package  is a project of  Nerixyz  .  Report issues on  [ their
repository ](https://github.com/Nerixyz/icu-typ) .  You can also try to ask
for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.2  |  June 14, 2024   
[ 0.1.1 ](https://typst.app/universe/package/icu-datetime/0.1.1/) |  June 10, 2024   
[ 0.1.0 ](https://typst.app/universe/package/icu-datetime/0.1.0/) |  June 3, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

