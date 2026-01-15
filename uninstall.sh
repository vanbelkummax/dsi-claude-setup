#!/bin/bash
# DSI Claude Code Setup Uninstaller
# Removes only the files installed by this package

set -e

CLAUDE_DIR="$HOME/.claude"

echo "================================"
echo "DSI Claude Code Setup Uninstaller"
echo "================================"
echo ""

# Files to remove
TEMPLATES=(
    "DSI_CLAUDE.md"
)

SKILLS=(
    "dsi-project-setup.md"
    "research-sprint.md"
    "skill-template.md"
)

COMMANDS=(
    "dsi-init.md"
    "polymath-status.md"
    "ingest.md"
    "search.md"
)

echo "Removing templates..."
for f in "${TEMPLATES[@]}"; do
    if [ -f "$CLAUDE_DIR/templates/$f" ]; then
        rm "$CLAUDE_DIR/templates/$f"
        echo "  - $f"
    fi
done

echo "Removing skills..."
for f in "${SKILLS[@]}"; do
    if [ -f "$CLAUDE_DIR/skills/$f" ]; then
        rm "$CLAUDE_DIR/skills/$f"
        echo "  - $f"
    fi
done

echo "Removing commands..."
for f in "${COMMANDS[@]}"; do
    if [ -f "$CLAUDE_DIR/commands/$f" ]; then
        rm "$CLAUDE_DIR/commands/$f"
        echo "  - $f"
    fi
done

echo ""
echo "Uninstall complete!"
echo "Note: Empty directories were not removed."
echo ""
