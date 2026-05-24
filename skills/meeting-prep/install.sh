#!/usr/bin/env bash
# Install the Meeting Prep & Action Item Triage Claude Skill
# One-liner: curl -sSL https://raw.githubusercontent.com/goyalsandeep2k/claude-skills/main/skills/meeting-prep/install.sh | bash

set -e
SKILL_DIR="${HOME}/.claude/skills/meeting-prep"
SKILL_URL="https://raw.githubusercontent.com/goyalsandeep2k/claude-skills/main/skills/meeting-prep/SKILL.md"

echo ""
echo "📅 Installing Meeting Prep & Action Item Triage"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
mkdir -p "$SKILL_DIR"
echo "→ Downloading SKILL.md..."
curl -sSL "$SKILL_URL" -o "$SKILL_DIR/SKILL.md"
echo "→ Installed to: $SKILL_DIR/SKILL.md"
echo ""
echo "✅ Meeting Prep skill installed!"
echo ""
echo "To use it, open Claude Code and say:"
echo '  "Prep me for my meeting with [person/team]"'
echo '  "Extract action items from this transcript: [paste]"'
echo '  "Post-meeting summary — here are my notes: [paste]"'
echo ""
echo "Or trigger directly with: /meeting-prep"
echo ""
