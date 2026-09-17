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

### 4. Punctuation Hygiene & Banned AI Tells (Em Dashes)
Measure the presence of em dashes in generated text:
* **Zero-Tolerance Invariant**: Exactly 0 em dashes permitted in generated prose, PR comments, commit messages, or documentation.
* Any occurrence of unspaced em dashes (`word—word`) or spaced em dashes (`word — word`) immediately flags text as machine-generated AI slop.
* Required replacements: standard commas, colons, parentheses, or splitting into clean separate sentences with a period. Never substitute with double hyphens.

### 5. Zero-Emoji Standard & Technical Typography Hygiene (The Zero-Emoji Invariant)

Decorative emojis in technical documentation, repository READMEs, profile READMEs, architecture specs, commit messages, or pull request descriptions are an immediate tell of machine-generated AI slop. Senior engineers, open-source maintainers, and hiring evaluators heavily discount submissions saturated with emoji decoration.

#### The Zero-Emoji Invariant:
* **Strict Prohibition**: Exactly 0 decorative emojis permitted in generated technical documentation, specs, READMEs, profile portfolios, commit messages, or PR bodies.
* **Why It Flags as Low-Signal Slop**:
  1. *Perplexity & Detector Tell*: AI models disproportionately prefix markdown headers and bullet points with contextually redundant emojis.
  2. *Visual Degradation*: Emoji signposting clutters reading cadence and signals amateur, tutorial-tier scaffolding over professional craftsmanship.
  3. *Accessibility & Terminal Rendering*: Emojis cause unpredictable monospace font pitch deviations, double-width rendering bugs, and screen-reader verbosity.
* **Deterministic Replacement Protocol**:
  * Replace emoji-prefixed headings with clean semantic markdown headings (e.g. replace emoji headers with direct titles like `### Featured Engineering Projects`).
  * Replace emoji list prefixes with standard markdown unordered list items (`- Linux: ...`).
  * Rely on clean typographic hierarchy (headings, tables, code spans, flat shields) and active verbs to structure documents.
* **Whitelisted Exceptions**:
  * Software specifically testing Unicode glyph metrics, terminal geometry, or double-width cell layouts.
  * End-user product UI features where emojis are explicitly required by product specifications (e.g. chat reaction components).

### 6. The Empirical 1% Detector-Bypass Standard

Empirical benchmarking against multi-tier neural AI detectors (e.g. Clever AI, GPTZero, Turnitin) reveals that technical text achieves sub-1% AI probability when anchored to low-level engineering invariants, but spikes to 50%+ AI probability on three specific syntactic patterns.

#### A. The Trailing Participle & Noun Stack Invariant
* **Tripwire Pattern**: Sentences structured as `[Main action], [present participle tag displaying / showcasing / ensuring / highlighting X]` or burdened by 4+ stacked modifiers/nouns (`interactive CLI-style hardware telemetry terminal component`) consistently trip detector classifiers into the 50% to 55% "mixed/synthetic" bracket.
* **Deterministic Invariant**: Ban trailing present-participle clauses and overloaded noun stacks. Require a simple subject anchored by concrete payload metrics:
  * ❌ *Flagged (54% AI):* "Implemented an interactive hardware telemetry terminal component inspired by Linux CLI tools, displaying real-time specifications without layout shift."
  * ❌ *Still Flagged (54% AI due to noun stacking):* "Built an interactive CLI-style hardware telemetry terminal component that displays real-time specifications without layout shift."
  * *Humanized (1% AI):* "Built an in-browser Linux terminal component streaming live CPU, RAM, and OS metrics with zero Cumulative Layout Shift (CLS)."

#### B. The Evaluative Adjective Blacklist (Mechanism Over Praise)
* **Tripwire Pattern**: Hollow self-praise adjectives (`robust`, `comprehensive`, `seamless`, `cutting-edge`, `state-of-the-art`, `inspired by`, `featuring`) are strong probabilistic indicators of synthetic text.
* **Deterministic Invariant**: Ban self-praise adjectives across all technical copy. Replace evaluative adjectives with concrete operational mechanisms:
  * ❌ *Flagged (54% AI):* "Built robust bash scripts featuring strict error boundaries (set -euo pipefail), automated SHA-256 checksum verification for downloads, and idempotent execution."
  * *Humanized (1% AI):* "Hardened bash provisioning scripts using strict exit handling (set -euo pipefail), automated SHA-256 checksum verification for external downloads, and idempotent module execution."

#### C. Domain Perplexity Anchoring (The 1% Invariant)
* **Statistical Mechanics**: AI detectors calculate n-gram token perplexity and burstiness. Generic claims produce low perplexity (flagging high AI probability). Concrete systems tokens produce high perplexity (sub-1% AI probability).
* **Deterministic Invariant**: Anchor every technical bullet to at least two concrete low-frequency primitives:
  1. *Filesystem and Crate Paths:* e.g. `crates/workspace`, `crates/gpui/src/app.rs`, `/proc`, `/sys`.
  2. *Kernel & Hardware Telemetry:* e.g. `PCIe D3cold`, `nvtop.rs`, `sysfs runtime_status`, `POSIX FFI`, `ioctl`.
  3. *Exact Constants & Error Signatures:* e.g. `200ms SHUTDOWN_TIMEOUT`, `timed out waiting on app_will_quit`, `50 to 200ms bus contention interrupt spikes`.

#### D. Credential, Streak & Cadence Hygiene
* **Tripwire Pattern**: Formal administrative padding (*"Official certification verifying..."*), redundant adverbs (*"consistently every day"*), and corporate delivery clichés (*"software deliveries shipped"* under headers like *"Continuous GitHub Activity"*) flag as synthetic templates.
* **Deterministic Invariant**: Enforce authentic developer vernacular with direct git actions and concrete streak anchors:
  * ❌ *Flagged (54% AI):* "Work Smarter with AI: Official certification verifying AI-assisted engineering, pair-programming, and modern development workflows (September 2026)."
  * *Humanized (1% AI):* "Work Smarter with AI: Professional credential verifying hands-on AI pair-programming, agentic workflows, and prompt engineering (September 2026)."
  * ❌ *Flagged (54% AI):* "Continuous GitHub Activity: Daily commit streak and active open-source software delivery maintained continuously since July 30, 2026."
  * ❌ *Still Flagged (54% AI due to template header & redundant adverb):* "Continuous GitHub Activity: Daily commit history and software deliveries shipped consistently every day since July 30, 2026."
  * ❌ *Still Flagged (54% AI due to abstract action & 'calendar day'):* "GitHub Contribution Streak: Pushed commits and opened pull requests every calendar day since July 30, 2026."
  * *Humanized (1% AI with Domain Anchoring):* "Public GitHub Contributions: Logged daily code commits and pull requests across Rust, TypeScript, and Linux system repositories since July 30, 2026."

#### E. Sub-1% Calibration (Avoiding the Low-Perplexity Template Basin)
Over-simplifying technical descriptions into generic phrasing can inadvertently collapse sentences into high-frequency LLM resume templates (triggering a 54% synthetic threshold). Calibrate toward high-perplexity architectural nouns and concrete browser/system mechanisms:
1. **Purge Marketing Superlatives Without Collapsing into Generic Resume Boilerplate**:
   * ❌ *Flagged (3% AI due to superlative):* "Architected and deployed an accessible, ultra-fast portfolio web application built with React 19 hooks, strict TypeScript, and Tailwind CSS."
   * ❌ *Flagged (54% AI due to generic 'web portfolio with' LLM template basin):* "Built and deployed an accessible web portfolio with React 19 hooks, strict TypeScript, and Tailwind CSS."
   * *Sub-1% Human Fix (Architectural Precision):* "Architected a responsive single-page web application in React 19 and strict TypeScript, structuring modular UI components styled with Tailwind CSS."
2. **Convert Descriptive Participles to Active Finite Verbs**:
   * ❌ *Flagged (2% AI due to trailing participle):* "Built an in-browser Linux terminal component streaming live CPU, RAM, and OS metrics with zero Cumulative Layout Shift (CLS)."
   * *Sub-1% Human Fix:* "Built an in-browser Linux terminal component that renders CPU, RAM, and OS metrics with zero Cumulative Layout Shift (CLS)."
3. **Anchor UI Features with Concrete DOM / Browser Mechanisms Rather than Generic Verbs**:
   * ❌ *Flagged (4% AI due to stacked gerund trio):* "Built a global keyboard command palette (Ctrl + K / Cmd + K) for keyboard-driven navigation, theme toggling, and instant section jumping."
   * ❌ *Flagged (54% AI due to generic 'to toggle themes and navigate' template):* "Added a global command palette (Ctrl + K / Cmd + K) to toggle themes and navigate between portfolio sections."
   * *Sub-1% Human Fix (Event API & Target Anchor):* "Implemented a keyboard shortcut modal (Ctrl + K / Cmd + K) with global keydown listeners to focus the interactive CLI terminal and navigate sections."

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
