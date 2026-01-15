# DSI Claude Code Setup

A portable setup for AI-First development using Claude Code, following Vanderbilt Data Science Institute guidelines.

## Quick Install

```bash
# Clone and install
git clone https://github.com/vanbelkummax/dsi-claude-setup.git
cd dsi-claude-setup
./install.sh
```

## What This Provides

### Templates
- **DSI_CLAUDE.md** - Structured project memory template with sections for Overview, Architecture, Conventions, Context, and Known Issues

### Skills (Auto-triggered workflows)
| Skill | Triggers When |
|-------|---------------|
| `dsi-project-setup` | Setting up new DSI-style project |
| `research-sprint` | Conducting AI-first research sprints |
| `skill-template` | Creating new project-specific skills |

### Commands (Manual invocation)
| Command | Purpose |
|---------|---------|
| `/dsi-init` | Initialize current directory as DSI project |
| `/polymath-status` | Check Polymath knowledge base health |
| `/ingest <path>` | Ingest papers into knowledge base |
| `/search <query>` | Search the knowledge base |

## Usage

### Initialize a New Project
```bash
cd /path/to/your/project
claude "/dsi-init"
```

This creates:
```
your-project/
├── CLAUDE.md           # Project memory (commit this)
├── CLAUDE.local.md     # Personal notes (gitignored)
├── .claude/
│   ├── commands/       # Project-specific commands
│   └── skills/         # Project-specific skills
└── claude_docs/        # Team reference documentation
```

### During Development
- Use `#` prefix to capture notes to memory
- Run `/polymath-status` to check system health
- Use `/search "query"` to search knowledge base
- Use `/ingest path/to/paper.pdf` to add papers

## File Locations After Install

```
~/.claude/
├── templates/
│   └── DSI_CLAUDE.md       # Project template
├── skills/
│   ├── dsi-project-setup.md
│   ├── research-sprint.md
│   └── skill-template.md
└── commands/
    ├── dsi-init.md
    ├── polymath-status.md
    ├── ingest.md
    └── search.md
```

## DSI AI-First Principles

1. **Claude Code is Primary** - Use AI as your main development partner
2. **Persistent Memory** - CLAUDE.md captures learnings across sessions
3. **Skill-Driven** - Document workflows so Claude can follow them
4. **Session Discipline** - Capture findings during work, synthesize at end

## Customization

### Add Project-Specific Skills
1. Copy `skills/skill-template.md` to your project's `.claude/skills/`
2. Rename and customize for your workflow
3. Claude will auto-trigger when it recognizes the pattern

### Add Project-Specific Commands
1. Create a markdown file in `.claude/commands/`
2. Name it `your-command.md`
3. Invoke with `/your-command`

## Resources

- [Claude Code Documentation](https://code.claude.com/docs)
- [Vanderbilt DSI AI-First Guidelines](https://github.com/vanderbilt-data-science/ai-first-template)

## License

MIT
