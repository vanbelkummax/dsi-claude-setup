# Knowledge Base Search

Search the Polymath knowledge base for papers, concepts, and code.

## Arguments
$ARGUMENTS - The search query

## Your Task

1. **Run hybrid search** (combines semantic + keyword):
   ```python
   import sys
   sys.path.insert(0, '/home/user/polymath-repo')
   from lib.hybrid_search_v2 import HybridSearcherV2

   searcher = HybridSearcherV2()
   results = searcher.hybrid_search('$ARGUMENTS', n=15, rerank=True)

   for r in results[:10]:
       print(f"[{r.get('score', 0):.3f}] {r.get('title', 'Unknown')} ({r.get('year', '?')})")
       print(f"   {r.get('passage_text', '')[:200]}...")
       print()
   ```

2. **If searching for code**, also query code_chunks:
   ```sql
   SELECT repo_name, file_path, LEFT(chunk_text, 300) as preview
   FROM code_chunks
   WHERE chunk_text ILIKE '%search_term%'
   LIMIT 5;
   ```

3. **Present results** with:
   - Relevance scores
   - Paper titles and years
   - Key passage excerpts
   - Code snippets if relevant

4. **Offer follow-ups**: Ask if user wants to see more results, search different terms, or dive deeper into a specific paper.
