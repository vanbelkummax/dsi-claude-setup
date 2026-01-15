# Polymath System Status Check

Check the health and status of all Polymath knowledge base components.

## Your Task

Run comprehensive diagnostics on the Polymath system:

1. **Check PostgreSQL**:
   ```bash
   psql -U polymath -d polymath -c "
     SELECT 'documents' as table_name, COUNT(*) as count FROM documents
     UNION ALL SELECT 'passages', COUNT(*) FROM passages
     UNION ALL SELECT 'passage_concepts', COUNT(*) FROM passage_concepts
     UNION ALL SELECT 'code_chunks', COUNT(*) FROM code_chunks;"
   ```

2. **Check ChromaDB**:
   ```bash
   ls -la /home/user/polymath-repo/chromadb/
   python3 -c "import chromadb; c = chromadb.PersistentClient('/home/user/polymath-repo/chromadb'); print(f'Collections: {[col.name for col in c.list_collections()]}')"
   ```

3. **Check Neo4j** (if running):
   ```bash
   curl -s -u neo4j:polymathic2026 http://localhost:7474/db/neo4j/tx/commit -H "Content-Type: application/json" -d '{"statements":[{"statement":"MATCH (n) RETURN count(n) as nodes"}]}' 2>/dev/null || echo "Neo4j not responding"
   ```

4. **Check Disk Space**:
   ```bash
   df -h / | tail -1
   ```

5. **Check for Running Batch Jobs**:
   ```bash
   python3 /home/user/polymath-repo/scripts/batch_concept_extraction_async.py --status 2>/dev/null || echo "No batch status available"
   ```

Present results in a clear summary table showing:
- Component status (OK/Warning/Error)
- Key metrics (counts, disk usage)
- Any issues requiring attention
