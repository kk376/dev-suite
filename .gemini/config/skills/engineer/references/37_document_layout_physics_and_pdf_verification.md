# Document Layout Physics, Geometry Testing, Dual-Layer Verification & Knapsack Trimming

A production engineering standard for deterministic document rendering, automated bounding-box layout verification, dual-layer (visual vs. embedded text) parser testing, and relevance-weighted page budgeting. Eliminates the *"looks fine in code/markdown, breaks in the render"* syndrome across PDFs, canvas viewports, invoices, resumes, and client deliverables.

---

## 1. The Document Physics & Rendering Discipline

Automated document generation (PDFs via LaTeX/Typst/WeasyPrint, canvas exports, print stylesheets, or SVG reports) suffers from a chronic failure mode: **agents and compilers generate syntactically valid source files that produce broken, deformed visual outputs**.

```
┌─────────────────────────────────────────────────────────────────────────────────────────┐
│                      THE DETERMINISTIC DOCUMENT VERIFICATION PIPELINE                   │
└─────────────────────────────────────────────────────────────────────────────────────────┘
                                           │
  1. Source Generation & Compile           ▼
     [Markdown / LaTeX / Typst / HTML] ──► [Deterministic Compilation]
                                           │
  2. Bounding-Box Geometry Extraction      ▼
     [Poppler `pdftotext -bbox`] ────────► [Extract Word & Block Coordinate Bounds]
                                           │
  3. The 5 Geometry Physics Invariants     ▼
     [Audit Bounds] ─────────────────────► [Orphan Detection]
                                           [Internal Hole Detection (>100pt)]
                                           [Early Page Ending (>25% bottom gap)]
                                           [Thin Final Page (<35% filled)]
                                           [Footer Band Collisions (<90pt)]
                                           │
  4. Dual-Layer Text Integrity             ▼
     [Extract Raw Text Layer] ───────────► [Verify Reading Order, Literal Identifiers & ATS]
                                           │
  5. Knapsack Budget Trimming (If Overflow)▼
     [3-Factor Scoring (R + U + D)] ─────► [Trim Lowest Value Items First]
                                           │
  6. Deliverable Artifact                  ▼
     [Production-Grade Clean Document]
```

Never rely on visual "eyeballing" or LLM snapshot glance passes. Document layout must be verified with deterministic mathematical thresholds.

---

## 2. The 5 Golden Document Geometry Invariants

Using word bounding boxes extracted from compiled documents (`pdftotext -bbox`), measure layout dimensions against five strict physical invariants:

### Invariant 1: Zero Orphaned Entry Headers
* **Symptom**: An item header (e.g., job title, company name, table header, or section heading) renders at the bottom of page $N$, while its descriptive body or bullet points spill over to page $N+1$.
* **Physics Check**: If an entry header is placed within $40\text{pt}$ of the bottom margin without at least two lines of associated body text following it on the same page, the layout **FAILS**.
* **Remediation**: Wrap entry containers in unbreakable blocks, apply `\needspace{4\baselineskip}` (in LaTeX), or `break-inside: avoid` (in CSS Paged Media).

### Invariant 2: Zero Internal Layout Holes
* **Symptom**: An unbreakable block fails to fit on page $N$ and gets pushed to page $N+1$, leaving behind a massive, unnatural blank gap mid-page (often 150–300pt of empty space).
* **Physics Check**: Measure the vertical distance $\Delta y$ between the baseline of line $i$ and the top of line $i+1$:
  $$\Delta y = y_{\text{top}}(i+1) - y_{\text{bottom}}(i)$$
  If $\Delta y > 100\text{pt}$ (approximately 7 empty lines) outside of deliberate section breaks, an internal hole is flagged.
* **Remediation**: Split unbreakable blocks into sub-bullets, adjust line-height scales, or redistribute preceding content.

### Invariant 3: Zero Early Page Endings
* **Symptom**: A non-final page terminates prematurely, leaving $>25\%$ of the bottom printable area blank.
* **Physics Check**:
  $$\text{Bottom Gap Fraction} = \frac{Y_{\text{page\_height}} - Y_{\text{last\_line\_bottom}}}{Y_{\text{printable\_height}}} > 0.25$$
  Any non-final page exceeding $0.25$ fails the layout check.

### Invariant 4: Zero Thin Final Pages
* **Symptom**: The final page contains only 1 to 4 straggling lines ($<35\%$ vertical density), signaling an unfinished, unedited draft to readers and reviewers.
* **Physics Check**:
  $$\text{Final Page Density} = \frac{Y_{\text{last\_line\_bottom}} - Y_{\text{first\_line\_top}}}{Y_{\text{printable\_height}}} < 0.35$$
* **Remediation**: Execute Knapsack Budget Trimming (Section 4) to pull the stray lines back into the penultimate page, or expand preceding sections intentionally.

### Invariant 5: Zero Footer Band Collisions
* **Symptom**: Rescuing overflowing content with negative spacing or page-height enlargement pushes text directly into page-number footers or legal notices.
* **Physics Check**: Reserve a mandatory **Footer Exclusion Band** of at least $90\text{pt}$ at the bottom of every page. If any non-footer body text penetrates this band, the layout **FAILS**.

---

## 3. Dual-Layer Verification: Rendered Pixels vs. Underlying Text Layer

A document can appear visually perfect to a human while being completely unreadable to automated systems (ATS parsers, screen readers, OCR indexers, and legal scrapers).

```
┌──────────────────────────────────────────────┬──────────────────────────────────────────────┐
│             VISUAL LAYER (PIXELS)            │            TEXT LAYER (RAW BYTES)            │
├──────────────────────────────────────────────┼──────────────────────────────────────────────┤
│ Looks beautiful with modern icons and glyphs.│ Icons map to null bytes or missing glyphs.    │
│ Multi-column layout visually clear to eye.   │ Lines interleave: Col 1 Line 1 + Col 2 Line 1.│
│ Custom fonts display correctly.              │ Unicode ligature ligature failures (fi, fl). │
└──────────────────────────────────────────────┴──────────────────────────────────────────────┘
```

### The Dual-Layer Audit Checklist
1. **Literal Identifier Presence**: Never represent required text (email, phone numbers, URLs, license numbers) purely through symbol fonts or vector glyphs. The underlying text layer must contain explicit ASCII/Unicode strings.
2. **Reading Order Monotonicity**: Multi-column layouts must order text stream objects sequentially column-by-column, rather than interleaving horizontal scan lines.
3. **Keyword Extraction Scoring**: Run `pdftotext` or `pypdf` extraction against the compiled PDF and calculate keyword coverage on the extracted text layer, not the source file.

---

## 4. Relevance-Weighted Knapsack Trimming

When a document, resume, or report must fit a strict physical page budget (e.g., exactly 1 page, exactly 2 pages) or LLM context window, never cut content mechanically from the bottom or delete older history chronologically.

### The 3-Factor Value Function
For every candidate line or paragraph $e$, compute its value score $V(e)$:
$$V(e) = W_r \cdot R(e) + W_u \cdot U(e) + W_d \cdot D(e)$$

* **$R(e)$ — Target Relevance (0.0–1.0)**: Exact keyword and concept match against the target specification, client brief, or job posting.
* **$U(e)$ — Information Uniqueness (0.0–1.0)**: Demonstrates a skill, metric, or capability not duplicated elsewhere in the document.
* **$D(e)$ — Cross-Dependency (0.0–1.0)**: Whether other sections (cover letters, executive summaries, references) explicitly cite or rely on this entry.

### Trimming Algorithm
1. Compute $V(e)$ for all candidate lines across all sections.
2. Rank lines in ascending order of $V(e)$.
3. Incrementally cut the lowest-scoring line $e_{\min}$.
4. Re-compile and measure bounding-box geometry.
5. Stop as soon as all 5 physical layout invariants pass.

An older bullet point demonstrating deep relevance will consistently survive ahead of a recent bullet point containing generic phrasing.

---

## 5. Zero-Dependency Offline HTML Dashboards (`html-report`)

When engineering performance reports, audit dashboards, or analytics summaries for clients and teams, avoid heavy frontend frameworks, CDN dependencies, or external chart libraries.

### Architectural Rules for Single-File Dashboards:
1. **Zero External Requests**: No Google Fonts, no CDN stylesheets, no external scripts. The file must open perfectly in an air-gapped or offline browser.
2. **Inline SVG Charting**: Render bar charts, status funnels, and sparklines directly via parameterized SVG elements:
   ```html
   <svg viewBox="0 0 400 120" class="w-full h-28">
     <!-- Parameterized SVG rects with CSS hover transitions -->
     <rect x="10" y="30" width="40" height="80" rx="4" fill="var(--accent-primary)"/>
     <text x="30" y="115" text-anchor="middle" class="text-xs">Pass</text>
   </svg>
   ```
3. **Semantic CSS Tokens**: Embed an inline theme engine supporting dark/light mode via `prefers-color-scheme`.
4. **Self-Contained Data Table**: Filterable and sortable via minimal (<50 lines) vanilla JavaScript with zero dependencies.
