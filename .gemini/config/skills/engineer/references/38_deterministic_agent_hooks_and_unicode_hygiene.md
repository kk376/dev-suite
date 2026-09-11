# Deterministic Agent Hooks, Invisible Unicode Scrubbing, Zero-LLM Stylometry & Metadata Hygiene

A production engineering standard for deterministic agent harness hooks, invisible Unicode and Trojan Source sanitization, zero-LLM mathematical stylometry scoring, and deliverable metadata hygiene. Enforces strict software invariants on all agent-generated code, documentation, and media assets.

---

## 1. Instructions vs. Invariants: The Hook Philosophy

In agentic systems, relying purely on system prompts or skills creates probabilistic failures:

> **The Fundamental Law of Agent Tooling:**
> *A skill or prompt is an instruction: the model decides whether to follow it.*
> *A hook is an invariant: the harness executes it on every tool call, cooperation not required.*

```
┌─────────────────────────────────────────────────────────────────────────────────────────┐
│                          THE DETERMINISTIC HARNESS HOOK LOOP                            │
└─────────────────────────────────────────────────────────────────────────────────────────┘
                                           │
  1. Agent Generates Code / Text           ▼
     [Model Invokes Tool: `write_to_file` / `replace_file_content`]
                                           │
  2. Harness Intercepts Action             ▼
     [PreToolUse / PostToolUse Hook Fires Automatically]
                                           │
  3. Layer A: Deterministic Sanitation     ▼
     [Strip Invisible Unicode (Zero-Width, Bidi Overrides)]
     [Atomic Sibling Swap (Preserve mtime if byte-identical)]
                                           │
  4. Layer B: Quality & Safety Gates       ▼
     [Zero-LLM Stylometry & Burstiness Scoring] ──► [Flag AI Cadence / Slop]
     [Metadata Scrubbing (EXIF, C2PA, DocProps)]
                                           │
  5. Deterministic Verification            ▼
     [File Written Cleanly to Disk] ──► [Zero Invalidation of Build Caches]
```

Critical safety, security, and quality gates must be shifted from probabilistic prompts into deterministic, machine-enforced hooks.

---

## 2. Post-Tool Hook Architecture & Atomic Sibling Swaps

When hooks modify or clean files on disk after tool execution (`PostToolUse`), they must adhere to the **Atomic Sibling Swap Pattern** to prevent invalidating build caches and thrashing file watchers.

### The Atomic Sibling Swap Protocol
1. **Never mutate in-place directly**: Write transformed content to a sibling temporary file in the same directory (`.<filename>.tmp.<uuid>`).
2. **Compute Cryptographic Hashes**: Compute the SHA-256 hash of the original file and the temporary cleaned file.
3. **Swap Only on True Difference**:
   * If `hash(cleaned) == hash(original)`: Delete the temporary file immediately. **Do NOT touch the original file**. This preserves the filesystem modification time (`mtime`), preventing Vite, Webpack, `cargo watch`, or language servers from restarting unnecessary builds.
   * If `hash(cleaned) != hash(original)`: Perform an atomic rename (`rename(temp, original)`).

---

## 3. Layer A: Invisible Unicode & Trojan Source Scrubbing

LLM text generations, copy-pasted web content, and translation tools frequently leak invisible or malicious Unicode characters into source code and documentation.

```
┌──────────────────────────────────────┬──────────────────────────────────────┬──────────────────────────────────────┐
│ CHARACTER CLASS                      │ CODEPOINTS                           │ IMPACT / THREAT                      │
├──────────────────────────────────────┼──────────────────────────────────────┼──────────────────────────────────────┤
│ Zero-Width Spaces & Joiners          │ U+200B, U+200C, U+200D, U+2060       │ Parser errors, invisible tokens,     │
│                                      │ U+FEFF (BOM mid-text)                │ broken string equality checks.       │
├──────────────────────────────────────┼──────────────────────────────────────┼──────────────────────────────────────┤
│ Bidirectional (Bidi) Overrides       │ U+202A–U+202E, U+2066–U+2069         │ **Trojan Source Attack**: Flips visual│
│                                      │                                      │ code display while logic runs inverse│
├──────────────────────────────────────┼──────────────────────────────────────┼──────────────────────────────────────┤
│ Confusable Homoglyphs                │ Cyrillic а, е, о, р, с, у, х        │ Slopsquatting, typosquatting,        │
│                                      │ Fullwidth Latin (U+FF01–U+FF5E)      │ invisible identifier collisions.     │
├──────────────────────────────────────┼──────────────────────────────────────┼──────────────────────────────────────┤
│ Exotic Whitespace                    │ U+00A0 (NBSP), U+2000–U+200A         │ Syntax errors in indentation-aware   │
│                                      │ U+202F, U+3000                       │ languages (Python, YAML).            │
└──────────────────────────────────────┴──────────────────────────────────────┴──────────────────────────────────────┘
```

### The Non-Prose Protection Invariant
Sanitizers must strictly protect non-prose spans. Never modify:
* Fenced code blocks (```` ```lang ... ``` ````) and inline code backticks (`` `code` ``).
* CLI commands, filesystem paths, URLs, and git branch names.
* Regular expressions, API identifiers, and cryptographic hashes.

---

## 4. Layer B: Zero-LLM Mathematical Stylometry & Slop Scoring

Evaluating whether documentation, READMEs, or user-facing copy suffers from formulaic AI slop must be done **mathematically and locally**, without sending text to an external LLM.

### 1. Sentence-Length Burstiness ($CV$)
Human writing exhibits high rhythmic variation: short punchy sentences mixed with complex compound sentences. LLMs produce uniform, monotonous sentence lengths.
Compute the coefficient of variation ($CV$) of sentence lengths (measured in word counts):
$$CV = \frac{\sigma}{\mu} = \frac{\sqrt{\frac{1}{N}\sum_{i=1}^N (L_i - \bar{L})^2}}{\bar{L}}$$

* **$CV < 0.35$**: Monotonous AI cadence (flat sentence rhythm).
* **$CV \ge 0.55$**: Natural human burstiness.

### 2. Formulaic Cadence Density ($FCD$)
Measure the frequency of generic LLM transition clichés per 100 words:
$$\text{Clichés} = \left\{\begin{array}{l}
\text{"in conclusion"}, \text{"it is important to remember"}, \text{"testament to"},\\
\text{"delve into"}, \text{"pivotal role"}, \text{"furthermore"}, \text{"tapestry"},\\
\text{"beacon of"}, \text{"seamlessly integrates"}, \text{"in today's fast-paced world"}
\end{array}\right\}$$

$$\text{FCD} = \frac{\text{Count of Cliché Occurrences}}{\text{Total Words}} \times 100$$

* **FCD $> 1.5$**: High density tier (requires humanize/de-slop rewrite).
* **FCD $\le 0.5$**: Clean, direct technical prose.

### 3. Lexical Diversity: MATTR (Moving-Average Type-Token Ratio)
Compute Type-Token Ratio over a sliding window ($W = 50$ words) to measure vocabulary richness independent of document length:
$$\text{MATTR} = \frac{1}{N - W + 1} \sum_{i=1}^{N - W + 1} \frac{\text{Unique Words in Window } i}{W}$$

### The Conditional Engagement Rule
Engage text humanization passes **only when the composite score falls into `density_tier == high`**. If text is already concise, technical, and low-slop, leave it untouched. Never perform churn rewrites.

### The Fact & Voice Boundary Invariant
* **Zero Invention**: Never fabricate a metric, quote, case study, or fake personal anecdote (*"In my 10 years of experience..."*) to increase burstiness.
* **Preserve Intent**: Humanizing passes may sharpen, compress, or re-order clauses, but may never alter factual assertions.

---

## 5. Deliverable Metadata Hygiene

Before committing, shipping, or distributing compiled artifacts (PDFs, images, videos, audio clips, office documents), execute an automated metadata scrub to prevent privacy leaks and tracking provenance.

### Sanitization Matrix

| Asset Type | Target Metadata to Strip | Tooling / Script Seam |
| :--- | :--- | :--- |
| **Images** (PNG, JPEG, WebP, AVIF) | EXIF, GPS coords, C2PA manifests, camera serials, author software tags. | `exiftool -all= -overwrite_original`, Python Pillow |
| **PDF Documents** | `Author`, `Creator`, `Producer`, `CreationDate`, embedded XMP streams. | `qpdf --linearize`, `mutool clean -d` |
| **Office Docs** (DOCX, XLSX, PPTX) | `docProps/core.xml` (last modifier, revision count, template path, company name). | XML DOM unpack, prune `cp:lastModifiedBy`, re-pack |
| **Audio / Video** (MP4, MKV, MP3) | ID3 comment tags, encoder software string, private user streams. | `ffmpeg -i input -map_metadata -1 -c copy output` |
