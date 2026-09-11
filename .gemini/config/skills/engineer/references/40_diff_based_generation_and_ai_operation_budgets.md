# Diff-Based AI Generation, Monotonic Operation Budgets & Server Action Security

A deterministic production standard for generative AI pipelines, asynchronous deadline budgeting, full-stack Next.js App Router security, and Swiss International design architecture. Synthesized from battle-tested production patterns in `srbhr/Resume-Matcher`.

---

## 1. Diff-Based Generation vs. Full-Document Generation

### The Core Anti-Hallucination Law
When an LLM is asked to output an entire document, schema, code file, or resume while applying improvements, it must reproduce 80–90% of content that was already correct. Every reproduced field is a distinct vector for hallucination.

### The 10 Hallucination Vectors of Full Generation

| # | Hallucination Vector | Symptom in Full Output | Diff-Based Prevention |
|---|---|---|---|
| **1** | **Dropped Entries** | Work history, education, or code functions silently disappear from output | **Eliminated**: Original structure is immutable base; entries cannot be dropped |
| **2** | **Fabricated Facts & Skills** | LLM invents skills, tools, or libraries not possessed or requested | **Blocked**: Changes are explicit diff items; verified against source & JD |
| **3** | **Renamed Entities** | Companies, colleges, API endpoints, or database tables subtly modified | **Blocked**: Identity fields are hard-blacklisted in local applier |
| **4** | **Invented Metrics** | LLM manufactures statistics ("improved efficiency by 42%") | **Verifiable**: Local verifier flags new numbers not present in original |
| **5** | **Date / Version Truncation** | "Jan 2023 – Mar 2024" compressed to "2023 – 2024" or versions dropped | **Eliminated**: Date/version fields are immutable in applier |
| **6** | **PII & Metadata Leaks** | Personal info, emails, IDs mutated or omitted | **Eliminated**: Sensitive top-level fields blocked from LLM mutation |
| **7** | **Over-Elaboration** | Verbose fluff inflates token count and doubles document length | **Contained**: Only explicitly targeted text nodes can change |
| **8** | **AI Cliché Phrasing** | Pervasive buzzwords ("spearheaded", "leveraged", "orchestrated") | **Contained**: Small blast radius; targeted regex filters run locally |
| **9** | **Schema / Section Sprawl** | Hallucinated custom sections or unexpected JSON keys | **Eliminated**: Schema keys strictly restricted; unexpected paths rejected |
| **10** | **Context Bleed** | Target entity names from prompt/JD leak into candidate's historical experience | **Verifiable**: Diff targets inspected against prompt entity lists |

---

### The Targeted Diff Schema

Instead of returning a full JSON document or rewritten markdown file, the LLM outputs a list of structured atomic changes:

```python
from typing import Literal
from pydantic import BaseModel, Field

class TargetedChange(BaseModel):
    """A single atomic change the LLM proposes to make."""
    path: str = Field(
        ..., 
        description="Dot-notation or array path to target node (e.g. 'workExperience[0].highlights[2]')"
    )
    action: Literal["replace", "append", "reorder", "add_item"] = Field(
        ..., 
        description="The atomic operation to perform"
    )
    original: str | None = Field(
        None, 
        description="Exact original text being replaced (used for verification)"
    )
    value: str | list[str] = Field(
        ..., 
        description="New replacement text or items"
    )
    reason: str = Field(
        ..., 
        description="Technical justification grounded strictly in verified source requirements"
    )
```

---

### The Deterministic Local Applier & Invariant Boundaries

The LLM is treated as an untrusted proposer. A deterministic local applier enforces non-negotiable boundaries:

```python
# Non-negotiable paths that the LLM is prohibited from modifying
IMMUTABLE_PATH_PREFIXES = {
    "personalInfo",
    "contact",
    "workExperience.*.company",
    "workExperience.*.startDate",
    "workExperience.*.endDate",
    "education.*.institution",
    "education.*.degree",
    "credentials",
}

def apply_diffs(original_doc: dict, proposed_diffs: list[TargetedChange]) -> tuple[dict, list[str]]:
    """
    Applies proposed diffs to an immutable clone of the original document.
    Returns (modified_doc, rejected_reasons).
    """
    import copy, re
    modified = copy.deepcopy(original_doc)
    rejected = []

    for diff in proposed_diffs:
        # 1. Invariant: Block immutable path modification
        if any(re.match(pattern.replace("*", r"\d+"), diff.path) for pattern in IMMUTABLE_PATH_PREFIXES):
            rejected.append(f"Rejected {diff.path}: modifying identity/date fields is forbidden.")
            continue

        # 2. Invariant: Verify original content matches (prevents stale drift)
        if diff.original:
            current_val = resolve_path(modified, diff.path)
            if current_val != diff.original:
                rejected.append(f"Rejected {diff.path}: original content mismatch.")
                continue

        # 3. Invariant: Metric Ground-Truth Check
        if diff.action in ("replace", "append") and isinstance(diff.value, str):
            orig_numbers = set(re.findall(r"\b\d+(?:\.\d+)?%?\b", diff.original or ""))
            new_numbers = set(re.findall(r"\b\d+(?:\.\d+)?%?\b", diff.value))
            invented_numbers = new_numbers - orig_numbers
            if invented_numbers:
                rejected.append(f"Rejected {diff.path}: invented metrics detected: {invented_numbers}")
                continue

        # 4. Safe application
        set_path_value(modified, diff.path, diff.value, diff.action)

    return modified, rejected
```

---

### Two-Phase Planning & Editing Pipeline

```
┌────────────────────────┐      ┌─────────────────────────┐      ┌─────────────────────────┐
│  Phase 1: Planning     │ ───► │  Local Verifier Filter  │ ───► │  Phase 2: Targeted Diff │
│  (LLM extracts target  │      │  (Allows grounded items,│      │  (Applies verified      │
│   skills / goals)      │      │   purges hallucinations)│      │   targets via diffs)    │
└────────────────────────┘      └─────────────────────────┘      └─────────────────────────┘
```

1. **Phase 1 (Planning)**: Call LLM with strict JSON schema to generate a high-level target plan (e.g. candidate skills to highlight or bullet points to improve).
2. **Local Verification**: Deterministically intersect targets against external ground-truth constraints (e.g. keywords in target job description or verified portfolio accomplishments). Unsupported items are dropped before editing begins.
3. **Phase 2 (Targeted Diff Execution)**: Pass *only the approved target plan* into the diff generation prompt. The LLM generates surgical diffs matching verified goals.

---

## 2. Monotonic AI Operation Budgets & Cooperative Cancellation

### The Monotonic ContextVar Deadline Architecture

Independent timeouts per step (10s validation + 60s LLM + 30s PDF) cause cascading failures and unpredictable request durations. Instead, bind a **single monotonic absolute deadline** across the entire lifecycle:

```python
import time
from contextvars import ContextVar
from fastapi import Request, HTTPException

# ContextVar holding absolute deadline in monotonic seconds
OPERATION_DEADLINE: ContextVar[float | None] = ContextVar("operation_deadline", default=None)

def set_operation_budget(timeout_seconds: float):
    """Binds an absolute monotonic deadline for the current asyncio execution context."""
    deadline = time.monotonic() + timeout_seconds
    OPERATION_DEADLINE.set(deadline)
    return deadline

def get_remaining_budget() -> float:
    """Calculates remaining budget in seconds. Raises 504 if expired."""
    deadline = OPERATION_DEADLINE.get()
    if deadline is None:
        return 60.0  # Default fallback
    remaining = deadline - time.monotonic()
    if remaining <= 0:
        raise HTTPException(
            status_code=504, 
            detail="AI operation deadline exceeded across pipeline lifecycle."
        )
    return remaining
```

### Declining Transport Timeouts
When dispatching sub-requests, LLM API calls, or worker threads, always cap the transport timeout to the remaining budget:

```python
async def call_llm_with_budget(prompt: str, max_transport_ceiling: float = 60.0) -> dict:
    remaining = get_remaining_budget()
    effective_timeout = min(remaining, max_transport_ceiling)
    
    # Pass effective_timeout to LiteLLM / OpenAI / Anthropic client
    return await client.chat.completions.create(
        model="...",
        messages=[{"role": "user", "content": prompt}],
        timeout=effective_timeout,
    )
```

---

### Strict Input Policy vs. Silent Truncation

Never silently truncate oversized inputs. Silent truncation corrupts prompt semantics, causes context loss, and leads to unpredictable hallucination. Enforce strict character and schema ceilings upfront with HTTP 422:

```python
INPUT_LIMITS = {
    "max_leaf_chars": 6_000,
    "max_instruction_chars": 2_000,
    "max_context_chars": 100_000,
    "max_serialized_json": 200_000,
    "max_final_prompt_chars": 512_000,
}

def validate_input_bounds(payload_str: str, limit_key: str):
    max_len = INPUT_LIMITS[limit_key]
    if len(payload_str) > max_len:
        raise HTTPException(
            status_code=422,
            detail=f"Input exceeds maximum allowed length for {limit_key} ({len(payload_str)} > {max_len})."
        )
```

---

### Bounded SQLite / Database Contention Retirement

When concurrent agents or worker threads access a local SQLite database, locks may cause `OperationalError: database is locked`. 

* **The Rule**: Never fail immediately with 500, and never loop infinitely.
* **The Pattern**:
  1. Catch database busy errors.
  2. Release current transaction immediately before backoff.
  3. Perform at most 3 write retries with exponential jittered backoff.
  4. If contention persists through budget, return **HTTP 503 Service Unavailable** with header `Retry-After: 1` and a **request-scoped entity receipt** (`{ "entity_id": id, "retryable": true }`) so the client can resume that exact record without duplicate creations.

---

## 3. Production Next.js App Router Performance & Server Action Security

### Server Action Zero-Trust Security Invariant

> **Critical Fact**: Server Actions (`'use server'`) are **public HTTP POST endpoints**. Next.js exposes them directly. Hiding a button on the client is purely cosmetic and offers zero security.

Every Server Action must verify authentication and authorization *inside the action body*:

```tsx
'use server';

import { auth } from '@/lib/auth';
import { db } from '@/lib/db';

export async function deleteDocument(documentId: string) {
  // 1. Authentication Invariant
  const session = await auth();
  if (!session?.user?.id) {
    throw new Error('401 Unauthorized: Session required');
  }

  // 2. Tenant / IDOR Authorization Invariant
  const doc = await db.documents.findUnique({
    where: { id: documentId },
    select: { userId: true },
  });

  if (!doc || doc.userId !== session.user.id) {
    throw new Error('403 Forbidden: Cannot modify resources owned by another tenant');
  }

  // 3. Execution
  await db.documents.delete({ where: { id: documentId } });
  return { success: true };
}
```

---

### App Router Waterfall Elimination

Waterfalls occur when independent `await` statements block sequentially, multiplying network latency:

```tsx
// ❌ WRONG: Sequential Waterfall (Latency = T_user + T_posts + T_meta)
const user = await getUser(userId);
const posts = await getPosts(userId);
const meta = await getSiteMetadata();

// ✅ CORRECT: Parallel Execution (Latency = max(T_user, T_posts, T_meta))
const [user, posts, meta] = await Promise.all([
  getUser(userId),
  getPosts(userId),
  getSiteMetadata(),
]);

// ✅ CORRECT: Dependent Fetch Optimization (Start independent fetches early)
const metaPromise = getSiteMetadata();           // Starts immediately in background
const user = await getUser(userId);              // Block for user
const posts = await getPosts(user.accountId);     // Dependent on user
const meta = await metaPromise;                  // Await background promise
```

---

## 4. Swiss International Design System & `.impeccable.md`

### The Swiss International Minimal Standard
A high-craft aesthetic designed for focus, confidence, and zero cognitive fatigue:

* **Geometric Precision**: `rounded-none` everywhere. Sharp, unrounded corners evoke industrial print and modernist posters.
* **Hard Offset Shadows**: Ban fuzzy blurred CSS shadows (`box-shadow: 0 4px 6px -1px rgb(0 0 0 / 0.1)`). Use crisp, physical offset shadows:
  ```css
  /* Physical brutalist offset shadow */
  box-shadow: 3px 3px 0px 0px #000000;
  ```
* **Three-Font Typographic Hierarchy**:
  1. **Headers**: Elegant high-contrast Serif (`Newsreader`, `Playfair`, `Cinzel`).
  2. **Body**: Neutral, highly legible Sans (`Geist Sans`, `Inter`, `Helvetica Neue`).
  3. **Data / Badges / Labels**: Uppercase Monospace (`Geist Mono`, `JetBrains Mono`).
* **Canvas Surface Tone**: Never use blinding `#FFFFFF`. Use physical paper canvas (`#F0F0E8` or `#F7F7F2`) with deep black ink (`#111111`).
* **Monochrome Discipline with Rare Accent**: Hyper Blue (`#1D4ED8`) or International Orange (`#FF4F00`) restricted to **exactly one primary action per viewport**.

---

### The `.impeccable.md` Design Context Pattern

Place an `.impeccable.md` file in the root of UI projects to anchor agent generation to the exact brand soul:

```markdown
# Design Context — [Project Name]

This file is the single source of truth for UI/UX decisions.
Read before proposing or modifying components, layouts, or visual tokens.

## User Psychological State
- Users are often anxious or in high-pressure sessions (e.g. evening job hunts, incident triage).
- Interface must reduce stress: calming, low-friction, zero AI hype, direct error messages.

## Brand Personality
- **Confident**: Quiet competence; does not shout or brag.
- **Honest**: No fake progress animations, no inflated copy, buttons say what they do.
- **Crafted**: Every pixel intentional; feels like a well-designed printed monograph.

## Aesthetic Constraints
- `rounded-none` everywhere.
- Hard offset shadows only (no blurred drop shadows).
- Canvas `#F0F0E8` page background (never pure white).
- Accent `#1D4ED8` strictly limited to 1 primary action per screen.
```
