# Framework Reference Guide

## OKRs (Objectives & Key Results)

**What they are:** OKRs separate *what* you want to achieve (Objective) from *how you'll measure it* (Key Results).

**Rules that matter:**
- Objectives are qualitative and inspirational — they answer "where are we going?"
- Key Results are quantitative and binary — either you hit the number or you didn't
- 3-5 KRs per Objective max. More than 5 and nothing is actually a priority
- KRs are outcomes, not tasks. "Launch feature X" is a task. "Increase activation rate from 40% to 60%" is a KR
- Aim for ~70% achievement. 100% means you set the bar too low
- Cadence: Set quarterly, review monthly, score at end of quarter (0.0–1.0)

**Common failure modes:**
- Too many objectives (pick 2-3 max per quarter)
- KRs that are outputs ("ship 5 features") not outcomes ("increase retention by 10%")
- No baseline — you can't measure progress without knowing where you started
- OKRs that don't cascade from company level down to team level

---

## DRI Model (Directly Responsible Individual)

**What it is:** One person owns an outcome. Not a team, not a committee — one named person.

**Why it matters:** Shared ownership is no ownership. When everyone is responsible, no one is.

**Rules:**
- Every meaningful decision, deliverable, and metric has exactly one DRI
- The DRI doesn't have to do the work — they ensure it gets done
- The DRI has the authority to make calls in their domain without consensus
- DRI ≠ doing everything alone. They delegate, coordinate, escalate — but they own the result

**Common failure modes:**
- DRI by committee ("the team owns it")
- DRI without authority (accountable but can't make decisions)
- Too many DRIs on one thing (just means no one is)

---

## RACI Matrix

**What it is:** For each decision or deliverable, defines:
- **R** — Responsible: Does the work
- **A** — Accountable: Owns the outcome, makes the final call. Only ONE person per row
- **C** — Consulted: Provides input before the decision is made (two-way communication)
- **I** — Informed: Notified after the decision (one-way)

**Rules:**
- Every row must have exactly one A
- Too many C's = decision paralysis. Be ruthless about who actually needs to be consulted
- The A and R can be the same person or different people
- Review the RACI at program kickoff with all stakeholders — misalignment here causes months of friction

**Red flags in your RACI:**
- Rows with no A
- Rows where everyone is A (same as no A)
- A person who is A on 15+ rows (overloaded)
- No I for rows that affect people's work

---

## RAID Log

**R — Risks:** Things that might go wrong. Track: description, likelihood (H/M/L), impact (H/M/L), mitigation, owner.
- A risk with no mitigation plan is just a worry. Write the plan.
- Score risks: P0 = will kill program if unmitigated, P1 = significant impact, P2 = manageable, P3 = monitor

**A — Assumptions:** Things you're betting on being true that aren't yet validated.
- Assumptions that turn out to be wrong become Issues. Review them actively.
- For each assumption: what's the validation plan? When will you know?

**I — Issues:** Problems that are already happening. Unlike risks, issues are real now.
- Every issue needs an owner and a resolution date
- Don't let issues sit in the log without a clear next action

**D — Dependencies:** What you need from other teams, and what other teams need from you.
- The most overlooked part of the RAID. Dependencies that aren't tracked become blockers that "come out of nowhere"
- For each dependency: exactly what is needed, from whom, by when, and is it confirmed?

---

## Governance Models

**When to use a light governance model:**
- Small program, single team, clear DRI
- Structure: weekly team sync + monthly stakeholder update
- Decision rights clearly with the DRI

**When to use a formal governance model:**
- Multi-team, multi-quarter, cross-org programs
- Structure: Steering Committee (executives) + Program Board (leads) + Working Groups
- Decision rights matrix required

**Steering Committee best practices:**
- Meet bi-weekly or monthly, not weekly (too frequent = rubber stamp, too infrequent = out of touch)
- Agenda: always start with health signal, then RAID highlights, then decisions needed
- Never use Steering for status updates — send those in advance. Use the time for decisions

---

## Prioritization Frameworks

**2x2 Matrix (Value vs Effort):**
- High value, low effort → Do first (quick wins)
- High value, high effort → Plan carefully, invest in (strategic bets)
- Low value, low effort → Do if capacity permits
- Low value, high effort → Don't do (kill these first)

**ICE Scoring (Impact, Confidence, Ease):**
- Score each initiative 1-10 on: Impact (how much does it move the metric?), Confidence (how sure are we?), Ease (how easy to execute?)
- ICE Score = (I + C + E) / 3
- Use to rank a backlog of initiatives quickly

**WSJF (Weighted Shortest Job First — SAFe):**
- Prioritize by: (User value + Time criticality + Risk reduction) / Job size
- Best for engineering teams with clear story points

---

## Change Management (ADKAR Model)

**A — Awareness:** Does everyone know change is coming and why?
**D — Desire:** Do they want to change? What's in it for them?
**K — Knowledge:** Do they know how to change? Training, docs, guides?
**A — Ability:** Can they actually do it? Remove barriers, practice, support
**R — Reinforcement:** What keeps the change from reverting? Incentives, accountability

**For each stakeholder group, answer all 5 questions before launch.**

The most common failures:
- Jumping to K (training) before A and D are solved — people train but don't change
- No reinforcement — change happens, then everyone reverts in 3 months
- Treating change management as a one-time event, not a continuous process

---

## Operating Rhythm Best Practices

**The right meetings for a healthy program:**

| Meeting | Purpose | Length | Cadence | Anti-pattern |
|---|---|---|---|---|
| Standup | Surface blockers | 15 min | Daily/3x | Status theater |
| Program Review | Decisions, risks | 60 min | Weekly | Slide deck recitation |
| Steering | Strategic calls | 45 min | Bi-weekly | Status update (should be async) |
| Retro | Continuous improvement | 60 min | Monthly | No action items |
| Planning | Set direction | Half/full day | Quarterly | No tradeoff conversations |

**Meeting health signals:**
- Good: Clear owner, agenda in advance, decisions documented, action items with owners and dates
- Bad: No agenda, same people talk every time, nothing decided, no notes

---

## Health Dashboard Metrics

**Leading indicators** (predict future health):
- % of dependencies confirmed
- Sprint velocity trend (up/down/flat)
- Blockers resolved per week
- Decisions made per steering meeting

**Lagging indicators** (confirm past health):
- Milestone hit rate (% on time)
- OKR achievement at end of quarter
- Stakeholder satisfaction (NPS-style survey)

**Guardrail metrics** (must not get worse):
- Team morale / engagement
- Technical debt ratio
- Customer satisfaction / support ticket volume
- Attrition on core team
