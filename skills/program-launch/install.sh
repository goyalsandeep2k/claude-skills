#!/bin/bash
set -e

SKILL_DIR="$HOME/.claude/skills/program-launch"
BASE_URL="https://raw.githubusercontent.com/goyalsandeep2k/claude-skills/main/skills/program-launch"

mkdir -p "$SKILL_DIR/references"
curl -sSL "$BASE_URL/SKILL.md" -o "$SKILL_DIR/SKILL.md"
curl -sSL "$BASE_URL/references/frameworks.md" -o "$SKILL_DIR/references/frameworks.md"

echo "✅ Program Launch Command Center installed to $SKILL_DIR"
echo "   Trigger it with: 'start a new program' or 'set up program management for [name]'"
