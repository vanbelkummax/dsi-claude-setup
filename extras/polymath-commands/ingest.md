# Paper Ingestion Command

Ingest a paper or batch of papers into the Polymath knowledge base.

## Arguments
$ARGUMENTS - Path to PDF file or directory, or DOI

## Your Task

1. **Validate the input**: Check if the path exists or if it's a DOI
2. **Check disk space**: Run `df -h /` and warn if >85% used
3. **Run appropriate ingestion**:

   For a single PDF:
   ```bash
   python3 /home/user/polymath-repo/lib/unified_ingest.py "$ARGUMENTS" --enhanced-parser
   ```

   For a directory:
   ```bash
   python3 /home/user/polymath-repo/scripts/batch_ingest.py "$ARGUMENTS"
   ```

4. **Verify success**: Query the database to confirm the document was added:
   ```bash
   psql -U polymath -d polymath -c "SELECT doc_id, title, year FROM documents ORDER BY doc_id DESC LIMIT 3;"
   ```

5. **Report**: Tell the user the doc_id, title, and passage count of the ingested paper(s)

## Important Notes
- Always use `--enhanced-parser` for better passage extraction
- Never ingest from `/mnt/` paths - copy files to `/home/user/` first
- Staging directory: `/home/user/work/polymax/ingest_staging/`
