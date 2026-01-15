# DSI AI-First Project Initialization

Initialize this directory as a DSI AI-First project with proper Claude Code structure.

## Your Task

Set up the following structure in the current directory:

1. **Copy the DSI CLAUDE.md template**:
   ```bash
   cp ~/.claude/templates/DSI_CLAUDE.md ./CLAUDE.md
   ```

2. **Create the .claude directory structure**:
   ```bash
   mkdir -p .claude/commands .claude/skills
   ```

3. **Create claude_docs for team reference**:
   ```bash
   mkdir -p claude_docs
   ```

4. **Create local memory file** (gitignored):
   ```bash
   echo "# Local Session Notes\n\nPersonal notes that don't get committed.\n" > CLAUDE.local.md
   ```

5. **Update .gitignore**:
   ```bash
   echo "\n# Claude Code local files\nCLAUDE.local.md" >> .gitignore
   ```

6. **Create a starter skill template**:
   ```bash
   cp ~/.claude/skills/skill-template.md .claude/skills/
   ```

After creating the structure:
- Open CLAUDE.md and ask the user to fill in the project-specific sections
- Explain what each directory is for
- Remind them to commit the shared files and gitignore the local ones

## DSI Guidelines Summary

- **CLAUDE.md**: Shared project memory - commit this
- **CLAUDE.local.md**: Personal notes - gitignored
- **.claude/commands/**: Project-specific slash commands
- **.claude/skills/**: Auto-triggered workflow documentation
- **claude_docs/**: Reference documentation for team onboarding
