#!/usr/bin/env bash
# Install the Executive Status Summarizer Claude Skill
# One-liner: curl -sSL https://raw.githubusercontent.com/goyalsandeep2k/claude-skills/main/skills/exec-status/install.sh | bash

set -e
SKILL_DIR="${HOME}/.claude/skills/exec-status"
SKILL_URL="https://raw.githubusercontent.com/goyalsandeep2k/claude-skills/main/skills/exec-status/SKILL.md"

echo ""
echo "📊 Installing Executive Status Summarizer"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
mkdir -p "$SKILL_DIR"
echo "→ Downloading SKILL.md..."
curl -sSL "$SKILL_URL" -o "$SKILL_DIR/SKILL.md"
echo "→ Installed to: $SKILL_DIR/SKILL.md"
echo ""
echo "✅ Executive Status Summarizer installed!"
echo ""
echo "To use it, open Claude Code and say:"
echo '  "Translate this for my VP: [paste engineering notes]"'
echo '  "Make this exec-ready: [paste standup/sprint notes]"'
echo '  "Write my weekly status report"'
echo ""
echo "Or trigger directly with: /exec-status"
echo ""
