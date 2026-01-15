# DSI AI-First Development Quick Start

## What is AI-First Development?

AI-First development means using Claude Code as your primary coding tool, with the AI assisting throughout the entire development process rather than just for isolated tasks.

## Key Concepts

### 1. Project Memory (CLAUDE.md)
- **What**: A markdown file that gives Claude context about your project
- **Where**: Root of your project directory
- **Why**: Claude doesn't remember past sessions - CLAUDE.md is persistent memory

### 2. Skills (`.claude/skills/`)
- **What**: Documented workflows that Claude follows automatically
- **When**: Triggered when Claude recognizes relevant tasks
- **How**: Write markdown files describing step-by-step processes

### 3. Commands (`.claude/commands/`)
- **What**: Custom slash commands for common operations
- **When**: Invoked manually with `/command-name`
- **How**: Create markdown files with instructions for Claude

## Getting Started

### Initialize a New DSI Project
```bash
cd /path/to/your/project
claude "/dsi-init"
```

### Available Commands

| Command | Description |
|---------|-------------|
| `/dsi-init` | Initialize DSI project structure |
| `/polymath-status` | Check Polymath system health |
| `/ingest <path>` | Ingest paper into knowledge base |
| `/search <query>` | Search the knowledge base |

### Session Best Practices

1. **Start sessions** by reviewing CLAUDE.md context
2. **Capture learnings** with `#` prefix (adds to memory)
3. **End sessions** by organizing notes into CLAUDE.md
4. **Use TodoWrite** for complex multi-step tasks

## File Hierarchy

```
~/.claude/
├── CLAUDE.md          # User-level preferences (all projects)
├── settings.json      # Global Claude Code settings
├── skills/            # User-level skills
├── commands/          # User-level commands
└── templates/         # Project templates

./project/
├── CLAUDE.md          # Project memory (committed)
├── CLAUDE.local.md    # Personal notes (gitignored)
└── .claude/
    ├── skills/        # Project-specific skills
    └── commands/      # Project-specific commands
```

## Resources

- [Claude Code Documentation](https://code.claude.com/docs)
- DSI AI-First Sprint Guidelines (contact DSI for PDF)
- DSI AI-First Workflow Guide (contact DSI for PDF)
