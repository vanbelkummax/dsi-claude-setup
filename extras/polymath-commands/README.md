# Polymath Knowledge Base Commands

These commands integrate with the Polymath knowledge base system. Only install if you have Polymath set up.

## Installation

```bash
cp *.md ~/.claude/commands/
```

## Commands

| Command | Purpose |
|---------|---------|
| `/polymath-status` | Check PostgreSQL, ChromaDB, Neo4j health |
| `/ingest <path>` | Ingest papers using unified_ingest.py |
| `/search <query>` | Hybrid search across the knowledge base |

## Requirements

- Polymath PostgreSQL database (`polymath` user)
- ChromaDB at `/home/user/polymath-repo/chromadb/`
- Polymath repo at `/home/user/polymath-repo/`
- (Optional) Neo4j at `bolt://localhost:7687`
