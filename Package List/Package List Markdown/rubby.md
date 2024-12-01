#  rubby

0.10.1

Add ruby (furigana) next to base text.

##  Usage

    
    
    #import "@preview/rubby:0.10.1": get-ruby
    
    #let ruby = get-ruby(
      size: 0.5em,         // Ruby font size
      dy: 0pt,             // Vertical offset of the ruby
      pos: top,            // Ruby position (top or bottom)
      alignment: "center", // Ruby alignment ("center", "start", "between", "around")
      delimiter: "|",      // The delimiter between words
      auto-spacing: true,  // Automatically add necessary space around words
    )
    
    // Ruby goes first, base text - second.
    #ruby[ãµãããª][æ¯ãä»®å]
    
    Treat each kanji as a separate word:
    #ruby[ã¨ã|ããã|ãã|ããã|ã ã|ãã][æ±|äº¬|å·¥|æ¥­|å¤§|å­¦]
    

If you donât want automatically wrap text with delimiter:

    
    
    #let ruby = get-ruby(auto-spacing: false)
    

See also [ https://github.com/rinmyo/ruby-typ/blob/main/manual.pdf
](https://github.com/rinmyo/ruby-typ/blob/main/manual.pdf) and ` example.typ `
.

##  Notes

Original project is at [ https://github.com/rinmyo/ruby-typ
](https://github.com/rinmyo/ruby-typ) which itself is based on [ the post
](https://zenn.dev/saito_atsushi/articles/ff9490458570e1) of é½è¤æ¦å¿
(Saito Atsushi). This project is a modified version of [ this commit
](https://github.com/rinmyo/ruby-
typ/commit/23ca86180757cf70f2b9f5851abb5ea5a3b4c6a1) .

` auto-spacing ` adds missing delimiter around the ` content ` / ` string `
which then adds space around base text if ruby is wider than the base text.

Problems appear only if ruby is wider than its base text and ` auto-spacing `
is not set to ` true ` (default is ` true ` ).

You can always use a one-letter function (variable) name to shorten the
function call length (if you have to use it a lot), e.g., ` #let r = get-
ruby() ` (or ` f ` â short for furigana). But be careful as there are
functions with names ` v ` and ` h ` and there could be a new built-in
function with a name ` r ` or ` f ` which may break your document (Typst right
now is in beta, so breaking changes are possible).

Although you can open issues or send PRs, I wonât be able to always reply
quickly (sometimes Iâm very busy).

##  Development

This repository should exist as a ` @local ` package with the version from the
` typst.toml ` .

Here is a short description of the development process:

  1. run ` git checkout dev && git pull ` ; 
  2. make changes; 
  3. test changes, if not done or something isnât working then go to step 1; 
  4. when finished, run ` just change-version <new semantic version> ` ; 
  5. document changes in the ` CHANGELOG.md ` ; 
  6. commit all changes (only locally); 
  7. create a ` @local ` Typst package with the new version and test it; 
  8. if everything is working then run ` git push ` ; 
  9. realize that youâve missed something and fix it (then push changes again); 
  10. run ` git checkout master && git merge dev ` to sync ` master ` to ` dev ` ; 
  11. run ` just create-release ` . 

##  Publishing a Typst package

  1. To make a new package version for merging into ` typst/packages ` repository run ` just mark-PR-version ` ; 
  2. copy newly created directory (with a version name) and place it in the appropriate place in your fork of the ` typst/packages ` repository; 
  3. run ` git fetch upstream && git merge upstream main ` to sync fork with ` typst/packages ` ; 
  4. go to a new branch with ` git checkout -b <package-version> ` ; 
  5. commit newly added directory with commit message: ` package:version ` ; 
  6. run ` gh pr create ` and follow further CLI instructions. 

##  Changelog

You can view the change log in the ` CHANGELOG.md ` file in the root of the
project.

##  License

This Typst package is licensed under AGPL v3.0. You can view the license in
the LICENSE file in the root of the project or at [
https://www.gnu.org/licenses/agpl-3.0.txt
](https://www.gnu.org/licenses/agpl-3.0.txt) . There is also a NOTICE file for
3rd party copyright notices.

Copyright Â© 2023 Andrew Voynov

###  How to add

Copy this into your project and use the import as  ` rubby `

    
    
    #import "@preview/rubby:0.10.1"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Andrew Voynov 
License:

     AGPL-3.0-only 
Current version:

     0.10.1 
Last updated:

     December 3, 2023 
First released:

     July 3, 2023 
Minimum Typst version:

     0.8.0 
Archive size:

     16.0 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/rubby-0.10.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/Andrew15-5/rubby)

###  Where to report issues?

This  package  is a project of  Andrew Voynov  .  Report issues on  [ their
repository ](https://github.com/Andrew15-5/rubby) .  You can also try to ask
for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
[ 0.9.2 ](https://typst.app/universe/package/rubby/0.9.2/) |  September 15, 2023   
[ 0.8.0 ](https://typst.app/universe/package/rubby/0.8.0/) |  July 3, 2023   
0.10.1  |  December 3, 2023   
[ 0.10.0 ](https://typst.app/universe/package/rubby/0.10.0/) |  November 25, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

