  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Model ](/docs/reference/model/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Bibliography ](/docs/reference/model/bibliography/)

#  ` bibliography ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

A bibliography / reference listing.

You can create a new bibliography by calling this function with a path to a
bibliography file in either one of two formats:

  * A Hayagriva ` .yml ` file. Hayagriva is a new bibliography file format designed for use with Typst. Visit its [ documentation ](https://github.com/typst/hayagriva/blob/main/docs/file-format.md) for more details. 
  * A BibLaTeX ` .bib ` file. 

As soon as you add a bibliography somewhere in your document, you can start
citing things with reference syntax ( ` @key  ` ) or explicit calls to the [
citation ](/docs/reference/model/cite/) function ( ` #  cite  (  <key> )  ` ).
The bibliography will only show entries for works that were referenced in the
document.

##  Styles

Typst offers a wide selection of built-in [ citation and bibliography styles
](/docs/reference/model/bibliography/#parameters-style) . Beyond those, you
can add and use custom [ CSL ](https://citationstyles.org/) (Citation Style
Language) files. Wondering which style to use? Here are some good defaults
based on what discipline you're working in:

Fields  |  Typical Styles   
---|---  
Engineering, IT  |  ` "ieee"  `  
Psychology, Life Sciences  |  ` "apa"  `  
Social sciences  |  ` "chicago-author-date"  `  
Humanities  |  ` "mla"  ` , ` "chicago-notes"  ` , ` "harvard-cite-them-right"  `  
Economics  |  ` "harvard-cite-them-right"  `  
Physics  |  ` "american-physics-society"  `  
  
##  Example

    
    
    This was already noted by
    pirates long ago. @arrgh
    
    Multiple sources say ...
    @arrgh @netwok.
    
    #bibliography("works.bib")
    

![Preview](/assets/docs/IJ3xnmEzh6yEddeM44ev3wAAAAAAAAAA.png)

##  Parameters

Question mark

Parameters are the inputs to a function. They are specified in parentheses
after the function name.

bibliography  (

[ str ](/docs/reference/foundations/str/) [ array
](/docs/reference/foundations/array/) ,  title  :  [ none
](/docs/reference/foundations/none/) [ auto
](/docs/reference/foundations/auto/) [ content
](/docs/reference/foundations/content/) ,  full  :  [ bool
](/docs/reference/foundations/bool/) ,  style  :  [ str
](/docs/reference/foundations/str/) ,

)  -> [ content ](/docs/reference/foundations/content/)

###  ` path `

[ str ](/docs/reference/foundations/str/) or  [ array
](/docs/reference/foundations/array/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

Path(s) to Hayagriva ` .yml ` and/or BibLaTeX ` .bib ` files.

###  ` title `

[ none ](/docs/reference/foundations/none/) or  [ auto
](/docs/reference/foundations/auto/) or  [ content
](/docs/reference/foundations/content/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The title of the bibliography.

  * When set to ` auto  ` , an appropriate title for the [ text language ](/docs/reference/text/text/#parameters-lang) will be used. This is the default. 
  * When set to ` none  ` , the bibliography will not have a title. 
  * A custom title can be set by passing content. 

The bibliography's heading will not be numbered by default, but you can force
it to be with a show-set rule: ` show  bibliography  :  set  heading  (
numbering  :  "1."  )  `

Default: ` auto  `

###  ` full `

[ bool ](/docs/reference/foundations/bool/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

Whether to include all works from the given bibliography files, even those
that weren't cited in the document.

To selectively add individual cited works without showing them, you can also
use the ` cite ` function with [ ` form `
](/docs/reference/model/cite/#parameters-form) set to ` none  ` .

Default: ` false  `

###  ` style `

[ str ](/docs/reference/foundations/str/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The bibliography style.

Should be either one of the built-in styles (see below) or a path to a [ CSL
file ](https://citationstyles.org/) . Some of the styles listed below appear
twice, once with their full name and once with a short alias.

![](/assets/icons/16-arrow-right.svg) View options

Variant  |  Details   
---|---  
` "  alphanumeric  " ` |  Alphanumeric   
` "  american-anthropological-association  " ` |  American Anthropological Association   
` "  american-chemical-society  " ` |  American Chemical Society   
` "  american-geophysical-union  " ` |  American Geophysical Union   
` "  american-institute-of-aeronautics-and-astronautics  " ` |  American Institute of Aeronautics and Astronautics   
` "  american-institute-of-physics  " ` |  American Institute of Physics 4th edition   
` "  american-medical-association  " ` |  American Medical Association 11th edition   
` "  american-meteorological-society  " ` |  American Meteorological Society   
` "  american-physics-society  " ` |  American Physical Society   
` "  american-physiological-society  " ` |  American Physiological Society   
` "  american-political-science-association  " ` |  American Political Science Association   
` "  american-psychological-association  " ` |  American Psychological Association 7th edition   
` "  american-society-for-microbiology  " ` |  American Society for Microbiology   
` "  american-society-of-civil-engineers  " ` |  American Society of Civil Engineers   
` "  american-society-of-mechanical-engineers  " ` |  American Society of Mechanical Engineers   
` "  american-sociological-association  " ` |  American Sociological Association 6th/7th edition   
` "  angewandte-chemie  " ` |  Angewandte Chemie International Edition   
` "  annual-reviews  " ` |  Annual Reviews (sorted by order of appearance)   
` "  annual-reviews-author-date  " ` |  Annual Reviews (author-date)   
` "  associacao-brasileira-de-normas-tecnicas  " ` |  AssociaÃ§Ã£o Brasileira de Normas TÃ©cnicas (PortuguÃªs - Brasil)   
` "  association-for-computing-machinery  " ` |  Association for Computing Machinery   
` "  biomed-central  " ` |  BioMed Central   
` "  bristol-university-press  " ` |  Bristol University Press   
` "  british-medical-journal  " ` |  BMJ   
` "  cell  " ` |  Cell   
` "  chicago-author-date  " ` |  Chicago Manual of Style 17th edition (author-date)   
` "  chicago-fullnotes  " ` |  Chicago Manual of Style 17th edition (full note)   
` "  chicago-notes  " ` |  Chicago Manual of Style 17th edition (note)   
` "  copernicus  " ` |  Copernicus Publications   
` "  council-of-science-editors  " ` |  Council of Science Editors, Citation-Sequence (numeric, brackets)   
` "  council-of-science-editors-author-date  " ` |  Council of Science Editors, Name-Year (author-date)   
` "  current-opinion  " ` |  Current Opinion journals   
` "  deutsche-gesellschaft-fÃ¼r-psychologie  " ` |  Deutsche Gesellschaft fÃ¼r Psychologie 5. Auflage (Deutsch)   
` "  deutsche-sprache  " ` |  Deutsche Sprache (Deutsch)   
` "  elsevier-harvard  " ` |  Elsevier - Harvard (with titles)   
` "  elsevier-vancouver  " ` |  Elsevier - Vancouver   
` "  elsevier-with-titles  " ` |  Elsevier (numeric, with titles)   
` "  frontiers  " ` |  Frontiers journals   
` "  future-medicine  " ` |  Future Medicine journals   
` "  future-science  " ` |  Future Science Group   
` "  gb-7714-2005-numeric  " ` |  China National Standard GB/T 7714-2005 (numeric, ä¸­æ)   
` "  gb-7714-2015-author-date  " ` |  China National Standard GB/T 7714-2015 (author-date, ä¸­æ)   
` "  gb-7714-2015-note  " ` |  China National Standard GB/T 7714-2015 (note, ä¸­æ)   
` "  gb-7714-2015-numeric  " ` |  China National Standard GB/T 7714-2015 (numeric, ä¸­æ)   
` "  gost-r-705-2008-numeric  " ` |  Russian GOST R 7.0.5-2008 (numeric)   
` "  harvard-cite-them-right  " ` |  Cite Them Right 12th edition - Harvard   
` "  institute-of-electrical-and-electronics-engineers  " ` |  IEEE   
` "  institute-of-physics-numeric  " ` |  Institute of Physics (numeric)   
` "  iso-690-author-date  " ` |  ISO-690 (author-date, English)   
` "  iso-690-numeric  " ` |  ISO-690 (numeric, English)   
` "  karger  " ` |  Karger journals   
` "  mary-ann-liebert-vancouver  " ` |  Mary Ann Liebert - Vancouver   
` "  modern-humanities-research-association  " ` |  Modern Humanities Research Association 4th edition (note with bibliography)   
` "  modern-language-association  " ` |  Modern Language Association 9th edition   
` "  modern-language-association-8  " ` |  Modern Language Association 8th edition   
` "  multidisciplinary-digital-publishing-institute  " ` |  Multidisciplinary Digital Publishing Institute   
` "  nature  " ` |  Nature   
` "  pensoft  " ` |  Pensoft Journals   
` "  public-library-of-science  " ` |  Public Library of Science   
` "  royal-society-of-chemistry  " ` |  Royal Society of Chemistry   
` "  sage-vancouver  " ` |  SAGE - Vancouver   
` "  sist02  " ` |  SIST02 (æ¥æ¬èª)   
` "  spie  " ` |  SPIE journals   
` "  springer-basic  " ` |  Springer - Basic (numeric, brackets)   
` "  springer-basic-author-date  " ` |  Springer - Basic (author-date)   
` "  springer-fachzeitschriften-medizin-psychologie  " ` |  Springer - Fachzeitschriften Medizin Psychologie (Deutsch)   
` "  springer-humanities-author-date  " ` |  Springer - Humanities (author-date)   
` "  springer-lecture-notes-in-computer-science  " ` |  Springer - Lecture Notes in Computer Science   
` "  springer-mathphys  " ` |  Springer - MathPhys (numeric, brackets)   
` "  springer-socpsych-author-date  " ` |  Springer - SocPsych (author-date)   
` "  springer-vancouver  " ` |  Springer - Vancouver (brackets)   
` "  taylor-and-francis-chicago-author-date  " ` |  Taylor & Francis - Chicago Manual of Style (author-date)   
` "  taylor-and-francis-national-library-of-medicine  " ` |  Taylor & Francis - National Library of Medicine   
` "  the-institution-of-engineering-and-technology  " ` |  The Institution of Engineering and Technology   
` "  the-lancet  " ` |  The Lancet   
` "  thieme  " ` |  Thieme-German (Deutsch)   
` "  trends  " ` |  Trends journals   
` "  turabian-author-date  " ` |  Turabian 9th edition (author-date)   
` "  turabian-fullnote-8  " ` |  Turabian 8th edition (full note)   
` "  vancouver  " ` |  Vancouver   
` "  vancouver-superscript  " ` |  Vancouver (superscript)   
  
Default: ` "ieee"  `

[ ![â](/assets/icons/16-arrow-right.svg) Model  Previous page
](/docs/reference/model/) [ ![â](/assets/icons/16-arrow-right.svg) Bullet
List  Next page  ](/docs/reference/model/list/)

