#!/bin/bash
# DSI Claude Code Setup Installer
# Installs templates, skills, and commands to ~/.claude/

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CLAUDE_DIR="$HOME/.claude"

echo "================================"
echo "DSI Claude Code Setup Installer"
echo "================================"
echo ""

# Create directories
echo "Creating ~/.claude directories..."
mkdir -p "$CLAUDE_DIR/templates"
mkdir -p "$CLAUDE_DIR/skills"
mkdir -p "$CLAUDE_DIR/commands"

# Install templates
echo "Installing templates..."
cp "$SCRIPT_DIR/templates/"*.md "$CLAUDE_DIR/templates/" 2>/dev/null || true

# Install skills (don't overwrite existing)
echo "Installing skills..."
for skill in "$SCRIPT_DIR/skills/"*.md; do
    filename=$(basename "$skill")
    if [ ! -f "$CLAUDE_DIR/skills/$filename" ]; then
        cp "$skill" "$CLAUDE_DIR/skills/"
        echo "  + $filename"
    else
        echo "  ~ $filename (already exists, skipped)"
    fi
done

# Install commands (don't overwrite existing)
echo "Installing commands..."
for cmd in "$SCRIPT_DIR/commands/"*.md; do
    filename=$(basename "$cmd")
    if [ ! -f "$CLAUDE_DIR/commands/$filename" ]; then
        cp "$cmd" "$CLAUDE_DIR/commands/"
        echo "  + $filename"
    else
        echo "  ~ $filename (already exists, skipped)"
    fi
done

echo ""
echo "================================"
echo "Installation complete!"
echo "================================"
echo ""
echo "What's installed:"
echo "  Templates: ~/.claude/templates/"
echo "  Skills:    ~/.claude/skills/"
echo "  Commands:  ~/.claude/commands/"
echo ""
echo "Quick start:"
echo "  1. cd /path/to/new/project"
echo "  2. claude \"/dsi-init\""
echo ""
echo "Available commands:"
echo "  /dsi-init  - Initialize DSI project structure"
echo ""
echo "Optional extras (in extras/ folder):"
echo "  - Polymath knowledge base commands"
echo "    Install with: cp extras/polymath-commands/*.md ~/.claude/commands/"
echo ""
