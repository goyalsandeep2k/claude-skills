#!/usr/bin/env bash
# Install the Dependency & Risk Tracker Claude Skill
# Usage: bash install.sh
# Or one-liner: curl -sSL https://raw.githubusercontent.com/goyalsandeep2k/claude-skills/main/skills/dep-risk-tracker/install.sh | bash

set -e

SKILL_DIR="${HOME}/.claude/skills/dep-risk-tracker"
SKILL_URL="https://raw.githubusercontent.com/goyalsandeep2k/claude-skills/main/skills/dep-risk-tracker/SKILL.md"

echo ""
echo "🔍 Installing Dependency & Risk Tracker"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

mkdir -p "$SKILL_DIR"

echo "→ Downloading SKILL.md..."
curl -sSL "$SKILL_URL" -o "$SKILL_DIR/SKILL.md"

echo "→ Installed to: $SKILL_DIR/SKILL.md"
echo ""
echo "✅ Dependency & Risk Tracker installed!"
echo ""
echo "To use it, open Claude Code and say:"
echo '  "Track risks across my programs"'
echo '  "Build a RAID log for [program name]"'
echo '  "Show me cross-team dependencies"'
echo '  "What is on the critical path for [launch]?"'
echo '  "Generate a mitigation plan for my blockers"'
echo ""
echo "Or trigger directly with: /dep-risk-tracker"
echo ""
