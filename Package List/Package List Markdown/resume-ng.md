![A preview of the resume-ng Typst
template.](https://packages.typst.org/preview/thumbnails/resume-
ng-1.0.0-small.webp)

#  resume-ng

1.0.0

A Typst resume designed for optimal information density and aesthetic appeal.

[ Create project in app ](/app?template=resume-ng&version=1.0.0)

A typst resume designed for optimal information density and aesthetic appeal.

A LaTeX version

` main.typ ` will be a good start.

A minimal exmaple would be:

    
    
    #show: project.with(
      title: "Resume-ng",
      author: (name: "FengKaiyu"),
      contacts: 
        (
          "+86 188-888-8888",
           link("https://github.com", "github.com/fky2015"),  
          // More items...
        )
    )
    
    #resume-section("Educations")
    #resume-education(
      university: "BIT",
      degree: "Your degree",
      school: "Your Major and school",
      start: "2021-09",
      end: "2024-06"
    )[
    *GPA: 3.62/4.0*. My main research interest 
    is in #strong("Byzantine Consensus Algorithm"), 
    and I have some research and engineering experience in the field of distributed systems.
    ]
    
    #resume-section[Work Experience]
    #resume-work(
      company: "A company",
      duty: "Your duty",
      start: "2020.10",
      end: "2021.03",
    )[
      - *Independently responsible for the design, development, testing and deployment of XXX business backend.* Implemented station letter template rendering service through FaaS, Kafka and other platforms. Provided SDK code to upstream, added or upgraded various offline and online logic.
      - *Participate in XXX's requirement analysis, system technical solution design; complete requirement development, grey scale testing, go-live and monitoring.*
    ]
    
    #resume-section[Projects]
    
    #resume-project(
      title: "Project name",
      duty: "Your duty",
      start: "2021.11",
      end: "2022.07",
    )[
      - Implemented a memory pool manager based on an extensible hash table and LRU-K, and developed a concurrent B+ tree supporting optimistic locking for read and write operations.
      - Utilized the volcano model to implement executors for queries, updates, joins, and aggregations, and performed query rewriting and pushing down optimizations.
      - Implemented concurrency control using 2PL (two-phase locking), supporting deadlock handling, multiple isolation levels, table locks, and row locks.
    ]
    

[ Create project in app ](/app?template=resume-ng&version=1.0.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/resume-ng:1.0.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ FengKaiyu ](https://github.com/fky2015)
License:

     MIT 
Current version:

     1.0.0 
Last updated:

     October 8, 2024 
First released:

     October 8, 2024 
Archive size:

     5.27 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/resume-ng-1.0.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/fky2015/resume-ng-typst)
Categor  y  :

    

  * ![CV icon](/assets/icons/16-user.svg) [ CV ](https://typst.app/universe/search/?category=cv)

###  Where to report issues?

This  template  is a project of  FengKaiyu  .  Report issues on  [ their
repository ](https://github.com/fky2015/resume-ng-typst) .  You can also try
to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
1.0.0  |  October 8, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

