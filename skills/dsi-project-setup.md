---
name: dsi-project-setup
description: Use when setting up a new DSI AI-First project or initializing DSI structure
---

# DSI Project Setup Skill

## Purpose
Use this skill when:
- User says "new DSI project", "setup AI-first project", or "initialize DSI"
- User wants to create proper Claude Code structure for a project
- User mentions following DSI guidelines

## Required Structure

Every DSI AI-First project should have:

```
project/
├── CLAUDE.md              # Project memory (from template)
├── CLAUDE.local.md        # Personal notes (gitignored)
├── .claude/
│   ├── commands/          # Custom slash commands
│   └── skills/            # Project-specific skills
├── claude_docs/           # Team reference docs
│   ├── 00_getting_started.md
│   └── [topic_docs].md
└── .gitignore             # Include CLAUDE.local.md
```

## Setup Steps

1. **Copy DSI Template**
   ```bash
   cp ~/.claude/templates/DSI_CLAUDE.md ./CLAUDE.md
   ```

2. **Create Directory Structure**
   ```bash
   mkdir -p .claude/commands .claude/skills claude_docs
   ```

3. **Create Local Memory File**
   ```bash
   touch CLAUDE.local.md
   echo "# Local Session Notes" > CLAUDE.local.md
   ```

4. **Update .gitignore**
   ```bash
   echo "CLAUDE.local.md" >> .gitignore
   ```

5. **Customize CLAUDE.md**
   - Fill in project name and overview
   - Document architecture decisions
   - Add key commands

## DSI Principles

- **AI-First**: Claude Code is primary development tool
- **Persistent Memory**: CLAUDE.md captures learnings across sessions
- **Skill-Driven**: Common workflows are documented as skills
- **Team-Aligned**: Project CLAUDE.md is shared; local notes are personal

## Before Committing

- [ ] CLAUDE.md exists with project-specific content
- [ ] .claude/ directory structure created
- [ ] CLAUDE.local.md added to .gitignore
- [ ] Team members briefed on CLAUDE.md purpose
