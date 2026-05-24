#!/usr/bin/env bash
# Install the PRD Generator Claude Skill
# Usage: bash install.sh
# Or one-liner: curl -sSL https://raw.githubusercontent.com/goyalsandeep2k/claude-skills/main/skills/prd-generator/install.sh | bash

set -e

SKILL_DIR="${HOME}/.claude/skills/prd-generator"
SKILL_URL="https://raw.githubusercontent.com/goyalsandeep2k/claude-skills/main/skills/prd-generator/SKILL.md"

echo ""
echo "📋 Installing PRD Generator — Production-Ready PRD from Validation Inputs"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

mkdir -p "$SKILL_DIR"

echo "→ Downloading SKILL.md..."
curl -sSL "$SKILL_URL" -o "$SKILL_DIR/SKILL.md"

echo "→ Installed to: $SKILL_DIR/SKILL.md"
echo ""
echo "✅ PRD Generator skill installed!"
echo ""
echo "To use it, open Claude Code and say:"
echo '  "Write a PRD for [your feature]"'
echo '  "Generate product requirements for [idea]"'
echo '  "Turn my validation research into a PRD"'
echo '  "Help me write acceptance criteria for [feature]"'
echo ""
echo "Or trigger directly with: /prd-generator"
echo ""
