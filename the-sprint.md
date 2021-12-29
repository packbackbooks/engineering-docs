# How Does Packback Engineering Work?

Building a platform isn't easy! Packback engineering has the goal of executing quickly and reliably on new features, while simultaneously prioritizing the security, accessibility, reliability and performance of the Packback platform.

This page contains a description of how the engineering teams at Packback keep their work organized, keep different development teams in sync with each other and keep engineering in sync with its partners in the product team. The rest of this document breaks this down in, but at the highest level, Packback engineering does *agile software development*, using the tools of *continuous delivery* to ensure rapid and reliable delivery of code to users.

* "Agile": Packback engineering follows an agile software development process, where work is planned and executed in two-week "sprints".
* "Continuous Delivery": Packback engineering deploys its platform multiple times per day, and code is tested and released to production entirely automatically after a developer merges code into the Packback codebase

Engineering teams at Packback divide their work into sprints. To manage this work across multiple teams, we use the [Large Scale Scrum Framework](https://less.works/less/framework) (or LeSS).

## What Goes Into a Sprint?

Engineering runs a few standard meetings every sprint.  Some of these meetings are run individually for each team, others are engineering-wide.  The meetings are shown visually in this image, where a sprint begins on the left of the diagram and ends on the right.

![A visual representation of the sequencing of meetings in each sprint](sprint_process.drawio.png)

Despite the image above looking pretty busy, there are *very few regular meetings* for engineers. On nine out of ten working days, the only scheduled meeting is a 15-minute sync up with your team members.  To respect the [time of each engineer](http://www.paulgraham.com/makersschedule.html), Packback tries to minimize the number of meetings (all the planning docs together fit into approximately two hours of meetings for most engineers) and also tries to be very deliberate with each meeting. The reason for, and purpose of, each meeting is described in the following sections.

Each team follows this process at a high-level, but adapts the details of each meeting so that they work for them.  More detailed information on *how* to run each meeting is in each team's private documentation.

* [Team sprint planning](#team-sprint-planning)
* [Daily sync up](#daily-sync-up)
* [Division sprint planning](#division-sprint-planning)
* [Team scrum](#team-scrum)
* [Team retrospective](#team-retrospective)
* [Sprint retrospective & demo](#sprint-retrospective-and-demo)

### Team sprint planning

This meeting marks the start of a new sprint and is when you meet with the members of your team to

* resolve any outstanding questions about planned work
* create a plan to meet the sprint goals (who will do what?)

**Who participates?** The members of an individual team.  The meeting is facilitated by the team lead.

**When does this meeting happen?** At the start of each sprint, directly after the sprint retrospective and demo.

### Daily sync-up

This meeting (elsewhere referred to as stand up or scrum) should last no more than 15 minutes. It happens daily, at a time chosen to be convenient for the team. The purpose of sync-up is to coordinate within the team (and, if necessary, raise issues that need to be communicated across teams), and to ensure that all team members have the opportunity to ask for help from the team, or proactively raise problems.  Each team member should answer:

* What did you do yesterday?
* What will you do today?
* Are you running into any blockers or problems?

At the end of sync up, we also ask if anyone has noticed any problems or opportunities for improvement. Sharing an opportunity doesn't mean you will be responsible for implementing it, but ensures that observations and ideas are tracked so that they can be discussed team-wide during retrospectives.

**Who participates?** The members of an individual team. Additionally, members of other teams may join and observe to facilitate communication and cross-team collaboration.

**When does this meeting happen?** Daily, usually around midday.

### Division sprint planning

The Division sprint planning meeting kicks off planning of the next sprint, and happens a few days before sprint end.  This meeting is how Packback's engineering and product teams collaborate to ensure we are working on the *correct* things. The goal of division sprint planning is to:

* identify which tickets should be estimated next sprint
* surface questions, problems, and blockers for the selected tickets
* determine which teams will be responsible for the selected tickets

As a general heuristic, Packback engineering works on 75% feature improvements on its product, and 25% non-functional work and tech debt.  Although any individual sprint may not hit precisely this balance, as a team we ensure that over longer timescales this 75/25 split holds true.  Division sprint planning is where we make sure we deliver on this commitment.

**Who participates?** Product managers, team leads, and certain backlog owners. Teams may decide who to send to this meeting, such as a project lead, or anybody who has information relevant to upcoming projects, or any backlog owner who has tickets that they would like to be prioritized by a team.

**When does this meeting happen?** Towards the end of the sprint before individual team scrums.

### Team scrum

Tickets are assigned to teams as a part of division sprint planning, so the input to this meeting is a preliminary list of tickets that the team will be tackling. The goal of team scrum is then to:

* estimate tickets selected for next sprint
* surface questions, problems, and blockers for the selected tickets
* determine sprint goals for the upcoming sprint

**Who participates?** The members of an individual team.

**When does this meeting happen?** The day before the end of the sprint.

### Team retrospective

The team retrospective is a meeting held at the end of a sprint used to discuss what went well during the previous sprint cycle and what can be improved for the next sprint.  In more detail, during this meeting each team will:

* discuss any opportunities for improvement mentioned during the sprint
* discuss any other problems or opportunities for improvement
* make a plan to implement opportunities that the team decides are worthwhile
* record any tickets that took longer than expected and the reason did (this data will be aggregated for later use)

**Who participates?** The members of an individual team.

**When does this meeting happen?** At the end of the sprint, just before the sprint retrospective and demo.

### Sprint retrospective and demo

This meeting marks the end of a sprint. After a team does its individual retrospective, everybody gets together to recap retrospectives and to make sure everybody has a full understanding of what we all plan to get done this sprint.  This meeting is a key part of ensuring everybody gets to know what is going on with *all* the teams, and to hear about any improvements or problems that other teams are facing.  During the overall retrospective, the teams will

* discuss any opportunities from team retrospectives that would be helpful to discuss at an organizational level
* give shout outs to teammates for exemplary performance

Finally, we wrap up with sprint demos, where each team shows:

* what they accomplished last sprint
* their sprint goals for next sprint

The end of this meeting marks the beginning of the new sprint.

**Who participates?** All members of the Engineering org.

**When does this meeting happen?** At the very end of the sprint.
