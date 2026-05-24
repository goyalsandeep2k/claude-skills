# Sandeep's Claude Skills

A collection of AI skills built with the [Anthropic Claude Agent SDK](https://docs.anthropic.com/). Each skill is a self-contained `SKILL.md` file that transforms Claude into a domain expert — connecting to live tools, synthesizing data, and taking action.

**By [Sandeep Goyal](https://goyalsandeep2k.github.io) · Head of TPM @ Intuit**

---

## Skills

| Skill | Command | Description | Install |
|-------|---------|-------------|---------|
| [PRD Generator](#prd-generator) | `/prd-generator` | Turn validation research into a production-ready PRD with acceptance criteria, metrics & rollout plan | [Install](#install-prd-generator) |
| [PMaaS](#pmaas--program-management-as-a-service) | `/pmaas` | End-to-end program status reporting across Jira, Smartsheet, Airtable, GitHub & Slack | [Install](#install-pmaas) |

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
