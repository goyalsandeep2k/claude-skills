#!/usr/bin/env bash
# Install the PMaaS Claude Skill
# Usage: bash install.sh
# Or one-liner: curl -sSL https://raw.githubusercontent.com/goyalsandeep2k/claude-skills/main/skills/pmaas/install.sh | bash

set -e

SKILL_DIR="${HOME}/.claude/skills/pmaas"
SKILL_URL="https://raw.githubusercontent.com/goyalsandeep2k/claude-skills/main/skills/pmaas/SKILL.md"

echo ""
echo "🚀 Installing PMaaS — Program Management as a Service"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# Create skill directory
mkdir -p "$SKILL_DIR"

# Download SKILL.md
echo "→ Downloading SKILL.md..."
curl -sSL "$SKILL_URL" -o "$SKILL_DIR/SKILL.md"

echo "→ Installed to: $SKILL_DIR/SKILL.md"
echo ""
echo "✅ PMaaS skill installed!"
echo ""
echo "To use it, open Claude Code and say:"
echo '  "Set up PMaaS for my [program name]"'
echo '  "Create a status report for my Q3 launch"'
echo '  "Help me prep for my program review"'
echo ""
echo "Or trigger directly with: /pmaas"
echo ""
