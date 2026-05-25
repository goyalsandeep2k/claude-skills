#!/bin/bash
set -e

SKILL_DIR="$HOME/.claude/skills/annual-planning"
RAW_URL="https://raw.githubusercontent.com/goyalsandeep2k/claude-skills/main/skills/annual-planning/SKILL.md"

mkdir -p "$SKILL_DIR"
curl -sSL "$RAW_URL" -o "$SKILL_DIR/SKILL.md"

echo "✅ Annual Planning Orchestrator installed to $SKILL_DIR"
echo "   Trigger it with: 'start annual planning' or 'map my planning dependencies'"
