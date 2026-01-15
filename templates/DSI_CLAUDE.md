# [Project Name]

## Overview
<!-- An executive summary (brief) of the overall goals of the project -->
<!-- What does this system maintain? What are the integration points? What are the ultimate objectives? -->

[Describe your project's goals, what problem it solves, and the key outcomes expected]

## Architecture

```
project-root/
├── .claude/           # Claude Code configuration
│   ├── commands/      # Custom slash commands
│   └── skills/        # Auto-triggered workflows
├── claude_docs/       # Reference documentation for team
├── src/               # Source code
├── tests/             # Test files
├── data/              # Data files (if applicable)
└── docs/              # Project documentation
```

<!-- Describe each folder's purpose and what goes where -->

## Conventions

### Code Style
- [Language-specific conventions]
- [Naming patterns]
- [File organization rules]

### Git Workflow
- Branch naming: `feature/description`, `fix/description`, `experiment/description`
- Commit messages: Use conventional commits (feat:, fix:, docs:, refactor:)
- PR process: [Describe review requirements]

### Testing
- [Test framework and patterns]
- [Coverage expectations]
- [How to run tests]

## Important Context

### Research Goals
<!-- For research projects: What questions are you trying to answer? -->
- [Primary research question]
- [Secondary objectives]
- [Success criteria]

### Technical Constraints
- [Hardware/resource limitations]
- [Dependencies and versions]
- [External APIs or services]

### Key Decisions
<!-- Document important architectural or methodological choices and WHY -->
| Decision | Rationale | Date |
|----------|-----------|------|
| [Choice made] | [Why this approach] | [When decided] |

## Key Commands

```bash
# Build/Run
[primary command to run the project]

# Test
[command to run tests]

# Other common operations
[additional useful commands]
```

## Known Issues & Workarounds

<!-- Document problems discovered and their solutions -->
| Issue | Workaround | Status |
|-------|------------|--------|
| [Problem description] | [Current solution] | [Needs fix / Acceptable] |

## Session Memory Capture

<!-- Use `#` prefix in Claude Code to add notes here during sessions -->
<!-- Review and organize at session end -->

### Recent Discoveries
- [Date]: [What was learned]

### Pending Questions
- [ ] [Question needing investigation]
