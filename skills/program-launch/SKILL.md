---
name: program-launch
description: >
  New Program Launch Command Center — sets up a new program or initiative end-to-end, from initiation through operating rhythm. Generates every artifact a TPM or program leader needs: Program Charter, OKR Framework, DRI model, RACI matrix, RAID log, Governance model, Prioritization matrix, Change management plan, Portfolio view, Health dashboard, and Planning cadence calendar.

  Use this skill whenever someone needs to: launch a new program, initiate a project, set up program management infrastructure, define success metrics, build a health dashboard, create a RACI or RAID, set up OKRs, define governance, establish operating rhythms, build a planning cadence, manage a portfolio of engineering or product teams, run a cross-functional transformation, or get a new initiative off the ground the right way.

  Trigger on: "new program", "start a program", "program initiation", "launch a new initiative", "set up program management", "create a program charter", "build OKRs", "RACI matrix", "RAID log", "governance model", "change management plan", "health dashboard", "operating rhythm", "planning cadence", "portfolio management", "program launch", or any request to structure and launch a new program or major initiative from scratch.
---

# New Program Launch Command Center

You are setting up a new program from scratch. Your job is to take a program idea — even a rough one — and build the full infrastructure needed to run it well: clarity on what success looks like, who owns what, how decisions get made, how health gets tracked, and how the team operates.

Work through the phases below. If the user already has some artifacts, skip to where they need help. If they just have a name and a vague goal, start at Phase 1.

For each artifact, generate a complete, ready-to-use version — not a template with placeholders, but a filled-out working document based on what the user tells you. Ask targeted questions to fill gaps. Be specific, not generic.

---

## Phase 1 — Program Initiation

Start here. Understand what the program is before building anything.

**Ask the user:**
- Program name and one-line description
- The problem it solves or the opportunity it captures
- Which company or org goal it maps to
- Rough scope: what's in, what's explicitly out
- Key stakeholders and sponsors
- Target launch date or planning horizon
- Teams involved (engineering, product, design, ops, etc.)
- Any known constraints (budget, headcount, tech debt, dependencies)

**Artifact 1: Program Charter**

Generate a Program Charter doc with these sections:

```
# [Program Name] — Program Charter

## Executive Summary
[2-3 sentences: what this program is, why now, what success looks like]

## Problem Statement
[What's broken or missing? What's the cost of not doing this?]

## Program Goals
[3-5 specific outcomes, not activities]

## Scope
In scope: [list]
Out of scope: [explicit list — this prevents scope creep]

## Success Metrics
[How will we know this worked? Measurable, with baseline and target]

## Stakeholders
| Role | Name | Responsibility |
|---|---|---|
| Executive Sponsor | | Final decisions, escalation path |
| Program DRI | | Owns outcomes end-to-end |
| Product Lead | | Feature definition |
| Eng Lead | | Technical delivery |
| [others] | | |

## Timeline & Milestones
| Milestone | Target Date | Owner |
|---|---|---|

## Key Assumptions & Constraints
[What are you betting on being true? What can't you change?]

## Risks (Top 3)
[What could kill this program? One mitigation each]
```

---

## Phase 2 — Goals & Success Framework

**OKR Framework**

Structure the program's goals using OKRs. Each Objective should be inspirational but grounded. Each Key Result should be measurable and time-bound.

```
## Program OKRs — [Planning Period]

### Objective 1: [Inspirational outcome statement]
- KR1: [Metric] from [baseline] to [target] by [date]
- KR2: [Metric] from [baseline] to [target] by [date]
- KR3: [Metric] from [baseline] to [target] by [date]

### Objective 2: [...]
[...]
```

**Success Measures Table**

For each KR, define the full measurement plan:

| Metric | Baseline | Target | Measurement Method | Cadence | Owner |
|---|---|---|---|---|---|
| [metric] | [current] | [goal] | [how measured] | Weekly/Monthly | [who] |

Include:
- Primary KPIs (what defines success)
- Leading indicators (early signals things are working)
- Guardrail metrics (what must not get worse)
- Vanity metrics to avoid (flag anything the team might track that doesn't matter)

---

## Phase 3 — Ownership & Accountability

**DRI Model**

Define single-threaded ownership for every major area. A DRI (Directly Responsible Individual) is the one person accountable for an outcome — not the committee, not "the team."

```
## DRI Model — [Program Name]

| Area | DRI | Backup | Scope of Ownership |
|---|---|---|---|
| Program Outcomes | [name] | [name] | Overall delivery, stakeholder alignment |
| Product Definition | [name] | [name] | Roadmap, PRDs, prioritization |
| Engineering Delivery | [name] | [name] | Technical execution, quality, velocity |
| Design | [name] | [name] | UX, design system, prototypes |
| Data & Analytics | [name] | [name] | Metrics, dashboards, insights |
| Comms & Change Mgmt | [name] | [name] | Stakeholder updates, training |
| [Program-specific area] | [name] | [name] | [scope] |
```

**RACI Matrix**

Map every key decision and deliverable to who's Responsible, Accountable, Consulted, and Informed.

Generate a RACI with the program's actual decisions and deliverables:

| Decision / Deliverable | [Stakeholder 1] | [Stakeholder 2] | [Stakeholder 3] | [Stakeholder 4] |
|---|---|---|---|---|
| Program Charter approval | C | A/R | C | I |
| Feature prioritization | R | A | C | I |
| Scope changes | C | A | R | I |
| Go/no-go decision | A | C | R | I |
| Budget decisions | A | I | C | I |

*R = Responsible (does the work), A = Accountable (owns the outcome), C = Consulted (input needed), I = Informed (kept in loop)*

---

## Phase 4 — Risk & Dependency Management

**RAID Log**

Generate a full RAID log (Risks, Assumptions, Issues, Dependencies) as a table:

```
## RAID Log — [Program Name] — Last Updated [date]

### Risks
| ID | Risk | Likelihood | Impact | Score | Mitigation | Owner | Status |
|---|---|---|---|---|---|---|---|
| R-01 | [risk description] | H/M/L | H/M/L | P0-P3 | [mitigation plan] | [owner] | Open |

### Assumptions
| ID | Assumption | If Wrong, Impact | Validation Plan | Owner | Due |
|---|---|---|---|---|---|
| A-01 | [assumption] | [impact if false] | [how to validate] | [owner] | [date] |

### Issues
| ID | Issue | Impact | Resolution Plan | Owner | Due | Status |
|---|---|---|---|---|---|---|
| I-01 | [current blocker] | [impact] | [what's being done] | [owner] | [date] | Active |

### Dependencies
| ID | We Need | From Team | By When | Confirmed? | Risk if Delayed |
|---|---|---|---|---|---|
| D-01 | [deliverable] | [team] | [date] | Y/N | [impact] |
```

---

## Phase 5 — Governance Model

Define how decisions get made, how the program escalates, and how it reports.

**Governance Structure**

```
## Governance Model — [Program Name]

### Decision Rights
- Strategic decisions (scope, budget, launch) → Executive Sponsor
- Program decisions (prioritization, tradeoffs) → Program DRI
- Technical decisions (architecture, tooling) → Eng Lead
- Day-to-day execution → Team leads

### Escalation Path
Level 1: Team lead resolves within 24h
Level 2: Program DRI resolves within 48h
Level 3: Executive Sponsor resolves within 1 week
Level 4: [Exec above sponsor] — for cross-org blockers

### Meeting Cadence (see Phase 7 for full calendar)
| Forum | Participants | Cadence | Purpose |
|---|---|---|---|
| Program Standup | Core team | Daily/3x week | Blockers, daily sync |
| Program Review | DRIs + leads | Weekly | Status, risks, decisions |
| Steering Committee | Sponsors + DRIs | Bi-weekly | Strategic alignment |
| Executive Readout | Exec sponsor + up | Monthly | Health signal, asks |

### Reporting
- Weekly: Program health email (🟢/🟡/🔴) → all stakeholders
- Monthly: Executive dashboard → leadership
- Quarterly: OKR review → company planning cycle
```

---

## Phase 6 — Change Management Plan

Programs fail when people aren't brought along. Build a change management plan upfront.

```
## Change Management Plan — [Program Name]

### Stakeholder Map
| Stakeholder / Group | Impact Level | Current Sentiment | Desired State | Engagement Approach |
|---|---|---|---|---|
| [group] | High/Med/Low | Unaware/Resistant/Neutral/Supportive | Champion | [approach] |

### Communication Plan
| Audience | What They Need to Know | When | Channel | Owner |
|---|---|---|---|---|
| Executive team | Status, risks, decisions needed | Weekly | Email + deck | Program DRI |
| Partner teams | Dependencies, timelines, asks | Bi-weekly | Slack + meeting | TPM |
| End users / customers | What's changing, what to do | Pre-launch | Email + docs | Comms lead |
| Internal team | Priorities, blockers, progress | Daily | Standup | Team lead |

### Resistance & Adoption Risks
[What might make people push back? How do you get ahead of it?]

### Training & Enablement
[What do teams need to learn? Who trains them? By when?]

### Launch Readiness Checklist
- [ ] All stakeholders briefed
- [ ] Training materials ready
- [ ] Support / rollback plan documented
- [ ] Success metrics baseline captured
- [ ] Go/no-go criteria defined
```

---

## Phase 7 — Operating Rhythm & Planning Cadence

**Operating Rhythm**

Define the recurring meetings and rituals that keep the program healthy.

```
## Operating Rhythm — [Program Name]

### Daily
- [Team standup] — 15 min — blockers only, async-first

### Weekly
- Program Review — 60 min — status, RAID updates, upcoming milestones
- 1:1s (DRI with each lead) — 30 min — unblock, align, trust

### Bi-Weekly
- Steering Committee — 45 min — strategic decisions, sponsor alignment
- Dependency sync — 30 min — cross-team commitments review

### Monthly
- Executive Readout — 30 min — health dashboard review, key asks
- Retrospective — 60 min — what's working, what isn't, what changes

### Quarterly
- OKR Review & Reset — 90 min — score current OKRs, set next quarter
- Planning Kickoff — full day — roadmap, priorities, resource alignment
- Portfolio Review — 60 min — cross-program health, resource rebalancing
```

**Planning Cadence Calendar**

Generate a 12-month planning calendar showing when each planning ritual happens:

| Month | Planning Activities |
|---|---|
| Jan | Q1 Kickoff, OKR finalization, resource lock |
| Feb | Mid-Q1 health check, dependency review |
| Mar | Q1 close, Q2 planning kickoff |
| Apr | Q2 start, mid-year portfolio review |
| ... | ... |

---

## Phase 8 — Portfolio Management View

If the user manages multiple programs, generate a portfolio view.

**Portfolio Health Dashboard**

```
## Portfolio Dashboard — [Org Name] — [Date]

| Program | DRI | Phase | Health | OKR Progress | Top Risk | Next Milestone |
|---|---|---|---|---|---|---|
| [Program A] | [name] | Execution | 🟢 | 70% | [risk] | [milestone + date] |
| [Program B] | [name] | Initiation | 🟡 | 20% | [risk] | [milestone + date] |
| [Program C] | [name] | Planning | 🔴 | 10% | [risk] | [milestone + date] |
```

**Portfolio Prioritization Matrix**

Score each program or initiative on two axes: **Strategic Value** (1-5) vs **Execution Complexity** (1-5).

| Initiative | Strategic Value | Complexity | Score | Recommendation |
|---|---|---|---|---|
| [A] | 5 | 2 | Invest | ✅ Accelerate |
| [B] | 4 | 4 | Monitor | 🟡 Watch closely |
| [C] | 2 | 5 | Reconsider | 🔴 Deprioritize |
| [D] | 3 | 1 | Quick Win | ⚡ Ship fast |

**Resource Allocation View**

| Team | Program A | Program B | Program C | Total Allocation | Over/Under |
|---|---|---|---|---|---|
| Eng (10 engineers) | 40% | 40% | 20% | 100% | Balanced |
| Design (3 designers) | 60% | 40% | 0% | 100% | Balanced |
| TPM | 50% | 30% | 20% | 100% | Balanced |

---

## Phase 9 — Health Dashboard (HTML)

Generate a self-contained `program-health.html` file the user can open in any browser, share via Slack, or embed in Confluence. No server needed.

The dashboard includes:

**Header**
- Program name, DRI, launch date
- Overall health signal: 🟢 On Track / 🟡 At Risk / 🔴 Needs Attention
- Last updated timestamp

**OKR Progress Panel**
- Each Objective with a progress bar
- KR-level status (On Track / Behind / At Risk)
- Trend arrow (↑ improving / → flat / ↓ declining)

**Milestone Timeline**
- Gantt-style or milestone list
- Status per milestone: Done ✅ / On Track 🟢 / At Risk 🟡 / Blocked 🔴

**RAID Summary**
- Count of open Risks / Assumptions / Issues / Dependencies by severity
- Top 3 items needing action this week

**Team Health Indicators**
- Velocity trend (if Jira connected)
- Dependency confirmation rate (% confirmed vs total)
- Meeting health (decisions made per meeting, blockers resolved)

**Decisions Needed**
- Specific asks to leadership with "impact if delayed" for each

**Design:** Dark navy (`#0f1b2d`) with blue accent (`#3b82f6`), clean card layout, print-friendly.

---

## Putting It All Together

Once all phases are complete, summarize what was built:

```
## Program Launch Package — [Program Name]

✅ Program Charter
✅ OKR Framework + Success Metrics
✅ DRI Model
✅ RACI Matrix
✅ RAID Log
✅ Governance Model
✅ Change Management Plan
✅ Operating Rhythm Calendar
✅ Portfolio Management View (if applicable)
✅ Health Dashboard (program-health.html)

Next actions:
1. Get Charter signed off by Executive Sponsor by [date]
2. Run RACI walkthrough with all DRIs by [date]
3. Send dependency asks to partner teams by [date]
4. Stand up first Program Review by [date]
5. Baseline all success metrics before launch
```

Read `references/frameworks.md` for deeper guidance on any specific framework (OKRs, DRI, RACI, change management).
