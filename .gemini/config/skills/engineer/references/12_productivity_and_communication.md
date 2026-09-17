# Productivity, Handoffs & Technical Communication

## 1. Handoff Protocol (`handoff`, `claude-handoff`)
When compacting context or handing off to another agent session:
1. **Goal Summary**: Core objective and current state.
2. **Decisions Made**: Key architectural choices settled during the session.
3. **Active Work & Files Changed**: Exact list of touched files and uncommitted diffs.
4. **Immediate Next Step**: The single exact command or ticket to resume.

## 2. Cognitive Reset (`wait-what`)
Triggered immediately when communication or understanding goes off track:
- Halt current execution.
- Reset cognitive state.
- Re-pitch the concept in plain, unambiguous terms using `CONTEXT.md` vocabulary.

## 3. The Humanizer Writing & Communication System
A checklist-driven standard that eliminates stylistic patterns and vocabulary that make technical writing and code read as machine-generated:

### A. The 30+ Word Banned AI Vocabulary Tier
Ruthlessly purge dead AI tell words, filler, and corporate cliches across all documentation, commit messages, PR descriptions, and architectural notes:
* ❌ **High-Tell Verbs**: *delve, leverage, harness, foster, streamline, unlock, elevate, empower, champion, navigate, spearhead, showcase, feature (as verb).*
* ❌ **Synthetic Nouns & Metaphors**: *tapestry, testament, beacon, game-changer, landscape, paradigm shift, synergy, catalyst.*
* ❌ **Pretentious & Hollow Adjectives**: *vital, crucial, bespoke, holistic, pivotal, paramount, multifaceted, ground-breaking, robust, comprehensive, seamless, cutting-edge, state-of-the-art, inspired by.*
* ❌ **Formulaic Openers, Credential Padding & Transitions**: *"In today's fast-paced digital world", "It's important to note", "Let's dive in", "Look no further", "At its core", "A journey of", "official certification verifying", "maintained continuously", "demonstrating proficiency in", "designed to ensure".*

### B. Mathematical Voice Physics & Syntax
- **Total Zero-Tolerance Ban on Em Dashes & En Dashes**: Absolutely zero em dashes (`—`, U+2014) or en dashes (`–`, U+2013) across all writing, commits, PR comments, issue replies, documentation, and chat responses. Never use unspaced em dashes (`word—word`) or spaced em dashes (`word — word`). Em dashes are an unmistakable hallmark of AI-generated prose. Replace them with standard commas, colons, parentheses, or clean separate sentences with periods. Never substitute with double hyphens (`--`) or spaced en dashes (` - `).
- **The Trailing Participle Invariant (Empirical Detector Tripwire)**: Empirical testing on production multi-tier AI detectors confirms that trailing present-participle clauses (`", displaying real-time metrics without layout shift"`, `", featuring strict error boundaries"`) spike AI probability to 50%+ (the "mixed/synthetic" threshold). Human engineers write active relative clauses (`"that displays live metrics without layout shift"`) or compound action verbs (`"Hardened scripts using set -euo pipefail and automated checksums"`).
- **The Mechanism Over Self-Praise Invariant**: Never describe your own code, architecture, or scripts with evaluative self-praise (`robust`, `comprehensive`, `seamless`). Replace empty praise with concrete operational constraints: replace *"Built robust bash scripts"* with *"Hardened bash provisioning scripts using set -euo pipefail and SHA-256 verification"*.
- **The High Domain Perplexity Benchmark (Sub-1% AI Invariant)**: Anchor technical assertions to concrete, low-frequency primitives: exact repository and crate paths (`crates/workspace`, `crates/gpui/src/app.rs`), raw kernel/hardware subsystems (`/proc`, `/sys`, `ioctl`, `PCIe D3cold`, `sysfs runtime_status`), and explicit numerical constants or timeouts (`200ms SHUTDOWN_TIMEOUT`). High domain perplexity mathematically invalidates statistical language model detectors.
- **Soft Pause Conversational Cadence**: Use double dots (`..`) sparingly for natural sentence rhythm when mid-sentence pacing calls for it.
- **Strict Proper Noun Capitalization**: Never leave technical entities or tools lowercase. Always capitalize *Rust, Fedora, Linux, Wayland, GNOME, Ghostty, OpenAI, GitHub*.
- **Concrete Metrics Over Subjective Adjectives**: Always state exact numbers instead of vague adjectives (*"47% latency reduction"* beats *"significant performance boost"*; *"sub-400µs cold start"* beats *"blazing fast execution"*).
- **No Negative Parallelism Crutches**: Strip *"It's not X, it's Y"*, *"not just X, but Y"*, *"no X, no Y, just Z"*. State the point directly.
- **No Forced Rule of Three**: Do not artificially force lists, adjectives, or examples into groups of exactly three. Use however many items actually belong.
- **No Dangling Participle Tack-Ons**: Remove sentences ending with dangling "-ing" clauses manufacturing significance (*"...highlighting its role in," "...underscoring the importance of," "...ensuring seamless operation"*).
- **Avoidance of Plain "Is/Are" Inflation**: Do not swap simple verbs for elaborate constructions to sound sophisticated. Let simple sentences be simple.
- **No Machine-Like Compound Hyphens**: Strip machine-like hyphenated compound words where natural human writing uses separate words (e.g. write *"on demand"* instead of *"on-demand"*, *"fit to view"* instead of *"fit-to-view"*, *"hot reloading"* instead of *"hot-reloading"*, *"real time"* instead of *"real-time"* unless strictly needed as a compound modifier).

### C. Direct Developer Cadence & Zero Meta-Tells
- **Zero Meta-References to Humanness**: Real developers never describe their own commits, pull requests, comments, or documentation with meta-phrases like *"human like"*, *"written by human"*, *"humanized"*, or *"AI-free"*.
- **Direct Technical Action**: Commit messages and PR titles must describe the concrete technical change directly (e.g. `docs: clarify sysfs cache invalidation`, `refactor: simplify PCI bus enumeration`, `fix: handle NVMe drive swap edge case`).
- **Code Comments Focus Strictly on Technical "Why"**: Comments explain hardware constraints, kernel invariants, concurrency models, and algorithm trade-offs.

## 4. Technical Writing Systems (`writing-beats`, `writing-shape`, `writing-fragments`, `writing-for-agents`)
- **Beats**: Rhythm and pacing of technical arguments (Problem → Tension → Principle → Solution → Code → Implication).
- **Shape**: Macro-structure of technical documents (Introduction → Core Invariants → Reference API → Migration Guide → Edge Cases).
- **Fragments**: Standalone, modular code snippets and examples that can be tested independently.

## 5. Open Source Upstream & Maintainer Collaboration
For protocols on navigating prototype maturation, RFC discussions, consolidation of community threads, and respectful maintainer dialogue, see [`30_open_source_upstream_and_maintainer_collaboration.md`](./30_open_source_upstream_and_maintainer_collaboration.md).

