# Search Architecture, Schema Graphs, Generative Engine Optimization (GEO, AEO, LLMO) & Quality Governance

A production engineering standard for technical search architecture, Schema.org semantic knowledge graphs, Generative Engine Optimization (GEO), Answer Engine Optimization (AEO), LLMO citation physics, Google E-E-A-T quality governance, agent-friendly web architecture, AISEO spam demotion gates, and CI/CD-enforced search regression monitoring.

---

## 1. The Tri-Surface Discovery Spectrum: Crawlers, Answer Engines & Autonomous Agents

Modern web engineering requires optimizing for three distinct discovery systems simultaneously:

1. **Traditional Crawlers (Googlebot, Bingbot)**: Rely on deterministic URL structures, HTTP status codes, link equity graphs, Core Web Vitals, and HTML element semantics.
2. **Generative AI Search & Answer Engines (Perplexity, ChatGPT Search, Claude, Google AI Overviews / AI Mode)**: Rely on entity clarity, brand citation density, passage-level citability (134–167 words), structured data graphs, and LLM-friendly documentation.
3. **Autonomous AI Agents (Browser / Reasoning Agents)**: Rely on clean accessibility trees (roles, names, states), stable semantic selectors, unobstructed interactive click targets, and machine-readable context endpoints (`/llms.txt`).

```
┌──────────────────────────────────────────────────────────────────────────────────────────────────┐
│                                   THE TRI-SURFACE DISCOVERY STACK                                │
├───────────────────────────────────┬───────────────────────────────┬──────────────────────────────┤
│  TRADITIONAL SEARCH (Google/Bing) │  AI ENGINES (Perplexity/Chat) │  AUTONOMOUS AGENTS (WebMCP)  │
├───────────────────────────────────┼───────────────────────────────┼──────────────────────────────┤
│ • Canonicalization & Status Codes │ • Passage-Level Citability    │ • Browser Accessibility Tree │
│ • XML Sitemaps & Crawl Budget     │ • Brand Citation Density      │ • Stable Semantic DOM / IDs  │
│ • Core Web Vitals (LCP, INP, CLS) │ • Entity Graphs (JSON-LD)     │ • 24×24px Tap Target Clear   │
│ • Internal PageRank Equity        │ • AI Bot Access (GPTBot, etc) │ • Zero Transparent Overlays  │
│ • Reciprocal hreflang Mappings    │ • Direct Answer Snippets      │ • Machine Context (/llms.txt)│
│ • Google E-E-A-T Quality Gates    │ • Multi-Modal Data Tables     │ • RSL 1.0 Machine Licensing  │
└───────────────────────────────────┴───────────────────────────────┴──────────────────────────────┘
```

---

## 2. Technical SEO Architecture & Crawlability

Search engines and crawlers are automated HTTP clients with strict latency, memory, and crawl budget constraints. Web systems must adhere to deterministic URL normalization and routing contracts.

### A. URL Normalization & Canonicalization
- **Single Canonical Representation**: Every resource must resolve to exactly one canonical URL. Enforce lowercase paths, trailing slash consistency (choose either `/path` or `/path/`, never mix), and HTTPS.
- **Canonical Tag Rule**: Every page must declare a self-referencing `<link rel="canonical" href="https://example.com/canonical-url">` unless it is explicitly an alternate view of another primary page.
- **Redirect Semantics**:
  - Use `301 Moved Permanently` or `308 Permanent Redirect` for canonical normalization (e.g. `http://` $\to$ `https://`, `www` $\to$ non-www).
  - Use `308` when preserving HTTP request methods (`POST`/`PUT`) across redirects.
  - Ban redirect chains (e.g. `A` $\to$ `B` $\to$ `C`). Resolve redirects directly in one hop (`A` $\to$ `C`).

### B. Robots.txt Architecture & AI Bot Directives
Maintain a clean `/robots.txt` at the domain root with explicit crawler directives:

```text
User-agent: *
Allow: /
Disallow: /api/
Disallow: /admin/
Disallow: /auth/
Disallow: /private/
Disallow: /search?*

# Allow Generative Search & AI Indexing Agents
User-agent: GPTBot
Allow: /

User-agent: ClaudeBot
Allow: /

User-agent: PerplexityBot
Allow: /

User-agent: Google-Extended
Allow: /

User-agent: Applebot-Extended
Allow: /

# Sitemap Index Declaration
Sitemap: https://example.com/sitemap.xml
```

### C. Dynamic XML Sitemaps
- **Index Sitemaps**: When exceeding 10,000 URLs, split into sitemap partitions indexed by a master `sitemap.xml`.
- **Absolute URLs**: Every `<loc>` must contain the absolute, fully qualified HTTPS URL.
- **Freshness Invariant**: The `<lastmod>` timestamp must reflect the genuine last modification date of the content, formatted in W3C Datetime (`YYYY-MM-DDThh:mm:ssTZD`). Never fake `<lastmod>` on unmodified pages.
- **Zero Pollution**: Never include URLs in sitemaps that return 3xx redirects, 4xx errors, or pages with `<meta name="robots" content="noindex">`.

### D. HTTP Status Code Contracts
- `200 OK`: Valid page, indexable and healthy.
- `301 / 308`: Permanently moved; transfer link equity and index canonical target.
- `404 Not Found`: Missing resource; search engines will phase out indexing after repeated attempts.
- `410 Gone`: Permanently deleted resource; instructs crawlers to remove the URL from index immediately. Use for purged or migrated legacy sections.
- `503 Service Unavailable`: Server maintenance or rate limited; include `Retry-After: 3600` header to instruct crawlers when to resume without dropping rankings.

### E. Bidirectional Internationalization (`hreflang`)
- Every localized page must declare `<link rel="alternate" hreflang="..." href="...">` pointing to all localized counterparts including itself.
- Declare `hreflang="x-default"` for the fallback locale / root landing page.
- Symmetrical Reciprocity: If page `A` (en) links to page `B` (de), page `B` must link back to page `A` with matching language/region codes (ISO 639-1 / ISO 3166-1 Alpha 2).

---

## 3. Schema.org Semantic Knowledge Graphs (JSON-LD)

All structured data must be embedded using **JSON-LD** (`<script type="application/ld+json">`) in the `<head>` or before `</body>`. Microdata and RDFa are legacy formats and must not be used in modern builds.

### A. Graph Architecture (`@graph`)
Link related entities within a unified `@graph` array rather than emitting isolated, disconnected JSON-LD blobs:

```html
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@graph": [
    {
      "@type": "Organization",
      "@id": "https://example.com/#organization",
      "name": "Acme Engineering",
      "url": "https://example.com",
      "logo": {
        "@type": "ImageObject",
        "@id": "https://example.com/#logo",
        "url": "https://example.com/assets/logo.png"
      },
      "sameAs": [
        "https://github.com/acme",
        "https://linkedin.com/company/acme",
        "https://wikidata.org/wiki/Q123456"
      ]
    },
    {
      "@type": "WebSite",
      "@id": "https://example.com/#website",
      "url": "https://example.com",
      "name": "Acme Engineering",
      "publisher": { "@id": "https://example.com/#organization" }
    },
    {
      "@type": "SoftwareApplication",
      "@id": "https://example.com/#software",
      "name": "DevSuite",
      "applicationCategory": "DeveloperApplication",
      "operatingSystem": "Linux, macOS, Windows",
      "offers": {
        "@type": "Offer",
        "price": "0",
        "priceCurrency": "USD"
      },
      "author": { "@id": "https://example.com/#organization" }
    }
  ]
}
</script>
```

### B. Core Schema Archetypes & When to Use

| Page Type | Required Schemas | Key Fields |
| :--- | :--- | :--- |
| **SaaS / DevTool Home** | `Organization`, `WebSite`, `SoftwareApplication` | `operatingSystem`, `applicationCategory`, `offers`, `screenshot` |
| **Technical Documentation** | `TechArticle`, `BreadcrumbList` | `headline`, `datePublished`, `dateModified`, `author`, `proficiencyLevel` |
| **API Reference** | `WebAPI`, `Documentation` | `documentation`, `termsOfService`, `provider` |
| **Product / Pricing** | `Product`, `AggregateOffer` | `price`, `priceCurrency`, `availability`, `priceValidUntil` |
| **Single Q&A Support** | `QAPage` | `mainEntity`: `Question` with accepted `Answer` |

### C. Deprecated Schema Types (2024–2026 Google Sunset Guide)
Never build new features around deprecated schema types that no longer produce SERP rich features:
- **`FAQPage` (`@type: FAQPage`)**: Rich results fully retired for all sites on **May 7, 2026** (superseding the 2023 gov/health restriction). Search Console documentation removed June 2026. Do NOT implement `FAQPage` expecting SERP accordion cards. For dedicated single-question problem pages, use `QAPage`.
- **`HowTo` (`@type: HowTo`)**: Retired from mobile and desktop SERPs since September 2023. Do not rely on it for rich snippets.
- **`SpecialAnnouncement`**: Retired July 2025.
- **`ClaimReview`**: Fact-check rich results retired June 2025. Use standard `Article` schema.
- **`VehicleListing` & `EstimatedSalary`**: Retired June 2025. Use standard `Product` or `JobPosting` with `baseSalary`.
- **`Dataset`**: Still fully supported in **Google Dataset Search**, though not shown in standard web SERP rich cards. Keep for scientific and open-data catalogs.

---

## 4. AEO & Generative Engine Optimization (GEO): The Primary-Source Reframe

### A. The Official Google AI Optimization Reframe
Per Google Search Central's *AI Optimization Guide*:
> *"Optimizing for generative AI search is still SEO from Google's perspective. AEO (Answer Engine Optimization) and GEO (Generative Engine Optimization) are rebranded labels for the same fundamental work."*

Key architectural realities:
1. **No Separate AI Index**: AI Overviews and Google AI Mode do NOT maintain a separate hidden crawl index. They retrieve and ground against the standard Google Search index.
2. **Eligibility Floor**: A page **must be indexed and eligible to be displayed with a snippet** in standard Google Search to appear in any AI feature. If a page is blocked by `noindex`, `nosnippet`, or `max-snippet:0`, it is automatically disqualified from AI Overviews.
3. **Dual AI Retrieval Mechanics**:
   - **RAG / Grounding**: The engine retrieves indexed pages matching the intent, then synthesizes a multi-source answer with clickable citations.
   - **Query Fan-Out**: The engine deconstructs complex user prompts into 3 to 10 sub-queries, executes them concurrently against the index, and consolidates the cross-query consensus.

### B. The 5 Debunked AI-SEO Myths (Google Search Central)
Do not build engineering tooling around community myths that Google explicitly rejects:

| Rejected Myth | Google's Authoritative Position | Engineering Reality |
| :--- | :--- | :--- |
| **"You must create `llms.txt` to rank in AI search"** | Google explicitly states `llms.txt` is NOT a ranking factor or requirement for Google AI Overviews. | Still provide `/llms.txt` for OpenAI, Cursor, Anthropic, and local developer coding agents, but never promise Google SERP rank gains from it. |
| **"You must 'chunk' content into tiny pieces for AI"** | Google's models ingest full documents natively; artificial fragmentation destroys semantic flow. | Write cohesive, comprehensive hierarchical technical documents. |
| **"Rewrite content with conversational AI phrasing"** | Keyword gymnastics and prompt mimicry degrade readability and trigger helpful-content flags. | Write clear, precise, authoritative technical prose. |
| **"Mention-farming across spam forums & blogs"** | Inauthentic automated mention generation is flagged under scaled content and link spam policies. | Focus on genuine developer discussions, open-source adoption, and authoritative hubs. |
| **"Over-invest in custom AI schemas"** | Google has introduced zero AI-only schema markup types; existing standard schemas (`TechArticle`, `SoftwareApplication`, `Organization`) are used. | Maintain clean, valid, standard Schema.org JSON-LD graphs. |

---

## 5. LLMO (Large Language Model Optimization) & AI Citation Physics

While Google emphasizes foundational SEO, empirical research across 75,000+ brands and 1.3M+ AI citations reveals the exact physical mechanics of how LLMs (ChatGPT, Perplexity, Claude, Google AI Overviews) extract and cite passages:

### A. Passage Extraction Physics
- **Optimal Citable Passage Length: 134–167 Words**: AI synthesizers extract discrete semantic blocks. Passages between 134 and 167 words achieve the highest extraction density without truncation.
- **The Top-30% Front-Loading Invariant**: **~44% of all AI citations are drawn from the first 30% of a page**. Place the direct answer, concise summary, or core definition in the first 40–60 words immediately under the H1/H2 heading (Inverted Pyramid).
- **SERP Position Logic**: While **92% of AI Overview citations come from top-10 ranking pages**, **47% come from pages ranking between positions 6 and 10**. Generative synthesizers choose sources based on passage relevance and factual extractability, not purely position #1 rank.
- **Multi-Modal Citation Multiplier**: Content containing multi-modal data elements (structured comparative tables, diagrams, reproducible code blocks) achieves a **156% higher citation rate** than plain continuous prose.
- **Recency Half-Life**: Content published or refreshed within the last **3 months is ~3x more likely to be cited** in AI answers. Pages unmaintained for 6+ months experience significant citation attrition.

### B. Critical Empirical Finding: Brand Mentions > Backlinks
Empirical correlation studies show that for generative AI answer engines, **unlinked brand mentions correlate ~3x more strongly with AI visibility than raw domain backlinks**:

| Discovery Signal | Correlation with AI Citations | Primary Channel |
| :--- | :--- | :--- |
| **YouTube Brand Mentions / Transcripts** | **~0.737 (Strongest)** | Video transcripts ingested in LLM training/RAG |
| **Reddit Mentions & Community Consensus** | **High** | High-weight community discussion indexing |
| **Wikipedia & Wikidata Presence** | **High** | Core entity resolution graph in training baselines |
| **LinkedIn Technical Publications** | **Moderate** | Professional entity verification |
| **Traditional Domain Rating (Backlinks)** | **~0.266 (Weak)** | Declining relative weight in generative retrieval |

> **Single-Domain Overlap Reality**: Only **~11% of domains** are cited by both ChatGPT Search and Google AI Overviews for the exact same query. Engineering teams must optimize for both direct LLM retrieval (entity clarity, citations) and Google grounding (traditional technical SEO).

### C. Machine Context: `/llms.txt` and RSL 1.0
1. **`/llms.txt` Standard**:
   Deploy `/llms.txt` (and `/llms-full.txt` for comprehensive docs) at the domain root:
   - Provide an H1 with project name and a 2-sentence summary.
   - List key architectural concepts, public APIs, and CLI commands in concise Markdown.
   - Link to curated markdown documentation endpoints for agent ingestion.
2. **RSL 1.0 (Really Simple Licensing)**:
   - Modern machine-readable content licensing standard supported by major publisher and platform coalitions.
   - Augments `robots.txt` by embedding explicit licensing terms for AI training vs RAG retrieval.

---

## 6. Agent-Friendly Web Architecture (web.dev & Autonomous Agents)

As AI evolves from answer summarization to **autonomous task-executing agents** (booking, purchasing, API integration, browser automation), websites must be engineered for agentic navigation.

Agents interpret web applications through three channels:
1. **Screenshots + Vision Models**: Interprets layout, visual hierarchy, and button prominence (high latency, token-expensive).
2. **Raw HTML / DOM**: Scans IDs, tags, attributes, and classes.
3. **Browser Accessibility Tree**: **The cleanest, highest-leverage signal**. Exposes native roles, names, and states. If the accessibility tree is broken, visual polish will not help the agent.

### A. The Agent-Friendly Engineering Checklist

```
┌─────────────────────────────────────────────────────────────────────────────────────────┐
│                           AGENT-FRIENDLY DOM ARCHITECTURE                               │
├──────────────────────────────────────────┬──────────────────────────────────────────────┤
│  PRACTICE                                │  ENGINEERING RULE                            │
├──────────────────────────────────────────┼──────────────────────────────────────────────┤
│  1. Native Interactive Tags              │  Use <button> & <a href>, never <div onclick>│
│  2. Explicit Input Labels                │  Every <input> must have matching <label for>│
│  3. Tap Target Geometry                  │  Minimum 24×24px (agent threshold is ~8px²)  │
│  4. Zero Transparent Overlays            │  Ban ghost click-catchers & sticking modals  │
│  5. Quadrant Layout Stability            │  Keep primary CTAs in stable screen quadrants│
│  6. Semantic CSS Cursors                 │  Preserve cursor: pointer on interactive el  │
│  7. Server-Side Rendering (SSR)          │  Do not rely on JS execution for core DOM    │
└──────────────────────────────────────────┴──────────────────────────────────────────────┘
```

1. **Native Interactive Tags**: Always use native `<button>` for actions and `<a href="...">` for links. If custom widgets are unavoidable, provide explicit ARIA roles (`role="button"`), `tabindex="0"`, and keyboard handlers (`Enter` / `Space`). Agents skip unlabeled `<div>` tags with arbitrary click handlers.
2. **Explicit Label Associations**: Every input must have an explicit associated `<label for="id">` or `aria-label`. Without label associations, the input field is invisible to agents parsing the accessibility tree.
3. **Tap Target Geometry**: Computer vision agent pipelines filter out interactive targets smaller than **8 square pixels** of unobscured area. Enforce WCAG AA 24×24px minimums to ensure reliable target selection.
4. **Eliminate Transparent Overlays**: Vision models discard covered nodes when determining clickability. Ban full-card transparent overlays, dismissed modals that leave `pointer-events: auto` active, and ghost tracking pixels positioned at `inset: 0`.
5. **Cross-Template Layout Stability**: Keep identical transactional actions (e.g., checkout, fork, submit) in the same screen quadrant across different pages. Drastic layout shifts force agents to consume extra tokens relearning the interface.
6. **Preserve CSS Cursor Semantics**: Vision agents treat `cursor: pointer` as an actionable affordance. Never override interactive elements to `cursor: default`, and never apply `cursor: pointer` to static text.
7. **Server-Side Rendering (SSR) Invariant**: **AI crawlers do NOT execute client-side JavaScript consistently**. If your documentation or product catalog requires client-side React/Vue hydration to render text, search crawlers and AI bots will see empty pages. Implement SSR, Static Site Generation (SSG), or Incremental Static Regeneration (ISR).

---

## 7. Google E-E-A-T Quality Governance (Experience, Expertise, Authoritativeness, Trust)

Google's Quality Rater Guidelines (QRG) define the foundational quality criteria that feed Google's core ranking systems. While not a single numeric ranking factor, algorithmic classifiers continuously evaluate pages against these principles.

### A. The 4 Pillars & Operational Weighting
In automated evaluations and engineering audits, E-E-A-T signals are weighted across four pillars:

```
┌─────────────────────────────────────────────────────────────────────────────────────────┐
│                                   THE E-E-A-T PILLARS                                   │
├────────────────────────────────────────┬────────────────────────────────────────────────┤
│  TRUSTWORTHINESS (30% - The Anchor)    │  Security, transparency, valid SSL, privacy,   │
│                                        │  verifiable business entity, zero deception.   │
├────────────────────────────────────────┼────────────────────────────────────────────────┤
│  EXPERTISE (25%)                       │  Formal credentials, technical accuracy, depth,│
│                                        │  specialized domain terminology, primary data. │
├────────────────────────────────────────┼────────────────────────────────────────────────┤
│  AUTHORITATIVENESS (25%)               │  External citations, industry mentions, peer   │
│                                        │  recognition, Wikipedia/Wikidata grounding.    │
├────────────────────────────────────────┼────────────────────────────────────────────────┤
│  EXPERIENCE (20% - The Differentiator) │  First-hand testing, un-fakeable process logs, │
│                                        │  original screenshots, real-world case studies.│
└────────────────────────────────────────┴────────────────────────────────────────────────┘
```

- **Trustworthiness (30% - Foundation)**: Trust is the most critical element. A site with high expertise but deceptive payment flows or missing contact information will be penalized site-wide.
- **Experience (20% - The Un-Fakeable Differentiator)**: AI models can effortlessly fabricate generic "expertise," but they cannot produce genuine first-hand experience. Lived experience (original test outputs, physical measurements, debugging war stories) is the primary hedge against automated AI devaluation.

### B. The Who / How / Why Quality Test
Every technical publication and product page must satisfy Google's three-part transparency standard:
- **Who**: Who authored or engineered the solution? Visible author byline with credentials, personal bio, and verifiable social/GitHub profiles. Essential for YMYL topics.
- **How**: How was the content or product created? Transparent methodology disclosure (test environment, hardware specs, dataset version, and honest disclosure of AI assistance).
- **Why**: Why does this page exist? It must exist to genuinely help human engineers solve a problem, not to capture keyword search volume.

### C. Expanded YMYL (Your Money or Your Life) Scope
Pages that can directly impact human health, financial security, or societal well-being are held to the highest possible E-E-A-T standards:
- Financial transactions, investment advice, billing workflows.
- Health, medical treatments, mental health, and physical safety.
- Legal contracts, compliance, privacy policies.
- **Elections, civic trust, and democratic processes** (formally expanded in QRG updates).

### D. E-E-A-T Scoring Bands & Remediation Tiers

| Score | Rating Tier | Observable Characteristics | Required Remediation |
| :--- | :--- | :--- | :--- |
| **90–100** | Exceptional | Recognized industry authority, primary research origin, full corporate transparency, extensive peer citations. | Maintenance: Keep dependencies, benchmarks, and credentials current. |
| **70–89** | Strong | Demonstrated domain expertise, clear bylines, original test data, HTTPS, valid privacy/contact terms. | Minor: Add original multimedia, expand external author footprints, publish update logs. |
| **50–69** | Moderate | Adequate technical content, but lacks demonstrable first-hand experience or author credentials. | Moderate: Add author bio, publish original test methodology, embed real screenshots/benchmarks. |
| **30–49** | Weak | Generic explanations, no visible author, commodity regurgitation, unverified claims. | Major: Add author credentials, replace generic text with original data, implement customer/user proof. |
| **0–29** | Critical Risk | Anonymous, deceptive patterns, broken security, scaled AI scrape without value. | Emergency: Implement HTTPS, add transparent contact/about pages, purge low-value churned pages. |

---

## 8. AISEO & Google Search Spam Demotion Gates

Google's spam policies and continuous core updates algorithmically demote and penalize abusive automated practices. Engineering systems must enforce automated guards against policy violations.

### A. Scaled Content Abuse (Mass-Produced AI Pages)
- **Policy Invariant**: Using generative AI tools or automated pipelines to mass-produce pages without adding substantial incremental value is a direct policy violation.
- **Automated Demotion Triggers**:
  - Thousands of pages generated by swapping variables into identical prompt templates.
  - Automated translation or synonymizing without human verification.
  - Pages that rehash existing top-10 search results without introducing original data, benchmarks, or code.
- **Rule**: Every programmatic page must contain distinct computed telemetry, original recipes, or unique data tables.

### B. Site Reputation Abuse ("Parasite SEO")
- **Policy Invariant**: Hosting third-party, low-quality content on a reputable domain to exploit the host's domain authority without sufficient first-party editorial oversight.
- **Enforcement Mechanics**: Algorithmic separation and manual actions. In certain jurisdictions (EEA), search engines segregate third-party hosted directories from main domain ranking signals; globally, it triggers severe domain-wide manual penalties.

### C. Back-Button Hijacking (Browser History Trapping - Enforced June 2026)
- **Policy Invariant**: Manipulating browser history so users cannot use the browser's Back button to return to search results. Formally announced April 2026; automated demotions and manual actions live since **June 15, 2026**.
- **Violations**:
  - Calling `history.pushState()` or `history.replaceState()` on page load or scroll without user navigation intent.
  - Redirect loops that trap the user when clicking "Back".
  - Malicious or rogue third-party ad scripts inserting dummy history states.
- **Enforcement**: CI/CD automated linting must ban un-prompted `history.pushState` on render.

### D. AI-Generated Media Compliance (IPTC Standard)
- **IPTC DigitalSourceType**: Any AI-generated or algorithmically modified imagery must preserve or inject standard IPTC/XMP metadata:
  ```
  XMP-iptcExtension:DigitalSourceType = "http://cv.iptc.org/newscodes/digitalsourcetype/trainedAlgorithmicMedia"
  ```
- **Merchant Center Compliance**: AI-generated product titles, descriptions, and synthetic media must be flagged in automated feeds to prevent merchant suspensions.

---

## 9. Programmatic Search (pSEO) & Topic Clusters

Building dynamic or template-driven pages at scale (e.g. integration directories, component catalogs, error code databases) requires strict quality guardrails:

```
                  ┌──────────────────────┐
                  │     Pillar Hub       │
                  │ (High-Level Guide)   │
                  └──────────┬───────────┘
                             │
            ┌────────────────┼────────────────┐
            ▼                ▼                ▼
     ┌──────────────┐ ┌──────────────┐ ┌──────────────┐
     │ Spoke Page A │ │ Spoke Page B │ │ Spoke Page C │
     │ (Deep Dive)  │ │ (Deep Dive)  │ │ (Deep Dive)  │
     └──────────────┘ └──────────────┘ └──────────────┘
```

- **Hub-and-Spoke Linking**: The central Pillar Hub links to all Spoke Pages; each Spoke Page links back to the Pillar and references sibling Spokes where relevant.
- **The Value-Add Rule for pSEO**: Never generate programmatic pages using simple database text swaps. Every programmatic page must contain unique data, computed statistics, code recipes, or platform-specific instructions.
- **Index Bloat Threshold**: If a generated page receives zero organic impressions over 90 days and offers no direct utility, mark with `<meta name="robots" content="noindex">` or consolidate into a parent directory.

---

## 10. CI/CD SEO & AI Discoverability Drift Gate: The 24-Rule Matrix

Frontend refactors, framework upgrades, and component migrations frequently introduce silent SEO regressions. Enforce automated verification in your pre-push test suites and CI workflows.

### A. The 24 SEO & AI Discoverability Drift Rules Matrix

| Severity | Code | Violation Description | Auto-Fix / Remediation |
| :--- | :--- | :--- | :--- |
| **P0 (Critical)** | `SEO-CANONICAL-DROP` | `<link rel="canonical">` missing, empty, or points to relative URL | Restore absolute canonical URL pointing to self |
| **P0 (Critical)** | `SEO-NOINDEX-LEAK` | `<meta name="robots" content="noindex">` deployed to production | Remove noindex directive from production builds |
| **P0 (Critical)** | `SEO-STATUS-BROKEN` | Route returns 4xx/5xx or unexpected redirect | Fix route handler and verify 200 OK |
| **P0 (Critical)** | `SEO-HISTORY-HIJACK` | Script executes unprompted `history.pushState` trapping Back button | Purge unsolicited history state injections |
| **P0 (Critical)** | `SEO-TITLE-EMPTY` | `<title>` tag missing, empty, or exceeds 70 characters | Provide concise, descriptive title (50–60 chars) |
| **P1 (Major)** | `SEO-SCHEMA-SYNTAX` | JSON-LD contains invalid JSON syntax or missing `@context` | Validate with JSON schema parser in CI |
| **P1 (Major)** | `SEO-SCHEMA-DEPRECATED` | Page uses sunsetted schema type (`FAQPage`, `HowTo`, `ClaimReview`) | Replace with active type (`QAPage`, `Article`) |
| **P1 (Major)** | `SEO-H1-COUNT` | Page has zero or multiple `<h1>` headings | Enforce exactly one `<h1>` per view |
| **P1 (Major)** | `SEO-EEAT-BYLINE` | Technical/YMYL page missing visible author byline & bio link | Render verified author attribution component |
| **P1 (Major)** | `SEO-AGENT-LABEL` | Interactive form `<input>` missing `<label for>` or `aria-label` | Connect input to explicit label for accessibility tree |
| **P1 (Major)** | `SEO-OG-MISSING` | Missing `og:title`, `og:description`, or `og:image` | Populate OpenGraph metadata for social sharing |
| **P1 (Major)** | `SEO-HREFLANG-BROKEN`| Alternate language link does not have reciprocal mapping | Ensure bidirectional `hreflang` references |
| **P1 (Major)** | `SEO-PASSAGE-DENSITY` | Top 30% of content lacks self-contained direct answer block | Front-load 40–60 word answer immediately after H1 |
| **P1 (Major)** | `SEO-IPTC-METADATA` | AI-generated image lacks `TrainedAlgorithmicMedia` IPTC tag | Inject IPTC DigitalSourceType metadata on asset build |
| **P2 (Minor)** | `SEO-META-DESC-LEN` | Meta description missing or outside 120–160 characters | Tune description length to avoid snippet truncation |
| **P2 (Minor)** | `SEO-IMG-ALT-MISSING`| Content images missing descriptive `alt` attributes | Add descriptive, accessible alt text |
| **P2 (Minor)** | `SEO-LINK-EMPTY` | `<a>` tags missing `href` or descriptive anchor text | Ban `href="#"` or unlabelled icon links |
| **P2 (Minor)** | `SEO-OVERLAY-TRAP` | Clickable element smaller than 24×24px or covered by overlay | Increase hit target and remove blocking portals |
| **P2 (Minor)** | `SEO-LLMS-TXT` | Missing `/llms.txt` endpoint at domain root | Deploy standard `/llms.txt` file for coding agents |
| **P2 (Minor)** | `SEO-LASTMOD-VALID` | Sitemap `<lastmod>` missing or invalid ISO-8601 date | Generate real modification timestamp from git/CMS |
| **P2 (Minor)** | `SEO-REDIRECT-CHAIN` | Redirect resolves in >1 hop (e.g., A -> B -> C) | Flatten redirect directly to target (A -> C) |
| **P2 (Minor)** | `SEO-TABLE-STRUCTURE` | Data comparison lacks semantic `<table>` tags | Convert markdown/cards to semantic HTML table |
| **P2 (Minor)** | `SEO-SSR-CONTENT` | Core content body empty in raw SSR HTML (SPA hydration leak)| Ensure full prose rendered on initial HTML payload |
| **P2 (Minor)** | `SEO-ROBOTS-VALID` | `/robots.txt` missing sitemap link or blocking AI agents | Declare sitemap and verify GPTBot/ClaudeBot rules |

### B. Pre-Push SEO & AI Discoverability Test Pattern
Integrate an automated SEO check script into your testing pipeline (`npm run test:seo` or `python check_seo.py`):

```python
# scripts/check_seo_drift.py
import sys
import json
import re
from bs4 import BeautifulSoup

def verify_html(html_path):
    with open(html_path, "r", encoding="utf-8") as f:
        content = f.read()
        soup = BeautifulSoup(content, "html.parser")

    errors = []
    
    # 1. Canonical tag check (P0)
    canonical = soup.find("link", rel="canonical")
    if not canonical or not canonical.get("href", "").startswith("https://"):
        errors.append("P0 [SEO-CANONICAL-DROP]: Missing or non-HTTPS canonical link")

    # 2. Noindex leak check (P0)
    robots_meta = soup.find("meta", attrs={"name": re.compile(r"robots", re.I)})
    if robots_meta and "noindex" in robots_meta.get("content", "").lower():
        errors.append("P0 [SEO-NOINDEX-LEAK]: Found noindex directive in production build")

    # 3. Back-button hijacking check (P0)
    if "history.pushState" in content and "addEventListener('load'" in content:
        errors.append("P0 [SEO-HISTORY-HIJACK]: Detected unprompted pushState on page load")

    # 4. Heading count (P1)
    h1_tags = soup.find_all("h1")
    if len(h1_tags) != 1:
        errors.append(f"P1 [SEO-H1-COUNT]: Expected exactly 1 h1 tag, found {len(h1_tags)}")

    # 5. Schema JSON-LD & Deprecations (P1)
    scripts = soup.find_all("script", type="application/ld+json")
    if not scripts:
        errors.append("P1 [SEO-SCHEMA-SYNTAX]: Missing structured JSON-LD data")
    else:
        for script in scripts:
            try:
                data = json.loads(script.string or "{}")
                # Check for deprecated FAQPage
                data_str = json.dumps(data)
                if '"@type": "FAQPage"' in data_str:
                    errors.append("P1 [SEO-SCHEMA-DEPRECATED]: FAQPage schema retired May 2026; use QAPage or Article")
            except json.JSONDecodeError as err:
                errors.append(f"P1 [SEO-SCHEMA-SYNTAX]: Invalid JSON-LD syntax: {err}")

    # 6. E-E-A-T Byline verification (P1)
    byline = soup.find(attrs={"rel": "author"}) or soup.find(class_=re.compile(r"author|byline", re.I))
    if not byline:
        errors.append("P1 [SEO-EEAT-BYLINE]: Technical article lacks visible author attribution")

    # 7. Agent accessibility tree inputs (P1)
    inputs = soup.find_all("input")
    for inp in inputs:
        inp_id = inp.get("id")
        aria_label = inp.get("aria-label") or inp.get("aria-labelledby")
        if not aria_label:
            if not inp_id or not soup.find("label", attrs={"for": inp_id}):
                errors.append(f"P1 [SEO-AGENT-LABEL]: Input '{inp.get('name', 'unnamed')}' missing accessible label")

    if errors:
        print("\n".join(errors), file=sys.stderr)
        sys.exit(1)
    print(f"✓ {html_path} passed SEO & AI Discoverability drift gate")

if __name__ == "__main__":
    verify_html(sys.argv[1])
```
