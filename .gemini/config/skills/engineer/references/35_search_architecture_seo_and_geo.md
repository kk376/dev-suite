# Search Architecture, Schema Graphs, Generative Engine Optimization (GEO) & SEO Drift Governance

A production engineering standard for technical search architecture, Schema.org semantic knowledge graphs, Generative Engine Optimization (GEO) for AI search engines, programmatic search architecture, and CI/CD-enforced SEO regression monitoring.

---

## 1. The Dual Discovery Spectrum: Traditional Crawlers & AI Answer Engines

Modern web engineering requires optimizing for two distinct discovery systems simultaneously:

1. **Traditional Crawlers (Google, Bing)**: Rely on URL structure, HTTP status codes, link equity graphs, Core Web Vitals, and HTML element semantics.
2. **Generative AI Search Engines (Perplexity, ChatGPT Search, Claude, Google AI Overviews)**: Rely on entity clarity, brand citation density, passage-level citability, structured data graphs, and LLM-friendly documentation.

```
┌─────────────────────────────────────────────────────────────────────────────────────────┐
│                               THE DUAL DISCOVERY STACK                                  │
├─────────────────────────────────────────┬───────────────────────────────────────────────┤
│  TRADITIONAL SEARCH (Google / Bing)     │  AI ANSWER ENGINES (ChatGPT / Perplexity)     │
├─────────────────────────────────────────┼───────────────────────────────────────────────┤
│ • Canonicalization & Status Codes       │ • Passage-Level Citability & Atomic Claims    │
│ • XML Sitemaps & Crawl Budget           │ • Entity Relationship Graphs (JSON-LD)        │
│ • Core Web Vitals (LCP, INP, CLS)       │ • Brand Mentions across Authoritative Hubs    │
│ • Internal PageRank Link Equity         │ • AI Crawler Access (GPTBot, ClaudeBot, etc.) │
│ • Bidirectional hreflang Mappings       │ • Direct Answer Snippets & LLM Context (/llms)│
└─────────────────────────────────────────┴───────────────────────────────────────────────┘
```

---

## 2. Technical SEO Architecture & Crawlability

Search engines and crawlers are automated HTTP clients with strict time and resource constraints. Systems must adhere to deterministic URL normalization and routing contracts.

### A. URL Normalization & Canonicalization
- **Single Canonical Representation**: Every resource must resolve to exactly one canonical URL. Enforce lowercase paths, trailing slash consistency (choose either `/path` or `/path/`, never both), and HTTPS.
- **Canonical Tag Rule**: Every page must declare a self-referencing `<link rel="canonical" href="https://example.com/canonical-url">` unless it is explicitly an alternate view of another primary page.
- **Redirect Semantics**:
  - Use `301 Moved Permanently` or `308 Permanent Redirect` for canonical normalization (e.g. `http://` $\to$ `https://`, `www` $\to$ non-www).
  - Use `308` when preserving HTTP request methods (`POST`/`PUT`) across redirects.
  - Ban redirect chains (e.g. `A` $\to$ `B` $\to$ `C`). Resolve redirects directly in one hop (`A` $\to$ `C`).

### B. Robots.txt Architecture & AI Bot Policies
Maintain a clean `/robots.txt` at the domain root with explicit crawler directives:

```text
User-agent: *
Allow: /
Disallow: /api/
Disallow: /admin/
Disallow: /auth/
Disallow: /private/
Disallow: /search?*

# Allow AI Search & Indexing Agents
User-agent: GPTBot
Allow: /

User-agent: ClaudeBot
Allow: /

User-agent: PerplexityBot
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
      "name": "DevCompany",
      "url": "https://example.com",
      "logo": {
        "@type": "ImageObject",
        "@id": "https://example.com/#logo",
        "url": "https://example.com/assets/logo.png"
      },
      "sameAs": [
        "https://github.com/example",
        "https://linkedin.com/company/example"
      ]
    },
    {
      "@type": "WebSite",
      "@id": "https://example.com/#website",
      "url": "https://example.com",
      "name": "DevCompany",
      "publisher": { "@id": "https://example.com/#organization" }
    },
    {
      "@type": "SoftwareApplication",
      "@id": "https://example.com/#software",
      "name": "SuperEngine",
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
| **Frequently Asked Questions** | `FAQPage` | `mainEntity`: array of `Question` and accepted `Answer` |

---

## 4. Generative Engine Optimization (GEO) & AI Search

Generative AI engines (Perplexity, ChatGPT Web, Claude, Google AI Overviews) synthesize answers by crawling and extracting passages rather than simply matching keyword frequencies.

### A. Citability & Information Architecture
- **Inverted Pyramid Passage Construction**: Place the direct answer or core definition in the first 40–60 words of a section, immediately following the heading.
- **Self-Contained Fact Units**: AI extractors isolate single paragraphs. Ensure definitions make sense standalone without relying on ambiguous pronouns (*"This tool"* $\to$ *"SuperEngine is a Rust-based..."*).
- **Atomic Tables & Key Metrics**: Tabular data, concrete benchmarks, and metric tables are cited by LLMs at 4x the rate of prose paragraphs.
- **Authoritative Anchor Density**: Include exact version numbers, release dates, benchmark methodologies, and primary citations.

### B. Machine-Readable LLM Context (`/llms.txt`)
Provide an AI-readable index at `/llms.txt` (and `/llms-full.txt` for documentation) following the emerging standard:
- Place at `https://example.com/llms.txt`.
- Outline the product, system architecture, key documentation links, and code snippets formatted in clear markdown for consumption by reasoning agents.

---

## 5. Programmatic SEO (pSEO) & Topic Clusters

Building dynamic or template-driven pages at scale (e.g. integration directories, component catalogs, error code databases) requires strict quality guardrails to avoid search penalties.

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

## 6. CI/CD SEO Drift Gate: Preventing Search Regressions

Frontend refactors, framework upgrades, and component migrations frequently introduce silent SEO regressions. Enforce automated verification in your pre-push test suites and CI workflows.

### A. The 17 SEO Drift Rules Matrix

| Severity | Code | Violation Description | Auto-Fix / Remediation |
| :--- | :--- | :--- | :--- |
| **P0 (Critical)** | `SEO-CANONICAL-DROP` | `<link rel="canonical">` is missing, empty, or points to relative URL | Restore absolute canonical URL pointing to self |
| **P0 (Critical)** | `SEO-NOINDEX-LEAK` | `<meta name="robots" content="noindex">` deployed to production | Remove noindex directive from production builds |
| **P0 (Critical)** | `SEO-TITLE-EMPTY` | `<title>` tag missing, empty, or exceeds 70 characters | Provide concise, descriptive title (50–60 chars) |
| **P0 (Critical)** | `SEO-STATUS-BROKEN` | Route returns 4xx/5xx or unexpected redirect | Fix route handler and verify 200 OK |
| **P1 (Major)** | `SEO-SCHEMA-SYNTAX` | JSON-LD contains invalid JSON syntax or missing `@context` | Validate with JSON schema parser in CI |
| **P1 (Major)** | `SEO-H1-COUNT` | Page has zero or multiple `<h1>` headings | Enforce exactly one `<h1>` per view |
| **P1 (Major)** | `SEO-OG-MISSING` | Missing `og:title`, `og:description`, or `og:image` | Populate OpenGraph metadata for social sharing |
| **P1 (Major)** | `SEO-HREFLANG-BROKEN`| Alternate language link does not have reciprocal mapping | Ensure bidirectional `hreflang` references |
| **P2 (Minor)** | `SEO-META-DESC-LEN` | Meta description missing or outside 120–160 characters | Tune description length to avoid snippet truncation |
| **P2 (Minor)** | `SEO-IMG-ALT-MISSING`| Content images missing descriptive `alt` attributes | Add descriptive, accessible alt text |
| **P2 (Minor)** | `SEO-LINK-EMPTY` | `<a>` tags missing `href` or descriptive anchor text | Ban `href="#"` or unlabelled icon links |

### B. Pre-Push SEO Drift Test Pattern
Integrate an automated SEO check script into your testing pipeline (`npm run test:seo` or `python check_seo.py`):

```python
# scripts/check_seo_drift.py
import sys
from bs4 import BeautifulSoup

def verify_html(html_path):
    with open(html_path, "r", encoding="utf-8") as f:
        soup = BeautifulSoup(f.read(), "html.parser")

    errors = []
    
    # Check 1: Canonical tag
    canonical = soup.find("link", rel="canonical")
    if not canonical or not canonical.get("href", "").startswith("https://"):
        errors.append("P0: Missing or non-HTTPS canonical link")

    # Check 2: Single H1
    h1_tags = soup.find_all("h1")
    if len(h1_tags) != 1:
        errors.append(f"P1: Expected exactly 1 h1 tag, found {len(h1_tags)}")

    # Check 3: JSON-LD validation
    scripts = soup.find_all("script", type="application/ld+json")
    if not scripts:
        errors.append("P1: Missing structured JSON-LD data")

    if errors:
        print("\n".join(errors), file=sys.stderr)
        sys.exit(1)
    print(f"✓ {html_path} passed SEO drift gate")

if __name__ == "__main__":
    verify_html(sys.argv[1])
```
