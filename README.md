# Sandeep's Claude Skills

A collection of AI skills built with the [Anthropic Claude Agent SDK](https://docs.anthropic.com/). Each skill is a self-contained `SKILL.md` file that transforms Claude into a domain expert — connecting to live tools, synthesizing data, and taking action.

**By [Sandeep Goyal](https://goyalsandeep2k.github.io) · Head of TPM @ Intuit**

---

## Skills

| Skill | Command | Description | Install |
|-------|---------|-------------|---------|
| [PMaaS](#pmaas--program-management-as-a-service) | `/pmaas` | End-to-end program status reporting across Jira, Smartsheet, Airtable, GitHub & Slack | [Install](#install-pmaas) |

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
