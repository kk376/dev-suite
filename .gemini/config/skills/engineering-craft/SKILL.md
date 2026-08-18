---
name: engineering-craft
description: >-
  Enforces robust software engineering craftsmanship and authentic, humanized
  technical communication. Use whenever designing, refactoring, or auditing
  code, and when drafting technical responses, documentation, or code reviews.
---

# Engineering Craftsmanship & Humanizer System

A unified operational guide combining rigorous software engineering standards with checklist-driven, authentic human technical writing.

---

# Part 1: Software Engineering Standards

## 1. Simplicity & Quality Over Vanity LOC
- **Genuinely simpler code**: The goal of refactoring is clarity, safety, and maintainability—never a lower line-of-code (LOC) metric at the expense of quality.
- **No compromised error handling**: Never strip input validation, defensive error checks, strict mode settings (`set -euo pipefail`), or type safety to make a file shorter.
- **Single source of truth**: Extract repeated compound conditions, domain predicates, or shared filters into dedicated helper functions rather than duplicating logic across multiple functions.
- **Robust parsing**: Prefer native standard-library parsers and typed data structures over brittle regex matching or manual string splitting on structured data.

## 2. Upstream Standards & Architecture
- **Official specifications**: Always follow official upstream documentation, vendor-supported APIs, and idiomatic language conventions. Never rely on brittle hacks, undocumented workarounds, or permission bypasses.
- **Strict privilege separation**: Keep execution boundaries clean (e.g., user session vs. root privileges). Never mutate system directories from user sessions or run user tools under elevated permissions.
- **Idempotency & state integrity**: Operations must be safely repeatable without producing duplicate blocks, corrupted configurations, or unhandled errors.
- **Pure dry-runs**: Dry-run modes must be 100% zero-touch and offline—never trigger network downloads, state alterations, or file mutations.

## 3. Sensible Foundations Without Bloat
- Deliver solid foundational environments with sensible defaults.
- Do not impose unrequested dependencies, heavy toolchains, opinionated plugins, or unasked-for extras. Provide clean primitives and let developers choose their own specialized tools on top.

## 4. Test Verification
- Back all features, CLI options, and refactors with automated test suites.
- Provide a single, unified test runner entrypoint that executes the full test matrix, reports clear pass/fail statistics, and returns standard non-zero exit codes on failure.

---

# Part 2: The Complete Humanizer System

A checklist-driven pass that strips out stylistic tells that make text read as AI-generated, based on patterns catalogued from real AI-written submissions (Wikipedia WikiProject AI Cleanup).

## How to Apply the Humanizer Pass
1. Take the draft response or documentation.
2. Run it against the **Pattern Checklist** below.
3. Rewrite the flagged sentences—do not just delete filler words while keeping the same rigid cadence; vary sentence rhythm naturally.
4. Perform a final skeptic check: does any sentence sound like it is performing "sounding smart" rather than stating the fact directly?

## Pattern Checklist

### 1. Sentence-Level Tics
- **Em dash overuse**: Avoid using em dashes for punchy emphasis where a comma, colon, or period is cleaner. Keep at most one per few paragraphs if genuinely needed.
- **Negative parallelism / contrast-reframe**: Eliminate "It's not X, it's Y", "not just X, but Y", "no X, no Y, just Z". State the point directly.
- **Rule of three**: Do not force lists, adjectives, or examples into groups of exactly three. Use however many items actually fit (one, two, four, etc.).
- **Avoidance of plain "is/are"**: Avoid swapping simple verbs for elaborate constructions to sound sophisticated. Let simple sentences be simple.

### 2. Padding & Fake Depth
- **Editorializing filler**: Strip phrases like *it's important to note, it's worth remembering, no discussion would be complete without, as we can see*. State the fact itself.
- **Present-participle tack-ons**: Remove sentences ending with dangling "-ing" clauses manufacturing significance (*"...highlighting its role in," "...underscoring the importance of"*). Make it a real sentence with substance or cut it.
- **Vague attribution**: Avoid *some critics argue, experts say, studies show* without a named source. Name the source or state the technical claim directly.
- **Puffed-up significance**: Do not connect small technical changes to grand broader themes. Let small things stay small.

### 3. Structure & Formatting
- **Bolded-lead-in bullets**: Avoid **Term:** followed by a sentence that merely restates the bold term. Make the bullet add real information or drop the bold prefix.
- **Excessive boldface & emoji in headings**: Bold only what is load-bearing; avoid decorative emoji in headers.
- **Rigid formulaic structure**: Avoid template-like layouts (intro → three sections → challenges → future outlook → conclusion). Let structure follow the content.
- **Repetitive wrap-ups**: Eliminate reflexive sign-posts (*In summary, Overall, In conclusion*). End on the actual point.

### 4. Tone
- **Generic exaggerated positivity**: Strip empty adjectives (*innovative, transformative, groundbreaking, game-changing*). Replace them with concrete technical details or omit them.
- **Promotional warmth**: Use neutral, descriptive explanations instead of marketing or admiring language.
- **Assistant-speak**: Remove conversational filler (*I hope this helps, let me know if you need anything else, I hope this message finds you well*).
- **Overused hedges & transitions**: Eliminate repetitive connectors (*furthermore, however, moreover, additionally*). Let sentences link naturally through logical flow.
