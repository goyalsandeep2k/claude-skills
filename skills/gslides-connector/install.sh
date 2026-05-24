#!/usr/bin/env bash
# Install the Google Slides MCP Connector Claude Skill
# Usage: bash install.sh
# Or one-liner: curl -sSL https://raw.githubusercontent.com/goyalsandeep2k/claude-skills/main/skills/gslides-connector/install.sh | bash

set -e

SKILL_DIR="${HOME}/.claude/skills/gslides-connector"
SKILL_URL="https://raw.githubusercontent.com/goyalsandeep2k/claude-skills/main/skills/gslides-connector/SKILL.md"

echo ""
echo "📑 Installing Google Slides MCP Connector"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

mkdir -p "$SKILL_DIR"

echo "→ Downloading SKILL.md..."
curl -sSL "$SKILL_URL" -o "$SKILL_DIR/SKILL.md"

echo "→ Installed to: $SKILL_DIR/SKILL.md"
echo ""
echo "✅ Google Slides Connector installed!"
echo ""
echo "Next step — connect Google Slides to Claude:"
echo '  Open Claude Code and say: "Connect Google Slides"'
echo '  or: "Set up gslides MCP"'
echo ""
echo "Once connected, try:"
echo '  "Summarize the deck at [Google Slides URL]"'
echo '  "Extract key decisions from this presentation"'
echo '  "Search my Drive for decks about [topic]"'
echo ""
echo "Or trigger directly with: /gslides-connector"
echo ""
