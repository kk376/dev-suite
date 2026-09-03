# Context Budgeting & Token Efficiency

The agent's context window is finite working memory. When context overflows or fills with boilerplate schemas, reasoning degrades, instructions get dropped, and hallucinations rise. High craft engineering treats the context window as a strictly managed operational budget.

---

## 1. Context Consumption Breakdown

Every agent invocation starts with substantial fixed overhead before any user message is processed:

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                          CONTEXT WINDOW ALLOCATION                          │
└─────────────────────────────────────────────────────────────────────────────┘
│ System Prompt & Agent Identity     │ ~3,000 – 6,000 tokens                  │
│ Active MCP Server Tool Schemas     │ ~500 tokens PER TOOL (e.g. 50 = 25k)   │
│ Injected Rules & Project Config   │ ~2,000 – 5,000 tokens                  │
│ Skill Metadata Catalogs            │ ~1,500 – 4,000 tokens                  │
├────────────────────────────────────┼────────────────────────────────────────┤
│ FIXED OVERHEAD BASELINE            │ ~30,000 – 45,000 tokens (15–25%)       │
├────────────────────────────────────┼────────────────────────────────────────┤
│ Working Memory (Files, Tests, Diff)│ ~80,000 – 120,000 tokens (40–60%)      │
│ Agent Reasoning & Output Headroom  │ ~35,000 – 50,000 tokens (20–25%)       │
└────────────────────────────────────┴────────────────────────────────────────┘
```

### Heuristic Token Sizing
- **Prose & Markdown**: `Word Count * 1.3 = Token Estimate`
- **Code & JSON**: `Character Count / 4 = Token Estimate`

---

## 2. The MCP Overhead Trap & The CLI-First Rule

### The Hidden Cost of MCP Tool Schemas
Each MCP tool defined in `.mcp.json` injects its full JSON schema (properties, descriptions, types, and constraints) into the agent's system prompt on **every turn**, whether invoked or not.
- A single 25-tool GitHub or AWS MCP server consumes ~12,500 tokens of fixed overhead.
- Running 4 large MCP servers consumes ~50,000 tokens (25% of a 200k window) permanently.

### The CLI-First Engineering Principle
Never use an MCP server when a standard, battle-tested terminal CLI tool exists:
- Use `git` and `gh` via bash instead of GitHub MCP.
- Use `npm`, `pnpm`, or `cargo` directly instead of package manager MCPs.
- Use `psql`, `sqlite3`, or `redis-cli` instead of database MCPs for routine queries.
- Reserve MCP servers strictly for capabilities that cannot be driven cleanly via terminal stdio (e.g. Chrome DevTools browser DOM inspection).

---

## 3. The 4 Response Depth Tiers

When answering inquiries or generating code, calibrate the response depth to the user's intent to conserve working memory:

| Level | Target Size | Content Inclusions | Content Omissions | Trigger Intent |
| :--- | :--- | :--- | :--- | :--- |
| **1. Essential (25%)** | 2–4 sentences | Direct conclusion, exact code line or fix. | Zero preamble, zero tutorial, no alternative options. | "Quick answer", "TL;DR", "al 25%", "just the fix" |
| **2. Moderate (50%)** | 1–3 paragraphs | Direct answer, load-bearing context, 1 code snippet. | Exhaustive edge cases, deep history. | Standard task prompt, default operational mode |
| **3. Detailed (75%)** | Structured report | Complete architectural explanation, trade-offs, code example with error handling. | Redundant boilerplate or extreme edge cases. | "Help me understand", "detailed plan", "full review" |
| **4. Exhaustive (100%)** | Complete spec/doc | Full multi-file plan, all alternatives, complete implementation, exhaustive test suite. | Nothing omitted. | "Exhaustive review", "write complete spec", "deep dive" |

---

## 4. Context Hygiene & Compaction Guardrails

1. **Targeted File Reads**: Never view whole 2,000-line files. Use `StartLine` and `EndLine` to read 50–100 line windows around relevant symbols.
2. **Grep Before Read**: Use `grep_search` to pinpoint exact line numbers before opening files.
3. **Purge Debug Output**: Strip massive test logs, `stdout` dumps, and repetitive stack traces from context once the root cause is identified.
4. **Context Serialization Before Compaction**: When approaching 75% context capacity, dump key findings and active ticket state into a markdown artifact (`scratch/session_state.md`) before triggering context compaction or spawning fresh subagents.
