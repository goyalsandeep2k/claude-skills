# Sandeep's Claude Skills

A collection of AI skills built with the [Anthropic Claude Agent SDK](https://docs.anthropic.com/). Each skill is a self-contained `SKILL.md` file that transforms Claude into a domain expert — connecting to live tools, synthesizing data, and taking action.

**By [Sandeep Goyal](https://goyalsandeep2k.github.io) · Head of TPM @ Intuit**

---

## Skills

| Skill | Command | Description | Install |
|-------|---------|-------------|---------|
| [Meeting Prep & Action Item Triage](#meeting-prep--action-item-triage) | `/meeting-prep` | Pre-meeting brief from Slack/Jira/docs + post-meeting action item extraction from transcripts | [Install](#install-meeting-prep) |
| [Executive Status Summarizer](#executive-status-summarizer) | `/exec-status` | Translates verbose engineering updates into 🟢/🟡/🔴 one-pagers for VPs and stakeholders | [Install](#install-executive-status-summarizer) |
| [Google Slides Connector](#google-slides-connector) | `/gslides-connector` | MCP server setup + full Google Slides & Drive access natively inside Claude Code | [Install](#install-google-slides-connector) |
| [Dependency & Risk Tracker](#dependency--risk-tracker) | `/dep-risk-tracker` | Critical path analysis, cross-team dependency mapping, RAID log & mitigation strategies across programs | [Install](#install-dependency--risk-tracker) |
| [PRD Generator](#prd-generator) | `/prd-generator` | Turn validation research into a production-ready PRD with acceptance criteria, metrics & rollout plan | [Install](#install-prd-generator) |
| [PMaaS](#pmaas--program-management-as-a-service) | `/pmaas` | End-to-end program status reporting across Jira, Smartsheet, Airtable, GitHub & Slack | [Install](#install-pmaas) |

---

## Meeting Prep & Action Item Triage

**The problem:** You walk into meetings underprepared because context is scattered across Slack, Jira, and 5 Google Docs. You walk out of meetings with fuzzy notes that turn into dropped balls 48 hours later.

**The skill:** Meeting Prep works in two modes. Before a meeting it reads your connected tools and produces a targeted 3-minute brief — key points to make, attendee intel, decisions needed, and a suggested opening line. After a meeting it parses the transcript and outputs a structured action item table with specific tasks, named owners, deadlines, and priority — nothing left as "the team will follow up."

### What it produces

**Pre-meeting brief:**
- Your goal for the meeting in one line
- 60-second context summary
- Who's in the room and what they care about
- Key points to make (with supporting data)
- Decisions needed and who owns them
- Watch-outs and how to handle them
- Suggested opening line

**Post-meeting summary:**
- Decisions made (with who agreed)
- Action item table: task · owner · due date · priority
- Open questions with owners and deadlines
- Parking lot items for future meetings

### Trigger phrases

```
"Prep me for my meeting with [person/team]"
"I have a sync in 30 minutes about [topic] — brief me"
"Extract action items from this transcript: [paste]"
"Here are my meeting notes — turn them into tasks"
"What came out of that meeting?"
```

---

## Install Meeting Prep

### One-liner
```bash
curl -sSL https://raw.githubusercontent.com/goyalsandeep2k/claude-skills/main/skills/meeting-prep/install.sh | bash
```

### Manual
```bash
mkdir -p ~/.claude/skills/meeting-prep
curl -sSL https://raw.githubusercontent.com/goyalsandeep2k/claude-skills/main/skills/meeting-prep/SKILL.md \
  -o ~/.claude/skills/meeting-prep/SKILL.md
```

---

## Executive Status Summarizer

**The problem:** Engineering standups are written for engineers. Your VP has 90 seconds and needs to know: are we on track, what's the risk, and what do they need to decide? Translating between these two worlds manually every week is a tax on every TPM and EM.

**The skill:** Exec Status Summarizer takes whatever raw content you have — standup notes, Jira export, sprint report, Slack thread — and produces a clean 🟢/🟡/🔴 one-pager. It cuts the jargon, calls the status honestly, surfaces the real risks, and always ends with a crisp "decisions needed from leadership" section. Output in text, email, Slack, or Word.

### What it produces

- **Overall health signal** — 🟢 On Track / 🟡 At Risk / 🔴 Needs Attention
- **One-line summary** — the single most important thing leadership needs to know
- **This week / Next week** — accomplishments and upcoming milestones as business outcomes
- **Key metrics table** — with target vs. actual and per-metric status
- **Top risks** — honest, named, with mitigation owner
- **Decisions needed** — specific asks with "impact if delayed" for each
- **Output formats** — ready-to-send email, Slack message, HTML one-pager, or Word doc

### Translation examples

| Engineering writes | Exec summary says |
|---|---|
| "Refactoring the auth service" | "Improving login reliability" |
| "PRs stacking up due to review bandwidth" | "Code review is a bottleneck — being addressed" |
| "Blocked on API contract" | "Launch depends on [Team X] — not yet confirmed" |
| "Velocity dropped this sprint" | "Team shipped 30% less than planned this week" |

### Trigger phrases

```
"Translate this for my VP: [paste notes]"
"Make this exec-ready: [paste sprint update]"
"Write my weekly status report"
"Red yellow green summary for leadership"
"Summarize this standup for stakeholders"
```

---

## Install Executive Status Summarizer

### One-liner
```bash
curl -sSL https://raw.githubusercontent.com/goyalsandeep2k/claude-skills/main/skills/exec-status/install.sh | bash
```

### Manual
```bash
mkdir -p ~/.claude/skills/exec-status
curl -sSL https://raw.githubusercontent.com/goyalsandeep2k/claude-skills/main/skills/exec-status/SKILL.md \
  -o ~/.claude/skills/exec-status/SKILL.md
```

---

## Google Slides Connector

**The problem:** Google Slides presentations live outside Claude. Reading a 90-slide deck means opening it in a browser, copy-pasting content, losing formatting, and repeating for every deck. There's no native way for Claude to access your Drive.

**The skill:** Google Slides Connector walks you through setting up a live MCP (Model Context Protocol) server — the standard protocol Claude uses to connect to external tools. Once configured, Claude can read any presentation you have access to, search your Drive, extract speaker notes, and synthesize across multiple decks, all from a single prompt.

### What it enables

- **Deck summaries** — exec brief or slide-by-slide notes in seconds
- **Decision extraction** — pulls key decisions, open questions, and action items
- **Cross-deck analysis** — compares multiple presentations, flags contradictions
- **Drive search** — finds presentations by topic or keyword across your workspace
- **Speaker notes extraction** — reads notes that aren't visible in slides view
- **Summary exports** — generates Markdown or Word doc summaries

### Setup paths

| Setup | Best for |
|-------|---------|
| `gws` CLI (npm) | Quick setup, personal or Workspace accounts |
| Python MCP server | Persistent server, teams, Claude Code integration |

### Trigger phrases

```
"Connect Google Slides to Claude"
"Set up the gslides MCP"
"Summarize the deck at [URL]"
"Read my presentation about [topic]"
"Search my Drive for [topic] presentations"
"Extract decisions from this deck: [URL]"
```

---

## Install Google Slides Connector

### One-liner (recommended)

```bash
curl -sSL https://raw.githubusercontent.com/goyalsandeep2k/claude-skills/main/skills/gslides-connector/install.sh | bash
```

### Manual install

```bash
mkdir -p ~/.claude/skills/gslides-connector
curl -sSL https://raw.githubusercontent.com/goyalsandeep2k/claude-skills/main/skills/gslides-connector/SKILL.md \
  -o ~/.claude/skills/gslides-connector/SKILL.md
```

After installing, open Claude Code and say: `"Connect Google Slides"` — the skill walks you through the full MCP setup.

---

## Dependency & Risk Tracker

**The problem:** Risks live in Jira comments. Dependencies live in someone's head. The critical path lives in a spreadsheet nobody updates. By the time a blocker surfaces in a standup, it's already a crisis.

**The skill:** Dep & Risk Tracker pulls data from all your tools, maps what every team depends on from every other team, identifies which items are truly on the critical path, and generates specific mitigation strategies — not "monitor closely" — with named owners and deadlines. Then it puts everything in a filterable RAID dashboard you can share with leadership or update weekly.

### What it produces

- **Risk Summary** — all risks scored by Impact × Likelihood → P0/P1/P2/P3
- **Critical Path flags** — only the items where a slip = launch slip
- **Dependency Map** — cross-program matrix showing Confirmed / Unconfirmed / Blocked by team
- **Full RAID Log** — Risks, Assumptions, Issues, Dependencies — each with owner, due date, mitigation, and contingency
- **This Week's Actions** — P0 + P1 items formatted as a checkbox action list
- **Escalation Tracker** — items that need leadership decision, with escalation path
- **HTML Dashboard** — filterable by program and priority; self-contained file for Slack or email
- **Recurring updates** — tell it "close R-03" or "add new program" and it updates the tracker

### Trigger phrases

```
"Track risks across my programs"
"Build a RAID log for [program name]"
"Show me all cross-team dependencies"
"What is on the critical path for [launch]?"
"Flag everything that could delay the Q3 release"
"Generate a mitigation plan for my blockers"
"Who is blocking who across my workstreams?"
```

Or directly: `/dep-risk-tracker`

### Connected tools

| Tool | What it pulls |
|------|--------------|
| **Jira** | Blocked tickets, epic status, sprint velocity |
| **Smartsheet** | Milestone dates, task owners, % complete |
| **Airtable** | Roadmap dependencies, RAID items |
| **GitHub** | Open PRs, stale branches, CI failures |
| **Slack** | Blocker signals: "blocked", "waiting on", "pushed", "delayed" |
| **Confluence / Google Docs** | Open decisions, assumption logs, prior RAIDs |

---

## Install Dependency & Risk Tracker

### One-liner (recommended)

```bash
curl -sSL https://raw.githubusercontent.com/goyalsandeep2k/claude-skills/main/skills/dep-risk-tracker/install.sh | bash
```

### Manual install

```bash
mkdir -p ~/.claude/skills/dep-risk-tracker
curl -sSL https://raw.githubusercontent.com/goyalsandeep2k/claude-skills/main/skills/dep-risk-tracker/SKILL.md \
  -o ~/.claude/skills/dep-risk-tracker/SKILL.md
```

---

## PRD Generator

**The problem:** You've done the discovery. You have interview notes, survey results, maybe a Loom or a rough brief — but turning that into a structured PRD that engineering can actually act on takes hours and always feels like you're reinventing the same template.

**The skill:** PRD Generator takes whatever you have — research notes, a rough idea, even just a few bullet points — and produces a complete, engineering-ready PRD: problem statement, user stories, functional requirements with Given/When/Then acceptance criteria, SMART success metrics, phased rollout plan, and a risk/dependency table.

### What it produces

- **Executive Summary** — 30-second context for any stakeholder
- **Problem Statement** — user + business problem, evidence, before/after picture
- **Goals & Non-Goals** — what's in and explicitly out of scope
- **User Personas & Use Cases** — personas + user stories in standard format
- **Functional Requirements** — P0/P1/P2 priority, description, and testable acceptance criteria (Given/When/Then)
- **Non-Functional Requirements** — performance, accessibility, security, uptime
- **Success Metrics** — primary KPI, secondary indicators, guardrail metrics in a measurement table
- **Phased Roll-Out Plan** — Alpha → Closed Beta → Controlled Ramp → GA with exit criteria
- **Dependencies & Risks** — table with owner, impact, and mitigation
- **Open Questions** — numbered, with owner and due date
- **Export** — Markdown file or Word (.docx)

### Trigger phrases

```
"Write a PRD for [feature]"
"Turn my validation research into a PRD"
"Generate product requirements for [idea]"
"Help me write acceptance criteria for [feature]"
"Create a product spec for engineering handoff"
"I have user research — help me structure a PRD"
```

Or directly: `/prd-generator`

---

## PMaaS — Program Management as a Service

**The problem:** Program status lives scattered across Jira, Smartsheet, Airtable, GitHub, and Slack. Every weekly review means manually hunting across 10 tabs, copy-pasting into a doc, and hoping you didn't miss anything.

**The skill:** PMaaS connects to all your tools, pulls live data, synthesizes it like an experienced TPM, and generates a polished HTML status report — risks, milestones, project tracking, and meeting prep — in one shareable command.

### What it does

1. **Onboards your program** — asks for your tools (Jira, Smartsheet, Airtable, GitHub, Slack) and launch date
2. **Pulls data across four domains** — Milestones, Active Work & Velocity, Risks & Blockers, Meeting Pulse
3. **Synthesizes like a TPM** — honest health signal (🟢/🟡/🔴), top risks surfaced, launch credibility check
4. **Generates a polished HTML report** — self-contained file you can email, Slack, or drop in a Google Doc

### Example output

The generated report includes:
- **Executive summary** (3 bullets, stakeholder-ready)
- **Milestone timeline** with status badges (On Track / At Risk / Blocked / Done)
- **Risk cards** with impact, likelihood, owner, and mitigation
- **Project tracking table** with velocity summary
- **Meeting prep Q&A** — the questions your VP will ask, with honest answers
- **Suggested agenda** for the next program review

### Trigger phrases

```
"Set up PMaaS for the Supernova launch"
"Create a status report for my Q3 platform program"
"I need a program command center for the new AI feature rollout"
"Help me prep for my program review on Friday"
"Pull together everything from Jira and Slack into one status page"
```

Or directly: `/pmaas`

### Connected tools

| Tool | What it pulls |
|------|--------------|
| **Jira** | Epics, sprint tasks, blocked tickets, velocity |
| **Smartsheet** | Project plan milestones, task status, owners |
| **Airtable** | Roadmap items, feature tracking |
| **GitHub** | Open PRs, stale branches, CI status, recent commits |
| **Slack** | Risk signals, decisions made, blockers mentioned |
| **Confluence / Google Docs** | PRDs, specs, decision logs |

---

## Install PRD Generator

### One-liner (recommended)

```bash
curl -sSL https://raw.githubusercontent.com/goyalsandeep2k/claude-skills/main/skills/prd-generator/install.sh | bash
```

### Manual install

```bash
mkdir -p ~/.claude/skills/prd-generator
curl -sSL https://raw.githubusercontent.com/goyalsandeep2k/claude-skills/main/skills/prd-generator/SKILL.md \
  -o ~/.claude/skills/prd-generator/SKILL.md
```

---

## Install PMaaS

### One-liner (recommended)

```bash
curl -sSL https://raw.githubusercontent.com/goyalsandeep2k/claude-skills/main/skills/pmaas/install.sh | bash
```

### Manual install

```bash
mkdir -p ~/.claude/skills/pmaas
curl -sSL https://raw.githubusercontent.com/goyalsandeep2k/claude-skills/main/skills/pmaas/SKILL.md \
  -o ~/.claude/skills/pmaas/SKILL.md
```

### Requirements

- [Claude Code](https://claude.ai/download) (the CLI/desktop app)
- MCP tools connected for the tools you use (Jira, GitHub, Slack MCPs available in Claude's MCP registry)
- The skill works with whatever tools you have — if you only have Jira and Slack, it'll use those

---

## How Claude Skills work

Skills are `SKILL.md` files that live in `~/.claude/skills/<skill-name>/`. When Claude Code starts, it reads the skill metadata (name + description) from every file in that directory. When you say something that matches the skill's trigger, Claude loads the full skill and follows its instructions.

```
~/.claude/skills/
└── pmaas/
    └── SKILL.md    ← the skill lives here
```

Skills can include scripts, reference files, and other assets — but PMaaS is a single-file skill. No dependencies, no configuration beyond connecting your tools.

---

## More skills

More skills are in active development. Watch this repo for updates, or see the full showcase at **[goyalsandeep2k.github.io](https://goyalsandeep2k.github.io/#claude-skills)**.

---

*Built with the [Anthropic Claude Agent SDK](https://docs.anthropic.com/) · [Medium article on PMaaS](https://medium.com/@goyalsandeep2k)*
