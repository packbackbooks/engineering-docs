# Sprints at Packback

Engineering teams at Packback divide their work into sprints. To manage this work across multiple teams, we use the [Large Scale Scrum Framework](https://less.works/less/framework) (or LeSS).

## Sprint meetings and checklists

Sprints are two weeks long (from Tuesday to Tuesday) and follow a regular cadence of meetings:

- Team sprint planning
- Sync-up (daily)
- Division sprint planning
- Team pre-planning
- Team retrospective
- Sprint retrospective and demo

### Team sprint planning

This meeting marks the start of a new sprint.

| Who participates? | When does this meeting happen? |
| ----------------- | ------------------------------ |
| The members of an individual team. | At the start of each sprint, Tuesday afternoon, right the sprint retrospective and demo. |

**Meeting checklist:**

- [ ] Review the [sprint goals](https://docs.google.com/presentation/d/1Sbd8495t2-nF61AdYXYRXp51lu-OSYcH57YFyuPnt-w/) for the upcoming sprint.
- [ ] Estimate any unestimated tickets in the [backlog](https://packback.atlassian.net/secure/RapidBoard.jspa?rapidView=68&projectKey=PLAT&view=planning.nodetail&quickFilter=135&issueLimit=100) for the team.
- [ ] Determine how many points to bring into the sprint.
    - Look at the team's [upcoming sprint capacity](https://metabase.packback.co/question/727).
    - Discuss any upcoming PTO.
    - Consider who is going to be on call.
- [ ] Go through any unassigned tickets and assign a team member to each ticket.
- [ ] Discuss any dependencies or blockers on tickets and make a plan to ensure blockers can be before work begins.
- [ ] Once the team is ready to begin the sprint, move the tickets from the backlog to the team's board.
- [ ] Go forth and start crushing tickets.

### Daily sync-up

This meeting (elsewhere referred to as stand up or scrum) should last no more than 15 minutes.

| Who participates? | When does this meeting happen? |
| ----------------- | ------------------------------ |
| The members of an individual team. | Daily, usually around midday. |

**Meeting checklist:**

- [ ] Open the Jira board for the team.
- [ ] Go through each member of the team and have them talk about what they've been working on.
    - Focus on any challenges or blockers they might be experiencing.
    - If any discussion goes on for more than 2-3 minutes, interrupt the discussion and "parking lot" it for after the meeting.
- [ ] Bring up the [sprint goals](https://docs.google.com/presentation/d/1Sbd8495t2-nF61AdYXYRXp51lu-OSYcH57YFyuPnt-w/) and check in on the status of any unfinished goals.
- [ ] Ask if anyone has any opportunities for how we could improve our process or do things better.
- [ ] Dismiss anyone who doesn't need to be involved in "parking lot" conversations.

### Division sprint planning

| Who participates? | When does this meeting happen? |
| ----------------- | ------------------------------ |
| TPMs, team leads, and certain backlog owners. | Towards the end of the sprint before individual team sprint pre-plannings. |

**Meeting checklist:**

This is a new meeting and does not yet have a checklist. Losely, it's:

- [ ] The managers of each individual backlog should determine which tickets to estimate.
- [ ] Tickets selected for estimation should be updated to the "To-do" status via the "Prioritize" transition in Jira.
- [ ] Each backlog owner should assign tickets to the appropriate team by labelling the Jira tickets.
- [ ] Team leads should ask clarifying questions about the tickets so that they are prepared to discuss them in their team pre-planning.

### Team pre-planning

| Who participates? | When does this meeting happen? |
| ----------------- | ------------------------------ |
| The members of an individual team. | The day before the end of the sprint. |

**Meeting checklist:**

- [ ] Open the [PLAT backlog](https://packback.atlassian.net/secure/RapidBoard.jspa?rapidView=68&projectKey=PLAT&view=planning.nodetail&quickFilter=135&issueLimit=100), and use the quick filter for your team to pull up any tickets needing estimation.
- [ ] Open each ticket and estimate it:
    - Provide high level context about the purpose and scope of the ticket (or ask whoever is most qualified to provide the context).
    - Ask everyone if they have any questions to make it possible for them to estimate.
        - If there is too much ambiguity to estimate a ticket, assign a team member to research it before Sprint Planning.
        - Surface any blockers to the current ticket.
    - Ask everyone to estimate at the same time.
        - If the estimate comes in >3 points, ask how the ticket can be broken down into smaller deliverables.
- [ ] Repeat until all of the tickets have been estimated (or had someone assigned for further research).

### Team retrospective

| Who participates? | When does this meeting happen? |
| ----------------- | ------------------------------ |
| The members of an individual team. | At the end of the sprint, just before the sprint retrospective and demo. |

**Meeting checklist:**

- [ ] Create a new [retrospective](https://packback.atlassian.net/wiki/spaces/QUESTIONS/pages/557058) in Confluence and fill it out.

### Sprint retrospective and demo

This meeting marks the end of a sprint.

| Who participates? | When does this meeting happen? |
| ----------------- | ------------------------------ |
| All members of the Engineering org | At the very end of the sprint on Tuesday afternoon. |

**Meeting checklist:**

- Recap team retrospectives
    - [ ] Talk about any items from individual team retrospectives that should be discussed with everyone.
    - [ ] Talk about any opportunities that you discussed but no one knew how to solve.
    - [ ] Give values-based shout-outs.
- Sprint demo
    - [ ] Have a representative from each team demo the work that they accomplished.
    - [ ] Let members of other teams ask questions about their work.
- The old sprint has ended. Let a new one begin!
