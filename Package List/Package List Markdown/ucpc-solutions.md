![A preview of the ucpc-solutions Typst
template.](https://packages.typst.org/preview/thumbnails/ucpc-
solutions-0.1.0-small.webp)

#  ucpc-solutions

0.1.0

The port of UCPC solutions theme.

[ Create project in app ](/app?template=ucpc-solutions&version=0.1.0)

[ ucpc-solutions ](https://github.com/ShapeLayer/ucpc-solutions__typst) is the
template for solutions editorial of algorithm contests, used widely in the [
âBaekjoon Online Judgeâ ](https://acmicpc.net/) users community in Korea.

The original version of ucpc-solution is written in LaTeX( [
ucpcc/2020-solutions-theme ](https://github.com/ucpcc/2020-solutions-theme) ),
and this is the port of LaTeX ver. This contains content-generating utils for
making solutions editorial and [ âsolved.acâ ](https://solved.ac/)
difficulty expression presets, a rating system for Baekjoon Online Judgeâs
problems.

##  Getting Started

    
    
    #import "@preview/ucpc-solutions:0.1.0" as ucpc
    
    #show: ucpc.ucpc.with(
      title: "Contest Name",
      authors: ("Contest Authors", ),
    )
    

###  Requirements

**Fonts**

  * [ Inter ](https://fonts.google.com/specimen/Inter)
  * (optional) [ Gothic A1 ](https://fonts.google.com/specimen/Gothic+A1)
  * (optional) [ Pretendard ](https://github.com/orioncactus/pretendard/blob/main/packages/pretendard/docs/en/README.md)

##  Examples

See [ ` /examples `
](https://github.com/typst/packages/raw/main/packages/preview/ucpc-
solutions/0.1.0/examples/) .

You can also see other usecase using the original LaTeX theme. See the [ (KR)
âTheme Usage Examples(í ë§ ì¬ì© ì)â section
](https://github.com/ucpcc/2020-solutions-
theme#%ED%85%8C%EB%A7%88-%EC%82%AC%EC%9A%A9-%EC%98%88) in the origin
repositoryâs README.

##  For Contributing

Requirements: [ just ](https://github.com/casey/just) , [ typst-test
](https://github.com/tingerrr/typst-test)

**Recompile Refs for Testing**

    
    
    just update-test
    

**Run Test**

    
    
    just test
    

* * *

  * Special Thanks: [ @kiwiyou ](https://github.com/kiwiyou) \- about technical issue 

  * Since this ported version has been re-implemented only for appearance, this repository does not include the source code of any distribution or variant of ucpc-solutions. 

[ Create project in app ](/app?template=ucpc-solutions&version=0.1.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/ucpc-solutions:0.1.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  s  :

     [ Jonghyeon Park ](https://github.com/ShapeLayer) & [ The Union of Collegiate Programming Contest Clubs ](https://github.com/ucpcc)
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     August 14, 2024 
First released:

     August 14, 2024 
Minimum Typst version:

     0.1.0 
Archive size:

     22.2 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/ucpc-solutions-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/ShapeLayer/ucpc-solutions__typst)
Categor  y  :

    

  * ![Presentation icon](/assets/icons/16-presentation.svg) [ Presentation ](https://typst.app/universe/search/?category=presentation)

###  Where to report issues?

This  template  is a project of  Jonghyeon Park and The Union of Collegiate
Programming Contest Clubs  .  Report issues on  [ their repository
](https://github.com/ShapeLayer/ucpc-solutions__typst) .  You can also try to
ask for help with this  template  on the  [ Forum ](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  August 14, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

