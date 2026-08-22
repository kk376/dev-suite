# Cloud Infrastructure, Databases & Dev Platforms

> High density data tables, metric graphs, log viewers, terminal-inspired dark modes, glowing status indicators.

## Brands in this Archetype

- [`clickhouse`](#clickhouse)
- [`composio`](#composio)
- [`expo`](#expo)
- [`mongodb`](#mongodb)
- [`posthog`](#posthog)
- [`resend`](#resend)
- [`sanity`](#sanity)
- [`sentry`](#sentry)
- [`supabase`](#supabase)
- [`vercel`](#vercel)
- [`webflow`](#webflow)

---

## Brand: `clickhouse`

---
version: alpha
name: ClickHouse-design-analysis
description: A high-performance database interface anchored on near-pure black canvas with electric yellow as the brand voltage. White typography in confident sans, yellow CTAs, and yellow-text stat numbers carry the brand voice across every page. Code blocks and product UI fragments embed directly in dark cards. The yellow + black pairing (and yellow used scarcely as accent) is the system's signature — brand identity without atmospheric decoration.

colors:
  primary: "#faff69"
  primary-active: "#e6eb52"
  primary-disabled: "#3a3a1f"
  ink: "#ffffff"
  body: "#cccccc"
  body-strong: "#e6e6e6"
  muted: "#888888"
  muted-soft: "#5a5a5a"
  hairline: "#2a2a2a"
  hairline-strong: "#3a3a3a"
  canvas: "#0a0a0a"
  surface-soft: "#121212"
  surface-card: "#1a1a1a"
  surface-elevated: "#242424"
  surface-yellow-band: "#faff69"
  on-primary: "#0a0a0a"
  on-dark: "#ffffff"
  on-yellow: "#0a0a0a"
  accent-emerald: "#22c55e"
  accent-rose: "#ef4444"
  accent-blue: "#3b82f6"
  success: "#22c55e"
  warning: "#f59e0b"
  error: "#ef4444"

typography:
  display-xl:
    fontFamily: "Inter, sans-serif"
    fontSize: 72px
    fontWeight: 700
    lineHeight: 1.05
    letterSpacing: -2.5px
  display-lg:
    fontFamily: "Inter, sans-serif"
    fontSize: 56px
    fontWeight: 700
    lineHeight: 1.1
    letterSpacing: -2px
  display-md:
    fontFamily: "Inter, sans-serif"
    fontSize: 40px
    fontWeight: 700
    lineHeight: 1.15
    letterSpacing: -1.5px
  display-sm:
    fontFamily: "Inter, sans-serif"
    fontSize: 32px
    fontWeight: 700
    lineHeight: 1.2
    letterSpacing: -1px
  title-lg:
    fontFamily: "Inter, sans-serif"
    fontSize: 24px
    fontWeight: 700
    lineHeight: 1.3
    letterSpacing: -0.3px
  title-md:
    fontFamily: "Inter, sans-serif"
    fontSize: 18px
    fontWeight: 600
    lineHeight: 1.4
    letterSpacing: 0
  title-sm:
    fontFamily: "Inter, sans-serif"
    fontSize: 16px
    fontWeight: 600
    lineHeight: 1.4
    letterSpacing: 0
  stat-display:
    fontFamily: "Inter, sans-serif"
    fontSize: 56px
    fontWeight: 700
    lineHeight: 1.0
    letterSpacing: -1.5px
  body-md:
    fontFamily: "Inter, sans-serif"
    fontSize: 16px
    fontWeight: 400
    lineHeight: 1.55
    letterSpacing: 0
  body-sm:
    fontFamily: "Inter, sans-serif"
    fontSize: 14px
    fontWeight: 400
    lineHeight: 1.55
    letterSpacing: 0
  caption:
    fontFamily: "Inter, sans-serif"
    fontSize: 13px
    fontWeight: 500
    lineHeight: 1.4
    letterSpacing: 0
  caption-uppercase:
    fontFamily: "Inter, sans-serif"
    fontSize: 12px
    fontWeight: 600
    lineHeight: 1.4
    letterSpacing: 1.5px
  code:
    fontFamily: "JetBrains Mono, ui-monospace, monospace"
    fontSize: 14px
    fontWeight: 400
    lineHeight: 1.55
    letterSpacing: 0
  button:
    fontFamily: "Inter, sans-serif"
    fontSize: 14px
    fontWeight: 600
    lineHeight: 1
    letterSpacing: 0
  nav-link:
    fontFamily: "Inter, sans-serif"
    fontSize: 14px
    fontWeight: 500
    lineHeight: 1.4
    letterSpacing: 0

rounded:
  xs: 4px
  sm: 6px
  md: 8px
  lg: 12px
  pill: 9999px
  full: 9999px

spacing:
  xxs: 4px
  xs: 8px
  sm: 12px
  md: 16px
  lg: 24px
  xl: 32px
  xxl: 48px
  section: 96px

components:
  button-primary:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button}"
    rounded: "{rounded.md}"
    padding: 12px 20px
    height: 40px
  button-primary-active:
    backgroundColor: "{colors.primary-active}"
    textColor: "{colors.on-primary}"
    rounded: "{rounded.md}"
  button-primary-disabled:
    backgroundColor: "{colors.primary-disabled}"
    textColor: "{colors.muted}"
    rounded: "{rounded.md}"
  button-secondary:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.on-dark}"
    typography: "{typography.button}"
    rounded: "{rounded.md}"
    padding: 12px 20px
    height: 40px
  button-text-link:
    backgroundColor: transparent
    textColor: "{colors.on-dark}"
    typography: "{typography.button}"
  button-icon-circular:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.on-dark}"
    rounded: "{rounded.full}"
    size: 36px
  text-link:
    backgroundColor: transparent
    textColor: "{colors.primary}"
    typography: "{typography.body-md}"
  top-nav:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.on-dark}"
    typography: "{typography.nav-link}"
    height: 64px
  hero-band:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.on-dark}"
    typography: "{typography.display-xl}"
    padding: 96px
  hero-stat-card:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.primary}"
    typography: "{typography.stat-display}"
  feature-card-yellow:
    backgroundColor: "{colors.surface-yellow-band}"
    textColor: "{colors.on-yellow}"
    typography: "{typography.title-md}"
    rounded: "{rounded.lg}"
    padding: 32px
  feature-card-dark:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.on-dark}"
    typography: "{typography.title-md}"
    rounded: "{rounded.lg}"
    padding: 32px
  code-window-card:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.on-dark}"
    typography: "{typography.code}"
    rounded: "{rounded.lg}"
    padding: 24px
  product-mockup-card:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.on-dark}"
    typography: "{typography.title-md}"
    rounded: "{rounded.lg}"
    padding: 24px
  pricing-tier-card:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.on-dark}"
    typography: "{typography.title-lg}"
    rounded: "{rounded.lg}"
    padding: 32px
  pricing-tier-card-featured:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.title-lg}"
    rounded: "{rounded.lg}"
    padding: 32px
  stat-callout:
    backgroundColor: transparent
    textColor: "{colors.primary}"
    typography: "{typography.stat-display}"
  cta-band-yellow:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.display-md}"
    rounded: "{rounded.lg}"
    padding: 64px
  text-input:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.on-dark}"
    typography: "{typography.body-md}"
    rounded: "{rounded.md}"
    padding: 10px 14px
    height: 40px
  text-input-focused:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.on-dark}"
    rounded: "{rounded.md}"
  category-tab:
    backgroundColor: transparent
    textColor: "{colors.muted}"
    typography: "{typography.nav-link}"
    rounded: "{rounded.md}"
    padding: 8px 14px
  category-tab-active:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.on-dark}"
    typography: "{typography.nav-link}"
    rounded: "{rounded.md}"
  badge-pill:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.on-dark}"
    typography: "{typography.caption}"
    rounded: "{rounded.pill}"
    padding: 4px 12px
  badge-yellow:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.caption-uppercase}"
    rounded: "{rounded.pill}"
    padding: 4px 12px
  events-card:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.on-dark}"
    typography: "{typography.title-md}"
    rounded: "{rounded.lg}"
    padding: 24px
  customer-logo-strip:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.muted}"
    typography: "{typography.body-md}"
    padding: 32px
  footer:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.muted}"
    typography: "{typography.body-sm}"
    padding: 64px
---

## Overview

ClickHouse's marketing surface is the highest-contrast interface in the database / data-platform category. The base atmosphere is **near-pure black canvas** (`{colors.canvas}` — #0a0a0a) with **electric yellow** (`{colors.primary}` — #faff69) as the singular brand voltage. The yellow handles every primary CTA, every stat-callout number, every "GET STARTED" badge — used scarcely on individual elements but generously on full-bleed yellow CTA cards. White typography in confident weight-700 sans-serif anchors the editorial body.

The yellow + black pairing is what makes ClickHouse instantly recognizable. Where Snowflake uses cool blue gradients and Databricks uses red + slate, ClickHouse leans hard into one electric yellow that does all the brand work. Code blocks, terminal output, and product UI fragments embed directly in dark `{colors.surface-card}` (#1a1a1a) cards across every page.

Type voice runs **Inter** at confident weights — 700 for display headlines (with negative letter-spacing -1 to -2.5px), 600 for sub-titles and buttons, 400 for body. The system has no display-serif counter-voice; everything is one geometric humanist sans, scaled and weighted for hierarchy.

**Key Characteristics:**
- Near-pure black canvas (`{colors.canvas}` — #0a0a0a) with white type. The system has no light-mode marketing surface.
- Electric yellow primary (`{colors.primary}` — #faff69). Used on primary CTAs, large stat-callout numbers ("2.8k+", "74k+"), and full-bleed yellow CTA bands.
- Inter at weight 700 for display, weight 600 for sub-titles + buttons, weight 400 for body. No serif counterpoint.
- Dark surface cards (`{colors.surface-card}` — #1a1a1a) for feature cards, code windows, and product mockups. Cards barely lighter than canvas — color-block contrast is subtle.
- Code blocks render in JetBrains Mono inside `{colors.surface-card}`. SQL syntax-highlighted in muted blues / yellows / grays.
- Stat numbers in yellow + sans-700 + huge size carry the credibility moment ("779+", "2.8k+", "47k+" community / contributor / star counts).
- Border radius is hierarchical: `{rounded.md}` (8px) for buttons, `{rounded.lg}` (12px) for content cards. No pill except in tag badges.
- Section rhythm `{spacing.section}` (96px) between major editorial bands.

## Colors

### Brand & Accent
- **Primary (Electric Yellow)** (`{colors.primary}` — #faff69): The signature brand color. All primary CTA backgrounds, large stat-callout numbers, full-bleed yellow CTA cards. The yellow is the brand.
- **Primary Active** (`{colors.primary-active}` — #e6eb52): Press / hover-darker variant.
- **Primary Disabled** (`{colors.primary-disabled}` — #3a3a1f): Desaturated dark-yellow on dark canvas.

### Surface
- **Canvas** (`{colors.canvas}` — #0a0a0a): The default page floor. Near-pure black.
- **Surface Soft** (`{colors.surface-soft}` — #121212): Section dividers, very-soft band tints.
- **Surface Card** (`{colors.surface-card}` — #1a1a1a): Feature cards, code windows, product mockups, pricing tier cards.
- **Surface Elevated** (`{colors.surface-elevated}` — #242424): Nested cards inside larger dark cards.
- **Surface Yellow Band** (`{colors.surface-yellow-band}` — #faff69): The yellow CTA card / band fill — same hex as primary.
- **Hairline** (`{colors.hairline}` — #2a2a2a): 1px borders on cards.
- **Hairline Strong** (`{colors.hairline-strong}` — #3a3a3a): Heavier divider on input underlines and emphasis.

### Text
- **Ink / On Dark** (`{colors.on-dark}` — #ffffff): All headline and primary text.
- **Body** (`{colors.body}` — #cccccc): Default running-text color.
- **Body Strong** (`{colors.body-strong}` — #e6e6e6): Emphasized paragraphs.
- **Muted** (`{colors.muted}` — #888888): Footer links, captions, breadcrumbs.
- **Muted Soft** (`{colors.muted-soft}` — #5a5a5a): Tertiary text — fine print.
- **On Primary / On Yellow** (`{colors.on-primary}` / `{colors.on-yellow}` — #0a0a0a): Black text on yellow CTAs and yellow CTA bands. The high-contrast yellow + black combo is the brand action signal.

### Semantic / Accent
- **Accent Emerald** (`{colors.accent-emerald}` — #22c55e): Success states, "active" status indicators in product UI.
- **Accent Rose** (`{colors.accent-rose}` — #ef4444): Error states, "down" indicators.
- **Accent Blue** (`{colors.accent-blue}` — #3b82f6): Info states, code-syntax highlighting.

## Typography

### Font Family
The system runs **Inter** for everything — display, body, navigation, buttons, captions. **JetBrains Mono** handles code blocks. The fallback stack walks `-apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif`.

The single-family approach is deliberate: Inter at weight 700 + 600 + 400 covers the entire hierarchy without needing a serif or display counter-voice. The geometric humanist character of Inter at confident bold weight gives ClickHouse a precise, engineered feel that matches the database's performance-first positioning.

### Hierarchy

| Token | Size | Weight | Line Height | Letter Spacing | Use |
|---|---|---|---|---|---|
| `{typography.display-xl}` | 72px | 700 | 1.05 | -2.5px | Homepage h1 ("The leading database for AI") |
| `{typography.display-lg}` | 56px | 700 | 1.1 | -2px | Section heads |
| `{typography.display-md}` | 40px | 700 | 1.15 | -1.5px | Sub-section heads, CTA-band heads |
| `{typography.display-sm}` | 32px | 700 | 1.2 | -1px | Card titles, pricing tier prices |
| `{typography.title-lg}` | 24px | 700 | 1.3 | -0.3px | Pricing plan names, larger feature titles |
| `{typography.title-md}` | 18px | 600 | 1.4 | 0 | Card titles, intro paragraphs |
| `{typography.title-sm}` | 16px | 600 | 1.4 | 0 | Small card titles, list labels |
| `{typography.stat-display}` | 56px | 700 | 1.0 | -1.5px | Stat callouts ("779+", "47k+") — ALWAYS yellow |
| `{typography.body-md}` | 16px | 400 | 1.55 | 0 | Default running-text |
| `{typography.body-sm}` | 14px | 400 | 1.55 | 0 | Footer body, fine-print |
| `{typography.caption}` | 13px | 500 | 1.4 | 0 | Badge labels, captions |
| `{typography.caption-uppercase}` | 12px | 600 | 1.4 | 1.5px | Section labels, "NEW" badges |
| `{typography.code}` | 14px | 400 | 1.55 | 0 | Code blocks — JetBrains Mono |
| `{typography.button}` | 14px | 600 | 1.0 | 0 | Standard button labels |
| `{typography.nav-link}` | 14px | 500 | 1.4 | 0 | Top-nav menu items |

### Principles
Display weights stay at 700 across all sizes. Negative letter-spacing (-1 to -2.5px) is essential — Inter at weight 700 without negative tracking reads as too wide / Apple-marketing. The tightened tracking gives ClickHouse the precise, engineered feel.

Body and labels stay at weights 400 / 500 / 600. The hierarchy is built on size + weight, not on family contrast.

### Note on Font Substitutes
Inter is open-source and the documented choice. **Söhne** is a close commercial alternative if licensed. **Geist** is another modern alternative.

## Layout

### Spacing System
- **Base unit:** 4px.
- **Tokens:** `{spacing.xxs}` 4px · `{spacing.xs}` 8px · `{spacing.sm}` 12px · `{spacing.md}` 16px · `{spacing.lg}` 24px · `{spacing.xl}` 32px · `{spacing.xxl}` 48px · `{spacing.section}` 96px.
- **Section padding:** `{spacing.section}` (96px) between major bands.
- **Card internal padding:** `{spacing.xl}` (32px) for feature cards, pricing tiers; `{spacing.lg}` (24px) for code-window cards and event cards.

### Grid & Container
- **Max content width:** ~1280px centered.
- **Editorial body:** Single 12-column grid; hero often uses 7/5 split (h1 left, code mockup right).
- **Feature card grids:** 3-up at desktop, 2-up at tablet, 1-up at mobile.
- **Pricing grid:** 3-4 up at desktop, 1-up at mobile.

### Whitespace Philosophy
ClickHouse uses dense, slightly-compressed whitespace appropriate for a developer-tooling brand — generous enough to read editorially, tight enough to feel "engineering-grade" rather than "marketing-soft." Section rhythm at 96px is standard; card internal padding stays at 32px for feature cards.

## Elevation & Depth

| Level | Treatment | Use |
|---|---|---|
| Flat | No shadow, no border | Body sections, top nav, hero |
| Soft hairline | 1px `{colors.hairline}` border | Code-window cards, content cards |
| Surface card | `{colors.surface-card}` background — no shadow | Feature cards, pricing tiers, event cards |
| Yellow band | `{colors.primary}` background — no shadow | Full-bleed yellow CTA cards / bands |

The system uses no drop shadows. Depth comes from the contrast between black canvas and `{colors.surface-card}` (a barely-lighter-than-canvas tone) — the contrast is subtle, more like an "engineering-grade dim panel" than an "elevated card."

### Decorative Depth
- Code-window cards carry their own internal product chrome — line numbers, syntax highlighting, status bars at the bottom — adding visual density without external shadows.
- The yellow-on-black contrast does most of the elevation work for CTAs.

## Shapes

### Border Radius Scale

| Token | Value | Use |
|---|---|---|
| `{rounded.xs}` | 4px | Reserved for badge accents |
| `{rounded.sm}` | 6px | Small inline buttons |
| `{rounded.md}` | 8px | Standard CTA buttons, text inputs |
| `{rounded.lg}` | 12px | Content cards, code-window cards, pricing tiers |
| `{rounded.pill}` | 9999px | Badge pills |
| `{rounded.full}` | 9999px / 50% | Avatars, icon buttons |

## Components

### Top Navigation

**`top-nav`** — Black nav bar pinned to top. 64px tall, `{colors.canvas}` background. Carries the ClickHouse logo + wordmark at left, primary horizontal menu (Product, Use Cases, Pricing, Resources, Customers) center-left, right-side cluster with "Sign in" + "Get Started" `{component.button-primary}` (yellow). Menu items in `{typography.nav-link}` (Inter 14px / 500).

### Buttons

**`button-primary`** — The signature yellow CTA. Background `{colors.primary}` (#faff69), text `{colors.on-primary}` (black), type `{typography.button}` (Inter 14px / 600), padding 12px × 20px, height 40px, rounded `{rounded.md}` (8px). The yellow + black combination is iconic.

**`button-secondary`** — Dark surface card button. Background `{colors.surface-card}`, text `{colors.on-dark}`, same shape as primary.

**`button-text-link`** — Inline text button, no background. Used for "Sign in" and inline link CTAs.

**`text-link`** — Inline body links in `{colors.primary}` (yellow on dark). Underlined.

**`button-icon-circular`** — 36 × 36 circular icon button on dark.

### Cards & Containers

**`hero-band`** — Black-canvas hero with 7-5 grid: h1 + sub-headline + button row on the left, code-window or product mockup on the right. Vertical padding `{spacing.section}` (96px).

**`hero-stat-card`** — Yellow stat-display numbers ("779+", "47k+") inline on the canvas. No card surface — just yellow text in `{typography.stat-display}` (56px / 700).

**`feature-card-yellow`** — Full-bleed yellow card ("Built for every modern data challenge"). Background `{colors.primary}`, text `{colors.on-yellow}` (black), rounded `{rounded.lg}` (12px), padding `{spacing.xl}` (32px). The yellow card IS the visual emphasis.

**`feature-card-dark`** — Standard dark feature card. Background `{colors.surface-card}`, text `{colors.on-dark}`, rounded `{rounded.lg}`, padding `{spacing.xl}` (32px).

**`code-window-card`** — Dark card showing a SQL code block. Background `{colors.surface-card}`, code in JetBrains Mono with syntax highlighting, rounded `{rounded.lg}`, padding `{spacing.lg}` (24px). Often the hero's right-side artifact on developer-focused pages.

**`product-mockup-card`** — Card showing actual ClickHouse product UI (query editor, dashboard, monitoring panel). Same shape as `{component.feature-card-dark}` but with embedded product chrome inside.

**`pricing-tier-card`** — Standard tier card. Background `{colors.surface-card}`, rounded `{rounded.lg}`, padding `{spacing.xl}` (32px).

**`pricing-tier-card-featured`** — The featured tier flips to `{colors.primary}` (yellow). The yellow surface IS the featured signal.

**`stat-callout`** — Inline yellow stat numbers ("779+", "2.8k+", "47k+"). Transparent background, text `{colors.primary}`, type `{typography.stat-display}`. Used as a flat layout block, not a card with surface.

**`events-card`** — Used on /company/events. Dark card with event title, date in `{typography.caption-uppercase}`, location, and a "Register" CTA. Rounded `{rounded.lg}`, padding `{spacing.lg}`.

**`customer-logo-strip`** — Horizontal monochrome customer-logo strip. Background `{colors.canvas}`, logos in `{colors.muted}`, vertical padding `{spacing.xl}` (32px).

### Inputs & Forms

**`text-input`** — Dark text input. Background `{colors.surface-card}`, text `{colors.on-dark}`, rounded `{rounded.md}` (8px), padding 10px × 14px, height 40px.

**`text-input-focused`** — Border thickens to `{colors.primary}` (yellow) for emphasis.

### Tags / Badges

**`badge-pill`** — Small dark pill label. Background `{colors.surface-card}`, text `{colors.on-dark}`, type `{typography.caption}`, rounded `{rounded.pill}`.

**`badge-yellow`** — Yellow pill for "NEW", "GET STARTED" emphasis. Background `{colors.primary}`, text `{colors.on-primary}`, type `{typography.caption-uppercase}`, rounded `{rounded.pill}`.

### Tab / Filter

**`category-tab`** + **`category-tab-active`** — Dark tab navigation. Inactive: transparent + muted text. Active: surface-card background + on-dark text. Padding 8px × 14px, rounded `{rounded.md}`.

### CTA / Footer

**`cta-band-yellow`** — A pre-footer "Deploy your way" CTA band. Full yellow fill, black type, rounded `{rounded.lg}`, padding 64px. Carries an h2 in `{typography.display-md}` and a CTA — usually a black-button on the yellow surface.

**`footer`** — Black footer that closes every page. Background `{colors.canvas}`, text `{colors.muted}`. 4-column link list at desktop covering Product / Use Cases / Resources / Company. Vertical padding 64px. The ClickHouse wordmark sits at the top in `{colors.on-dark}`.

## Do's and Don'ts

### Do
- Anchor every page on the black canvas. The yellow + black pairing is the brand voltage.
- Reserve `{colors.primary}` (yellow) for primary CTAs, stat-callout numbers, and full-bleed yellow CTA bands. The yellow's scarcity at the element level + abundance at the band level is what makes it powerful.
- Use Inter at weight 700 for every display headline, with -1 to -2.5px letter-spacing.
- Show actual SQL code blocks inside `{component.code-window-card}` — ClickHouse is a database; show the query, don't paint marketing illustrations of queries.
- Use `{component.stat-callout}` numbers to establish credibility (community size, contributors, performance benchmarks). The yellow stat numbers are signature.
- Anchor every band with `{spacing.section}` (96px) vertical rhythm.

### Don't
- Don't introduce a second brand color. ClickHouse is monochromatic + yellow.
- Don't bold display weight beyond 700 or use weight 500 for headlines. The hierarchy depends on size, not on weight gradation.
- Don't use yellow for body text or large surface fills outside of intentional yellow cards.
- Don't use rounded buttons / pills outside of small badges. The standard button radius is 8px (md).
- Don't repeat the same surface mode in two consecutive bands. Black canvas → dark feature card → yellow CTA card → black canvas → code-window card.
- Don't replace SQL code mockups with abstract illustrations. The code IS the marketing voltage.
- Don't add hover state styling beyond what the system already encodes.

## Responsive Behavior

### Breakpoints

| Name | Width | Key Changes |
|---|---|---|
| Mobile | < 768px | Hamburger nav; hero h1 72→36px; code-window-card stacks below; feature grids 1-up; pricing 1-up |
| Tablet | 768–1024px | Top nav tightens; feature cards 2-up; pricing 2-up |
| Desktop | 1024–1440px | Full top-nav; 3-up feature cards; 3-4 up pricing tiers |
| Wide | > 1440px | Same as desktop with more breathing room; max content 1280px |

### Touch Targets
- `{component.button-primary}` at minimum 40 × 40px.
- `{component.button-icon-circular}` at exactly 36 × 36 — slightly under WCAG 44, visually centered.
- `{component.text-input}` height is 40px.

### Collapsing Strategy
- Top nav collapses to hamburger at < 768px.
- Hero 7-5 grid → single-column on mobile.
- Feature card grids reduce columns rather than scaling.
- Code-window cards retain font-size; horizontal scroll inside the card on mobile.
- Pricing tier cards collapse 4 → 2 → 1; featured tier yellow stays distinct.

### Image Behavior
- Code blocks inside dark mockups stay at fixed font-size; horizontal scroll on mobile rather than wrapping.
- Customer logos in monochrome strip retain native widths; row wraps on mobile.

## Iteration Guide

1. Focus on ONE component at a time. Reference its YAML key (`{component.code-window-card}`, `{component.pricing-tier-card-featured}`).
2. Variants of an existing component (`-active`, `-disabled`, `-focused`) live as separate entries.
3. Use `{token.refs}` everywhere — never inline hex.
4. Never document hover. Default and Active/Pressed states only.
5. Display headlines stay Inter 700 with negative letter-spacing. Body stays Inter 400.
6. The yellow + black pairing is the brand contract. Don't soften with secondary accents.
7. When in doubt about emphasis: bigger Inter 700 before adding color.

## Known Gaps

- The exact yellow hex (#faff69) was sampled from the screenshot; ClickHouse may publish an official brand color slightly differently.
- Inter weight axis values beyond 400 / 500 / 600 / 700 are not formalized — only the static weights observed are documented.
- Animation and transition timings (code typewriter effects, stat counter animations) are not in scope.
- Form validation states beyond `{component.text-input-focused}` are not extracted.
- The actual ClickHouse Cloud product surface (query console, monitoring dashboards, table browser) shares some tokens with the marketing site but adds many product-specific components that are out of scope.
- The customer logo strip's exact opacity / treatment varies — the muted gray is approximate.


---

## Brand: `composio`

---
version: alpha
name: Composio-design-analysis
description: A developer-tools brand for AI-agent tool integration whose marketing surfaces lean into a dark, technical aesthetic with a single deep-electric-blue voltage (`#0007cd`). The page floor is near-black (`#0f0f0f`); cards float above on subtle gray-tinted surfaces. abcDiatype carries display and body in a single sans family with weights 400-600. The brand's strongest visual signature is a four-pane terminal-style mockup (a 2×2 grid of dark code/output panels) with a central blue spotlight glow — used as the homepage hero anchor.

colors:
  primary: "#0007cd"
  primary-active: "#0005a3"
  primary-glow: "#1a26ff"
  ink: "#ffffff"
  body: "#a8a8a8"
  body-strong: "#ffffff"
  muted: "#888888"
  muted-soft: "#666666"
  hairline: "#222222"
  hairline-soft: "#1a1a1a"
  hairline-strong: "#333333"
  canvas: "#0f0f0f"
  canvas-deep: "#000000"
  surface-card: "#181818"
  surface-card-elevated: "#222222"
  surface-strong: "#2a2a2a"
  on-primary: "#ffffff"
  on-dark: "#ffffff"
  accent-cyan: "#00d4ff"
  accent-violet: "#7b3aed"
  semantic-error: "#ff4d4d"
  semantic-success: "#33d17a"

typography:
  display-mega:
    fontFamily: "'abcDiatype', ui-sans-serif, system-ui, sans-serif"
    fontSize: 72px
    fontWeight: 500
    lineHeight: 1.05
    letterSpacing: -2.16px
  display-xl:
    fontFamily: "'abcDiatype', ui-sans-serif, system-ui, sans-serif"
    fontSize: 56px
    fontWeight: 500
    lineHeight: 1.05
    letterSpacing: -1.68px
  display-lg:
    fontFamily: "'abcDiatype', ui-sans-serif, system-ui, sans-serif"
    fontSize: 44px
    fontWeight: 500
    lineHeight: 1.1
    letterSpacing: -1.32px
  display-md:
    fontFamily: "'abcDiatype', ui-sans-serif, system-ui, sans-serif"
    fontSize: 32px
    fontWeight: 500
    lineHeight: 1.15
    letterSpacing: -0.96px
  display-sm:
    fontFamily: "'abcDiatype', ui-sans-serif, system-ui, sans-serif"
    fontSize: 24px
    fontWeight: 500
    lineHeight: 1.25
    letterSpacing: -0.5px
  title-md:
    fontFamily: "'abcDiatype', ui-sans-serif, system-ui, sans-serif"
    fontSize: 18px
    fontWeight: 600
    lineHeight: 1.4
    letterSpacing: 0
  title-sm:
    fontFamily: "'abcDiatype', ui-sans-serif, system-ui, sans-serif"
    fontSize: 16px
    fontWeight: 600
    lineHeight: 1.4
    letterSpacing: 0
  body-md:
    fontFamily: "'abcDiatype', ui-sans-serif, system-ui, sans-serif"
    fontSize: 16px
    fontWeight: 400
    lineHeight: 1.5
    letterSpacing: 0
  body-sm:
    fontFamily: "'abcDiatype', ui-sans-serif, system-ui, sans-serif"
    fontSize: 14px
    fontWeight: 400
    lineHeight: 1.5
    letterSpacing: 0
  caption:
    fontFamily: "'abcDiatype', ui-sans-serif, system-ui, sans-serif"
    fontSize: 13px
    fontWeight: 400
    lineHeight: 1.4
    letterSpacing: 0
  caption-uppercase:
    fontFamily: "'abcDiatype', ui-sans-serif, system-ui, sans-serif"
    fontSize: 11px
    fontWeight: 600
    lineHeight: 1.4
    letterSpacing: 0.88px
    textTransform: uppercase
  code:
    fontFamily: "'JetBrains Mono', 'Fira Code', monospace"
    fontSize: 13px
    fontWeight: 400
    lineHeight: 1.5
    letterSpacing: 0
  button:
    fontFamily: "'abcDiatype', ui-sans-serif, system-ui, sans-serif"
    fontSize: 14px
    fontWeight: 500
    lineHeight: 1.0
    letterSpacing: 0
  nav-link:
    fontFamily: "'abcDiatype', ui-sans-serif, system-ui, sans-serif"
    fontSize: 14px
    fontWeight: 500
    lineHeight: 1.4
    letterSpacing: 0

rounded:
  none: 0px
  xs: 4px
  sm: 6px
  md: 8px
  lg: 12px
  xl: 16px
  pill: 9999px
  full: 9999px

spacing:
  xxs: 4px
  xs: 8px
  sm: 12px
  base: 16px
  md: 20px
  lg: 24px
  xl: 32px
  xxl: 48px
  section: 96px

components:
  top-nav-dark:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.body-strong}"
    typography: "{typography.nav-link}"
    height: 64px
  button-primary:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button}"
    rounded: "{rounded.md}"
    padding: 10px 18px
    height: 40px
  button-primary-active:
    backgroundColor: "{colors.primary-active}"
    textColor: "{colors.on-primary}"
    rounded: "{rounded.md}"
  button-secondary-dark:
    backgroundColor: "{colors.surface-card-elevated}"
    textColor: "{colors.body-strong}"
    typography: "{typography.button}"
    rounded: "{rounded.md}"
    padding: 10px 18px
    height: 40px
  button-outline:
    backgroundColor: transparent
    textColor: "{colors.body-strong}"
    typography: "{typography.button}"
    rounded: "{rounded.md}"
    padding: 9px 17px
    height: 40px
  button-tertiary-text:
    backgroundColor: transparent
    textColor: "{colors.body}"
    typography: "{typography.button}"
  hero-band:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.body-strong}"
    typography: "{typography.display-mega}"
    padding: 96px
  terminal-mockup-grid:
    backgroundColor: "{colors.canvas-deep}"
    textColor: "{colors.body-strong}"
    typography: "{typography.code}"
    rounded: "{rounded.xl}"
    padding: 32px
  terminal-pane:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.body}"
    typography: "{typography.code}"
    rounded: "{rounded.lg}"
    padding: 20px
  feature-card:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.body}"
    typography: "{typography.title-md}"
    rounded: "{rounded.xl}"
    padding: 28px
  toolkit-card:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.body-strong}"
    typography: "{typography.title-sm}"
    rounded: "{rounded.lg}"
    padding: 20px
  toolkit-icon:
    backgroundColor: "{colors.surface-card-elevated}"
    rounded: "{rounded.md}"
    size: 40px
  spotlight-glow-card:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.body-strong}"
    typography: "{typography.display-md}"
    rounded: "{rounded.xl}"
    padding: 48px
  code-block:
    backgroundColor: "{colors.canvas-deep}"
    textColor: "{colors.body}"
    typography: "{typography.code}"
    rounded: "{rounded.lg}"
    padding: 20px
  badge-pill:
    backgroundColor: "{colors.surface-card-elevated}"
    textColor: "{colors.body-strong}"
    typography: "{typography.caption-uppercase}"
    rounded: "{rounded.pill}"
    padding: 4px 10px
  text-input:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.body-strong}"
    typography: "{typography.body-md}"
    rounded: "{rounded.md}"
    padding: 12px 16px
    height: 44px
  search-input:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.body-strong}"
    typography: "{typography.body-md}"
    rounded: "{rounded.md}"
    padding: 10px 16px
    height: 40px
  cta-band-spotlight:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.body-strong}"
    typography: "{typography.display-lg}"
    padding: 96px
  testimonial-card:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.body}"
    typography: "{typography.body-md}"
    rounded: "{rounded.lg}"
    padding: 24px
  footer-dark:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.body}"
    typography: "{typography.body-sm}"
    padding: 64px 48px
  footer-link:
    backgroundColor: transparent
    textColor: "{colors.body}"
    typography: "{typography.body-sm}"
---

## Overview

Composio's marketing site reads like a serious developer-infrastructure brand — closer to Vercel or Stripe Docs in atmosphere than to a typical AI-tools startup. The base canvas is a near-black `{colors.canvas}` (#0f0f0f) holding white type and a single voltage of **deep electric blue** (`{colors.primary}` — #0007cd) carrying every primary CTA, brand wordmark, and atmospheric spotlight glow that backs the homepage hero.

Type runs **abcDiatype** as the single sans family across display, body, navigation, and captions. Display sits at weight 500 — confident but not bombastic. Code blocks and terminal mockups switch to JetBrains Mono.

The page rhythm is monolithic: dark canvas top to bottom with subtle elevation steps via card surfaces. The brand's strongest visual signature is a **four-pane terminal-style mockup** — a 2×2 grid of dark code/output panels with a central blue spotlight glow behind them.

**Key Characteristics:**
- Single accent: `{colors.primary}` (#0007cd) for primary CTAs, wordmark, spotlight glows.
- Single sans family: abcDiatype carries everything except code (JetBrains Mono).
- Dark monolithic canvas: `{colors.canvas}` runs top to bottom; depth from `{colors.surface-card}` and `{colors.surface-card-elevated}` brightness steps.
- Terminal-mockup hero: 2×2 grid of code/output panes is the brand signature.
- Compact pill geometry: CTAs sit at `{rounded.md}` (8px), not full pills — developer-tool dialect.
- Spotlight-glow atmospheric backdrop: a radial blue glow centered behind hero content.
- 96px section rhythm.

## Colors

### Brand & Accent
- **Composio Blue** (`{colors.primary}` — #0007cd): Primary CTAs, wordmark, spotlight glow center.
- **Composio Blue Active** (`{colors.primary-active}` — #0005a3): Press state.
- **Spotlight Glow Tone** (`{colors.primary-glow}` — #1a26ff): Brighter blue used inside radial atmospheric glows.
- **Accent Cyan** (`{colors.accent-cyan}` — #00d4ff): Sparingly on data-flow visualizations.
- **Accent Violet** (`{colors.accent-violet}` — #7b3aed): Inside specific product illustrations only.

### Surface
- **Canvas** (`{colors.canvas}` — #0f0f0f): Page floor — near-black.
- **Canvas Deep** (`{colors.canvas-deep}` — #000000): Pure black for terminal mockup grids and code blocks.
- **Surface Card** (`{colors.surface-card}` — #181818): Default content card.
- **Surface Card Elevated** (`{colors.surface-card-elevated}` — #222222): Terminal panes, secondary buttons.
- **Surface Strong** (`{colors.surface-strong}` — #2a2a2a): Dropdown menus.

### Hairlines
- **Hairline** (`{colors.hairline}` — #222222): Default 1px divider.
- **Hairline Soft** (`{colors.hairline-soft}` — #1a1a1a): Lighter divider.
- **Hairline Strong** (`{colors.hairline-strong}` — #333333): Stronger panel outline.

### Text
- **Ink** (`{colors.ink}` — #ffffff): Display headlines.
- **Body** (`{colors.body}` — #a8a8a8): Default running-text — soft gray.
- **Body Strong** (`{colors.body-strong}` — #ffffff): Same as ink.
- **Muted** (`{colors.muted}` — #888888): Sub-titles, breadcrumbs.
- **Muted Soft** (`{colors.muted-soft}` — #666666): Disabled text.
- **On Primary** (`{colors.on-primary}` — #ffffff): White text on blue CTAs.

### Semantic
- **Success** (`{colors.semantic-success}` — #33d17a): "Online", "active" indicators.
- **Error** (`{colors.semantic-error}` — #ff4d4d): Validation errors.

## Typography

### Font Family
The system runs **abcDiatype** (Lineto) across every text role. Code blocks switch to **JetBrains Mono**. Fallback: `ui-sans-serif, system-ui, sans-serif`.

### Hierarchy

| Token | Size | Weight | Line Height | Letter Spacing | Use |
|---|---|---|---|---|---|
| `{typography.display-mega}` | 72px | 500 | 1.05 | -2.16px | Homepage hero h1 |
| `{typography.display-xl}` | 56px | 500 | 1.05 | -1.68px | Subsidiary heroes |
| `{typography.display-lg}` | 44px | 500 | 1.1 | -1.32px | Section heads |
| `{typography.display-md}` | 32px | 500 | 1.15 | -0.96px | Sub-section heads |
| `{typography.display-sm}` | 24px | 500 | 1.25 | -0.5px | Card group titles |
| `{typography.title-md}` | 18px | 600 | 1.4 | 0 | Component titles |
| `{typography.title-sm}` | 16px | 600 | 1.4 | 0 | Toolkit card titles |
| `{typography.body-md}` | 16px | 400 | 1.5 | 0 | Default body |
| `{typography.body-sm}` | 14px | 400 | 1.5 | 0 | Footer body |
| `{typography.caption}` | 13px | 400 | 1.4 | 0 | Photo captions |
| `{typography.caption-uppercase}` | 11px | 600 | 1.4 | 0.88px | Section labels, badge pills |
| `{typography.code}` | 13px | 400 | 1.5 | 0 | Code blocks — JetBrains Mono |
| `{typography.button}` | 14px | 500 | 1.0 | 0 | CTA pill labels |
| `{typography.nav-link}` | 14px | 500 | 1.4 | 0 | Top-nav menu |

### Principles
- **Display weight stays at 500.** Confident but not display-bold.
- **abcDiatype across every role.** No display/body family split.
- **JetBrains Mono on every code surface.**

### Note on Font Substitutes
abcDiatype is a Lineto licensed typeface. Open-source substitute: **Inter** at weight 500 with letter-spacing -1.5%.

## Layout

### Spacing System
- **Base unit:** 4px.
- **Tokens:** `{spacing.xxs}` 4px · `{spacing.xs}` 8px · `{spacing.sm}` 12px · `{spacing.base}` 16px · `{spacing.md}` 20px · `{spacing.lg}` 24px · `{spacing.xl}` 32px · `{spacing.xxl}` 48px · `{spacing.section}` 96px.
- **Section padding:** `{spacing.section}` (96px) for major bands.

### Grid & Container
- Max content width: ~1200px.
- Editorial body: 12-column grid.
- Terminal mockup grid: 2×2 equal-size panes.
- Toolkit grid: 4-up at desktop, 2-up tablet, 1-up mobile.
- Footer: 5-column at desktop.

### Whitespace Philosophy
The dark canvas creates its own depth — whitespace can stay tight without feeling crowded. 96px between bands; 24px between cards inside a band.

## Elevation & Depth

The system uses **brightness-step elevation**: surfaces step up in brightness instead of casting drop shadows. Combined with subtle radial blue glows, this creates a focused dark-mode atmosphere.

| Level | Treatment | Use |
|---|---|---|
| Flat (canvas) | `{colors.canvas}` (#0f0f0f) | Body bands, footer |
| Recessed | `{colors.canvas-deep}` (#000000) | Terminal mockup grid background, code blocks |
| Card | `{colors.surface-card}` (#181818) | Default content cards |
| Card elevated | `{colors.surface-card-elevated}` (#222222) | Terminal panes, secondary buttons |
| Atmospheric glow | Radial gradient using `{colors.primary-glow}` | Hero spotlight backdrop |

### Decorative Depth
- **Spotlight glow backdrops** — radial blue gradient centered behind hero content.
- **Terminal-pane brightness ladder** — 2×2 mockup uses canvas-deep outer + surface-card-elevated panes.

## Shapes

### Border Radius Scale

| Token | Value | Use |
|---|---|---|
| `{rounded.none}` | 0px | Reserved |
| `{rounded.xs}` | 4px | Inline tags |
| `{rounded.sm}` | 6px | Compact rows |
| `{rounded.md}` | 8px | CTA buttons, form inputs |
| `{rounded.lg}` | 12px | Toolkit cards, code blocks, terminal panes |
| `{rounded.xl}` | 16px | Feature cards, terminal mockup grids |
| `{rounded.pill}` | 9999px | Section-label badges |
| `{rounded.full}` | 9999px | Avatar plates (rare) |

Compact developer-ergonomic radii — 8px CTAs, 12-16px cards. Signals "developer tool" rather than "consumer brand."

## Components

### Top Navigation

**`top-nav-dark`** — Default top nav. Background `{colors.canvas}`, text `{colors.body-strong}`, height 64px. Layout: Composio wordmark left, primary horizontal menu (Product / Toolkits / Docs / Pricing / Customers / Blog), GitHub stars + Sign In + "Get started" right.

### Buttons

**`button-primary`** — The signature Composio Blue CTA. Background `{colors.primary}`, text `{colors.on-primary}`, type `{typography.button}` (14px / 500), padding 10px × 18px, height 40px, rounded `{rounded.md}` (8px).

**`button-primary-active`** — Press state. Background `{colors.primary-active}`.

**`button-secondary-dark`** — Surface-elevated secondary. Background `{colors.surface-card-elevated}`, text `{colors.body-strong}`.

**`button-outline`** — Transparent with 1px hairline-strong border.

**`button-tertiary-text`** — Inline text link.

### Hero & Atmospheric

**`hero-band`** — Homepage hero. Background `{colors.canvas}`, full-width display headline in `{typography.display-mega}` (72px / 500), subhead, two CTAs, and a spotlight-glow backdrop emanating from behind the centered terminal-mockup grid.

**`terminal-mockup-grid`** — The brand's strongest visual signature. 2×2 grid of dark code/output panels inside a `{rounded.xl}` (16px) container. Background `{colors.canvas-deep}`, padding 32px, gap 16px.

**`terminal-pane`** — Individual code/output panel inside the mockup grid. Background `{colors.surface-card}`, text `{colors.body}` in `{typography.code}`, rounded `{rounded.lg}` (12px), padding 20px.

**`spotlight-glow-card`** — Large feature card with centered display headline and a radial blue glow behind it. Background `{colors.surface-card}`, text `{colors.body-strong}` in `{typography.display-md}`, rounded `{rounded.xl}`, padding 48px.

### Cards

**`feature-card`** — 3-up benefit grid. Background `{colors.surface-card}`, text `{colors.body}`, type `{typography.title-md}`, rounded `{rounded.xl}`, padding 28px.

**`toolkit-card`** — 4-up toolkit grid (Slack, GitHub, Stripe, Notion, Linear, etc.). Background `{colors.surface-card}`, text `{colors.body-strong}`, type `{typography.title-sm}`, rounded `{rounded.lg}`, padding 20px. 40px square `{component.toolkit-icon}` top, toolkit name, one-line description.

**`toolkit-icon`** — Square icon plate. Background `{colors.surface-card-elevated}`, rounded `{rounded.md}`, 40px size.

**`testimonial-card`** — Quote card. Background `{colors.surface-card}`, text `{colors.body}`, rounded `{rounded.lg}`, padding 24px.

### Code

**`code-block`** — Inline code/terminal block. Background `{colors.canvas-deep}`, text `{colors.body}` in `{typography.code}`, rounded `{rounded.lg}`, padding 20px.

### Forms

**`text-input`** — Background `{colors.surface-card}`, text `{colors.body-strong}`, rounded `{rounded.md}` (8px), padding 12px × 16px, height 44px.

**`search-input`** — Compact search field. Same surface and radius, smaller padding, 40px height.

### Tags & Badges

**`badge-pill`** — Small uppercase pill. Background `{colors.surface-card-elevated}`, text `{colors.body-strong}`, type `{typography.caption-uppercase}`, rounded `{rounded.pill}`, padding 4px × 10px.

### CTA / Footer

**`cta-band-spotlight`** — Pre-footer band. Background `{colors.canvas}` with centered radial spotlight glow. Display headline + single primary CTA pill. 96px padding.

**`footer-dark`** — Closing footer. Background `{colors.canvas}`, text `{colors.body}`. 5-column link list. 64×48px padding.

**`footer-link`** — Background transparent, text `{colors.body}`, type `{typography.body-sm}`.

## Do's and Don'ts

### Do
- Reserve `{colors.primary}` for primary CTAs, wordmark, and spotlight glows.
- Use `{rounded.md}` (8px) for every CTA — not full pills.
- Use brightness-step ladder for elevation; avoid drop shadows.
- Pair every hero with a centered radial blue spotlight glow.
- Render code, CLI commands in JetBrains Mono via `{typography.code}`.
- Use the 2×2 terminal-mockup grid as the homepage hero anchor.

### Don't
- Don't introduce a secondary brand color. Cyan and violet are illustrative-only.
- Don't use full pills on CTAs.
- Don't drop display weight to 400.
- Don't add drop shadow tiers.
- Don't use canvas-deep (#000000) outside terminal/code surfaces.
- Don't extract a CTA color from a third-party widget (cookie consent, OneTrust). The brand's CTA color is what appears on actual page CTAs.

## Responsive Behavior

### Breakpoints

| Name | Width | Key Changes |
|---|---|---|
| Mobile | < 640px | Hero h1 72→36px; terminal mockup grid collapses to single pane; toolkit grid 1-up; nav hamburger. |
| Tablet | 640–1024px | Hero h1 56px; terminal mockup grid stays 2×2; toolkit grid 2-up. |
| Desktop | 1024–1280px | Full hero h1 72px; full 2×2 terminal mockup; toolkit grid 4-up. |
| Wide | > 1280px | Content caps at 1200px. |

### Touch Targets
- Primary CTA at 40px height — at WCAG AA, padded for AAA.
- Search input at 40px.

### Collapsing Strategy
- Top nav switches to hamburger below 768px.
- Terminal mockup 2×2 grid collapses to a single pane on mobile.
- Toolkit grid: 4-up → 2-up → 1-up.
- Hero spotlight glow stays at every breakpoint.

## Iteration Guide

1. Focus on a single component at a time.
2. CTAs default to `{rounded.md}` (8px). Cards use `{rounded.lg}` or `{rounded.xl}`.
3. Variants live as separate entries inside `components:`.
4. Use `{token.refs}` everywhere — never inline hex.
5. Hover state never documented.
6. abcDiatype 500 for display, 400/600 for body. JetBrains Mono on every code surface.
7. Composio Blue stays scarce.

## Known Gaps

- abcDiatype is licensed; Inter is the substitute.
- Animation timings out of scope.
- In-product surfaces (toolkit dashboards, agent playground) are behind login walls.
- Form validation states beyond focus not visible on captured surfaces.


---

## Brand: `expo`

---
version: alpha
name: Expo-design-analysis
description: A React Native developer-platform whose marketing site reads like a quietly-confident infrastructure brand. The base canvas is pure white with a soft sky-blue gradient atmospheric wash behind the hero; near-black ink (`#171717`) carries body and display alike. The single brand voltage is **pure black** (`#000000`) for primary CTAs — minimal and editorial-feeling, paired with a small blue text-link accent (`#0d74ce`) reserved for inline body links. Type pairs Inter at modest weights (display 600, body 400) with JetBrains Mono on every code surface. The brand's strongest visual signature is the **device-mockup hero** — a centered MacBook + iPhone composite showing real Expo dev surfaces — over the gradient sky wash.

colors:
  primary: "#000000"
  primary-active: "#1a1a1a"
  text-link: "#0d74ce"
  text-link-secondary: "#476cff"
  ink: "#171717"
  body: "#60646c"
  body-strong: "#171717"
  muted: "#999999"
  muted-soft: "#cccccc"
  hairline: "#f0f0f3"
  hairline-soft: "#f5f5f7"
  hairline-strong: "#dcdee0"
  canvas: "#ffffff"
  canvas-soft: "#fafafa"
  surface-card: "#ffffff"
  surface-strong: "#f0f0f3"
  surface-dark: "#171717"
  surface-dark-elevated: "#1a1a1a"
  on-primary: "#ffffff"
  on-dark: "#ffffff"
  on-dark-soft: "#b0b4ba"
  gradient-sky-light: "#cfe7ff"
  gradient-sky-mid: "#a8c8e8"
  accent-warning: "#ab6400"
  accent-preview: "#8145b5"
  accent-link-bright: "#47c2ff"
  semantic-error: "#eb8e90"
  semantic-success: "#16a34a"

typography:
  display-mega:
    fontFamily: "'Inter', -apple-system, system-ui, sans-serif"
    fontSize: 64px
    fontWeight: 600
    lineHeight: 1.05
    letterSpacing: -1.92px
  display-xl:
    fontFamily: "'Inter', sans-serif"
    fontSize: 48px
    fontWeight: 600
    lineHeight: 1.1
    letterSpacing: -1.44px
  display-lg:
    fontFamily: "'Inter', sans-serif"
    fontSize: 36px
    fontWeight: 600
    lineHeight: 1.15
    letterSpacing: -1.08px
  display-md:
    fontFamily: "'Inter', sans-serif"
    fontSize: 28px
    fontWeight: 600
    lineHeight: 1.2
    letterSpacing: -0.84px
  display-sm:
    fontFamily: "'Inter', sans-serif"
    fontSize: 22px
    fontWeight: 600
    lineHeight: 1.25
    letterSpacing: -0.5px
  title-md:
    fontFamily: "'Inter', sans-serif"
    fontSize: 18px
    fontWeight: 600
    lineHeight: 1.4
    letterSpacing: 0
  title-sm:
    fontFamily: "'Inter', sans-serif"
    fontSize: 16px
    fontWeight: 600
    lineHeight: 1.4
    letterSpacing: 0
  body-md:
    fontFamily: "'Inter', sans-serif"
    fontSize: 16px
    fontWeight: 400
    lineHeight: 1.5
    letterSpacing: 0
  body-sm:
    fontFamily: "'Inter', sans-serif"
    fontSize: 14px
    fontWeight: 400
    lineHeight: 1.5
    letterSpacing: 0
  caption:
    fontFamily: "'Inter', sans-serif"
    fontSize: 13px
    fontWeight: 400
    lineHeight: 1.4
    letterSpacing: 0
  caption-uppercase:
    fontFamily: "'Inter', sans-serif"
    fontSize: 11px
    fontWeight: 600
    lineHeight: 1.4
    letterSpacing: 0.88px
    textTransform: uppercase
  code:
    fontFamily: "'JetBrains Mono', 'Fira Code', monospace"
    fontSize: 13px
    fontWeight: 400
    lineHeight: 1.5
    letterSpacing: 0
  button:
    fontFamily: "'Inter', sans-serif"
    fontSize: 14px
    fontWeight: 500
    lineHeight: 1.0
    letterSpacing: 0
  nav-link:
    fontFamily: "'Inter', sans-serif"
    fontSize: 14px
    fontWeight: 500
    lineHeight: 1.4
    letterSpacing: 0

rounded:
  none: 0px
  xs: 4px
  sm: 6px
  md: 8px
  lg: 12px
  xl: 16px
  xxl: 24px
  pill: 9999px
  full: 9999px

spacing:
  xxs: 4px
  xs: 8px
  sm: 12px
  base: 16px
  md: 20px
  lg: 24px
  xl: 32px
  xxl: 48px
  section: 96px

components:
  top-nav:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.nav-link}"
    height: 64px
  button-primary:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button}"
    rounded: "{rounded.md}"
    padding: 10px 18px
    height: 40px
  button-primary-active:
    backgroundColor: "{colors.primary-active}"
    textColor: "{colors.on-primary}"
    rounded: "{rounded.md}"
  button-secondary:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ink}"
    typography: "{typography.button}"
    rounded: "{rounded.md}"
    padding: 9px 17px
    height: 40px
  button-tertiary-text:
    backgroundColor: transparent
    textColor: "{colors.text-link}"
    typography: "{typography.button}"
  hero-band:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.display-mega}"
    padding: 96px
  device-mockup-card:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ink}"
    rounded: "{rounded.xl}"
    padding: 0
  feature-card:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ink}"
    typography: "{typography.title-md}"
    rounded: "{rounded.lg}"
    padding: 24px
  feature-card-dark:
    backgroundColor: "{colors.surface-dark}"
    textColor: "{colors.on-dark}"
    typography: "{typography.title-md}"
    rounded: "{rounded.lg}"
    padding: 24px
  workflow-step-card:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.body}"
    typography: "{typography.body-md}"
    rounded: "{rounded.lg}"
    padding: 20px
  workflow-step-icon:
    backgroundColor: "{colors.surface-strong}"
    rounded: "{rounded.md}"
    size: 32px
  code-block:
    backgroundColor: "{colors.surface-dark}"
    textColor: "{colors.on-dark}"
    typography: "{typography.code}"
    rounded: "{rounded.lg}"
    padding: 20px
  ide-mockup-card:
    backgroundColor: "{colors.surface-dark}"
    textColor: "{colors.on-dark}"
    rounded: "{rounded.lg}"
    padding: 0
  pricing-tier-card:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.lg}"
    padding: 32px
  pricing-tier-featured:
    backgroundColor: "{colors.surface-dark}"
    textColor: "{colors.on-dark}"
    typography: "{typography.body-md}"
    rounded: "{rounded.lg}"
    padding: 32px
  text-input:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.md}"
    padding: 12px 16px
    height: 44px
  badge-pill:
    backgroundColor: "{colors.surface-strong}"
    textColor: "{colors.ink}"
    typography: "{typography.caption-uppercase}"
    rounded: "{rounded.pill}"
    padding: 4px 10px
  ecosystem-tile:
    backgroundColor: "{colors.surface-card}"
    rounded: "{rounded.md}"
    size: 64px
  cta-band:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.display-lg}"
    padding: 96px
  testimonial-card:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.body}"
    typography: "{typography.body-md}"
    rounded: "{rounded.lg}"
    padding: 24px
  footer-light:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.body}"
    typography: "{typography.body-sm}"
    padding: 64px 48px
  footer-link:
    backgroundColor: transparent
    textColor: "{colors.body}"
    typography: "{typography.body-sm}"
---

## Overview

Expo's marketing site reads like a quietly-confident React-Native developer platform. The base canvas is **pure white** (`{colors.canvas}` — #ffffff) with a soft **sky-blue gradient atmospheric wash** behind the hero band. Near-black ink `{colors.ink}` (#171717) carries body and display alike. The single brand voltage is **pure black** (`{colors.primary}` — #000000) for primary CTAs — minimal and editorial-feeling. A small blue text-link accent (`{colors.text-link}` — #0d74ce) is reserved for inline body links, never as a CTA.

Type runs **Inter** as the single sans family at modest weights (display 600, body 400). JetBrains Mono carries every code surface. No custom typeface — the brand trusts Inter's editorial neutrality.

The brand's strongest visual signature is the **device-mockup hero** — a centered MacBook + iPhone composite showing real Expo dev surfaces (Expo Studio, EAS Build dashboard, the Expo Go simulator) — over a sky-blue gradient atmospheric wash. The composite is the page's chrome instead of an illustration.

**Key Characteristics:**
- Pure white canvas with sky-blue gradient atmospheric backdrop in hero only.
- Single primary CTA: pure black pill at `{rounded.md}` (8px) — compact developer-tool dialect.
- Text-link blue (`{colors.text-link}`) for inline links only — never on a CTA.
- Inter as the single sans family — no custom display typeface.
- JetBrains Mono on every code surface.
- Device-mockup hero with real Expo product surfaces is the brand chrome.
- Hairline + soft drop depth; no atmospheric brand decoration outside the hero.
- 96px section rhythm.

## Colors

### Brand & Accent
- **Black** (`{colors.primary}` — #000000): Primary CTA fill. Used scarcely.
- **Black Active** (`{colors.primary-active}` — #1a1a1a): Press state.
- **Text Link Blue** (`{colors.text-link}` — #0d74ce): Inline body links inside long-form copy. Scoped narrowly — never on CTAs.
- **Legal Link Blue** (`{colors.text-link-secondary}` — #476cff): Inline links inside legal copy footer.
- **Bright Cyan** (`{colors.accent-link-bright}` — #47c2ff): Used very sparingly inside docs widget links.

### Surface
- **Canvas** (`{colors.canvas}` — #ffffff): Pure white page floor.
- **Canvas Soft** (`{colors.canvas-soft}` — #fafafa): Subtle alternating band.
- **Surface Card** (`{colors.surface-card}` — #ffffff): Pure white card.
- **Surface Strong** (`{colors.surface-strong}` — #f0f0f3): Badges, ecosystem tiles, secondary buttons.
- **Surface Dark** (`{colors.surface-dark}` — #171717): Dark feature cards, code blocks, IDE mockups, featured pricing.
- **Surface Dark Elevated** (`{colors.surface-dark-elevated}` — #1a1a1a): One step lighter inside dark cards.

### Atmospheric Backdrop
- **Sky Light** (`{colors.gradient-sky-light}` — #cfe7ff) + **Sky Mid** (`{colors.gradient-sky-mid}` — #a8c8e8): The soft sky-blue gradient wash behind the homepage hero only. Not a brand action color.

### Hairlines
- **Hairline** (`{colors.hairline}` — #f0f0f3): Default 1px divider.
- **Hairline Soft** (`{colors.hairline-soft}` — #f5f5f7): Lighter divider.
- **Hairline Strong** (`{colors.hairline-strong}` — #dcdee0): Stronger panel outline.

### Text
- **Ink** (`{colors.ink}` — #171717): Display, body emphasis.
- **Body** (`{colors.body}` — #60646c): Default running-text — slightly cool gray.
- **Body Strong** (`{colors.body-strong}` — #171717): Same as ink.
- **Muted** (`{colors.muted}` — #999999): Sub-titles.
- **Muted Soft** (`{colors.muted-soft}` — #cccccc): Disabled text.
- **On Primary** (`{colors.on-primary}` — #ffffff): White text on black CTA.
- **On Dark** (`{colors.on-dark}` — #ffffff): White text on dark cards.
- **On Dark Soft** (`{colors.on-dark-soft}` — #b0b4ba): Muted off-white on dark.

### Semantic
- **Warning** (`{colors.accent-warning}` — #ab6400): Warning text inside docs callouts.
- **Preview** (`{colors.accent-preview}` — #8145b5): "Preview" tag color.
- **Success** (`{colors.semantic-success}` — #16a34a): Confirmation.
- **Error** (`{colors.semantic-error}` — #eb8e90): Validation errors.

## Typography

### Font Family
**Inter** is the single sans family across every text role. **JetBrains Mono** carries every code surface. Fallback: `-apple-system, system-ui, sans-serif`.

### Hierarchy

| Token | Size | Weight | Line Height | Letter Spacing | Use |
|---|---|---|---|---|---|
| `{typography.display-mega}` | 64px | 600 | 1.05 | -1.92px | Homepage hero h1 |
| `{typography.display-xl}` | 48px | 600 | 1.1 | -1.44px | Subsidiary heroes |
| `{typography.display-lg}` | 36px | 600 | 1.15 | -1.08px | Section heads |
| `{typography.display-md}` | 28px | 600 | 1.2 | -0.84px | Sub-section heads |
| `{typography.display-sm}` | 22px | 600 | 1.25 | -0.5px | Card group titles |
| `{typography.title-md}` | 18px | 600 | 1.4 | 0 | Component titles |
| `{typography.title-sm}` | 16px | 600 | 1.4 | 0 | List labels |
| `{typography.body-md}` | 16px | 400 | 1.5 | 0 | Default body |
| `{typography.body-sm}` | 14px | 400 | 1.5 | 0 | Footer body |
| `{typography.caption}` | 13px | 400 | 1.4 | 0 | Photo captions |
| `{typography.caption-uppercase}` | 11px | 600 | 1.4 | 0.88px | Section labels, badges |
| `{typography.code}` | 13px | 400 | 1.5 | 0 | Code blocks — JetBrains Mono |
| `{typography.button}` | 14px | 500 | 1.0 | 0 | CTA labels |
| `{typography.nav-link}` | 14px | 500 | 1.4 | 0 | Top-nav menu |

### Principles
- **Display weight stays at 600** — confident but not bombastic. Inter at 600 reads cleaner than 700.
- **Negative letter-spacing on display** — -0.5px to -1.92px tracking.
- **JetBrains Mono on every code surface.**

### Note on Font Substitutes
Inter and JetBrains Mono are both freely available — the system uses them directly.

## Layout

### Spacing System
- **Base unit:** 4px.
- **Tokens:** `{spacing.xxs}` 4px · `{spacing.xs}` 8px · `{spacing.sm}` 12px · `{spacing.base}` 16px · `{spacing.md}` 20px · `{spacing.lg}` 24px · `{spacing.xl}` 32px · `{spacing.xxl}` 48px · `{spacing.section}` 96px.
- **Section padding:** 96px.

### Grid & Container
- Max content width: ~1200px.
- Editorial body: 12-column grid.
- Feature card grids: 2-up at desktop for hero splits, 3-up for benefit grids.
- Ecosystem tile grid: 8-up at desktop.
- Footer: 5-column at desktop.

### Whitespace Philosophy
Generous editorial pacing. The white canvas does not compete with the hero's gradient sky wash; cards inside dense workflow sections sit close (16-24px gap).

## Elevation & Depth

| Level | Treatment | Use |
|---|---|---|
| Flat (canvas) | `{colors.canvas}` (#ffffff) | Body bands, footer |
| Card | `{colors.surface-card}` (#ffffff) | Content cards |
| Hairline border | 1px `{colors.hairline}` | Card outlines |
| Soft drop | `0 4px 12px rgba(0, 0, 0, 0.04)` | Hovered cards (single shadow tier) |
| Atmospheric gradient | Sky-blue radial wash | Hero backdrop only |
| Dark inversion | `{colors.surface-dark}` (#171717) | Dark feature cards, code blocks, featured pricing |

### Decorative Depth
- **Sky-blue gradient backdrop** in the hero only — atmospheric depth without claiming to be a brand color.
- **Device mockup composite** as page chrome — MacBook + iPhone showing real Expo dev surfaces.

## Shapes

### Border Radius Scale

| Token | Value | Use |
|---|---|---|
| `{rounded.none}` | 0px | Reserved |
| `{rounded.xs}` | 4px | Inline tags |
| `{rounded.sm}` | 6px | Compact rows |
| `{rounded.md}` | 8px | CTA buttons, form inputs, ecosystem tiles |
| `{rounded.lg}` | 12px | Feature cards, code blocks, pricing tiers |
| `{rounded.xl}` | 16px | Device mockup cards |
| `{rounded.xxl}` | 24px | Larger atmospheric cards (rare) |
| `{rounded.pill}` | 9999px | Badges only |
| `{rounded.full}` | 9999px | Avatar plates (rare) |

Compact developer-ergonomic radii — 8px CTAs, 12px cards. Pill geometry is reserved for badges, never CTAs.

## Components

### Top Navigation

**`top-nav`** — Background `{colors.canvas}`, text `{colors.ink}`, height 64px. Layout: Expo wordmark left, primary horizontal menu (Tools / Workflows / EAS / Pricing / Docs / Showcase), Sign In + Get started CTA right.

### Buttons

**`button-primary`** — Pure black pill. Background `{colors.primary}`, text `{colors.on-primary}`, type `{typography.button}` (14px / 500), padding 10px × 18px, height 40px, rounded `{rounded.md}` (8px).

**`button-primary-active`** — Press state. Background `{colors.primary-active}`.

**`button-secondary`** — White card with 1px hairline-strong border. Background `{colors.surface-card}`, text `{colors.ink}`, 1px `{colors.hairline-strong}` border.

**`button-tertiary-text`** — Inline blue text link. Background transparent, text `{colors.text-link}`.

### Hero & Device Mockup

**`hero-band`** — Background `{colors.canvas}` with a soft sky-blue gradient wash behind the centered headline. Display headline in `{typography.display-mega}` (64px / 600 / -1.92px), subhead in `{typography.body-md}`, single primary CTA, then below — the device mockup composite.

**`device-mockup-card`** — A layered MacBook + iPhone composite showing real Expo dev surfaces. Background `{colors.surface-card}`, rounded `{rounded.xl}`. The MacBook holds the EAS dashboard or Expo Studio screenshot; the iPhone overlay shows the running app in Expo Go. This is the page chrome.

### Cards

**`feature-card`** — Background `{colors.surface-card}`, text `{colors.ink}`, type `{typography.title-md}`, rounded `{rounded.lg}`, padding 24px, 1px `{colors.hairline-strong}` border.

**`feature-card-dark`** — Dark variant. Background `{colors.surface-dark}`, text `{colors.on-dark}`. Same shape, dark inversion.

**`workflow-step-card`** — Step in the "Get your app on every device" workflow row. Background `{colors.surface-card}`, text `{colors.body}`, rounded `{rounded.lg}`, padding 20px. Layout: 32px square `{component.workflow-step-icon}` + step number + label + body.

**`workflow-step-icon`** — Square plate. Background `{colors.surface-strong}`, rounded `{rounded.md}`, 32px size.

**`testimonial-card`** — Quote card. Background `{colors.surface-card}`, text `{colors.body}`, rounded `{rounded.lg}`, padding 24px.

### Code & IDE

**`code-block`** — Inline code block. Background `{colors.surface-dark}`, text `{colors.on-dark}` in `{typography.code}` (JetBrains Mono 13px), rounded `{rounded.lg}`, padding 20px. White text on dark.

**`ide-mockup-card`** — Stylized IDE mockup. Background `{colors.surface-dark}`, rounded `{rounded.lg}`. Multi-pane editor + terminal preview.

### Pricing

**`pricing-tier-card`** — Standard pricing tier. Background `{colors.surface-card}`, rounded `{rounded.lg}`, padding 32px, 1px `{colors.hairline-strong}` border.

**`pricing-tier-featured`** — Featured tier. Background `{colors.surface-dark}`, text `{colors.on-dark}`. Same shape, dark inversion.

### Ecosystem

**`ecosystem-tile`** — Square logo plate for ecosystem partner logos (TypeScript, React, Sentry, etc.). Background `{colors.surface-card}`, rounded `{rounded.md}`, 64px size, 1px `{colors.hairline}` border.

### Forms & Tags

**`text-input`** — Background `{colors.surface-card}`, text `{colors.ink}`, rounded `{rounded.md}` (8px), padding 12px × 16px, height 44px, 1px `{colors.hairline-strong}` border. Focus thickens border to 2px ink.

**`badge-pill`** — Small uppercase pill. Background `{colors.surface-strong}`, text `{colors.ink}`, type `{typography.caption-uppercase}`, rounded `{rounded.pill}`, padding 4px × 10px.

### CTA / Footer

**`cta-band`** — Pre-footer band. Background `{colors.canvas}`, centered display headline in `{typography.display-lg}`, single black pill CTA. 96px padding.

**`footer-light`** — Closing white footer. Background `{colors.canvas}`, text `{colors.body}`. 5-column link list. 64×48px padding.

**`footer-link`** — Background transparent, text `{colors.body}`, type `{typography.body-sm}`.

## Do's and Don'ts

### Do
- Reserve `{colors.primary}` (black) for primary CTAs.
- Use `{colors.text-link}` (blue) for inline body links only — never on CTAs or buttons.
- Set every CTA at `{rounded.md}` (8px) — developer dialect.
- Use Inter at weight 600 for display, 400 for body.
- Render every code surface in JetBrains Mono.
- Pair the hero with the device-mockup composite — it's the page chrome.

### Don't
- Don't introduce a saturated brand action color. Black is the only CTA fill.
- Don't use blue (`{colors.text-link}`) on a CTA. Inline links only.
- Don't drop display below weight 600 or above 700.
- Don't use full pills on CTAs — pills are for badges only.
- Don't replicate the sky-blue gradient backdrop outside the hero.
- Don't extract a CTA color from a third-party widget (cookie consent, OneTrust). The brand's CTA is what appears on actual page CTAs.

## Responsive Behavior

### Breakpoints

| Name | Width | Key Changes |
|---|---|---|
| Mobile | < 640px | Hero h1 64→32px; device mockup → single iPhone screen; feature grid 1-up; nav hamburger. |
| Tablet | 640–1024px | Hero h1 48px; device mockup compresses; feature grid 2-up. |
| Desktop | 1024–1280px | Full hero h1 64px; full MacBook + iPhone composite; feature grid 3-up. |
| Wide | > 1280px | Content caps at 1200px. |

### Touch Targets
- Primary CTA at 40px height — at WCAG AA, padded for AAA.
- Search input 44px — at AAA.

### Collapsing Strategy
- Top nav switches to hamburger below 768px.
- Device mockup MacBook + iPhone collapses to a single iPhone preview on mobile.
- Feature grid: 3-up → 2-up → 1-up.
- Ecosystem tile grid: 8-up → 4-up → 3-up → 2-up.

## Iteration Guide

1. Focus on a single component at a time.
2. CTAs default to `{rounded.md}` (8px). Cards use `{rounded.lg}` (12px).
3. Variants live as separate entries.
4. Use `{token.refs}` everywhere — never inline hex.
5. Hover state never documented.
6. Inter 600 for display, Inter 400 for body. JetBrains Mono on code.
7. Black stays the only CTA color; text-link blue stays inline-only.

## Known Gaps

- Inter and JetBrains Mono are freely available — no licensing concerns.
- Animation timings (device mockup parallax, hero entrance) out of scope.
- In-app surfaces (EAS dashboard interactive, Expo Go simulator) only partially captured via marketing mockups.
- Form validation states beyond focus not visible on captured surfaces.


---

## Brand: `mongodb`

---
version: alpha
name: MongoDB-design-analysis
description: MongoDB carries a strong dual-mode visual identity — dark deep-teal hero bands with bright MongoDB green ({colors.brand-green}) CTAs paired with stark white documentation surfaces. The signature green pill button is unmistakable across product, pricing, learning, and AI use-case surfaces. The system uses Euclid Circular A as its display face, anchors a 3-tier pricing comparison (Free / Flex / Dedicated), and presents extensive course catalogs in card grids with colored category tags. Coverage spans homepage, Atlas product page, Community Edition, MongoDB University, AI use cases, and pricing.

colors:
  primary: "#00ed64"
  primary-deep: "#00b545"
  primary-pressed: "#008c34"
  on-primary: "#001e2b"
  brand-green: "#00ed64"
  brand-green-dark: "#00684a"
  brand-green-mid: "#00a35c"
  brand-green-soft: "#c3f0d2"
  brand-teal-deep: "#001e2b"
  brand-teal: "#003d4f"
  brand-teal-mid: "#00684a"
  accent-purple: "#7b3ff2"
  accent-orange: "#fa6e39"
  accent-pink: "#f06bb8"
  accent-blue: "#3d4f9f"
  semantic-warning-bg: "#fff8e0"
  semantic-warning-text: "#946f3f"
  canvas: "#ffffff"
  canvas-dark: "#001e2b"
  surface: "#f9fbfa"
  surface-soft: "#f4f7f6"
  surface-feature: "#e3fcef"
  hairline: "#e1e5e8"
  hairline-soft: "#eceff1"
  hairline-strong: "#c1ccd6"
  hairline-dark: "#1c2d38"
  ink: "#001e2b"
  charcoal: "#1c2d38"
  slate: "#3d4f5b"
  steel: "#5c6c7a"
  stone: "#7c8c9a"
  muted: "#a8b3bc"
  on-dark: "#ffffff"
  on-dark-muted: "#a8b3bc"

typography:
  hero-display:
    fontFamily: Euclid Circular A
    fontSize: 72px
    fontWeight: 500
    lineHeight: 1.10
    letterSpacing: -1.5px
  display-lg:
    fontFamily: Euclid Circular A
    fontSize: 56px
    fontWeight: 500
    lineHeight: 1.15
    letterSpacing: -1px
  heading-1:
    fontFamily: Euclid Circular A
    fontSize: 48px
    fontWeight: 500
    lineHeight: 1.20
    letterSpacing: -0.5px
  heading-2:
    fontFamily: Euclid Circular A
    fontSize: 36px
    fontWeight: 500
    lineHeight: 1.25
    letterSpacing: -0.5px
  heading-3:
    fontFamily: Euclid Circular A
    fontSize: 28px
    fontWeight: 500
    lineHeight: 1.30
  heading-4:
    fontFamily: Euclid Circular A
    fontSize: 22px
    fontWeight: 500
    lineHeight: 1.35
  heading-5:
    fontFamily: Euclid Circular A
    fontSize: 18px
    fontWeight: 600
    lineHeight: 1.40
  subtitle:
    fontFamily: Euclid Circular A
    fontSize: 18px
    fontWeight: 400
    lineHeight: 1.50
  body-md:
    fontFamily: Euclid Circular A
    fontSize: 16px
    fontWeight: 400
    lineHeight: 1.55
  body-md-medium:
    fontFamily: Euclid Circular A
    fontSize: 16px
    fontWeight: 500
    lineHeight: 1.55
  body-sm:
    fontFamily: Euclid Circular A
    fontSize: 14px
    fontWeight: 400
    lineHeight: 1.50
  body-sm-medium:
    fontFamily: Euclid Circular A
    fontSize: 14px
    fontWeight: 500
    lineHeight: 1.50
  caption:
    fontFamily: Euclid Circular A
    fontSize: 13px
    fontWeight: 400
    lineHeight: 1.40
  caption-bold:
    fontFamily: Euclid Circular A
    fontSize: 13px
    fontWeight: 600
    lineHeight: 1.40
  micro:
    fontFamily: Euclid Circular A
    fontSize: 12px
    fontWeight: 500
    lineHeight: 1.40
  micro-uppercase:
    fontFamily: Euclid Circular A
    fontSize: 11px
    fontWeight: 600
    lineHeight: 1.40
    letterSpacing: 1px
  button-md:
    fontFamily: Euclid Circular A
    fontSize: 14px
    fontWeight: 600
    lineHeight: 1.30
  code-md:
    fontFamily: Source Code Pro
    fontSize: 14px
    fontWeight: 400
    lineHeight: 1.55

rounded:
  xs: 4px
  sm: 6px
  md: 8px
  lg: 12px
  xl: 16px
  xxl: 24px
  full: 9999px

spacing:
  xxs: 4px
  xs: 8px
  sm: 12px
  md: 16px
  lg: 20px
  xl: 24px
  xxl: 32px
  xxxl: 40px
  section-sm: 48px
  section: 64px
  section-lg: 96px
  hero: 120px

components:
  button-primary:
    backgroundColor: "{colors.brand-green}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button-md}"
    rounded: "{rounded.full}"
    padding: "10px 22px"
  button-primary-pressed:
    backgroundColor: "{colors.primary-pressed}"
    textColor: "{colors.on-primary}"
  button-primary-disabled:
    backgroundColor: "{colors.hairline}"
    textColor: "{colors.muted}"
  button-secondary:
    backgroundColor: "transparent"
    textColor: "{colors.ink}"
    typography: "{typography.button-md}"
    rounded: "{rounded.full}"
    padding: "10px 22px"
    border: "1px solid {colors.hairline-strong}"
  button-on-dark:
    backgroundColor: "{colors.brand-green}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button-md}"
    rounded: "{rounded.full}"
    padding: "10px 22px"
  button-secondary-on-dark:
    backgroundColor: "transparent"
    textColor: "{colors.on-dark}"
    typography: "{typography.button-md}"
    rounded: "{rounded.full}"
    padding: "10px 22px"
    border: "1px solid {colors.hairline-dark}"
  button-ghost:
    backgroundColor: "transparent"
    textColor: "{colors.ink}"
    typography: "{typography.button-md}"
    rounded: "{rounded.md}"
    padding: "8px 12px"
  button-link:
    backgroundColor: "transparent"
    textColor: "{colors.brand-green-dark}"
    typography: "{typography.body-sm-medium}"
    padding: "0"
  card-base:
    backgroundColor: "{colors.canvas}"
    rounded: "{rounded.lg}"
    padding: "{spacing.xl}"
    border: "1px solid {colors.hairline}"
  card-feature:
    backgroundColor: "{colors.canvas}"
    rounded: "{rounded.lg}"
    padding: "{spacing.xxl}"
    border: "1px solid {colors.hairline}"
  card-product-deploy:
    backgroundColor: "{colors.canvas}"
    rounded: "{rounded.lg}"
    padding: "{spacing.xxl}"
    border: "1px solid {colors.hairline}"
  card-feature-dark:
    backgroundColor: "{colors.brand-teal-deep}"
    textColor: "{colors.on-dark}"
    rounded: "{rounded.lg}"
    padding: "{spacing.xxl}"
  card-course:
    backgroundColor: "{colors.canvas}"
    rounded: "{rounded.lg}"
    padding: "{spacing.xl}"
    border: "1px solid {colors.hairline}"
  card-cert:
    backgroundColor: "{colors.canvas}"
    rounded: "{rounded.lg}"
    padding: "{spacing.xl}"
    border: "1px solid {colors.hairline}"
  pricing-card:
    backgroundColor: "{colors.canvas}"
    rounded: "{rounded.lg}"
    padding: "{spacing.xxl}"
    border: "1px solid {colors.hairline}"
  pricing-card-featured:
    backgroundColor: "{colors.surface-feature}"
    rounded: "{rounded.lg}"
    padding: "{spacing.xxl}"
    border: "2px solid {colors.brand-green}"
  text-input:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.md}"
    padding: "{spacing.sm} {spacing.md}"
    border: "1px solid {colors.hairline-strong}"
    height: 44px
  text-input-focused:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    border: "2px solid {colors.brand-green-dark}"
  search-pill:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.steel}"
    typography: "{typography.body-md}"
    rounded: "{rounded.md}"
    padding: "{spacing.sm} {spacing.md}"
    height: 44px
    border: "1px solid {colors.hairline-strong}"
  search-pill-large:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.steel}"
    typography: "{typography.body-md}"
    rounded: "{rounded.md}"
    padding: "{spacing.md}"
    height: 56px
    border: "1px solid {colors.hairline-strong}"
  pill-tab:
    backgroundColor: "transparent"
    textColor: "{colors.steel}"
    typography: "{typography.body-sm-medium}"
    rounded: "{rounded.full}"
    padding: "{spacing.xs} {spacing.md}"
    border: "1px solid {colors.hairline}"
  pill-tab-active:
    backgroundColor: "{colors.ink}"
    textColor: "{colors.on-dark}"
    rounded: "{rounded.full}"
    border: "1px solid {colors.ink}"
  segmented-tab:
    backgroundColor: "transparent"
    textColor: "{colors.steel}"
    typography: "{typography.body-sm-medium}"
    padding: "{spacing.sm} {spacing.md}"
    border: "0 0 2px transparent solid"
  segmented-tab-active:
    backgroundColor: "transparent"
    textColor: "{colors.brand-green-dark}"
    typography: "{typography.body-sm-medium}"
    border: "0 0 2px {colors.brand-green-dark} solid"
  badge-green:
    backgroundColor: "{colors.brand-green}"
    textColor: "{colors.on-primary}"
    typography: "{typography.caption-bold}"
    rounded: "{rounded.sm}"
    padding: "2px 8px"
  badge-green-soft:
    backgroundColor: "{colors.brand-green-soft}"
    textColor: "{colors.brand-green-dark}"
    typography: "{typography.caption-bold}"
    rounded: "{rounded.full}"
    padding: "4px 10px"
  badge-purple:
    backgroundColor: "{colors.accent-purple}"
    textColor: "{colors.on-dark}"
    typography: "{typography.caption-bold}"
    rounded: "{rounded.sm}"
    padding: "2px 8px"
  badge-orange:
    backgroundColor: "{colors.accent-orange}"
    textColor: "{colors.on-dark}"
    typography: "{typography.caption-bold}"
    rounded: "{rounded.sm}"
    padding: "2px 8px"
  badge-popular:
    backgroundColor: "{colors.brand-teal-deep}"
    textColor: "{colors.brand-green}"
    typography: "{typography.caption-bold}"
    rounded: "{rounded.full}"
    padding: "4px 10px"
  promo-banner:
    backgroundColor: "{colors.brand-teal-deep}"
    textColor: "{colors.on-dark}"
    typography: "{typography.body-sm-medium}"
    padding: "{spacing.sm} {spacing.md}"
  hero-band-dark:
    backgroundColor: "{colors.brand-teal-deep}"
    textColor: "{colors.on-dark}"
    rounded: "0"
    padding: "{spacing.hero}"
  hero-platform-card:
    backgroundColor: "{colors.brand-teal-mid}"
    textColor: "{colors.on-dark}"
    rounded: "{rounded.xl}"
    padding: "{spacing.xxl}"
  cta-banner-dark:
    backgroundColor: "{colors.brand-teal-deep}"
    textColor: "{colors.on-dark}"
    rounded: "{rounded.lg}"
    padding: "{spacing.section}"
  code-block:
    backgroundColor: "{colors.canvas-dark}"
    textColor: "{colors.on-dark}"
    typography: "{typography.code-md}"
    rounded: "{rounded.md}"
    padding: "{spacing.md}"
  code-mockup-card:
    backgroundColor: "{colors.canvas-dark}"
    textColor: "{colors.on-dark}"
    rounded: "{rounded.lg}"
    padding: "{spacing.lg}"
  comparison-table:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-sm}"
    rounded: "{rounded.md}"
    border: "1px solid {colors.hairline}"
  comparison-row:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    padding: "{spacing.md} {spacing.lg}"
    border: "0 0 1px {colors.hairline-soft} solid"
  service-tile:
    backgroundColor: "{colors.canvas}"
    rounded: "{rounded.lg}"
    padding: "{spacing.xl}"
    border: "1px solid {colors.hairline}"
  why-card:
    backgroundColor: "{colors.surface}"
    rounded: "{rounded.lg}"
    padding: "{spacing.xl}"
  customer-testimonial-card:
    backgroundColor: "{colors.canvas}"
    rounded: "{rounded.lg}"
    padding: "{spacing.xxl}"
    border: "1px solid {colors.hairline}"
  logo-wall-item:
    backgroundColor: "transparent"
    textColor: "{colors.steel}"
    typography: "{typography.body-md-medium}"
    padding: "{spacing.lg}"
  faq-accordion-item:
    backgroundColor: "{colors.canvas}"
    rounded: "{rounded.md}"
    padding: "{spacing.xl}"
    border: "0 0 1px {colors.hairline} solid"
  footer-region:
    backgroundColor: "{colors.brand-teal-deep}"
    textColor: "{colors.on-dark}"
    typography: "{typography.body-sm}"
    padding: "{spacing.section} {spacing.xxl}"
  footer-link:
    backgroundColor: "transparent"
    textColor: "{colors.on-dark-muted}"
    typography: "{typography.body-sm}"
    padding: "{spacing.xxs} 0"
---

## Overview

MongoDB carries a strong dual-mode visual identity — dark deep-teal hero bands with the unmistakable bright MongoDB green ({colors.brand-green}) CTA pill paired with stark white documentation and pricing surfaces. The homepage opens with "One data platform. Unlimited AI potential." headline over a deep navy hero, the green pill sitting at the visual center as the primary CTA. Lower on the page, embedded code mockup cards (terminal-aesthetic) sit on the dark hero band, breaking out into white feature cards below. The pricing page renders a 3-tier comparison (Free / Flex / Dedicated) with a featured tier highlighted in soft mint background and bright green border. The MongoDB University page presents a course catalog grid where each tile carries a colored category tag (orange, purple, green, teal) — these are MongoDB's category-encoding accent colors and are the only place outside the brand green where saturated color appears.

The system uses Euclid Circular A as its display face. The face is contemporary geometric — confident but not overly playful — and pairs naturally with both the developer-tool aesthetic of the database product and the educational positioning of the learning surfaces. Cards use `{rounded.lg}` (12px) corners; buttons use `{rounded.full}` pills universally. The brand-teal palette ({colors.brand-teal-deep}) anchors hero bands, footer, code mockups, and the dark CTA banners.

**Key Characteristics:**
- Deep navy/teal hero bands ({colors.brand-teal-deep}) with bright MongoDB green ({colors.brand-green}) CTA pills
- Stark white pricing/documentation surfaces with colored category tags for course tiles (purple, orange, green, teal)
- Euclid Circular A across every UI surface
- Pill-shaped buttons ({rounded.full}) and 12px-rounded cards
- 3-tier pricing comparison (Free / Flex / Dedicated) with featured-mint highlight tier
- Code mockup cards with terminal-aesthetic dark canvas

## Colors

> Source pages: mongodb.com/ (homepage), /products/platform/atlas-database (Atlas product), /products/self-managed/community-edition, learn.mongodb.com/ (MongoDB University), /solutions/use-cases/artificial-intelligence (AI), /pricing (3-tier comparison). Token coverage was identical across all six pages.

### Brand & Accent
- **MongoDB Green** ({colors.brand-green}): The brand's most recognizable signal — bright pill-CTA color
- **Green Dark** ({colors.brand-green-dark}): Inline link color, secondary green
- **Green Mid** ({colors.brand-green-mid}): Mid-spectrum green for atmospheric tints
- **Green Soft** ({colors.brand-green-soft}): Pale-mint background tint for success badges and featured pricing tier
- **Brand Teal Deep** ({colors.brand-teal-deep}): Deep navy-teal for hero bands, footer
- **Brand Teal** ({colors.brand-teal}): Mid-spectrum teal
- **Brand Teal Mid** ({colors.brand-teal-mid}): Lighter teal for hero platform cards

### Category Accent (Course Tags)
- **Accent Purple** ({colors.accent-purple}): Course tag for "Database & Security"
- **Accent Orange** ({colors.accent-orange}): Course tag for "Search"
- **Accent Pink** ({colors.accent-pink}): Course tag variant
- **Accent Blue** ({colors.accent-blue}): Course tag variant for atlas/cloud topics

### Surface
- **Canvas White** ({colors.canvas}): Page background and primary card surface
- **Canvas Dark** ({colors.canvas-dark}): Code-block backgrounds, dark mockup canvas
- **Surface** ({colors.surface}): Subtle section backgrounds, search-pill rest
- **Surface Soft** ({colors.surface-soft}): Quieter section divisions
- **Surface Feature** ({colors.surface-feature}): Pale mint background for featured pricing tier
- **Hairline** ({colors.hairline}): 1px borders and primary dividers
- **Hairline Soft** ({colors.hairline-soft}): Quieter dividers
- **Hairline Strong** ({colors.hairline-strong}): Stronger 1px border for inputs
- **Hairline Dark** ({colors.hairline-dark}): Border on dark surfaces

### Text
- **Ink** ({colors.ink}): Primary headlines and body text (deep navy-teal)
- **Charcoal** ({colors.charcoal}): Body emphasis
- **Slate** ({colors.slate}): Secondary text
- **Steel** ({colors.steel}): Tertiary text, captions
- **Stone** ({colors.stone}): Muted labels
- **Muted** ({colors.muted}): Disabled, placeholders
- **On Dark** ({colors.on-dark}): White text on dark surfaces
- **On Dark Muted** ({colors.on-dark-muted}): Reduced-opacity white

### Semantic
- **Warning Background** ({colors.semantic-warning-bg}): Pale yellow callout bg
- **Warning Text** ({colors.semantic-warning-text}): Warning state copy color

## Typography

### Font Family
**Euclid Circular A** (primary): MongoDB's geometric sans-serif. Fallbacks: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif.
**Source Code Pro** (code): Monospace for code mockups. Fallbacks: 'SF Mono', Menlo, Consolas, monospace.

### Hierarchy

| Token | Size | Weight | Line Height | Letter Spacing | Use |
|---|---|---|---|---|---|
| `{typography.hero-display}` | 72px | 500 | 1.10 | -1.5px | Hero ("One data platform") |
| `{typography.display-lg}` | 56px | 500 | 1.15 | -1px | Major section openers |
| `{typography.heading-1}` | 48px | 500 | 1.20 | -0.5px | Page-level headlines |
| `{typography.heading-2}` | 36px | 500 | 1.25 | -0.5px | Subsection headlines |
| `{typography.heading-3}` | 28px | 500 | 1.30 | 0 | Card titles |
| `{typography.heading-4}` | 22px | 500 | 1.35 | 0 | Feature tile titles |
| `{typography.heading-5}` | 18px | 600 | 1.40 | 0 | Smaller card titles, FAQ questions |
| `{typography.subtitle}` | 18px | 400 | 1.50 | 0 | Hero subtitle, lead body |
| `{typography.body-md}` | 16px | 400 | 1.55 | 0 | Primary body text |
| `{typography.body-sm}` | 14px | 400 | 1.50 | 0 | Secondary body, table cells |
| `{typography.body-sm-medium}` | 14px | 500 | 1.50 | 0 | Active sidebar, button labels |
| `{typography.caption-bold}` | 13px | 600 | 1.40 | 0 | Badge labels |
| `{typography.micro-uppercase}` | 11px | 600 | 1.40 | 1px | Section eyebrows, course category tags |
| `{typography.button-md}` | 14px | 600 | 1.30 | 0 | Pill button labels |
| `{typography.code-md}` | 14px | 400 | 1.55 | 0 | Code mockups |

### Principles
- Tight hero leading (1.10) on 72px display
- Negative letter-spacing on display sizes (-1.5px to -0.5px)
- 600 weight reserved for buttons and small emphasis (FAQ headings, badges)
- Generous body leading (1.55) for technical documentation readability

## Layout

### Spacing System
- **Base unit**: 4px (8px primary increment)
- **Tokens**: `{spacing.xxs}` (4px) through `{spacing.hero}` (120px)
- **Section rhythm**: Marketing pages use `{spacing.section-lg}` (96px); pricing tightens to `{spacing.section}` (64px)

### Grid & Container
- 1280px max-width with 32px gutters
- Pricing: 3-tier card row, dense feature comparison table below
- Learn catalog: 3-up course tile grid, 4-up certification grid
- AI use cases: 2-column hero with atmospheric illustration

### Whitespace Philosophy
Marketing surfaces give content generous breathing room — `{spacing.hero}` (120px) hero padding for deep teal bands. Pricing/learn surfaces tighten dramatically.

## Elevation & Depth

| Level | Treatment | Use |
|---|---|---|
| 0 (flat) | No shadow; `{colors.hairline}` border | Default cards, table rows |
| 1 (subtle) | `rgba(0, 30, 43, 0.04) 0px 1px 2px 0px` | Hover-elevated tiles |
| 2 (card) | `rgba(0, 30, 43, 0.08) 0px 4px 12px 0px` | Feature cards |
| 3 (mockup) | `rgba(0, 30, 43, 0.12) 0px 12px 24px -4px` | Code mockup over hero |
| 4 (modal) | `rgba(0, 30, 43, 0.16) 0px 16px 48px -8px` | Modals, dropdowns |

### Decorative Depth
- Dark teal hero bands carry atmospheric gradient depth
- Code mockup cards on hero use canvas-dark surface with terminal aesthetic
- Pale-mint pricing-feature tier uses brand-tinted shadow

## Shapes

### Border Radius Scale

| Token | Value | Use |
|---|---|---|
| `{rounded.xs}` | 4px | Course category tags |
| `{rounded.sm}` | 6px | Type badges, code chips |
| `{rounded.md}` | 8px | Inputs, search-pill, code blocks |
| `{rounded.lg}` | 12px | Cards, pricing tiers, course tiles |
| `{rounded.xl}` | 16px | Larger feature panels |
| `{rounded.xxl}` | 24px | Featured product showcases |
| `{rounded.full}` | 9999px | All buttons, status badges |

### Photography Geometry
- Hero illustrations sit on full-bleed dark backgrounds
- Course tile thumbnails use `{rounded.lg}` corners
- Customer logos wall: wordmarks at consistent 60–80px height

## Components

> Per the no-hover policy, hover states are NOT documented. Default and pressed/active states only.

### Buttons

**`button-primary`** — Bright MongoDB green pill primary CTA, the dominant action.
- Background `{colors.brand-green}`, text `{colors.on-primary}` (deep navy), typography `{typography.button-md}`, padding `10px 22px`, rounded `{rounded.full}`.
- Pressed state `button-primary-pressed` deepens to `{colors.primary-pressed}`.
- Disabled state `button-primary-disabled` uses `{colors.hairline}` background.

**`button-secondary`** — Outlined pill for secondary actions.
- Background transparent, text `{colors.ink}`, border `1px solid {colors.hairline-strong}`, typography `{typography.button-md}`, padding `10px 22px`, rounded `{rounded.full}`.

**`button-on-dark`** — Bright green pill on dark hero bands.
- Background `{colors.brand-green}`, text `{colors.on-primary}`, typography `{typography.button-md}`, padding `10px 22px`, rounded `{rounded.full}`.

**`button-secondary-on-dark`** — Outlined pill on dark backgrounds.
- Background transparent, text `{colors.on-dark}`, border `1px solid {colors.hairline-dark}`, typography `{typography.button-md}`, padding `10px 22px`, rounded `{rounded.full}`.

**`button-ghost`** — Quieter rectangular ghost button.
- Background transparent, text `{colors.ink}`, typography `{typography.button-md}`, padding `8px 12px`, rounded `{rounded.md}`.

**`button-link`** — Inline green text link.
- Background transparent, text `{colors.brand-green-dark}`, typography `{typography.body-sm-medium}`, padding `0`.

### Cards & Containers

**`card-base`** — Standard content card.
- Background `{colors.canvas}`, rounded `{rounded.lg}`, padding `{spacing.xl}`, border `1px solid {colors.hairline}`.

**`card-feature`** — Feature card with larger padding.
- Background `{colors.canvas}`, rounded `{rounded.lg}`, padding `{spacing.xxl}`, border `1px solid {colors.hairline}`.

**`card-product-deploy`** — Product deployment card ("MongoDB Atlas / Community").
- Background `{colors.canvas}`, rounded `{rounded.lg}`, padding `{spacing.xxl}`, border `1px solid {colors.hairline}`.

**`card-feature-dark`** — Dark teal feature card on hero band.
- Background `{colors.brand-teal-deep}`, text `{colors.on-dark}`, rounded `{rounded.lg}`, padding `{spacing.xxl}`.

**`card-course`** — MongoDB University course tile.
- Background `{colors.canvas}`, rounded `{rounded.lg}`, padding `{spacing.xl}`, border `1px solid {colors.hairline}`.
- Top: colored category tag. Below: title `{typography.heading-5}`, description `{typography.body-sm}`, "Get Started →" link.

**`card-cert`** — Certification card.
- Background `{colors.canvas}`, rounded `{rounded.lg}`, padding `{spacing.xl}`, border `1px solid {colors.hairline}`.

**`pricing-card`** — Standard pricing tier card.
- Background `{colors.canvas}`, rounded `{rounded.lg}`, padding `{spacing.xxl}`, border `1px solid {colors.hairline}`.

**`pricing-card-featured`** — Featured pricing tier (Flex tier, mint background + green border).
- Background `{colors.surface-feature}`, rounded `{rounded.lg}`, padding `{spacing.xxl}`, border `2px solid {colors.brand-green}`.

### Inputs & Forms

**`text-input`** — Standard text field.
- Background `{colors.canvas}`, text `{colors.ink}`, border `1px solid {colors.hairline-strong}`, rounded `{rounded.md}`, padding `{spacing.sm} {spacing.md}`, height 44px.

**`text-input-focused`** — Activated state.
- Border switches to `2px solid {colors.brand-green-dark}`.

**`search-pill`** — Standard 44px search bar.
- Background `{colors.surface}`, text `{colors.steel}`, typography `{typography.body-md}`, rounded `{rounded.md}`, height 44px, border `1px solid {colors.hairline-strong}`.

**`search-pill-large`** — Large 56px search bar (top of MongoDB University catalog).
- Background `{colors.canvas}`, text `{colors.steel}`, typography `{typography.body-md}`, rounded `{rounded.md}`, height 56px, border `1px solid {colors.hairline-strong}`.

### Tabs

**`pill-tab`** + **`pill-tab-active`** — Pill-style tab nav (top of pricing: "MongoDB Atlas / Enterprise Advanced").
- Inactive: text `{colors.steel}`, border `1px solid {colors.hairline}`, padding `{spacing.xs} {spacing.md}`, rounded `{rounded.full}`.
- Active: background `{colors.ink}`, text `{colors.on-dark}`.

**`segmented-tab`** + **`segmented-tab-active`** — Underline-style tab navigation.
- Inactive: text `{colors.steel}`, no border. Active: text `{colors.brand-green-dark}`, 2px bottom border in `{colors.brand-green-dark}`.

### Badges & Status

**`badge-green`** — Bright green badge for new product highlights.
- Background `{colors.brand-green}`, text `{colors.on-primary}`, typography `{typography.caption-bold}`, rounded `{rounded.sm}`, padding `2px 8px`.

**`badge-green-soft`** — Pale-mint pill for success/free indicators.
- Background `{colors.brand-green-soft}`, text `{colors.brand-green-dark}`, typography `{typography.caption-bold}`, rounded `{rounded.full}`, padding `4px 10px`.

**`badge-purple`** — Purple course category tag.
- Background `{colors.accent-purple}`, text `{colors.on-dark}`, typography `{typography.caption-bold}`, rounded `{rounded.sm}`, padding `2px 8px`.

**`badge-orange`** — Orange course category tag.
- Background `{colors.accent-orange}`, text `{colors.on-dark}`, typography `{typography.caption-bold}`, rounded `{rounded.sm}`, padding `2px 8px`.

**`badge-popular`** — "Most Popular" tier indicator (dark teal pill with green text).
- Background `{colors.brand-teal-deep}`, text `{colors.brand-green}`, typography `{typography.caption-bold}`, rounded `{rounded.full}`, padding `4px 10px`.

**`promo-banner`** — Dark teal sticky promo strip ABOVE the top nav.
- Background `{colors.brand-teal-deep}`, text `{colors.on-dark}`, typography `{typography.body-sm-medium}`, padding `{spacing.sm} {spacing.md}`.

### Code

**`code-block`** — Code container.
- Background `{colors.canvas-dark}`, text `{colors.on-dark}`, typography `{typography.code-md}`, rounded `{rounded.md}`, padding `{spacing.md}`.

**`code-mockup-card`** — Embedded code mockup on hero band.
- Background `{colors.canvas-dark}`, text `{colors.on-dark}`, rounded `{rounded.lg}`, padding `{spacing.lg}`. Carries terminal-aesthetic code snippet.

### Tables

**`comparison-table`** — Pricing feature comparison table.
- Background `{colors.canvas}`, text `{colors.ink}`, typography `{typography.body-sm}`, rounded `{rounded.md}`, border `1px solid {colors.hairline}`.

**`comparison-row`** — Individual feature row.
- Background `{colors.canvas}`, text `{colors.ink}`, padding `{spacing.md} {spacing.lg}`, bottom border `1px solid {colors.hairline-soft}`.

### Documentation Components

**`service-tile`** — Tile in "Customize your deployment" 6-up grid.
- Background `{colors.canvas}`, rounded `{rounded.lg}`, padding `{spacing.xl}`, border `1px solid {colors.hairline}`.

**`why-card`** — "Loved by builders" feature card.
- Background `{colors.surface}`, rounded `{rounded.lg}`, padding `{spacing.xl}`.

**`customer-testimonial-card`** — Customer quote card.
- Background `{colors.canvas}`, rounded `{rounded.lg}`, padding `{spacing.xxl}`, border `1px solid {colors.hairline}`.

**`logo-wall-item`** — Customer logo wordmark cell.
- Background transparent, text `{colors.steel}`, typography `{typography.body-md-medium}`, padding `{spacing.lg}`.

**`faq-accordion-item`** — FAQ panel.
- Background `{colors.canvas}`, rounded `{rounded.md}`, padding `{spacing.xl}`, bottom border `1px solid {colors.hairline}`.

### Navigation

**Top Navigation (Marketing)** — Sticky white bar.
- Background `{colors.canvas}`, height ~64px, bottom border `1px solid {colors.hairline}`.
- Left: MongoDB leaf logo + "Solutions / Resources / Company / Pricing" links.
- Right: "Sign In" link + bright-green pill "Try Free" CTA.

### Signature Components

**`hero-band-dark`** — Deep teal hero band with embedded code mockup.
- Background `{colors.brand-teal-deep}`, text `{colors.on-dark}`, padding `{spacing.hero}`.
- Layout: centered headline `{typography.hero-display}`, subtitle, button row, `code-mockup-card` below.

**`hero-platform-card`** — Lighter-teal platform showcase card on dark hero.
- Background `{colors.brand-teal-mid}`, text `{colors.on-dark}`, rounded `{rounded.xl}`, padding `{spacing.xxl}`.

**`cta-banner-dark`** — Dark CTA banner at the bottom of feature pages.
- Background `{colors.brand-teal-deep}`, text `{colors.on-dark}`, rounded `{rounded.lg}`, padding `{spacing.section}`.

**`footer-region`** — Dark teal multi-column footer.
- Background `{colors.brand-teal-deep}`, padding `{spacing.section} {spacing.xxl}`.
- 6-column link grid.
- Section headings in `{typography.body-sm-medium}` `{colors.on-dark}`.

**`footer-link`** — Individual footer link.
- Background transparent, text `{colors.on-dark-muted}`, typography `{typography.body-sm}`, padding `{spacing.xxs} 0`.

## Do's and Don'ts

### Do
- Use `{colors.brand-green}` (bright MongoDB green) for primary CTAs everywhere
- Pair dark-teal hero bands with bright green CTA pills
- Apply `{rounded.full}` to every button, every status badge
- Apply `{rounded.lg}` (12px) to cards consistently
- Use category accent colors (purple, orange, green, teal) ONLY for course tags
- Maintain Euclid Circular A across every UI surface
- Use code mockup cards with terminal-aesthetic content for product showcases

### Don't
- Don't use the bright green for body text or large surfaces
- Don't introduce additional accent colors beyond the brand green and category-encoding palette
- Don't soften corners on buttons; the pill is a brand signature
- Don't replace deep teal hero bands with white hero bands
- Don't apply heavy shadows on flat documentation cards; reserve elevation for code mockups
- Don't use Source Code Pro for prose

## Responsive Behavior

### Breakpoints
| Name | Width | Key Changes |
|---|---|---|
| Mobile (small) | < 480px | Single column. Hero 36px. Pricing 1-up. Course catalog 1-up. |
| Mobile (large) | 480 – 767px | Course tiles 2-up. Hero 48px. |
| Tablet | 768 – 1023px | 2-column feature grids. Hero 56px. |
| Desktop | 1024 – 1279px | 3-tier pricing card row. 3-up course catalog. Hero 64px. |
| Wide Desktop | ≥ 1280px | Full 72px hero presentation. |

### Touch Targets
- Pill buttons render at 40–44px effective height
- Form inputs render at 44px height
- Search pill (large) renders at 56px
- Pill tabs ~32px → 44px on mobile

### Collapsing Strategy
- **Promo banner** stays full-width; truncates at < 480px
- **Top nav** below 1024px collapses to hamburger
- **Hero band**: code mockup card moves below text on mobile
- **Pricing tiers**: 3-column → 2-column tablet → 1-column mobile
- **Course catalog**: 3-up → 2-up tablet → 1-up mobile
- **Hero typography**: 72px → 56px → 48px → 36px
- **Footer**: 6-column desktop → 3-column tablet → accordion mobile

### Image Behavior
- Atmospheric AI imagery uses 16:9 ratio with full-bleed scaling
- Code mockup card content remains readable across breakpoints
- Customer logo wall: wordmarks at consistent 60–80px height

## Iteration Guide

1. Focus on ONE component at a time
2. Reference component names and tokens directly
3. Run `npx @google/design.md lint DESIGN.md` after edits
4. Add new variants as separate `components:` entries
5. Default to `{typography.body-md}` for body
6. Keep `{colors.brand-green}` as the primary CTA across all surfaces
7. Pill-shaped buttons (`{rounded.full}`) always
8. Dark-teal hero bands frame primary CTAs

## Known Gaps

- Specific dark-mode token values for canvas/surface beyond hero bands not surfaced
- Animation/transition timings not extracted; recommend 150–200ms ease
- Form validation success state not explicitly captured
- Course-tile category color mappings are observation-based


---

## Brand: `posthog`

---
version: alpha
name: PostHog-design-analysis
description: |
  A playful developer-tools system rendered on a warm cream canvas with hand-drawn hedgehog mascots dotted across every page like marginalia in a sketchbook. The chrome reads like a friendly engineering blog: olive-gray ink (#4d4f46) for body, deep olive-charcoal (#23251d) for headlines, IBM Plex Sans Variable typography in tight 1.43-line-height paragraphs, and a single saturated yellow-orange CTA pill (#f7a501) carrying every primary action. The system actively rejects the genre's typical somber dark-tech aesthetic in favor of a creamy, textbook-illustration sensibility — bordered cards stack on the cream canvas with 4–6px radii, doc sidebars use rounded outline-icon mini-illustrations, and the home page leans on cartoon characters (hedgehogs in lab coats, hedgehogs at terminals, hedgehogs in lounge chairs) as its signature decoration. Code samples and product analytics charts live inside white-on-cream cards with thin olive borders; the contrast between the playful illustration and the data-dense product imagery is the brand's signature voice.

colors:
  primary: "#f7a501"
  primary-pressed: "#dd9001"
  primary-active: "#b17816"
  on-primary: "#23251d"
  ink: "#23251d"
  body: "#4d4f46"
  charcoal: "#33342d"
  mute: "#6c6e63"
  ash: "#9b9c92"
  stone: "#b6b7af"
  hairline: "#bfc1b7"
  hairline-soft: "#dcdfd2"
  on-dark: "#ffffff"
  canvas: "#eeefe9"
  surface-soft: "#e5e7e0"
  surface-card: "#ffffff"
  surface-doc: "#fcfcfa"
  surface-dark: "#23251d"
  link-blue: "#1d4ed8"
  link-teal: "#1078a3"
  accent-blue: "#2c84e0"
  accent-blue-soft: "#dceaf6"
  accent-red: "#cd4239"
  accent-red-soft: "#f7d6d3"
  accent-green: "#2c8c66"
  accent-green-soft: "#d9eddf"
  accent-purple: "#7c44a6"
  accent-purple-soft: "#e7d8ee"
  focus-ring: "rgba(59,130,246,0.5)"

typography:
  display-xl:
    fontFamily: IBM Plex Sans Variable
    fontSize: 36px
    fontWeight: 700
    lineHeight: 1.5
    letterSpacing: 0
  display-lg:
    fontFamily: IBM Plex Sans Variable
    fontSize: 24px
    fontWeight: 800
    lineHeight: 1.33
    letterSpacing: -0.6px
  heading-lg:
    fontFamily: IBM Plex Sans Variable
    fontSize: 21px
    fontWeight: 700
    lineHeight: 1.4
    letterSpacing: -0.5px
  heading-md:
    fontFamily: IBM Plex Sans Variable
    fontSize: 20px
    fontWeight: 700
    lineHeight: 1.4
    letterSpacing: 0
  heading-sm:
    fontFamily: IBM Plex Sans Variable
    fontSize: 18px
    fontWeight: 700
    lineHeight: 1.5
    letterSpacing: 0
    textTransform: uppercase
  heading-sm-mixed:
    fontFamily: IBM Plex Sans Variable
    fontSize: 18px
    fontWeight: 600
    lineHeight: 1.56
    letterSpacing: 0
  body-md:
    fontFamily: IBM Plex Sans Variable
    fontSize: 16px
    fontWeight: 400
    lineHeight: 1.5
    letterSpacing: 0
  body-strong:
    fontFamily: IBM Plex Sans Variable
    fontSize: 16px
    fontWeight: 600
    lineHeight: 1.5
    letterSpacing: 0
  body-sm:
    fontFamily: IBM Plex Sans Variable
    fontSize: 15px
    fontWeight: 400
    lineHeight: 1.71
    letterSpacing: 0
  body-sm-strong:
    fontFamily: IBM Plex Sans Variable
    fontSize: 15px
    fontWeight: 600
    lineHeight: 1.71
    letterSpacing: 0
  body-xs:
    fontFamily: IBM Plex Sans Variable
    fontSize: 14px
    fontWeight: 500
    lineHeight: 1.43
    letterSpacing: 0
  caption-md:
    fontFamily: IBM Plex Sans Variable
    fontSize: 14px
    fontWeight: 700
    lineHeight: 1.71
    letterSpacing: 0
  caption-sm:
    fontFamily: IBM Plex Sans Variable
    fontSize: 13px
    fontWeight: 500
    lineHeight: 1.5
    letterSpacing: 0
  caption-xs:
    fontFamily: IBM Plex Sans Variable
    fontSize: 12px
    fontWeight: 600
    lineHeight: 1.33
    letterSpacing: 0
    textTransform: uppercase
  utility-xs:
    fontFamily: IBM Plex Sans Variable
    fontSize: 12px
    fontWeight: 700
    lineHeight: 1.33
    letterSpacing: 0
    textTransform: uppercase
  link-md:
    fontFamily: IBM Plex Sans Variable
    fontSize: 16px
    fontWeight: 400
    lineHeight: 1.5
    letterSpacing: 0
  button-md:
    fontFamily: IBM Plex Sans Variable
    fontSize: 14px
    fontWeight: 700
    lineHeight: 1.5
    letterSpacing: 0
  button-sm:
    fontFamily: IBM Plex Sans Variable
    fontSize: 13px
    fontWeight: 500
    lineHeight: 1
    letterSpacing: 0
  code-sm:
    fontFamily: ui-monospace
    fontSize: 14px
    fontWeight: 400
    lineHeight: 1.43
    letterSpacing: 0
  code-xs:
    fontFamily: Source Code Pro
    fontSize: 14px
    fontWeight: 500
    lineHeight: 1.43
    letterSpacing: 0

rounded:
  none: 0px
  xs: 2px
  sm: 4px
  md: 6px
  lg: 8px
  full: 9999px

spacing:
  xxs: 2px
  xs: 4px
  sm: 8px
  md: 12px
  lg: 16px
  xl: 24px
  xxl: 32px
  section: 80px

components:
  button-primary:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button-md}"
    rounded: "{rounded.md}"
    padding: 8px 16px
    height: 40px
  button-primary-pressed:
    backgroundColor: "{colors.primary-pressed}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button-md}"
    rounded: "{rounded.md}"
  button-secondary:
    backgroundColor: "{colors.surface-soft}"
    textColor: "{colors.ink}"
    typography: "{typography.button-md}"
    rounded: "{rounded.md}"
    padding: 8px 16px
    height: 40px
  button-tertiary:
    backgroundColor: "transparent"
    textColor: "{colors.ink}"
    typography: "{typography.button-md}"
    rounded: "{rounded.md}"
    padding: 8px 12px
  button-disabled:
    backgroundColor: "{colors.surface-soft}"
    textColor: "{colors.ash}"
    rounded: "{rounded.md}"
  text-input:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.md}"
    padding: 8px 12px
    height: 36px
  text-input-focused:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ink}"
    rounded: "{rounded.md}"
  search-input:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.md}"
    padding: 8px 12px
    height: 36px
  product-card:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.md}"
    padding: 24px
  doc-card:
    backgroundColor: "{colors.surface-doc}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.md}"
    padding: 24px
  feature-tile:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ink}"
    typography: "{typography.heading-sm-mixed}"
    rounded: "{rounded.md}"
    padding: 20px
  pricing-tier-card:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.md}"
    padding: 32px
  hedgehog-mascot-card:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.md}"
    padding: 24px
  product-tab:
    backgroundColor: "transparent"
    textColor: "{colors.body}"
    typography: "{typography.body-strong}"
    rounded: "{rounded.md}"
    padding: 8px 12px
  product-tab-active:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ink}"
    typography: "{typography.body-strong}"
    rounded: "{rounded.md}"
  pill-tab:
    backgroundColor: "transparent"
    textColor: "{colors.body}"
    typography: "{typography.button-sm}"
    rounded: "{rounded.full}"
    padding: 6px 14px
  pill-tab-active:
    backgroundColor: "{colors.ink}"
    textColor: "{colors.on-dark}"
    typography: "{typography.button-sm}"
    rounded: "{rounded.full}"
  badge-uppercase:
    backgroundColor: "transparent"
    textColor: "{colors.body}"
    typography: "{typography.utility-xs}"
    rounded: "{rounded.none}"
  badge-promo:
    backgroundColor: "{colors.accent-blue-soft}"
    textColor: "{colors.link-blue}"
    typography: "{typography.caption-xs}"
    rounded: "{rounded.full}"
    padding: 2px 8px
  banner-tip-blue:
    backgroundColor: "{colors.accent-blue-soft}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.md}"
    padding: 16px 20px
  banner-tip-green:
    backgroundColor: "{colors.accent-green-soft}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.md}"
    padding: 16px 20px
  banner-tip-red:
    backgroundColor: "{colors.accent-red-soft}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.md}"
    padding: 16px 20px
  banner-tip-purple:
    backgroundColor: "{colors.accent-purple-soft}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.md}"
    padding: 16px 20px
  code-block:
    backgroundColor: "{colors.surface-dark}"
    textColor: "{colors.on-dark}"
    typography: "{typography.code-sm}"
    rounded: "{rounded.md}"
    padding: 16px 20px
  inline-code:
    backgroundColor: "{colors.surface-soft}"
    textColor: "{colors.ink}"
    typography: "{typography.code-xs}"
    rounded: "{rounded.xs}"
    padding: 2px 6px
  primary-nav:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-strong}"
    rounded: "{rounded.none}"
    height: 56px
  sub-nav-strip:
    backgroundColor: "{colors.surface-soft}"
    textColor: "{colors.body}"
    typography: "{typography.body-xs}"
    rounded: "{rounded.none}"
    height: 40px
  doc-sidebar:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.body}"
    typography: "{typography.body-xs}"
    rounded: "{rounded.none}"
    width: 240px
  footer-section:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.body}"
    typography: "{typography.body-xs}"
    rounded: "{rounded.none}"
    padding: 32px 24px
  link-inline:
    textColor: "{colors.link-teal}"
    typography: "{typography.link-md}"
---

## Overview

PostHog's marketing system is built on the visual contradiction at the heart of the brand: a serious open-source product analytics platform rendered as if it were a friendly engineering sketchbook. The chrome runs on a warm cream canvas (`{colors.canvas}` — `#eeefe9`) — not white — and every page is dotted with hand-drawn hedgehog mascots in lab coats, lounge chairs, terminals, and reading glasses, scattered across the layout like marginalia in a textbook. Type sits in IBM Plex Sans Variable at olive-gray (`{colors.body}` — `#4d4f46`) for body and deep olive-charcoal (`{colors.ink}` — `#23251d`) for headlines, with weights stepped tightly between 400, 600, 700, and 800 to create hierarchy without color. The single saturated yellow-orange pill (`{colors.primary}` — `#f7a501`) is the brand's only loud chromatic moment; everything else is cream, olive, white card, and the occasional pastel callout band.

The system has a distinctive **two-mode body layout**: marketing pages (home, workflows, pricing) lean on alternating-pastel callout bands and feature tiles in white cards on cream, while documentation pages add a sticky 240px left sidebar with a rounded outline-icon section list. Code samples are full-width dark blocks on `{colors.surface-dark}` (the same olive-charcoal that carries body ink, used inverted) inside white doc cards, creating the system's most distinctive visual moment: a dark-on-dark code island floating inside a white card on a cream canvas, with a hedgehog mascot doodled in the margin.

Sections stack at `{spacing.section}` (80px) rhythm with cream canvas continuing edge-to-edge between them. The only color bands that interrupt the cream are pastel `{component.banner-tip-blue}` / `-green` / `-red` / `-purple` callout panels inside doc articles — soft tinted boxes that carry "💡 Tip", "✅ Success", "⚠️ Warning", "📘 Info" inline annotations. There are no decorative gradients, no atmospheric mesh backgrounds, and no full-bleed dark hero chapters; the cream canvas runs uninterrupted top to bottom and the hedgehogs are the entire visual identity.

**Key Characteristics:**
- Warm cream canvas (`{colors.canvas}` — #eeefe9) end-to-end with no surface alternation between sections — the page is one continuous sheet
- Single yellow-orange CTA pill (`{colors.primary}` — #f7a501) with deep olive text (`{colors.on-primary}`) — the brand's only saturated color
- IBM Plex Sans Variable across every text role with weights 400/500/600/700/800 — no other typeface in the system
- Hand-drawn hedgehog mascots scattered across the layout as the entire decorative system — no gradients, no mesh, no atmospheric backgrounds
- 4–8px radius card vocabulary: `{rounded.md}` (6px) for most components, `{rounded.lg}` (8px) for select containers, fully rounded for pill chips
- Pastel callout banners (`{colors.accent-blue-soft}`, `{colors.accent-green-soft}`, `{colors.accent-red-soft}`, `{colors.accent-purple-soft}`) break up doc article body with soft tinted side rails for tips/warnings/info
- Documentation pages add a sticky 240px `{component.doc-sidebar}` with rounded outline-icon section nav and an "Ask PostHog AI" CTA at the top

## Colors

> **Source pages:** `/` (home), `/pricing` (pricing detail), `/docs/product-analytics` (docs article), `/workflows` (product feature page). The chrome palette is identical across all four pages — only doc-specific accents (callout-banner pastels, code-block dark surface) appear exclusively inside the docs experience.

### Brand & Accent
- **PostHog Yellow** (`{colors.primary}` — `#f7a501`): the universal primary CTA. Sticky "Get started — free" pill in the top-right of every nav, hero CTAs, pricing-tier subscribe buttons, footer signup pill. The system's only saturated chromatic moment.
- **Yellow Pressed** (`{colors.primary-pressed}` — `#dd9001`): pressed state for the primary pill.
- **Yellow Active** (`{colors.primary-active}` — `#b17816`): deeply-pressed yellow + the system's gold-toned border accent (rare 1px gold rule on inline form elements).

### Surface
- **Canvas** (`{colors.canvas}` — `#eeefe9`): the warm cream page background. End-to-end on every page; the brand's most distinctive surface choice.
- **Soft Surface** (`{colors.surface-soft}` — `#e5e7e0`): button-secondary fill, sub-nav strip background, inline-code chip background.
- **Surface Card** (`{colors.surface-card}` — `#ffffff`): true white card and tile background sitting on top of the cream canvas. The dominant card surface.
- **Surface Doc** (`{colors.surface-doc}` — `#fcfcfa`): a faintly cream-warm white used inside doc article body cards — slightly softer than pure white to keep the page tonally unified.
- **Surface Dark** (`{colors.surface-dark}` — `#23251d`): the deep olive-charcoal used inverted as code-block background. The same hex as `{colors.ink}` — the brand uses one olive-near-black for both text and dark code surfaces.
- **Hairline** (`{colors.hairline}` — `#bfc1b7`): 1px card border, table rule, footer column dividers.
- **Hairline Soft** (`{colors.hairline-soft}` — `#dcdfd2`): in-card row divider, soft inset rule.
- **On Dark** (`{colors.on-dark}` — `#ffffff`): primary text on `{colors.surface-dark}` code blocks.

### Text
- **Ink** (`{colors.ink}` — `#23251d`): headlines, button text on light, primary nav links — deep olive-charcoal that reads near-black against cream.
- **Body** (`{colors.body}` — `#4d4f46`): default paragraph text, doc article body, inline link color before hover. The brand's most-used text color.
- **Charcoal** (`{colors.charcoal}` — `#33342d`): emphasized body text where body is too soft.
- **Mute** (`{colors.mute}` — `#6c6e63`): metadata, footer link text, in-list secondary annotations.
- **Ash** (`{colors.ash}` — `#9b9c92`): disabled-state text and lowest-emphasis utility.
- **Stone** (`{colors.stone}` — `#b6b7af`): least-emphasis caption text and disabled icon color.

### Semantic
- **Link Blue** (`{colors.link-blue}` — `#1d4ed8`): inline anchor link inside body prose. The system's primary informational link color.
- **Link Teal** (`{colors.link-teal}` — `#1078a3`): doc-article inline link variant, paired with body text.
- **Accent Blue** (`{colors.accent-blue}` — `#2c84e0`) + **Accent Blue Soft** (`{colors.accent-blue-soft}` — `#dceaf6`): "💡 Tip / Info" callout banner inside docs.
- **Accent Red** (`{colors.accent-red}` — `#cd4239`) + **Accent Red Soft** (`{colors.accent-red-soft}` — `#f7d6d3`): "⚠️ Warning / Caution" callout banner.
- **Accent Green** (`{colors.accent-green}` — `#2c8c66`) + **Accent Green Soft** (`{colors.accent-green-soft}` — `#d9eddf`): "✅ Success / Positive" callout banner.
- **Accent Purple** (`{colors.accent-purple}` — `#7c44a6`) + **Accent Purple Soft** (`{colors.accent-purple-soft}` — `#e7d8ee`): "📘 Note / Reference" callout banner.
- **Focus Ring** (`{colors.focus-ring}` — `rgba(59,130,246,0.5)`): translucent blue browser-default focus ring around interactive elements.

## Typography

### Font Family
**IBM Plex Sans Variable** is the system's primary face — used across every text role on every page at weights 400 (regular), 500 (medium), 600 (semibold), 700 (bold), and 800 (extra-bold). Falls back through `IBM Plex Sans` → `-apple-system` → `system-ui` → broad cross-platform sans stack.

**ui-monospace** + **Source Code Pro** carry code samples and inline-code chips at 14px / 1.43 line-height. Source Code Pro is the explicit display monospace; ui-monospace handles inline `<code>` chips.

The brand-distinctive choice is the **mixed weight ladder** (400 / 500 / 600 / 700 / 800) — most chrome lives in the 400–700 band, with weight 800 reserved exclusively for the larger display headlines on home and pricing. This gives the system its "engineering blog" feel: hierarchy is built from weight contrast much more than from size.

### Hierarchy

| Token | Size | Weight | Line Height | Letter Spacing | Use |
|---|---|---|---|---|---|
| `{typography.display-xl}` | 36px | 700 | 1.5 | 0 | Hero headline ("The new way to build products") |
| `{typography.display-lg}` | 24px | 800 | 1.33 | -0.6px | Section headline, pricing tier name |
| `{typography.heading-lg}` | 21px | 700 | 1.4 | -0.5px | Sub-section heading, doc-article H2 |
| `{typography.heading-md}` | 20px | 700 | 1.4 | 0 | Card group title, in-grid heading |
| `{typography.heading-sm}` | 18px | 700 | 1.5 | 0 (uppercase) | Section eyebrow ("UNDERSTAND PRODUCT USAGE") |
| `{typography.heading-sm-mixed}` | 18px | 600 | 1.56 | 0 | Card title in mixed-case (no uppercase transform) |
| `{typography.body-md}` | 16px | 400 | 1.5 | 0 | Body copy, default paragraph |
| `{typography.body-strong}` | 16px | 600 | 1.5 | 0 | Inline emphasis, primary nav link, in-card label |
| `{typography.body-sm}` | 15px | 400 | 1.71 | 0 | Doc article body, marketing card description |
| `{typography.body-sm-strong}` | 15px | 600 | 1.71 | 0 | Sub-section emphasis inside doc article |
| `{typography.body-xs}` | 14px | 500 | 1.43 | 0 | Doc sidebar item, metadata, in-list caption |
| `{typography.caption-md}` | 14px | 700 | 1.71 | 0 | Card eyebrow, link cluster header |
| `{typography.caption-sm}` | 13px | 500 | 1.5 | 0 | Compact metadata caption |
| `{typography.caption-xs}` | 12px | 600 | 1.33 | 0 (uppercase) | Inline badge label |
| `{typography.utility-xs}` | 12px | 700 | 1.33 | 0 (uppercase) | Section-eyebrow utility text, footer category header |
| `{typography.link-md}` | 16px | 400 | 1.5 | 0 | Inline body anchor link |
| `{typography.button-md}` | 14px | 700 | 1.5 | 0 | Standard primary/secondary button label |
| `{typography.button-sm}` | 13px | 500 | 1 | 0 | Pill chip / compact CTA |
| `{typography.code-sm}` | 14px | 400 | 1.43 | 0 | Code block content |
| `{typography.code-xs}` | 14px | 500 | 1.43 | 0 | Inline code chip |

### Principles
The hierarchy is explicitly built from weight + size + occasional uppercase transform — there is no italic style, no decorative display variant, no proprietary face. The biggest display moments use weight 800 with -0.6px tracking, and the body settles at 400 with 1.5 line-height; everything else fills the band between. Section eyebrows (`{typography.heading-sm}` and `{typography.utility-xs}`) consistently render uppercase, which gives the doc layout its textbook-chapter feel.

### Note on Font Substitutes
IBM Plex Sans Variable is open-source and Google-Fonts-hosted. There is no need for a substitute — load it directly. If a substitute is genuinely needed, **Inter** is the closest geometric match at all five weights; pair with Inter's letter-spacing -0.5 to -0.6px on display sizes to approximate Plex's display tracking. For monospace, **JetBrains Mono** is a near-perfect substitute for Source Code Pro at body sizes.

## Layout

### Spacing System
- **Base unit:** 8px (with finer 2/4/6px steps for tight inline gaps in callout banners and pill buttons).
- **Tokens (front matter):** `{spacing.xxs}` (2px) · `{spacing.xs}` (4px) · `{spacing.sm}` (8px) · `{spacing.md}` (12px) · `{spacing.lg}` (16px) · `{spacing.xl}` (24px) · `{spacing.xxl}` (32px) · `{spacing.section}` (80px).
- **Universal section rhythm:** every page in the set uses `{spacing.section}` (80px) as the vertical gap between major content blocks. Card grids use `{spacing.lg}` (16px) gutters; card internal padding sits at `{spacing.xl}` (24px) for product cards and `{spacing.xxl}` (32px) for pricing tier cards.

### Grid & Container
- **Max width:** ~1280px content area at desktop with 24px gutters (~48px at ultrawide). Doc article body sits at ~720px max width with the 240px sidebar pushing the article column right of center.
- **Marketing card grid:** 4-up at desktop, 3-up at 1024px, 2-up at 768px, 1-up at 480px. Cards preserve a fixed 1:1 or 4:3 ratio.
- **Pricing tier grid:** 3-up at desktop with a left rail of plan info, collapsing to 2-up + 1 at tablet and 1-up at mobile.
- **Doc layout:** desktop 240px sticky left sidebar + ~720px article body + (optional) 200px right TOC rail = ~1160px content width.
- **Footer:** 6-column horizontal link grid at desktop, 3-up at tablet, 2-up at mobile.

### Whitespace Philosophy
Whitespace is generous on marketing pages and tight on doc pages. The home and workflows pages stack feature tiles with `{spacing.lg}` (16px) gutters and 24px internal padding, while doc articles tighten internal spacing to `{spacing.md}` (12px) between paragraphs to maximize information density. The cream canvas runs continuously through every section — there are no decorative dividers, no shaded section bands; only the 1px hairline beneath section eyebrows and footer column rules separate content blocks.

## Elevation & Depth

| Level | Treatment | Use |
|---|---|---|
| 0 — Flat | No border, no shadow | Default for canvas-on-canvas blocks, hero text, body sections |
| 1 — Hairline border | 1px solid `{colors.hairline}` | Marketing cards, pricing tier cards, doc sidebar items, footer column rules |
| 2 — Hairline soft | 1px solid `{colors.hairline-soft}` | In-card row divider between adjacent rows |
| 3 — Inverted dark code block | `{colors.surface-dark}` fill | Code samples inside doc cards — the system's only "elevated" surface uses color, not shadow |

The system has no drop-shadow elevation in marketing or product chrome. Cards sit flat on cream with thin olive borders. The single inverted moment is the dark code-block surface used inside doc article body cards.

### Decorative Depth
Depth comes entirely from illustration and the pastel callout band system, not from CSS effects:
- **Hand-drawn hedgehog mascots** — characters in various costumes (lab coat, terminal, lounge chair, magnifying glass, hammock, hat) scattered across pages as marginalia. Always rendered as flat color illustrations, never photographs.
- **Pastel callout banners** — `{component.banner-tip-blue}` / `-green` / `-red` / `-purple` soft tinted side-rail panels inside doc articles, each prefixed with an emoji icon (💡 ✅ ⚠️ 📘) and carrying tip/warning/note copy.
- **Code blocks** — full-width dark olive-charcoal panels on `{colors.surface-dark}` with white code text. The system's most cinematic surface, used inside white doc cards.
- **Outline product icons** in the doc sidebar — small rounded-square mini-illustrations (chart icon, funnel, session-replay icon) mark each major product section.

## Shapes

### Border Radius Scale

| Token | Value | Use |
|---|---|---|
| `{rounded.none}` | 0px | Sub-nav strip, footer, doc sidebar, primary nav — flat structural surfaces |
| `{rounded.xs}` | 2px | Inline `<code>` chips, micro-rule highlights |
| `{rounded.sm}` | 4px | Inline buttons, form inputs, micro chips |
| `{rounded.md}` | 6px | Marketing cards, pricing cards, doc cards, code blocks, every standard CTA |
| `{rounded.lg}` | 8px | Tab top corners (`6px 6px 0 0` on active tab) and rare large containers |
| `{rounded.full}` | 9999px | Pill chips and pill-style CTAs ("Get started — free" sticky CTA in nav) |

The radius vocabulary clusters around 4–6px for nearly everything; the only fully-rounded element is the pill-style sticky nav CTA and inline pill chips.

### Photography Geometry
There is no photography. Visual elements are limited to:
- **Hedgehog character illustrations** — flat-color cartoon hedgehogs ranging from ~80px (in-card mascot) to ~240px (hero illustration). Always at native aspect, never cropped to a frame.
- **Outline product icons** in the doc sidebar — 20–24px rounded-square illustrations.
- **Inline emoji** at 14–16px inside callout banners (💡 ✅ ⚠️ 📘) — used as functional iconography rather than decoration.
- **Section illustrations** on the home page — small hedgehog vignettes paired with each "Understand product usage" / "Build sticky habits" / "Test before launch" feature row.

## Components

> **No hover states documented** per system policy. Each spec covers Default and Active/Pressed only.

### Buttons

**`button-primary`** — the universal PostHog CTA
- Background `{colors.primary}` (yellow-orange), text `{colors.on-primary}` (deep olive), type `{typography.button-md}`, padding `8px 16px`, height `40px`, rounded `{rounded.md}`.
- Used for "Get started — free" (sticky top-nav CTA), "Sign up", "Try it free", "Subscribe" — every primary action.
- Pressed state lives in `button-primary-pressed` — background drops to `{colors.primary-pressed}`.

**`button-secondary`** — soft alternative on cream canvas
- Background `{colors.surface-soft}` (`#e5e7e0`), text `{colors.ink}`, type `{typography.button-md}`, padding `8px 16px`, height `40px`, rounded `{rounded.md}`.
- "Talk to sales", "Read docs", "Watch demo" — second-tier actions paired with the yellow primary.

**`button-tertiary`** — ghost text button
- Background transparent, text `{colors.ink}`, type `{typography.button-md}`, padding `8px 12px`, rounded `{rounded.md}`.
- Lowest-emphasis action: "See all docs →", "Browse all features".

**`button-disabled`**
- Background `{colors.surface-soft}`, text `{colors.ash}` — flat soft cream-gray.

### Tabs & Chips

**`product-tab`** + **`product-tab-active`** — major product section tabs
- Default: transparent background, text `{colors.body}`, type `{typography.body-strong}`, padding `8px 12px`, rounded `{rounded.md}`.
- Active: background flips to `{colors.surface-card}` (white), text `{colors.ink}` — the tab card lifts off the cream canvas as the visual signal of selection.

**`pill-tab`** + **`pill-tab-active`** — compact filter pill
- Default: transparent background, text `{colors.body}`, type `{typography.button-sm}`, padding `6px 14px`, rounded `{rounded.full}`.
- Active: background flips to `{colors.ink}`, text `{colors.on-dark}` — the chip flips fully inverted on selection.

**`badge-uppercase`** — text-only utility label
- Background transparent, text `{colors.body}` in `{typography.utility-xs}` (uppercase) — used as in-list category prefix ("FEATURE FLAG", "EXPERIMENT", "HEATMAP").

**`badge-promo`** — small inline pill chip
- Background `{colors.accent-blue-soft}`, text `{colors.link-blue}`, type `{typography.caption-xs}`, padding `2px 8px`, rounded `{rounded.full}`.
- "New", "Beta", "Coming soon" pill labels overlaid on cards.

### Inputs & Forms

**`text-input`** + **`text-input-focused`**
- Default: background `{colors.surface-card}`, text `{colors.ink}`, 1px solid `{colors.hairline}`, type `{typography.body-md}`, padding `8px 12px`, height `36px`, rounded `{rounded.md}`.
- Focused: same surface; 2px solid `{colors.accent-blue}` border replaces the 1px hairline + a translucent `{colors.focus-ring}` outline.

**`search-input`** — utility search field (doc sidebar, "Ask PostHog AI")
- Same dimensions as `text-input` with a magnifier glyph at the left edge in `{colors.mute}`.

### Cards & Containers

**`product-card`** — marketing tile / feature card
- Container: background `{colors.surface-card}` (white), 1px solid `{colors.hairline}`, padding `{spacing.xl}` (24px), rounded `{rounded.md}`.
- Layout: small hedgehog illustration at top-left, `{typography.heading-sm-mixed}` title, `{typography.body-sm}` description, optional `{component.button-tertiary}` "Learn more →" link.

**`doc-card`** — doc article body card
- Container: background `{colors.surface-doc}` (`#fcfcfa` warm-white), 1px solid `{colors.hairline}`, padding `{spacing.xl}` (24px), rounded `{rounded.md}`.
- Carries article body sections, code blocks, callout banners, and tables inside doc pages.

**`feature-tile`** — small marketing feature tile
- Container: background `{colors.surface-card}`, 1px solid `{colors.hairline}`, padding `{spacing.lg}` (20px), rounded `{rounded.md}`.
- Used in 3-up or 4-up grids on home and workflows pages — paired with a small icon and a 1-line description.

**`pricing-tier-card`** — pricing plan card
- Container: background `{colors.surface-card}`, 1px solid `{colors.hairline}`, padding `{spacing.xxl}` (32px), rounded `{rounded.md}`.
- Layout: tier name in `{typography.display-lg}` (24px / 800 / -0.6px), large price + period, feature checklist with check-icon bullets, primary or secondary CTA at bottom.

**`hedgehog-mascot-card`** — feature card with margin-anchored hedgehog
- Same chrome as `{component.product-card}` but with a hand-drawn hedgehog illustration anchored in the right margin or top-right corner — the brand's signature card variant.

### Callout Banners

**`banner-tip-blue`** + **`banner-tip-green`** + **`banner-tip-red`** + **`banner-tip-purple`**
- Background `{colors.accent-blue-soft}` / `{colors.accent-green-soft}` / `{colors.accent-red-soft}` / `{colors.accent-purple-soft}`, text `{colors.ink}`, type `{typography.body-md}`, padding `16px 20px`, rounded `{rounded.md}`.
- Each prefixed with an inline emoji icon (💡 / ✅ / ⚠️ / 📘) followed by an inline label and body copy.
- Only appear inside doc article body. The four-color callout family is the brand's information-architecture vocabulary for inline tips/warnings/info inside long-form documentation.

### Code

**`code-block`** — dark code sample inside doc card
- Container: background `{colors.surface-dark}` (deep olive-charcoal), text `{colors.on-dark}` in `{typography.code-sm}`, padding `16px 20px`, rounded `{rounded.md}`.
- Syntax highlighting uses muted accent colors (blue for keywords, green for strings, purple for numbers) — never the bright accent colors used in callout banners.

**`inline-code`** — small inline `<code>` chip
- Background `{colors.surface-soft}`, text `{colors.ink}` in `{typography.code-xs}`, padding `2px 6px`, rounded `{rounded.xs}` (2px).
- Used inside body prose to mark code snippets and identifiers.

### Navigation

**`primary-nav`**
- Background `{colors.canvas}` (cream — same as the page), text `{colors.ink}`, height `56px`, type `{typography.body-strong}`, rounded `{rounded.none}`.
- Layout (desktop): PostHog wordmark + hedgehog logo at left, nav menu cluster ("Pricing · Docs · Community · Company"), right cluster with a search-glyph, "Login" link, and the always-yellow `{component.button-primary}` "Get started — free" pill anchored to the far right.

**`sub-nav-strip`** — secondary nav bar (under primary)
- Background `{colors.surface-soft}`, text `{colors.body}` in `{typography.body-xs}`, height `40px`, rounded `{rounded.none}`.
- Sits directly below the primary nav on workflows / product pages with section anchor links and a contextual "Get started →" link at the right.

**`doc-sidebar`** — sticky doc-page left sidebar
- Background `{colors.canvas}`, text `{colors.body}` in `{typography.body-xs}`, width `240px`, rounded `{rounded.none}`.
- Layout: search-input "Ask PostHog AI" at top, then a vertical list of section headers each with a small rounded outline-icon mini-illustration, then nested item links indented under the active header.

**Top Nav (Mobile)**
- Hamburger menu icon at left, PostHog wordmark + hedgehog at center, search + sticky yellow "Get started — free" CTA at right. Primary nav collapses into a full-height drawer that slides from the left.

### Footer

**`footer-section`**
- Background `{colors.canvas}`, text `{colors.body}` in `{typography.body-xs}`, padding `32px 24px`, rounded `{rounded.none}`, with a 1px `{colors.hairline}` top rule.
- Layout: 6-column horizontal link grid (Product · Resources · Company · Community · Pricing · Legal), each column with a `{typography.utility-xs}` (uppercase) header and a vertical list of links in `{typography.body-xs}` `{colors.body}`.
- Bottom row: PostHog wordmark + small hedgehog illustration, copyright in `{typography.caption-xs}` `{colors.mute}`, social-icon row at far-right.

### Inline

**`link-inline`** — body-prose anchor link
- `{colors.link-teal}` (`#1078a3`) in body prose with no underline by default; underline appears on focus. The brand's primary inline link color.

## Do's and Don'ts

### Do
- Use `{colors.canvas}` (cream — `#eeefe9`) as the page body. Never substitute pure white as the canvas.
- Reserve `{colors.primary}` (yellow-orange) for the primary CTA pill only. The "Get started — free" treatment is the brand's anchor.
- Render the brand wordmark with the hedgehog illustration alongside it, not as a stand-alone wordmark. The hedgehog IS the brand identity.
- Use IBM Plex Sans Variable across every text role — body 400, emphasis 600/700, display 800.
- Stack content sections at `{spacing.section}` (80px) rhythm with no decorative dividers between them; let the cream canvas continue uninterrupted.
- Use `{component.banner-tip-blue}` / `-green` / `-red` / `-purple` only inside doc article body for tip/warning/note panels — keep marketing chrome out of the four-color callout family.
- Pair every code sample with the dark `{component.code-block}` surface; inline `<code>` chips use `{component.inline-code}` (cream surface-soft chip).
- Anchor a hedgehog mascot illustration in feature tile margins on home and workflows pages — the system's signature decoration.

### Don't
- Don't introduce drop shadows on cards. Cards sit flat on cream with thin olive borders only.
- Don't add a second saturated chromatic CTA. Yellow-orange is the only loud color in the system.
- Don't replace the cream canvas with pure white or full-bleed dark hero bands. The cream is the brand.
- Don't use the four-color callout banner pastels (`{colors.accent-blue-soft}`, `-green`, `-red`, `-purple`) as marketing-card backgrounds. They belong to inline doc content only.
- Don't substitute the hedgehog illustration with a generic icon set. The character system is the brand.
- Don't use uppercase transform outside of `{typography.heading-sm}`, `{typography.utility-xs}`, and `{typography.caption-xs}`. Uppercase is reserved for eyebrows and footer category headers.
- Don't pad cards with 32px+ on all sides except for `{component.pricing-tier-card}`. Standard cards sit at 24px internal padding.

## Responsive Behavior

### Breakpoints

| Name | Width | Key Changes |
|---|---|---|
| ultrawide | 1920px+ | Content max-width holds at 1280px; outer gutters grow to ~80px |
| desktop-large | 1440px | Default — 4-up feature tile grid, 240px sticky doc sidebar visible |
| desktop | 1280px | Same layout with narrower outer gutters |
| desktop-small | 1024px | 4-up tiles collapse to 3-up; doc sidebar remains visible |
| tablet | 768px | 3-up tiles collapse to 2-up; doc sidebar collapses into a top accordion; primary nav becomes hamburger |
| mobile | 480px | Single-column everything; hero `{typography.display-xl}` scales 36px → ~28px |
| mobile-narrow | 320px | Section padding tightens to 32px |

### Touch Targets
All interactive elements meet WCAG AA (≥ 40×40px). `{component.button-primary}` and `{component.button-secondary}` sit at 40px height with 16px padding. `{component.text-input}` sits at 36px (just under AAA but above AA at this size). `{component.pill-tab}` is ~32–36px height with 14px padding extending to ~44px tappable via inline padding. Doc-sidebar items use 14px text with ~32px line-height + 6px vertical padding for ~44px tap rows.

### Collapsing Strategy
- **Primary nav:** desktop horizontal cluster → tablet hamburger drawer at 768px. The yellow "Get started — free" CTA stays visible at every breakpoint.
- **Sub-nav strip:** desktop horizontal anchor row → tablet horizontal scroll → mobile select dropdown.
- **Marketing card grid:** 4-up → 3-up → 2-up → 1-up at 1024, 768, and 480px; gutters drop from 16px to 12px on mobile.
- **Pricing grid:** 3-up → 2+1 → 1-up stacked at tablet and below.
- **Doc layout:** desktop 240px sidebar + 720px article → tablet sidebar collapses to a top accordion → mobile fully collapsed accordion.
- **Footer:** 6-up link columns → 3-up at tablet → 2-up at mobile.
- **Section padding:** `{spacing.section}` (80px) desktop → 64px tablet → 48px mobile.
- **Hero headline:** `{typography.display-xl}` (36px) at desktop, scaling to ~28px at mobile, line-height holding at 1.5.

### Image Behavior
The only "imagery" in the system is hand-drawn hedgehog illustrations rendered as inline SVG. They preserve their natural aspect at every breakpoint and scale via CSS `width: auto; max-width: 100%`. There is no responsive art-direction needed because there is no photography.

## Iteration Guide

1. Focus on ONE component at a time. Pull its YAML entry and verify every property resolves.
2. Reference component names and tokens directly (`{colors.primary}`, `{component.button-primary-pressed}`, `{rounded.md}`) — do not paraphrase.
3. Run `npx @google/design.md lint DESIGN.md` after edits — `broken-ref`, `contrast-ratio`, and `orphaned-tokens` warnings flag issues automatically.
4. Add new variants as separate component entries (`-pressed`, `-disabled`, `-focused`) — do not bury them inside prose.
5. Default body to `{typography.body-md}` (16px / 400 / 1.5); reach for `{typography.body-strong}` for emphasis; reserve `{typography.display-lg}` (24px / 800) strictly for marketing display moments.
6. Keep `{colors.primary}` scarce per viewport — at most one yellow-orange pill per fold.
7. When introducing a new component, ask whether it can be expressed with the existing card + 6px-radius + cream-canvas vocabulary before adding new tokens. The system's strength is that it almost never needs new ones.

## Known Gaps

- **Mobile screenshots not captured** — responsive behavior synthesizes PostHog's mobile pattern (hamburger drawer, single-column grid, doc sidebar accordion) from desktop evidence and the breakpoint stack.
- **Hover states not documented** by system policy.
- **In-product app chrome** (PostHog dashboard, charts, session replay player) not in the captured set — the marketing site is documented here, not the in-product analytics interface.
- **Authenticated chrome** (login modal, account dashboard, billing settings) not in the captured pages.
- **Form validation states** beyond the focused-state input not present in the captured surfaces.
- **Marketing illustration set** — the full library of hedgehog character poses is not enumerated here; specific poses (lab coat hedgehog, terminal hedgehog, hammock hedgehog) are noted as visible in screenshots but the full asset library is page-specific.


---

## Brand: `resend`

---
version: alpha
name: Resend-design-analysis
description: |
  Resend's marketing surfaces sit on a near-pure black canvas with off-white
  text and a single signature color — the deep editorial-serif Domaine
  Display headline mark — that gives an otherwise utilitarian developer-tool
  brand its print-magazine confidence. The system pairs Domaine Display
  (oversized 76px–96px serif, ss01/ss04/ss11 features on) with ABC Favorit
  for body and Inter for UI. Surfaces rely on subtle 6–9% opacity gradient
  glows, hairline 1px borders made from translucent white, and a strict
  rounded-12px container vocabulary. There is no decorative chrome — just
  type, code, and atmospheric depth.

colors:
  primary: "#fcfdff"
  primary-on: "#000000"
  ink: "#fcfdff"
  body: "rgba(252,253,255,0.86)"
  charcoal: "rgba(252,253,255,0.7)"
  mute: "#a1a4a5"
  ash: "#888e90"
  stone: "#464a4d"
  on-light: "#000000"
  on-light-mute: "rgba(0,0,51,0.7)"
  canvas: "#000000"
  surface-card: "#0a0a0c"
  surface-elevated: "#101012"
  surface-deep: "#06060a"
  hairline: "rgba(255,255,255,0.06)"
  hairline-strong: "rgba(255,255,255,0.14)"
  divider-soft: "rgba(255,255,255,0.04)"
  accent-orange: "#ff801f"
  accent-orange-glow: "rgba(255,89,0,0.22)"
  accent-yellow: "#ffc53d"
  accent-blue: "#3b9eff"
  accent-blue-glow: "rgba(0,117,255,0.34)"
  accent-green: "#11ff99"
  accent-green-glow: "rgba(34,255,153,0.18)"
  accent-red: "#ff2047"
  accent-red-glow: "rgba(255,32,71,0.34)"
  link: "#3b9eff"
  surface-light: "#f1f7fe"

typography:
  display-xxl:
    fontFamily: Domaine Display
    fontSize: 96px
    fontWeight: 400
    lineHeight: 1.0
    letterSpacing: -0.96px
    fontFeature: "ss01, ss04, ss11"
  display-xl:
    fontFamily: Domaine Display
    fontSize: 76.8px
    fontWeight: 400
    lineHeight: 1.0
    letterSpacing: -0.768px
    fontFeature: "ss01, ss04, ss11"
  display-lg:
    fontFamily: ABC Favorit
    fontSize: 56px
    fontWeight: 400
    lineHeight: 1.2
    letterSpacing: -2.8px
    fontFeature: "ss01, ss04, ss11"
  heading-md:
    fontFamily: Inter
    fontSize: 24px
    fontWeight: 500
    lineHeight: 1.5
    letterSpacing: -0.4px
  heading-sm:
    fontFamily: Inter
    fontSize: 20px
    fontWeight: 500
    lineHeight: 1.3
    letterSpacing: -0.3px
  subtitle:
    fontFamily: ABC Favorit
    fontSize: 20px
    fontWeight: 400
    lineHeight: 1.3
    fontFeature: "ss01, ss04, ss11"
  body-lg:
    fontFamily: Inter
    fontSize: 18px
    fontWeight: 400
    lineHeight: 1.5
  body-md:
    fontFamily: ABC Favorit
    fontSize: 16px
    fontWeight: 400
    lineHeight: 1.5
    letterSpacing: -0.8px
    fontFeature: "ss01, ss04, ss11"
  body-sm:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: 400
    lineHeight: 1.43
  button-md:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: 500
    lineHeight: 1.43
  button-sm:
    fontFamily: ABC Favorit
    fontSize: 14px
    fontWeight: 500
    lineHeight: 1.43
    letterSpacing: 0.35px
    fontFeature: "ss01, ss03, ss04"
  caption:
    fontFamily: Inter
    fontSize: 12px
    fontWeight: 400
    lineHeight: 1.5
  caption-emph:
    fontFamily: Helvetica
    fontSize: 14px
    fontWeight: 600
    lineHeight: 1.0
  code-md:
    fontFamily: Geist Mono
    fontSize: 13px
    fontWeight: 400
    lineHeight: 1.6

rounded:
  none: 0px
  xs: 4px
  sm: 6px
  md: 8px
  lg: 12px
  xl: 16px
  full: 9999px

spacing:
  xxs: 2px
  xs: 4px
  sm: 8px
  md: 12px
  lg: 16px
  xl: 24px
  xxl: 32px
  xxxl: 48px
  section: 96px
  band: 128px

components:
  button-primary:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.primary-on}"
    typography: "{typography.button-md}"
    rounded: "{rounded.md}"
    padding: 8px 16px
    height: 36px
  button-primary-pressed:
    backgroundColor: "{colors.surface-light}"
    textColor: "{colors.primary-on}"
    typography: "{typography.button-md}"
    rounded: "{rounded.md}"
  button-ghost:
    backgroundColor: "{colors.surface-elevated}"
    textColor: "{colors.ink}"
    typography: "{typography.button-md}"
    rounded: "{rounded.md}"
    padding: 8px 16px
    height: 36px
  button-outline:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.button-md}"
    rounded: "{rounded.md}"
    padding: 7px 15px
    height: 36px
  text-input:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ink}"
    typography: "{typography.body-sm}"
    rounded: "{rounded.md}"
    padding: 10px 14px
    height: 40px
  hero-stripe:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.display-xxl}"
    rounded: "{rounded.none}"
    padding: 96px 32px
  feature-card:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.lg}"
    padding: 32px
  feature-card-bordered:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.lg}"
    padding: 32px
  pricing-tier:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.lg}"
    padding: 32px
  pricing-tier-featured:
    backgroundColor: "{colors.surface-elevated}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.lg}"
    padding: 32px
  code-window:
    backgroundColor: "{colors.surface-deep}"
    textColor: "{colors.body}"
    typography: "{typography.code-md}"
    rounded: "{rounded.lg}"
    padding: 24px
  code-tab:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.charcoal}"
    typography: "{typography.code-md}"
    rounded: "{rounded.sm}"
    padding: 6px 12px
  email-mockup:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.lg}"
    padding: 0
  badge-pill:
    backgroundColor: "{colors.surface-elevated}"
    textColor: "{colors.body}"
    typography: "{typography.caption}"
    rounded: "{rounded.full}"
    padding: 4px 10px
  status-dot:
    backgroundColor: "{colors.accent-green}"
    rounded: "{rounded.full}"
    size: 8px
  nav-bar:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.body}"
    typography: "{typography.button-sm}"
    rounded: "{rounded.none}"
    height: 64px
  sub-nav-pill:
    backgroundColor: "{colors.surface-elevated}"
    textColor: "{colors.body}"
    typography: "{typography.button-sm}"
    rounded: "{rounded.full}"
    padding: 6px 14px
  contributor-avatar:
    backgroundColor: "{colors.surface-card}"
    rounded: "{rounded.full}"
    size: 32px
  footer:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.charcoal}"
    typography: "{typography.body-sm}"
    rounded: "{rounded.none}"
    padding: 64px 32px
---

## Overview

Resend looks like a developer tool with the typography of an editorial.
Every page opens on `{colors.canvas}` (`#000000`), and the loudest element on
the canvas is not a button or a brand stamp — it's a 96px Domaine Display
serif headline ("Email for developers", "Email reimagined") with the
`ss01 / ss04 / ss11` stylistic alternates engaged. That single typographic
decision sets the brand tone: confident, considered, slightly literary, and
priced on quality rather than novelty.

The supporting cast is technical. Body copy switches to **ABC Favorit** for
marketing prose and **Inter** for UI labels, while code blocks render in
**Geist Mono** inside `{component.code-window}` shells with hairline traffic-
light dots. Surface depth is built almost entirely from translucent white —
6% borders, 14% strong borders, 4% dividers — over a deep `{colors.surface-deep}`
layer that sits just below the canvas black. There are no gradients painted
across full bands, just **soft atmospheric glows** (orange, blue, green, red,
yellow) anchored at the top of select sections, all at low opacity.

Page rhythm cycles in a single dark register: hero stripe → atmospheric
section → code window section → email mockup section → pricing or feature
grid → black footer. The brand never warms to a light surface; even
secondary email mockups are rendered as compact white cards inside the dark
canvas, framed like print insets in a black-bordered magazine page.

**Key Characteristics:**
- Pure black canvas (`{colors.canvas}` — `#000000`) on every public page; off-white text (`{colors.ink}` — `#fcfdff`) carries the full read.
- A serif-led type system: **Domaine Display** at 76–96px for hero headlines, **ABC Favorit** for marketing body, **Inter** for UI, **Geist Mono** for code.
- Six accent glow colours used only as low-opacity atmospheric washes (`{colors.accent-orange}`, `{colors.accent-blue}`, `{colors.accent-green}`, `{colors.accent-red}`, `{colors.accent-yellow}`) — never as buttons or solid surfaces.
- Strict container vocabulary: `{rounded.lg}` (12px) for feature cards, code wells, and email mockups; `{rounded.md}` (8px) for buttons; `{rounded.full}` for pills and avatars.
- Translucent white borders (`{colors.hairline}` 6% / `{colors.hairline-strong}` 14%) replace shadows entirely — the system has no traditional drop-shadow elevation language.
- `{component.button-primary}` is a small white rectangle with black text — counterintuitive contrast that becomes the page's brightest pixel and works as a single visual anchor.

## Colors

### Brand & Accent
- **Primary White** (`{colors.primary}` — `#fcfdff`): the brand's de facto accent. Reserved for `{component.button-primary}` (white pill on black canvas), Domaine display headlines, and the active text colour. White is the loudest possible colour on this canvas — that's the signature.
- **Primary On** (`{colors.primary-on}` — `#000000`): label colour on top of `{colors.primary}` surfaces. Black text on white pill is the brand's CTA pattern.
- **Surface Light** (`{colors.surface-light}` — `#f1f7fe`): a subtle blue-tinted off-white used as the active/pressed state of `{component.button-primary}`.

### Surface
- **Canvas** (`{colors.canvas}` — `#000000`): the default page background. True black, never near-black.
- **Surface Card** (`{colors.surface-card}` — `#0a0a0c`): the standard inset card surface, just lighter than canvas to register a step up in elevation.
- **Surface Elevated** (`{colors.surface-elevated}` — `#101012`): a second elevation step used on featured pricing tiers and ghost button surfaces.
- **Surface Deep** (`{colors.surface-deep}` — `#06060a`): code window background — slightly cooler and darker than the canvas itself, suggesting depth via temperature.
- **Hairline** (`{colors.hairline}` — `rgba(255,255,255,0.06)`): the soft 1px translucent-white divider used between rows and around feature cards.
- **Hairline Strong** (`{colors.hairline-strong}` — `rgba(255,255,255,0.14)`): the structural 1px border on cards, code wells, and form inputs.
- **Divider Soft** (`{colors.divider-soft}` — `rgba(255,255,255,0.04)`): low-contrast dividers between footer columns.

### Text
- **Ink** (`{colors.ink}` — `#fcfdff`): primary text colour on the dark canvas. Faintly blue-cool to feel like printed paper rather than pure white pop.
- **Body** (`{colors.body}` — `rgba(252,253,255,0.86)`): long-form body text where pure ink would feel too sharp.
- **Charcoal** (`{colors.charcoal}` — `rgba(252,253,255,0.7)`): captions, secondary nav labels.
- **Mute** (`{colors.mute}` — `#a1a4a5`): supporting text and inactive labels.
- **Ash** (`{colors.ash}` — `#888e90`): tertiary text, footer copy.
- **Stone** (`{colors.stone}` — `#464a4d`): disabled foreground.
- **On-Light** (`{colors.on-light}` — `#000000`): label colour inside the rare email-mockup white cards.
- **On-Light Mute** (`{colors.on-light-mute}` — `rgba(0,0,51,0.7)`): secondary text inside email mockups.

### Semantic
- **Accent Orange** (`{colors.accent-orange}` — `#ff801f`) + glow (`{colors.accent-orange-glow}` — `rgba(255,89,0,0.22)`): atmospheric warm wash anchored to "Email reimagined" / customer story sections. Solid orange never appears as a button or surface — only the glow.
- **Accent Yellow** (`{colors.accent-yellow}` — `#ffc53d`): used in inline highlight strokes and "first-class developer experience" key callouts.
- **Accent Blue** (`{colors.accent-blue}` — `#3b9eff`) + glow (`{colors.accent-blue-glow}` — `rgba(0,117,255,0.34)`): inline link colour and the cool atmospheric wash on the "Integrate this weekend" section.
- **Accent Green** (`{colors.accent-green}` — `#11ff99`) + glow (`{colors.accent-green-glow}` — `rgba(34,255,153,0.18)`): success status dots and the "delivery confirmed" feature glow.
- **Accent Red** (`{colors.accent-red}` — `#ff2047`) + glow (`{colors.accent-red-glow}` — `rgba(255,32,71,0.34)`): inline error red and the "reach humans, not spam folders" attention wash.
- **Link** (`{colors.link}` — `#3b9eff`): inline link colour — same as accent blue.

## Typography

### Font Family

Resend ships a four-family stack:

- **Domaine Display** — proprietary editorial serif used exclusively for hero headlines at 76px+, with `ss01 / ss04 / ss11` stylistic sets engaged for a slightly tighter, more print-magazine look.
- **ABC Favorit** — proprietary humanist sans-serif used for marketing body copy, hero subtitles, and pill labels. Carries `ss01 / ss03 / ss04` features for tabular figures and alternate glyphs.
- **Inter** — open-source sans-serif used for UI: button labels, captions, card body text, nav links.
- **Geist Mono** — open-source monospace used in code wells.

When proprietary families cannot be licensed, **Söhne** or **Tiempos Headline** stand in for Domaine Display, and **Geist** or **Inter Tight** can replace ABC Favorit. Inter and Geist Mono are open-source and should be used directly.

### Hierarchy

| Token | Size | Weight | Line Height | Letter Spacing | Use |
|---|---|---|---|---|---|
| `{typography.display-xxl}` | 96px | 400 | 1.0 | -0.96px | Home hero ("Email for developers"). One per page. |
| `{typography.display-xl}` | 76.8px | 400 | 1.0 | -0.768px | Section openers ("Email reimagined", "Available today"). |
| `{typography.display-lg}` | 56px | 400 | 1.2 | -2.8px | ABC Favorit display sub-titles. |
| `{typography.heading-md}` | 24px | 500 | 1.5 | -0.4px | Card titles, section sub-titles. |
| `{typography.heading-sm}` | 20px | 500 | 1.3 | -0.3px | List headers. |
| `{typography.subtitle}` | 20px | 400 | 1.3 | 0 | Hero subtitles. |
| `{typography.body-lg}` | 18px | 400 | 1.5 | 0 | Marketing prose. |
| `{typography.body-md}` | 16px | 400 | 1.5 | -0.8px | ABC Favorit body. |
| `{typography.body-sm}` | 14px | 400 | 1.43 | 0 | Captions, metadata. |
| `{typography.button-md}` | 14px | 500 | 1.43 | 0 | Default button label. |
| `{typography.button-sm}` | 14px | 500 | 1.43 | 0.35px | Pill labels, inline links. |
| `{typography.caption}` | 12px | 400 | 1.5 | 0 | Footer disclosure, copyright. |
| `{typography.caption-emph}` | 14px | 600 | 1.0 | 0 | Emphatic small caption — Helvetica fallback. |
| `{typography.code-md}` | 13px | 400 | 1.6 | 0 | Code blocks, inline code. |

### Principles
- Display sizes always run at `lineHeight: 1.0` with negative letter-spacing — the Domaine Display headlines pack into solid typographic blocks rather than open prose lines.
- Body weight stays at 400 across `{typography.body-lg}` and `{typography.body-md}`. The serif/sans family change carries hierarchy, not weight bumps.
- ABC Favorit always runs with `ss01 / ss04 / ss11` engaged; Inter never carries OpenType features. Code in Geist Mono never carries ligatures.
- Inline links use `{typography.button-sm}` with positive letter-spacing (`0.35px`) and ABC Favorit — the small spacing nudge gives interactive prose its precision.

### Note on Font Substitutes

When Domaine Display is unavailable, clamp `lineHeight` to 1.0 explicitly and apply `font-feature-settings: "ss01", "liga"` on the substitute serif to mimic the alternate glyphs. Söhne or Tiempos Headline will read closest. ABC Favorit substitutes (Geist, Inter Tight) typically default to looser tracking — apply -0.5% letter-spacing on body sizes to compensate.

## Layout

### Spacing System
- **Base unit**: 4px, with the working scale on multiples of 4 / 8 / 16.
- **Tokens**: `{spacing.xxs}` 2px · `{spacing.xs}` 4px · `{spacing.sm}` 8px · `{spacing.md}` 12px · `{spacing.lg}` 16px · `{spacing.xl}` 24px · `{spacing.xxl}` 32px · `{spacing.xxxl}` 48px · `{spacing.section}` 96px · `{spacing.band}` 128px.
- Section padding: `{spacing.section}` (96px) vertical between bands; `{spacing.band}` (128px) on the hero stripe and closing footer transition.
- Card internal padding: `{spacing.xxl}` (32px) on `{component.feature-card}`, `{component.pricing-tier}`, and `{component.code-window}`.

### Grid & Container
- **Max content width** ≈ 1200px on body sections.
- **Feature grid**: 3 columns at desktop, 2 at tablet, 1 at mobile.
- **Pricing**: 3-tier grid centred at desktop; centre tier promotes to `{component.pricing-tier-featured}` (one-step-elevated surface).
- **Code-story splits**: a 2-up split — narrative copy left, `{component.code-window}` right — collapsing to stacked at < 1024px.
- **Email mockup band**: a single white card (640px max width) centred in the dark canvas with generous vertical padding to read like a print magazine inset.

### Whitespace Philosophy
- Whitespace is editorial and generous — full-bleed sections breathe at 96–128px so Domaine Display headlines have room to register at scale.
- Inside cards, padding stays at 32px so feature copy and code wells have a consistent rhythm with the outer grid.
- Hairline `{colors.hairline}` and `{colors.hairline-strong}` carry the role drop shadows would in a brighter system; the dark canvas suppresses traditional shadow depth entirely.

## Elevation & Depth

| Level | Treatment | Use |
|---|---|---|
| 0 — flat | No shadow, no border | Default canvas, full-bleed bands. |
| 1 — surface card | `{colors.surface-card}` (`#0a0a0c`) + 1px `{colors.hairline-strong}` | Feature cards, pricing tiers, form inputs. |
| 2 — elevated | `{colors.surface-elevated}` (`#101012`) + 1px `{colors.hairline-strong}` | Featured pricing tier, ghost button. |
| 3 — code well | `{colors.surface-deep}` (`#06060a`) + 1px `{colors.hairline-strong}` | Code window, terminal shells. |
| 4 — atmospheric glow | Low-opacity radial gradient (`{colors.accent-*-glow}`) anchored at section top | Section openers ("Integrate this weekend", "Email reimagined"). |

The system has **no traditional drop shadow language**. Every surface either gets a translucent-white hairline border or sits inside an atmospheric glow. The dark canvas absorbs shadow naturally; surfaces register depth via temperature and luminance shifts rather than blur.

### Decorative Depth
- **Atmospheric section glows** — six accent colours each with a paired glow token (orange, yellow, blue, green, red, plus a deep slate for "everything in your context"). Each section opens with a single radial wash anchored at the top edge of the section, falling off to canvas black within ~600px vertical distance. Never two glows in the same section.
- **Email card insets** — the "Beyond experience" mockup band lifts a single white email card off the black canvas, giving it the only true light-on-dark contrast in the system. The card uses no shadow; the contrast itself is the elevation.
- **Code window traffic lights** — `{component.code-window}` shells include a row of three coloured dots (red `{colors.accent-red}`, yellow `{colors.accent-yellow}`, green `{colors.accent-green}`) at the top — the only place all three semantic colours appear together as solid surfaces.

## Shapes

### Border Radius Scale

| Token | Value | Use |
|---|---|---|
| `{rounded.none}` | 0px | Hero stripe, full-bleed bands, footer. |
| `{rounded.xs}` | 4px | Inline tags inside code wells. |
| `{rounded.sm}` | 6px | Code tabs, mid-size chips. |
| `{rounded.md}` | 8px | Buttons, form inputs. |
| `{rounded.lg}` | 12px | Feature cards, pricing tiers, code wells, email mockups. |
| `{rounded.xl}` | 16px | Larger feature panels. |
| `{rounded.full}` | 9999px | Pills, status dots, contributor avatars. |

### Photography Geometry
- The system uses almost no photography. Visual interest comes from typography + atmospheric glows + code wells + the white email-card insets.
- When portraits appear (testimonial avatars), they are circular (`{rounded.full}`) at 32px, sitting inline with body copy.
- Email mockup cards run at 4:5 portrait aspect with `{rounded.lg}` corners.

## Components

### Buttons

**`button-primary`** — white CTA
- Background `{colors.primary}`, label `{colors.primary-on}`, type `{typography.button-md}`, padding `8px 16px`, `rounded: {rounded.md}`, height 36px.
- The brightest pixel on the canvas. Used for "Get started", "Sign up", "Try Resend".
- Pressed state lives in `button-primary-pressed` (background `{colors.surface-light}`).

**`button-ghost`** — translucent CTA
- Background `{colors.surface-elevated}`, label `{colors.ink}`, 1px `{colors.hairline-strong}`, type `{typography.button-md}`, `rounded: {rounded.md}`, height 36px.
- Equal-weight secondary action paired with `{component.button-primary}`.

**`button-outline`** — outlined CTA
- Background `{colors.canvas}`, label `{colors.ink}`, 1px `{colors.hairline-strong}`, type `{typography.button-md}`, `rounded: {rounded.md}`, height 36px.
- Tertiary action; appears on its own next to inline links.

### Cards & Containers

**`hero-stripe`** — full-bleed hero
- Background `{colors.canvas}`, text `{colors.ink}`, type `{typography.display-xxl}` for the headline, padding `96px 32px`, `rounded: {rounded.none}`.
- Used only on the home page hero band; carries the 96px Domaine Display headline and a single `{component.button-primary}` CTA. No photography, no atmospheric glow inside the hero itself — the glow appears on the section that follows.

**`feature-card`** — feature highlight card
- Background `{colors.surface-card}`, text `{colors.ink}`, type `{typography.body-md}`, `rounded: {rounded.lg}`, padding `{spacing.xxl}` (32px).
- Used in the home grid: "Despite emails using React", "So beyond editing", etc. No outline by default — relies on canvas black contrast.

**`feature-card-bordered`** — outlined feature card
- Background `{colors.surface-card}`, text `{colors.ink}`, 1px `{colors.hairline-strong}`, type `{typography.body-md}`, `rounded: {rounded.lg}`, padding `{spacing.xxl}`.
- Used when feature cards sit close together and need explicit separation.

**`pricing-tier`** — pricing tier card
- Background `{colors.surface-card}`, text `{colors.ink}`, 1px `{colors.hairline-strong}`, type `{typography.body-md}`, `rounded: {rounded.lg}`, padding `{spacing.xxl}` (32px).
- Tier name in `{typography.heading-md}` + price in `{typography.display-lg}` (ABC Favorit, 56px).

**`pricing-tier-featured`** — recommended tier
- Background `{colors.surface-elevated}`, text `{colors.ink}`, 1px `{colors.hairline-strong}`, type `{typography.body-md}`, `rounded: {rounded.lg}`, padding `{spacing.xxl}`.
- Centre tier elevated by surface luminance, not by colour.

**`code-window`** — code well
- Background `{colors.surface-deep}`, text `{colors.body}`, type `{typography.code-md}`, 1px `{colors.hairline-strong}`, `rounded: {rounded.lg}`, padding `{spacing.xl}` (24px).
- Includes a 3-dot traffic-light row at top using `{colors.accent-red}` / `{colors.accent-yellow}` / `{colors.accent-green}` for chrome, plus a tab strip below it.

**`code-tab`** — code language tab
- Background `{colors.surface-card}`, text `{colors.charcoal}`, type `{typography.code-md}`, `rounded: {rounded.sm}`, padding `6px 12px`.
- Active tab bumps text to `{colors.ink}` and adds a subtle `{colors.hairline-strong}` underline.

**`email-mockup`** — email-card inset
- Background `{colors.surface-card}` (or the rare `#ffffff` when rendered as a light-island inset), text `{colors.ink}` (or `{colors.on-light}` for white insets), type `{typography.body-md}`, `rounded: {rounded.lg}`, padding 0.
- Used in the "Beyond experience" band to demonstrate rendered email output.

### Inputs & Forms

**`text-input`** — default input
- Background `{colors.surface-card}`, text `{colors.ink}`, type `{typography.body-sm}`, 1px `{colors.hairline-strong}`, `rounded: {rounded.md}`, padding `10px 14px`, height 40px.
- Sign-up and waitlist email fields. Focus state thickens the border to `{colors.ink}` (no separate ring colour).

### Navigation

**`nav-bar`** — top nav (desktop)
- Background `{colors.canvas}`, text `{colors.body}`, type `{typography.button-sm}`, height 64px, single hairline `{colors.hairline}` bottom border.
- Left: wordmark logo. Centre: top-level nav ("Features", "Pricing", "Docs", "Customers"). Right: "Sign in" link + `{component.button-primary}`.

**`nav-bar`** (mobile)
- Same height 64px, collapses centre nav into a hamburger icon. Logo stays left, sign-in CTA stays right.

**`sub-nav-pill`** — pill-style sub-nav
- Pill chips set in a horizontal row above content (e.g. on the customers index), `{component.sub-nav-pill}` styling.

### Signature Components

**`badge-pill`** — neutral pill
- Background `{colors.surface-elevated}`, text `{colors.body}`, type `{typography.caption}`, `rounded: {rounded.full}`, padding `4px 10px`.
- Inline tags ("New", "Beta", "v3.0") inside hero copy and customer story headers.

**`status-dot`** — status indicator
- Background `{colors.accent-green}`, `rounded: {rounded.full}`, 8px square.
- Inline indicator next to "Status: Operational" in the footer or system status references.

**`contributor-avatar`** — testimonial avatar
- Background `{colors.surface-card}` placeholder, `rounded: {rounded.full}`, 32×32px.
- Used inline with customer testimonials.

**`footer`** — global footer
- Background `{colors.canvas}`, text `{colors.charcoal}`, type `{typography.body-sm}`, `rounded: {rounded.none}`, padding `64px 32px`.
- Multi-column quick-links grid above a single-line copyright row separated by `{colors.divider-soft}`.

## Do's and Don'ts

### Do
- Use `{colors.canvas}` (true black) as the default page background. Every public page lives here.
- Reserve `{component.button-primary}` (white pill) as the only solid bright surface. One per viewport at most.
- Set hero headlines in **Domaine Display** at 76–96px with `lineHeight: 1.0` and `ss01 / ss04 / ss11` features engaged.
- Use **ABC Favorit** for marketing body, **Inter** for UI labels, **Geist Mono** for code. Keep the lanes strict.
- Build elevation from translucent-white hairlines, not drop shadows.
- Use `{colors.accent-*-glow}` tokens as low-opacity radial atmospheric washes — never as solid surfaces.
- Set buttons and inputs to `{rounded.md}` (8px); cards and code wells to `{rounded.lg}` (12px); pills and avatars to `{rounded.full}`.
- Use the white email-mockup inset sparingly — it's the only deliberately-light surface and should feel like a print pull-quote.

### Don't
- Don't use a near-black canvas. The brand sits on `#000000`, not `#0a0a0a`.
- Don't apply solid colour to atmospheric accent tokens. `{colors.accent-orange}` is for inline highlights only — its glow form is for backdrops.
- Don't add drop shadows to feature cards or code wells. Translucent white borders carry depth on this canvas.
- Don't bump body weight to 600 for emphasis. Use family change (Inter → ABC Favorit → Domaine Display) instead.
- Don't render code outside `{component.code-window}` — even small inline code uses Geist Mono and a `{colors.surface-card}` background.
- Don't loosen Domaine Display `lineHeight` past 1.0. Tight stacking is structural to the brand.
- Don't introduce a secondary brand accent. White is the brand on black — accents are atmospheric only.
- Don't bring photography front-and-centre. The brand reads as type-and-code, not photography-led.

## Responsive Behavior

### Breakpoints

| Name | Width | Key Changes |
|---|---|---|
| Desktop XL | ≥ 1440px | Full max-width 1200 body, 3-up feature grid, side-by-side code-story splits. |
| Desktop | 1280–1439px | Container shrinks; xl side padding. |
| Tablet Large | 1024–1279px | Feature grid stays 3-up, code-story remains 2-up. |
| Tablet | 768–1023px | Feature grid 2-up, code-story stacks (narrative on top), pricing stacks vertically. |
| Mobile Large | 426–767px | Feature grid 1-up; nav collapses to hamburger; hero `{typography.display-xxl}` clamps to 56px. |
| Mobile | ≤ 425px | All grids 1-up, hero clamps to 44px, section padding `{spacing.section}` collapses to 64px. |

### Touch Targets
- All buttons ship at minimum 36px tall on desktop, scaling to 44px on mobile via padding adjustment. WCAG AAA met on mobile.
- `{component.text-input}` is 40px tall — comfortable but not large. Mobile scales to 48px via padding.
- `{component.sub-nav-pill}` stays at 36px on desktop, 40px on mobile.

### Collapsing Strategy
- Top-level nav collapses to hamburger at < 1024px; the wordmark and `{component.button-primary}` stay anchored.
- Hero `{typography.display-xxl}` clamps: 96px → 76px → 56px → 44px across the breakpoint ladder.
- Pricing 3-up stacks vertically at < 1024px with the featured tier remaining centre-stacked.
- Code-story splits switch from side-by-side to stacked at < 1024px, code well always second.
- Atmospheric glows scale with section width but maintain the same opacity — they fade naturally at small viewports.

### Image Behavior
- Email mockup cards reflow at 1:1 aspect on mobile to remain readable.
- Atmospheric glows are CSS gradients — no asset cost, no breakpoint variation.
- Customer testimonial avatars stay 32px circular regardless of breakpoint.

## Iteration Guide

1. Focus on ONE component at a time. Most surfaces share `{colors.surface-card}` or `{colors.surface-elevated}` with `{rounded.lg}` — only the role-specific tokens (`{colors.primary}`, `{component.code-window}`) shift between variants.
2. Reference component names and tokens directly (`{colors.primary}`, `{component.button-primary-pressed}`, `{rounded.lg}`) — do not paraphrase.
3. Run `npx @google/design.md lint DESIGN.md` after edits; orphaned-tokens warnings will catch unused entries.
4. Add new variants as separate entries (`-pressed`, `-featured`, `-disabled`) — do not bury them in prose.
5. Default body type to `{typography.body-md}`; reach for `{typography.subtitle}` only on hero subtitles.
6. Keep `{colors.primary}` (white) scarce — if more than one solid white surface appears per viewport, ask whether one should drop to `{component.button-ghost}` instead.

## Known Gaps

- Pressed/active visual states are documented only for `button-primary-pressed`; other components rely on the default focus-ring (browser default) for interactive feedback.
- Logged-in dashboard surfaces (API keys, sending logs, audience management) are out of scope; only the public marketing canvas is documented.
- Email-template editor surfaces (a key product feature) are not extracted — those live behind authentication.
- The atmospheric glow rendering uses CSS radial gradients; exact stops and angles vary per section and are not standardised as tokens — render per section-specific design judgment.


---

## Brand: `sanity`

# Design System Inspired by Sanity

## 1. Visual Theme & Atmosphere

Sanity's website is a developer-content platform rendered as a nocturnal command center -- dark, precise, and deeply structured. The entire experience sits on a near-black canvas (`#0b0b0b`) that reads less like a "dark mode toggle" and more like the natural state of a tool built for people who live in terminals. Where most CMS marketing pages reach for friendly pastels and soft illustration, Sanity leans into the gravity of its own product: structured content deserves a structured stage.

The signature typographic voice is waldenburgNormal -- a distinctive, slightly geometric sans-serif with tight negative letter-spacing (-0.32px to -4.48px at display sizes) that gives headlines a compressed, engineered quality. At 112px hero scale with -4.48px tracking, the type feels almost machined -- like precision-cut steel letterforms. This is paired with IBM Plex Mono for code and technical labels, creating a dual-register voice: editorial authority meets developer credibility.

What makes Sanity distinctive is the interplay between its monochromatic dark palette and vivid, saturated accent punctuation. The neutral scale runs from pure black through a tightly controlled gray ramp (`#0b0b0b` -> `#212121` -> `#353535` -> `#797979` -> `#b9b9b9` -> `#ededed` -> `#ffffff`) with no warm or cool bias -- just pure, achromatic precision. Against this disciplined backdrop, a neon green accent (display-p3 green) and electric blue (`#0052ef`) land with the impact of signal lights in a dark control room. The orange-red CTA (`#f36458`) provides the only warm touch in an otherwise cool system.

**Key Characteristics:**
- Near-black canvas (`#0b0b0b`) as the default, natural environment -- not a dark "mode" but the primary identity
- waldenburgNormal with extreme negative tracking at display sizes, creating a precision-engineered typographic voice
- Pure achromatic gray scale -- no warm or cool undertones, pure neutral discipline
- Vivid accent punctuation: neon green, electric blue (`#0052ef`), and coral-red (`#f36458`) against the dark field
- Pill-shaped primary buttons (99999px radius) contrasting with subtle rounded rectangles (3-6px) for secondary actions
- IBM Plex Mono as the technical counterweight to the editorial display face
- Full-bleed dark sections with content contained in measured max-width containers
- Hover states that shift to electric blue (`#0052ef`) across all interactive elements -- a consistent "activation" signal

## 2. Color Palette & Roles

### Primary Brand
- **Sanity Black** (`#0b0b0b`): The primary canvas and dominant surface color. Not pure black but close enough to feel absolute. The foundation of the entire visual identity.
- **Pure Black** (`#000000`): Used for maximum-contrast moments, deep overlays, and certain border accents.
- **Sanity Red** (`#f36458`): The primary CTA and brand accent -- a warm coral-red that serves as the main call-to-action color. Used for "Get Started" buttons and primary conversion points.

### Accent & Interactive
- **Electric Blue** (`#0052ef`): The universal hover/active state color across the entire system. Buttons, links, and interactive elements all shift to this blue on hover. Also used as `--color-blue-700` for focus rings and active states.
- **Light Blue** (`#55beff` / `#afe3ff`): Secondary blue variants used for accent backgrounds, badges, and dimmed blue surfaces.
- **Neon Green** (`color(display-p3 .270588 1 0)`): A vivid, wide-gamut green used as `--color-fg-accent-green` for success states and premium feature highlights. Falls back to `#19d600` in sRGB.
- **Accent Magenta** (`color(display-p3 .960784 0 1)`): A vivid wide-gamut magenta for specialized accent moments.

### Surface & Background
- **Near Black** (`#0b0b0b`): Default page background and primary surface.
- **Dark Gray** (`#212121`): Elevated surface color for cards, secondary containers, input backgrounds, and subtle layering above the base canvas.
- **Medium Dark** (`#353535`): Tertiary surface and border color for creating depth between dark layers.
- **Pure White** (`#ffffff`): Used for inverted sections, light-on-dark text, and specific button surfaces.
- **Light Gray** (`#ededed`): Light surface for inverted/light sections and subtle background tints.

### Neutrals & Text
- **White** (`#ffffff`): Primary text color on dark surfaces, maximum legibility.
- **Silver** (`#b9b9b9`): Secondary text, body copy on dark surfaces, muted descriptions, and placeholder text.
- **Medium Gray** (`#797979`): Tertiary text, metadata, timestamps, and de-emphasized content.
- **Charcoal** (`#212121`): Text on light/inverted surfaces.
- **Near Black Text** (`#0b0b0b`): Primary text on white/light button surfaces.

### Semantic
- **Error Red** (`#dd0000`): Destructive actions, validation errors, and critical warnings -- a pure, high-saturation red.
- **GPC Green** (`#37cd84`): Privacy/compliance indicator green.
- **Focus Ring Blue** (`#0052ef`): Focus ring color for accessibility, matching the interactive blue.

### Border System
- **Dark Border** (`#0b0b0b`): Primary border on dark containers -- barely visible, maintaining minimal containment.
- **Subtle Border** (`#212121`): Standard border for inputs, textareas, and card edges on dark surfaces.
- **Medium Border** (`#353535`): More visible borders for emphasized containment and dividers.
- **Light Border** (`#ffffff`): Border on inverted/light elements or buttons needing contrast separation.
- **Orange Border** (`color(display-p3 1 0.3333 0)`): Special accent border for highlighted/featured elements.

## 3. Typography Rules

### Font Family
- **Display / Headline**: `waldenburgNormal`, fallback: `waldenburgNormal Fallback, ui-sans-serif, system-ui`
- **Body / UI**: `waldenburgNormal`, fallback: `waldenburgNormal Fallback, ui-sans-serif, system-ui`
- **Code / Technical**: `IBM Plex Mono`, fallback: `ibmPlexMono Fallback, ui-monospace`
- **Fallback / CJK**: `Helvetica`, fallback: `Arial, Hiragino Sans GB, STXihei, Microsoft YaHei, WenQuanYi Micro Hei`

*Note: waldenburgNormal is a custom typeface. For external implementations, use Inter or Space Grotesk as the sans substitute (geometric, slightly condensed feel). IBM Plex Mono is available on Google Fonts.*

### Hierarchy

| Role | Font | Size | Weight | Line Height | Letter Spacing | Notes |
|------|------|------|--------|-------------|----------------|-------|
| Display / Hero | waldenburgNormal | 112px (7rem) | 400 | 1.00 (tight) | -4.48px | Maximum impact, compressed tracking |
| Hero Secondary | waldenburgNormal | 72px (4.5rem) | 400 | 1.05 (tight) | -2.88px | Large section headers |
| Section Heading | waldenburgNormal | 48px (3rem) | 400 | 1.08 (tight) | -1.68px | Primary section anchors |
| Heading Large | waldenburgNormal | 38px (2.38rem) | 400 | 1.10 (tight) | -1.14px | Feature section titles |
| Heading Medium | waldenburgNormal | 32px (2rem) | 425 | 1.24 (tight) | -0.32px | Card titles, subsection headers |
| Heading Small | waldenburgNormal | 24px (1.5rem) | 425 | 1.24 (tight) | -0.24px | Smaller feature headings |
| Subheading | waldenburgNormal | 20px (1.25rem) | 425 | 1.13 (tight) | -0.2px | Sub-section markers |
| Body Large | waldenburgNormal | 18px (1.13rem) | 400 | 1.50 | -0.18px | Intro paragraphs, descriptions |
| Body | waldenburgNormal | 16px (1rem) | 400 | 1.50 | normal | Standard body text |
| Body Small | waldenburgNormal | 15px (0.94rem) | 400 | 1.50 | -0.15px | Compact body text |
| Caption | waldenburgNormal | 13px (0.81rem) | 400-500 | 1.30-1.50 | -0.13px | Metadata, descriptions, tags |
| Small Caption | waldenburgNormal | 12px (0.75rem) | 400 | 1.50 | -0.12px | Footnotes, timestamps |
| Micro / Label | waldenburgNormal | 11px (0.69rem) | 500-600 | 1.00-1.50 | normal | Uppercase labels, tiny badges |
| Code Body | IBM Plex Mono | 15px (0.94rem) | 400 | 1.50 | normal | Code blocks, technical content |
| Code Caption | IBM Plex Mono | 13px (0.81rem) | 400-500 | 1.30-1.50 | normal | Inline code, small technical labels |
| Code Micro | IBM Plex Mono | 10-12px | 400 | 1.30-1.50 | normal | Tiny code labels, uppercase tags |

### Principles
- **Extreme negative tracking at scale**: Display headings at 72px+ use aggressive negative letter-spacing (-2.88px to -4.48px), creating a tight, engineered quality that distinguishes Sanity from looser editorial typography.
- **Single font, multiple registers**: waldenburgNormal handles both editorial display and functional UI text. The weight range is narrow (400-425 for most, 500-600 only for tiny labels), keeping the voice consistent.
- **OpenType feature control**: Typography uses deliberate feature settings including `"cv01", "cv11", "cv12", "cv13", "ss07"` for display sizes and `"calt" 0` for body text, fine-tuning character alternates for different contexts.
- **Tight headings, relaxed body**: Headings use 1.00-1.24 line-height (extremely tight), while body text breathes at 1.50. This contrast creates clear visual hierarchy.
- **Uppercase for technical labels**: IBM Plex Mono captions and small labels frequently use `text-transform: uppercase` with tight line-heights, creating a "system readout" aesthetic for technical metadata.

## 4. Component Stylings

### Buttons

**Primary CTA (Pill)**
- Background: Sanity Red (`#f36458`)
- Text: White (`#ffffff`)
- Padding: 8px 16px
- Border Radius: 99999px (full pill)
- Border: none
- Hover: Electric Blue (`#0052ef`) background, white text
- Font: 16px waldenburgNormal, weight 400

**Secondary (Dark Pill)**
- Background: Near Black (`#0b0b0b`)
- Text: Silver (`#b9b9b9`)
- Padding: 8px 12px
- Border Radius: 99999px (full pill)
- Border: none
- Hover: Electric Blue (`#0052ef`) background, white text

**Outlined (Light Pill)**
- Background: White (`#ffffff`)
- Text: Near Black (`#0b0b0b`)
- Padding: 8px
- Border Radius: 99999px (full pill)
- Border: 1px solid `#0b0b0b`
- Hover: Electric Blue (`#0052ef`) background, white text

**Ghost / Subtle**
- Background: Dark Gray (`#212121`)
- Text: Silver (`#b9b9b9`)
- Padding: 0px 12px
- Border Radius: 5px
- Border: 1px solid `#212121`
- Hover: Electric Blue (`#0052ef`) background, white text

**Uppercase Label Button**
- Font: 11px waldenburgNormal, weight 600, uppercase
- Background: transparent or `#212121`
- Text: Silver (`#b9b9b9`)
- Letter-spacing: normal
- Used for tab-like navigation and filter controls

### Cards

**Dark Content Card**
- Background: `#212121`
- Border: 1px solid `#353535` or `#212121`
- Border Radius: 6px
- Padding: 24px
- Text: White (`#ffffff`) for titles, Silver (`#b9b9b9`) for body
- Hover: subtle border color shift or elevation change

**Feature Card (Full-bleed)**
- Background: `#0b0b0b` or full-bleed image/gradient
- Border: none or 1px solid `#212121`
- Border Radius: 12px
- Padding: 32-48px
- Contains large imagery with overlaid text

### Inputs

**Text Input / Textarea**
- Background: Near Black (`#0b0b0b`)
- Text: Silver (`#b9b9b9`)
- Border: 1px solid `#212121`
- Padding: 8px 12px
- Border Radius: 3px
- Focus: outline with `var(--focus-ring-color)` (blue), 2px solid
- Focus background: shifts to deep cyan (`#072227`)

**Search Input**
- Background: `#0b0b0b`
- Text: Silver (`#b9b9b9`)
- Padding: 0px 12px
- Border Radius: 3px
- Placeholder: Medium Gray (`#797979`)

### Navigation

**Top Navigation**
- Background: Near Black (`#0b0b0b`) with backdrop blur
- Height: auto, compact padding
- Logo: left-aligned, Sanity wordmark
- Links: waldenburgNormal 16px, Silver (`#b9b9b9`)
- Link Hover: Electric Blue via `--color-fg-accent-blue`
- CTA Button: Sanity Red pill button right-aligned
- Separator: 1px border-bottom `#212121`

**Footer**
- Background: Near Black (`#0b0b0b`)
- Multi-column link layout
- Links: Silver (`#b9b9b9`), hover to blue
- Section headers: White (`#ffffff`), 13px uppercase IBM Plex Mono

### Badges / Pills

**Neutral Subtle**
- Background: White (`#ffffff`)
- Text: Near Black (`#0b0b0b`)
- Padding: 8px
- Font: 13px
- Border Radius: 99999px

**Neutral Filled**
- Background: Near Black (`#0b0b0b`)
- Text: White (`#ffffff`)
- Padding: 8px
- Font: 13px
- Border Radius: 99999px

## 5. Layout Principles

### Spacing System
Base unit: **8px**

| Token | Value | Usage |
|-------|-------|-------|
| space-1 | 1px | Hairline gaps, border-like spacing |
| space-2 | 2px | Minimal internal padding |
| space-3 | 4px | Tight component internal spacing |
| space-4 | 6px | Small element gaps |
| space-5 | 8px | Base unit -- button padding, input padding, badge padding |
| space-6 | 12px | Standard component gap, button horizontal padding |
| space-7 | 16px | Section internal padding, card spacing |
| space-8 | 24px | Large component padding, card internal spacing |
| space-9 | 32px | Section padding, container gutters |
| space-10 | 48px | Large section vertical spacing |
| space-11 | 64px | Major section breaks |
| space-12 | 96-120px | Hero vertical padding, maximum section spacing |

### Grid & Container
- Max content width: ~1440px (inferred from breakpoints)
- Page gutter: 32px on desktop, 16px on mobile
- Content sections use full-bleed backgrounds with centered, max-width content
- Multi-column layouts: 2-3 columns on desktop, single column on mobile
- Card grids: CSS Grid with consistent gaps (16-24px)

### Whitespace Philosophy
Sanity uses aggressive vertical spacing between sections (64-120px) to create breathing room on the dark canvas. Within sections, spacing is tighter (16-32px), creating dense information clusters separated by generous voids. This rhythm gives the page a "slides" quality -- each section feels like its own focused frame.

### Border Radius Scale

| Token | Value | Usage |
|-------|-------|-------|
| radius-xs | 3px | Inputs, textareas, subtle rounding |
| radius-sm | 4-5px | Secondary buttons, small cards, tags |
| radius-md | 6px | Standard cards, containers |
| radius-lg | 12px | Large cards, feature containers, forms |
| radius-pill | 99999px | Primary buttons, badges, nav pills |

## 6. Depth & Elevation

### Shadow System

| Level | Value | Usage |
|-------|-------|-------|
| Level 0 (Flat) | none | Default state for most elements -- dark surfaces create depth through color alone |
| Level 1 (Subtle) | 0px 0px 0px 1px `#212121` | Border-like shadow for minimal containment without visible borders |
| Level 2 (Focus) | 0 0 0 2px `var(--color-blue-500)` | Focus ring for inputs and interactive elements |
| Level 3 (Overlay) | Backdrop blur + semi-transparent dark | Navigation overlay, modal backgrounds |

### Depth Philosophy
Sanity's depth system is almost entirely **colorimetric** rather than shadow-based. Elevation is communicated through surface color shifts: `#0b0b0b` (ground) -> `#212121` (elevated) -> `#353535` (prominent) -> `#ffffff` (inverted/highest). This approach is native to dark interfaces where traditional drop shadows would be invisible. The few shadows that exist are ring-based (0px 0px 0px Npx) or blur-based (backdrop-filter) rather than offset shadows, maintaining the flat, precision-engineered aesthetic.

Border-based containment (1px solid `#212121` or `#353535`) serves as the primary spatial separator, with the border darkness calibrated to be visible but not dominant. The system avoids "floating card" aesthetics -- everything feels mounted to the surface rather than hovering above it.

## 7. Do's and Don'ts

### Do
- Use the achromatic gray scale as the foundation -- maintain pure neutral discipline with no warm/cool tinting
- Apply Electric Blue (`#0052ef`) consistently as the universal hover/active state across all interactive elements
- Use extreme negative letter-spacing (-2px to -4.48px) on display headings 48px and above
- Keep primary CTAs as full-pill shapes (99999px radius) with the coral-red (`#f36458`)
- Use IBM Plex Mono uppercase for technical labels, tags, and system metadata
- Communicate depth through surface color (dark-to-light) rather than shadows
- Maintain generous vertical section spacing (64-120px) on the dark canvas
- Use `"cv01", "cv11", "cv12", "cv13", "ss07"` OpenType features for display typography

### Don't
- Don't introduce warm or cool color tints to the neutral scale -- Sanity's grays are pure achromatic
- Don't use drop shadows for elevation -- dark interfaces demand colorimetric depth
- Don't apply border-radius between 13px and 99998px -- the system jumps from 12px (large card) directly to pill (99999px)
- Don't mix the coral-red CTA with the electric blue interactive color in the same element
- Don't use heavy font weights (700+) -- the system maxes out at 600 and only for 11px uppercase labels
- Don't place light text on light surfaces or dark text on dark surfaces without checking the gray-on-gray contrast ratio
- Don't use traditional offset box-shadows -- ring shadows (0 0 0 Npx) or border-based containment only
- Don't break the tight line-height on headings -- 1.00-1.24 is the range, never go to 1.5+ for display text

## 8. Responsive Behavior

### Breakpoints

| Name | Width | Behavior |
|------|-------|----------|
| Desktop XL | >= 1640px | Full layout, maximum content width |
| Desktop | >= 1440px | Standard desktop layout |
| Desktop Compact | >= 1200px | Slightly condensed desktop |
| Laptop | >= 1100px | Reduced column widths |
| Tablet Landscape | >= 960px | 2-column layouts begin collapsing |
| Tablet | >= 768px | Transition zone, some elements stack |
| Mobile Large | >= 720px | Near-tablet layout |
| Mobile | >= 480px | Single-column, stacked layout |
| Mobile Small | >= 376px | Minimum supported width |

### Collapsing Strategy
- **Navigation**: Horizontal links collapse to hamburger menu below 768px
- **Hero typography**: Scales from 112px -> 72px -> 48px -> 38px across breakpoints, maintaining tight letter-spacing ratios
- **Grid layouts**: 3-column -> 2-column at ~960px, single-column below 768px
- **Card grids**: Horizontal scrolling on mobile instead of wrapping (preserving card aspect ratios)
- **Section spacing**: Vertical padding reduces by ~40% on mobile (120px -> 64px -> 48px)
- **Button sizing**: CTA pills maintain padding but reduce font size; ghost buttons stay fixed
- **Code blocks**: Horizontal scroll with preserved monospace formatting

### Mobile-Specific Adjustments
- Full-bleed sections extend edge-to-edge with 16px internal gutters
- Touch targets: minimum 44px for all interactive elements
- Heading letter-spacing relaxes slightly at mobile sizes (less aggressive negative tracking)
- Image containers switch from fixed aspect ratios to full-width with auto height

## 9. Agent Prompt Guide

### Quick Color Reference
```
Background:      #0b0b0b (near-black canvas)
Surface:         #212121 (elevated cards/containers)
Border:          #353535 (visible) / #212121 (subtle)
Text Primary:    #ffffff (white on dark)
Text Secondary:  #b9b9b9 (silver on dark)
Text Tertiary:   #797979 (medium gray)
CTA:             #f36458 (coral-red)
Interactive:     #0052ef (electric blue, all hovers)
Success:         #19d600 (green, sRGB fallback)
Error:           #dd0000 (pure red)
Light Surface:   #ededed / #ffffff (inverted sections)
```

### Example Prompts

**Landing page section:**
"Create a feature section with a near-black (#0b0b0b) background. Use a 48px heading in Inter with -1.68px letter-spacing, white text. Below it, 16px body text in #b9b9b9 with 1.50 line-height. Include a coral-red (#f36458) pill button with white text and a secondary dark (#0b0b0b) pill button with #b9b9b9 text. Both buttons hover to #0052ef blue."

**Card grid:**
"Build a 3-column card grid on a #0b0b0b background. Each card has a #212121 surface, 1px solid #353535 border, 6px border-radius, and 24px padding. Card titles are 24px white with -0.24px letter-spacing. Body text is 13px #b9b9b9. Add a 13px IBM Plex Mono uppercase tag in #797979 at the top of each card."

**Form section:**
"Design a contact form on a #0b0b0b background. Inputs have #0b0b0b background, 1px solid #212121 border, 3px border-radius, 8px 12px padding, and #b9b9b9 placeholder text. Focus state shows a 2px blue (#0052ef) ring. Submit button is a full-width coral-red (#f36458) pill. Include a 13px #797979 helper text below each field."

**Navigation bar:**
"Create a sticky top navigation on #0b0b0b with backdrop blur. Left: brand text in 15px white. Center/right: nav links in 16px #b9b9b9 that hover to blue. Far right: a coral-red (#f36458) pill CTA button. Bottom border: 1px solid #212121."

### Iteration Guide
1. **Start dark**: Begin with `#0b0b0b` background, `#ffffff` primary text, `#b9b9b9` secondary text
2. **Add structure**: Use `#212121` surfaces and `#353535` borders for containment -- no shadows
3. **Apply typography**: Inter (or Space Grotesk) with tight letter-spacing on headings, 1.50 line-height on body
4. **Color punctuation**: Add `#f36458` for CTAs and `#0052ef` for all hover/interactive states
5. **Refine spacing**: 8px base unit, 24-32px within sections, 64-120px between sections
6. **Technical details**: Add IBM Plex Mono uppercase labels for tags and metadata
7. **Polish**: Ensure all interactive elements hover to `#0052ef`, all buttons are pills or subtle 5px radius, borders are hairline (1px)


---

## Brand: `sentry`

---
version: alpha
name: Sentri-Inspired-design-analysis
description: An inspired interpretation of Sentri's design language — a developer-tools brand built on a deep purple-violet midnight canvas, electric lime accents, and a slightly subversive illustrated personality. The system pairs a custom display sans (chunky, playful, near-condensed) with the open Rubik family for UI copy and Monaco for code, then leans on dark-on-light pricing surfaces, sticker-style mascots, and a single-color CTA hierarchy where black-violet buttons read as the primary action against either polarity.

colors:
  primary: "#150f23"
  ink-deep: "#1f1633"
  on-primary: "#ffffff"
  accent-lime: "#c2ef4e"
  accent-pink: "#fa7faa"
  accent-violet: "#6a5fc1"
  accent-violet-deep: "#422082"
  accent-violet-mid: "#79628c"
  surface-canvas-dark: "#1f1633"
  surface-canvas-light: "#ffffff"
  surface-night: "#150f23"
  surface-press-light: "#f0f0f0"
  surface-press-stronger: "#efefef"
  hairline-violet: "#362d59"
  hairline-cool: "#cfcfdb"
  hairline-cloud: "#e5e7eb"
  ink: "#1f1633"
  ink-press: "#1a1a1a"
  on-dark-muted: "#bdb8c0"
  on-dark-faint: "#3f3849"
  ring-focus: "#9dc1f5"

typography:
  display-hero:
    fontFamily: "Sentri Display, Rubik, system-ui, sans-serif"
    fontSize: 88px
    fontWeight: 700
    lineHeight: 1.2
    letterSpacing: 0
  display-large:
    fontFamily: "Sentri Display, Rubik, system-ui, sans-serif"
    fontSize: 60px
    fontWeight: 500
    lineHeight: 1.1
    letterSpacing: 0
  heading-xl:
    fontFamily: "Rubik, -apple-system, system-ui, Segoe UI, Helvetica, Arial, sans-serif"
    fontSize: 30px
    fontWeight: 500
    lineHeight: 1.2
    letterSpacing: 0
  heading-lg:
    fontFamily: "Rubik, -apple-system, system-ui, sans-serif"
    fontSize: 27px
    fontWeight: 500
    lineHeight: 1.25
    letterSpacing: 0
  heading-md:
    fontFamily: "Rubik, -apple-system, system-ui, sans-serif"
    fontSize: 24px
    fontWeight: 500
    lineHeight: 1.25
    letterSpacing: 0
  heading-sm:
    fontFamily: "Rubik, -apple-system, system-ui, sans-serif"
    fontSize: 20px
    fontWeight: 600
    lineHeight: 1.25
    letterSpacing: 0
  body-lg:
    fontFamily: "Rubik, -apple-system, system-ui, sans-serif"
    fontSize: 16px
    fontWeight: 400
    lineHeight: 2.0
    letterSpacing: 0
  body-strong:
    fontFamily: "Rubik, -apple-system, system-ui, sans-serif"
    fontSize: 16px
    fontWeight: 600
    lineHeight: 1.5
    letterSpacing: 0
  body-md:
    fontFamily: "Rubik, -apple-system, system-ui, sans-serif"
    fontSize: 16px
    fontWeight: 500
    lineHeight: 1.5
    letterSpacing: 0
  eyebrow:
    fontFamily: "Rubik, -apple-system, system-ui, sans-serif"
    fontSize: 15px
    fontWeight: 500
    lineHeight: 1.4
    letterSpacing: 0
  button-cap:
    fontFamily: "Rubik, -apple-system, system-ui, sans-serif"
    fontSize: 14px
    fontWeight: 700
    lineHeight: 1.14
    letterSpacing: 0.2px
  button-cap-light:
    fontFamily: "Rubik, -apple-system, system-ui, sans-serif"
    fontSize: 14px
    fontWeight: 500
    lineHeight: 1.29
    letterSpacing: 0.2px
  caption:
    fontFamily: "Rubik, -apple-system, system-ui, sans-serif"
    fontSize: 14px
    fontWeight: 400
    lineHeight: 1.43
    letterSpacing: 0
  micro-cap:
    fontFamily: "Rubik, -apple-system, system-ui, sans-serif"
    fontSize: 10px
    fontWeight: 600
    lineHeight: 1.8
    letterSpacing: 0.25px
  code:
    fontFamily: "Monaco, Menlo, Ubuntu Mono, monospace"
    fontSize: 16px
    fontWeight: 400
    lineHeight: 1.5
    letterSpacing: 0
  code-strong:
    fontFamily: "Monaco, Menlo, Ubuntu Mono, monospace"
    fontSize: 16px
    fontWeight: 700
    lineHeight: 1.5
    letterSpacing: 0

rounded:
  xs: 4px
  sm: 6px
  md: 8px
  lg: 10px
  xl: 12px
  xxl: 18px
  full: 9999px

spacing:
  xxs: 2px
  xs: 4px
  sm: 8px
  md: 12px
  lg: 16px
  xl: 24px
  xxl: 32px
  section: 96px

components:
  button-primary:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button-cap}"
    rounded: "{rounded.md}"
    padding: 12px 16px
  button-primary-pressed:
    backgroundColor: "{colors.surface-press-stronger}"
    textColor: "{colors.ink-press}"
    typography: "{typography.button-cap}"
    rounded: "{rounded.md}"
    padding: 12px 16px
  button-inverted:
    backgroundColor: "{colors.on-primary}"
    textColor: "{colors.ink-deep}"
    typography: "{typography.button-cap}"
    rounded: "{rounded.md}"
    padding: 12px 16px
  button-inverted-pressed:
    backgroundColor: "{colors.surface-press-light}"
    textColor: "{colors.ink-press}"
    typography: "{typography.button-cap}"
    rounded: "{rounded.md}"
    padding: 12px 16px
  button-ghost-on-dark:
    backgroundColor: "{colors.on-dark-faint}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button-cap}"
    rounded: "{rounded.xl}"
    padding: 8px
  button-violet-token:
    backgroundColor: "{colors.accent-violet-mid}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button-cap-light}"
    rounded: "{rounded.xl}"
    padding: 8px 16px
  button-disabled:
    backgroundColor: "{colors.hairline-cloud}"
    textColor: "{colors.on-dark-muted}"
    typography: "{typography.button-cap}"
    rounded: "{rounded.md}"
    padding: 12px 16px
  pill-neutral-dark:
    backgroundColor: "{colors.surface-night}"
    textColor: "{colors.on-primary}"
    typography: "{typography.caption}"
    rounded: "{rounded.xs}"
    padding: 4px 8px
  chip-lime-keyword:
    backgroundColor: "{colors.accent-lime}"
    textColor: "{colors.ink-deep}"
    typography: "{typography.display-hero}"
    rounded: "{rounded.xs}"
    padding: 0 12px
  text-input:
    backgroundColor: "{colors.surface-canvas-light}"
    textColor: "{colors.ink-deep}"
    typography: "{typography.body-md}"
    rounded: "{rounded.sm}"
    padding: 8px 12px
  text-input-focused:
    backgroundColor: "{colors.surface-canvas-light}"
    textColor: "{colors.ink-deep}"
    typography: "{typography.body-md}"
    rounded: "{rounded.sm}"
    padding: 8px 12px
  select-violet:
    backgroundColor: "{colors.accent-violet-deep}"
    textColor: "{colors.on-primary}"
    typography: "{typography.body-md}"
    rounded: "{rounded.md}"
    padding: 8px 16px
  card-pricing:
    backgroundColor: "{colors.surface-canvas-light}"
    textColor: "{colors.ink-deep}"
    typography: "{typography.body-md}"
    rounded: "{rounded.xl}"
    padding: 32px
  card-pricing-featured:
    backgroundColor: "{colors.surface-night}"
    textColor: "{colors.on-primary}"
    typography: "{typography.body-md}"
    rounded: "{rounded.xl}"
    padding: 32px
  card-feature-dark:
    backgroundColor: "{colors.ink-deep}"
    textColor: "{colors.on-primary}"
    typography: "{typography.body-lg}"
    rounded: "{rounded.xxl}"
    padding: 32px
  card-spotlight-violet:
    backgroundColor: "{colors.accent-violet-deep}"
    textColor: "{colors.on-primary}"
    typography: "{typography.body-lg}"
    rounded: "{rounded.xxl}"
    padding: 32px
  code-block:
    backgroundColor: "{colors.surface-night}"
    textColor: "{colors.on-primary}"
    typography: "{typography.code}"
    rounded: "{rounded.md}"
    padding: 16px
  link-on-dark:
    backgroundColor: "{colors.surface-canvas-dark}"
    textColor: "{colors.on-primary}"
    typography: "{typography.body-md}"
    rounded: "{rounded.xs}"
    padding: 0px
  link-on-light:
    backgroundColor: "{colors.surface-canvas-light}"
    textColor: "{colors.ink-deep}"
    typography: "{typography.body-md}"
    rounded: "{rounded.xs}"
    padding: 0px
  nav-bar-light:
    backgroundColor: "{colors.surface-canvas-light}"
    textColor: "{colors.ink-deep}"
    typography: "{typography.body-md}"
    rounded: "{rounded.xs}"
    padding: 16px 24px
  footer-light:
    backgroundColor: "{colors.surface-canvas-light}"
    textColor: "{colors.ink-deep}"
    typography: "{typography.caption}"
    rounded: "{rounded.xs}"
    padding: 32px 24px
---

## Overview

Sentri's design language reads like a debugging console wearing a leather jacket. The home and product surfaces sit on a near-black violet midnight (`{colors.surface-canvas-dark}` / `{colors.surface-night}`), strewn with starfield textures and floating sticker-style mascots — astronauts, monsters, traffic cones — that puncture the seriousness of an observability product. Headlines run in a chunky proprietary display sans where the most important keywords are wrapped in lime-green highlight chips (`{colors.accent-lime}`), as if the copy itself has been marked up by a developer redlining their own console output.

The palette is deliberately narrow: deep midnight as the dominant canvas, electric lime as the primary attention-grabber, hot pink (`{colors.accent-pink}`) as a secondary punctuation, and a violet-mid (`{colors.accent-violet-mid}`) for tag chips and hairline strokes. White appears in two roles — as text on dark, and as the canvas for pricing, contact, and content-heavy pages where developers need to scan dense tables. The "single primary CTA" is visually inverted depending on context: filled black-violet (`{colors.primary}`) with white type on light surfaces, or filled white with dark type on dark surfaces. The button always reads as the strongest UI affordance regardless of polarity.

Typography splits cleanly between three families: a custom display sans for hero and section openers (chunky, near-condensed, slightly playful), Rubik for every UI text role (body, captions, eyebrow caps, button labels), and Monaco for code. Buttons and eyebrows almost always run in uppercase with a 0.2px tracking lift to give them the snap of console output.

**Key Characteristics:**
- Two-polarity canvas system: deep violet midnight (`{colors.surface-canvas-dark}`) for marketing hero and product feature pages, white (`{colors.surface-canvas-light}`) for pricing, contact, and dense reference content — the system never tries to blur the two.
- Lime keyword highlight (`{colors.accent-lime}`) treated as a typographic device, not a color swatch — it wraps single words inside the display headline to act as a syntax highlight on the reading flow.
- Sticker illustration system: floating mascot characters with hand-drawn outlines, appearing at section junctions, never inside cards — they create rhythm and personality between dense info blocks.
- Uppercase eyebrow + button caps in `{typography.button-cap}` and `{typography.eyebrow}`, with a consistent 0.2px tracking lift, give the brand its "developer console" cadence.
- Single-primary CTA hierarchy: every page has one filled button reading either `{colors.primary}` on light or `{colors.on-primary}` on dark; outlined and ghost variants are downgraded.
- Card surfaces follow the canvas: dark sections nest dark cards (`{colors.ink-deep}` with subtle hairline) and light sections nest white cards with `{colors.hairline-cloud}` borders — chrome stays consistent, only the polarity flips.
- A pricing-page color rhythm of cream-white tiers with one dark inverted "featured" tier (`{colors.surface-night}`), avoiding the typical accent-bordered featured pattern.

## Colors

> **Source pages:** home (`/welcome/`), product/error-monitoring, contact/enterprise, pricing.

### Brand & Accent
- **Midnight Violet** (`{colors.primary}` — `#150f23`): The system's primary action color and the deepest surface tone. Used for filled primary buttons on light surfaces, code-block backgrounds, and the strongest dark cards.
- **Ink Violet** (`{colors.ink-deep}` — `#1f1633`): Slightly lifted from primary, this is the marketing hero canvas and the default body-text color on light surfaces — a single token doing double duty as background and ink.
- **Electric Lime** (`{colors.accent-lime}` — `#c2ef4e`): The signature highlight color. Wrapped around individual headline keywords as a syntax-highlight chip (`{rounded.xs}` corner, no padding-y, 12px padding-x). Also used as the squiggly footer divider stroke. Never a button background.
- **Hot Pink** (`{colors.accent-pink}` — `#fa7faa`): Secondary punctuation color used for sticker outlines, chart points, and supporting accents — never on buttons, never on type at body size.
- **Violet Link** (`{colors.accent-violet}` — `#6a5fc1`): Inline link color when emphasis is needed beyond underline.
- **Deep Violet** (`{colors.accent-violet-deep}` — `#422082`): The select-dropdown fill on contact forms; also used on spotlight cards inside dark sections.
- **Mid Violet** (`{colors.accent-violet-mid}` — `#79628c`): Tag-chip fill and faint accent on dark surfaces.

### Surface
- **Dark Canvas** (`{colors.surface-canvas-dark}` — `#1f1633`): Hero, product, and feature-page background. Carries the deepest atmospheric weight.
- **Night** (`{colors.surface-night}` — `#150f23`): Cards on dark canvas, code blocks, and the "featured" pricing tier.
- **Light Canvas** (`{colors.surface-canvas-light}` — `#ffffff`): Pricing, contact, and dense-reference page background.
- **Surface Press Light** (`{colors.surface-press-light}` — `#f0f0f0`) and **Press Stronger** (`{colors.surface-press-stronger}` — `#efefef`): The pressed/active fill of inverted buttons on dark surfaces.
- **Hairline Violet** (`{colors.hairline-violet}` — `#362d59`): 1px borders on dark cards.
- **Hairline Cool** (`{colors.hairline-cool}` — `#cfcfdb`): 1px borders on text inputs and form fields.
- **Hairline Cloud** (`{colors.hairline-cloud}` — `#e5e7eb`): Pricing-table dividers and pricing-card borders on light canvas.

### Text
- **On Primary** (`{colors.on-primary}` — `#ffffff`): All text on dark canvas, all CTA labels on filled dark buttons.
- **Ink** (`{colors.ink}` — `#1f1633`): Body text on light canvas; identical hex to the dark canvas, repurposed as type.
- **Ink Press** (`{colors.ink-press}` — `#1a1a1a`): Reserved for the pressed/active state of inverted buttons.
- **On Dark Muted** (`{colors.on-dark-muted}` — `rgba(255,255,255,0.72)`): Secondary text, captions, and table cell values on dark canvas.
- **On Dark Faint** (`{colors.on-dark-faint}` — `rgba(255,255,255,0.18)`): Translucent surface-on-dark — used for ghost button fills and dimmed nav items.

### Semantic
- **Focus Ring** (`{colors.ring-focus}` — `rgba(59,130,246,0.5)`): Translucent blue focus ring — the only blue in the system, reserved for keyboard focus on form fields.

## Typography

### Font Family

The display tier is a proprietary geometric sans with chunky, near-condensed proportions and a slightly subversive personality (closing apertures, optical-stress letterforms). When unavailable, fall back to **Rubik** at heavier weights for visual continuity.

The UI tier is **Rubik** — an open-source Hebrew/Latin sans on Google Fonts — with system fallbacks (`-apple-system, system-ui, Segoe UI, Helvetica, Arial`). Rubik handles every body, caption, button, and eyebrow role.

The code tier is **Monaco** with Menlo and Ubuntu Mono fallbacks — used in code blocks, install snippets, and inline tokens.

### Hierarchy

| Token | Size | Weight | Line Height | Letter Spacing | Use |
|---|---|---|---|---|---|
| `{typography.display-hero}` | 88px | 700 | 1.2 | 0 | Marketing hero headline (single line of attention) |
| `{typography.display-large}` | 60px | 500 | 1.1 | 0 | Section openers on dark surfaces |
| `{typography.heading-xl}` | 30px | 500 | 1.2 | 0 | Page titles on light surfaces (e.g., "Pricing plans for dev teams of all sizes") |
| `{typography.heading-lg}` | 27px | 500 | 1.25 | 0 | Sub-section headings, large card titles |
| `{typography.heading-md}` | 24px | 500 | 1.25 | 0 | Card titles, in-page section headings |
| `{typography.heading-sm}` | 20px | 600 | 1.25 | 0 | Compact card title, list-group title |
| `{typography.body-lg}` | 16px | 400 | 2.0 | 0 | Marketing-paragraph body — the airy, two-line-leading variant used in hero subtext |
| `{typography.body-strong}` | 16px | 600 | 1.5 | 0 | Emphasized body run, lead sentence |
| `{typography.body-md}` | 16px | 500 | 1.5 | 0 | Default UI body, table cells, form labels |
| `{typography.eyebrow}` | 15px | 500 | 1.4 | 0 | Section eyebrow above large headings, all-caps |
| `{typography.button-cap}` | 14px | 700 | 1.14 | 0.2px | Filled button labels (uppercase) |
| `{typography.button-cap-light}` | 14px | 500 | 1.29 | 0.2px | Ghost / outline button labels (uppercase) |
| `{typography.caption}` | 14px | 400 | 1.43 | 0 | Footer text, fine print, helper copy |
| `{typography.micro-cap}` | 10px | 600 | 1.8 | 0.25px | Status labels, badge text, micro-eyebrow |
| `{typography.code}` | 16px | 400 | 1.5 | 0 | Code block content |
| `{typography.code-strong}` | 16px | 700 | 1.5 | 0 | Highlighted code keyword |

### Principles
- **Two leading worlds.** Marketing copy uses 2.0 line-height on `{typography.body-lg}` — extremely airy, generous breathing room. Functional UI copy uses 1.5 line-height on `{typography.body-md}` — denser, closer to console output. The choice is deliberate: marketing reads like prose, the product reads like a log.
- **Caps with tracking.** All button labels and eyebrows are uppercase with 0.2px tracking. This is the brand's typographic signature — a console-prompt cadence applied to UI affordances.
- **Headlines as syntax.** The hero display is structured so a single keyword can be wrapped in a `{colors.accent-lime}` highlight chip without disrupting the reading order. Treat the lime chip as a glyph-level decoration, not a separate component.

### Note on Font Substitutes
Rubik is open-source on Google Fonts and is the safe default for everything except the hero display. For the proprietary display sans, suitable open substitutes are **Space Grotesk** (heavier weights), **Archivo** (semi-condensed weights), or **Hubot Sans** with optical-size axis at heavier ends — all carry the same chunky, near-condensed silhouette. Adjust line-height down by 0.05 when substituting, since the proprietary face has tighter leading at large sizes.

## Layout

### Spacing System
- **Base unit**: 8px
- **Tokens**: `{spacing.xxs}` 2px · `{spacing.xs}` 4px · `{spacing.sm}` 8px · `{spacing.md}` 12px · `{spacing.lg}` 16px · `{spacing.xl}` 24px · `{spacing.xxl}` 32px · `{spacing.section}` 96px
- **Section padding**: `{spacing.section}` 96px between major page bands on desktop, collapsing to `{spacing.xxl}` 32px–48px on mobile.
- **Card internal padding**: `{spacing.xxl}` 32px on pricing cards and large feature cards; `{spacing.lg}` 16px on compact tag/badge groups.
- **Form field padding**: `{spacing.sm}` 8px vertical, `{spacing.md}` 12px horizontal — matches the text-input token directly.

### Grid & Container
- Marketing pages use a wide centered container with generous outer gutters; max width sits around 1152px (one of the extracted breakpoints), with content inside flexing across 12 conceptual columns.
- Pricing splits into a 4-tier card row at desktop, collapsing to 2-up at mid widths and 1-up on mobile.
- The contact form uses a 2-column field layout (first/last name side-by-side) inside a single light-canvas panel.
- Breakpoints stair-step at 1440 → 1152 → 992 → 768 → 640 → 576 — see Responsive Behavior.

### Whitespace Philosophy
The dark canvas absorbs whitespace differently from light. On dark surfaces the brand stretches `{spacing.section}` generously between bands so floating mascots and starfield textures have room to breathe. On light surfaces (pricing, contact) the whitespace tightens — content density takes priority because users are scanning, comparing, and acting. Rule of thumb: hero and feature surfaces are spacious, transactional surfaces are dense.

## Elevation & Depth

| Level | Treatment | Use |
|---|---|---|
| 0 | Flat on canvas, no shadow | Default surface, dark or light |
| 1 | `box-shadow: rgba(0,0,0,0.08) 0 2px 8px 0` | Inverted buttons on dark canvas (light fill lifting off dark surface) |
| 2 | `box-shadow: rgba(0,0,0,0.1) 0 10px 15px -3px, rgba(0,0,0,0.1) 0 4px 6px -4px` | Floating cards on light canvas, modals |
| 3 | `box-shadow: rgb(21,15,35) 0 0 8px 6px` | Glow halo around primary CTA on dark hero — the dark color itself becomes the shadow, creating a vignette of canvas around the button |
| 4 | `box-shadow: rgba(0,0,0,0.18) 0 0.5rem 1.5rem` | Pressed inverted button on dark canvas |

### Decorative Depth
Sentri's depth doesn't come from drop shadows — it comes from the **starfield texture** on the hero canvas (subtle white-on-violet pinpricks at low opacity), the **floating sticker mascots** (drawn with hand-rendered outlines and saturated fills, layered above the canvas with no shadow), and the **lime squiggly divider** above the footer. These illustrative elements do the work that shadow stacks do in flatter design systems — they tell the eye where one section ends and another begins.

## Shapes

### Border Radius Scale

| Token | Value | Use |
|---|---|---|
| `{rounded.xs}` | 4px | Badges, status pills, lime keyword highlight chips |
| `{rounded.sm}` | 6px | Text inputs, search boxes |
| `{rounded.md}` | 8px | Primary and inverted buttons, code blocks, select dropdowns |
| `{rounded.lg}` | 10px | Generic divs, container blocks |
| `{rounded.xl}` | 12px | Pricing cards, feature cards, navigation pill chrome |
| `{rounded.xxl}` | 18px | Image containers, large hero illustrations |
| `{rounded.full}` | 9999px | Avatars, circular icon buttons |

### Photography Geometry
The site doesn't use traditional photography — it uses **illustrated stickers and product UI screenshots** in roughly equivalent geometric roles. Product UI mocks sit inside `{rounded.xxl}` 18px containers, often tilted slightly off-axis, against the dark canvas with no border. Sticker mascots have no container at all — they are layered directly on canvas, often overlapping section boundaries to break the grid. Avatar treatments (in customer-logo strips) are simple greyscale wordmarks, not photos.

## Components

> **No hover states documented.** Every spec below shows only Default and Pressed/Active states. Variants are formal entries in the front-matter `components:` block.

### Buttons

**`button-primary`** — the dominant CTA across light surfaces.
- Background `{colors.primary}`, text `{colors.on-primary}`, type `{typography.button-cap}` (uppercase, 14px / 700, 0.2px tracking), padding `{spacing.md} {spacing.lg}` (12px 16px), rounded `{rounded.md}`. On dark hero surfaces, add the level-3 glow halo for emphasis.
- Pressed state lives in `button-primary-pressed`: background flips to `{colors.surface-press-stronger}`, text to `{colors.ink-press}`. The button effectively swaps polarities on press.

**`button-inverted`** — the dominant CTA on dark canvas; visually identical hierarchy, polarity-flipped.
- Background `{colors.on-primary}` (white), text `{colors.ink-deep}`, same `{typography.button-cap}`, rounded `{rounded.md}`.
- Pressed in `button-inverted-pressed`: background drops to `{colors.surface-press-light}`, text to `{colors.ink-press}`.

**`button-ghost-on-dark`** — secondary CTA on dark canvas (e.g., "Get Demo" beside "Get Started").
- Translucent fill `{colors.on-dark-faint}`, text `{colors.on-primary}`, type `{typography.button-cap}`, padding `{spacing.sm}` (8px), rounded `{rounded.xl}`. The translucent fill lets the canvas texture show through.

**`button-violet-token`** — pill-shaped tag/category button used inline in product navs.
- Background `{colors.accent-violet-mid}`, text `{colors.on-primary}`, type `{typography.button-cap-light}`, padding `{spacing.sm} {spacing.lg}` (8px 16px), rounded `{rounded.xl}`, 1px hairline border in a slightly deeper violet.

**`button-disabled`**
- Background `{colors.hairline-cloud}`, text `{colors.on-dark-muted}`, otherwise identical to `button-primary`.

### Cards & Containers

**`card-pricing`** — the standard tier card on the pricing page.
- Background `{colors.surface-canvas-light}`, text `{colors.ink-deep}`, padding `{spacing.xxl}` 32px, rounded `{rounded.xl}` 12px, 1px `{colors.hairline-cloud}` border. Headline at top in `{typography.heading-md}`, price in `{typography.display-large}`, feature list in `{typography.body-md}`, primary CTA pinned to the bottom of the card.

**`card-pricing-featured`** — the dark inverted "featured" tier (Sentri uses the Business tier as the featured one).
- Background `{colors.surface-night}`, text `{colors.on-primary}`, otherwise identical structure to `card-pricing`. The inversion (rather than an accent-bordered light card) is the brand's distinctive choice — the featured tier reads as the brand's voice, not as a marketing decoration.

**`card-feature-dark`** — large feature-band card on dark surfaces, used to anchor product feature explanations.
- Background `{colors.ink-deep}`, text `{colors.on-primary}`, padding `{spacing.xxl}` 32px, rounded `{rounded.xxl}` 18px. Often holds a UI mock plus a 27px headline plus 16px body.

**`card-spotlight-violet`** — accent feature card with deeper violet fill, used for "Sentry-only" capability bands.
- Background `{colors.accent-violet-deep}`, text `{colors.on-primary}`, padding `{spacing.xxl}`, rounded `{rounded.xxl}`. The deep violet reads as a feature highlight without breaking out of the brand's purple family.

**`code-block`** — code/install snippets.
- Background `{colors.surface-night}`, text `{colors.on-primary}` rendered in `{typography.code}`. Padding `{spacing.lg}` 16px, rounded `{rounded.md}`. On dark canvas the code block is barely lifted from canvas — only the slightly deeper fill differentiates it.

### Inputs & Forms

**`text-input`** — the contact-form first/last/email/etc. fields.
- Background `{colors.surface-canvas-light}`, text `{colors.ink-deep}`, type `{typography.body-md}`, padding `{spacing.sm} {spacing.md}` (8px 12px), rounded `{rounded.sm}` 6px, 1px `{colors.hairline-cool}` border.
- Focus state in `text-input-focused`: same fill, but adds an inset shadow `rgba(0,0,0,0.15) 0 2px 10px inset` to suggest depth pressed inward.

**`select-violet`** — the dropdown variant used inside dark contact panels.
- Background `{colors.accent-violet-deep}`, text `{colors.on-primary}`, type `{typography.body-md}`, padding `{spacing.sm} {spacing.lg}`, rounded `{rounded.md}`. Distinctive because it doesn't mimic a plain text input — it reads as a deliberate brand surface.

### Navigation

**`nav-bar-light`** — the standard top nav across light pages (pricing, contact, docs).
- Background `{colors.surface-canvas-light}`, text `{colors.ink-deep}`, type `{typography.body-md}`. Logo wordmark on the left at ~145×32px, primary nav items mid-bar with dropdown carets, and a `Get Demo` ghost + `Get Started` filled `button-primary` pair on the right. Padding `{spacing.lg} {spacing.xl}` (16px 24px).

**Top Nav (dark variant)** — used on the home page; same structure but inverted polarity, sitting on `{colors.surface-canvas-dark}`. The right-side button becomes `button-inverted`.

**Mobile nav** — collapses to a hamburger toggle below the 768px breakpoint; dropdown carets become full-width accordion items.

### Pills, Badges, and Highlight Chips

**`pill-neutral-dark`** — small status / category pill on dark surfaces.
- Background `{colors.surface-night}`, text `{colors.on-primary}`, type `{typography.caption}` 12px, padding `{spacing.xs} {spacing.sm}` (4px 8px), rounded `{rounded.xs}` 4px.

**`chip-lime-keyword`** — the signature inline highlight wrapping single words inside the hero display headline.
- Background `{colors.accent-lime}`, text `{colors.ink-deep}`, type matches the surrounding `{typography.display-hero}`, rounded `{rounded.xs}` 4px, padding `0 {spacing.md}` (12px horizontal, 0 vertical so the chip hugs the cap-height).

### Signature Components

**Sticker Mascot Layer** — illustrated characters (astronauts, cartoon monsters, traffic cones, debugging avatars) drawn with hand-rendered outlines and saturated `{colors.accent-pink}` / `{colors.accent-lime}` fills. Mascots are placed at section junctions, often overlapping section boundaries by 30–40% of their height, with no container or shadow. They function as decorative section markers and brand personality carriers — never inside cards, never as buttons.

**Lime Squiggly Footer Divider** — a hand-drawn `{colors.accent-lime}` squiggle line, ~3px stroke, sitting above the footer at full container width. Replaces what would otherwise be a 1px hairline divider with a personality-laden flourish.

**Starfield Hero Texture** — a faint white-on-violet pinprick pattern overlaid on the hero canvas at very low opacity. Adds atmospheric depth to the dark canvas without visible decoration. Implemented as a background image, not as repeating CSS.

**Window-Chrome UI Mock** — product UI screenshots framed in `{rounded.xxl}` containers, often tilted ±2–3 degrees off axis, positioned overlapping section boundaries on the dark feature pages. The chrome itself is just a rounded image with a subtle hairline; the content is the actual product UI.

**`link-on-dark`** — inline links in body copy on dark surfaces. Default text is `{colors.on-primary}` rendered in `{typography.body-md}` with a persistent underline; the underline is the entire affordance, no color change. Sits flush in copy with no padding, no rounded corners beyond the inherited `{rounded.xs}`.

**`link-on-light`** — inline links in body copy on light surfaces. Same shape contract as `link-on-dark`, but text is `{colors.ink-deep}`. Used across pricing, contact, and docs surfaces.

**`footer-light`** — site-wide footer on the light-canvas template (pricing, contact, docs).
- Background `{colors.surface-canvas-light}`, text `{colors.ink-deep}`, type `{typography.caption}`, padding `{spacing.xxl} {spacing.xl}` (32px 24px). Topped by the lime squiggly divider — see Signature Components. Holds three to four columns of link groups, social icons in a horizontal strip at the bottom right, and a small legal/copyright row at the very bottom in `{typography.caption}`.

## Do's and Don'ts

### Do
- Reserve `{colors.accent-lime}` for keyword-highlight chips inside display headlines and the footer squiggle divider — never use it as a button background, never as body text.
- Pair every `button-primary` with `{typography.button-cap}` in uppercase with 0.2px tracking — the cadence is part of the brand, not a stylistic option.
- Treat the dark canvas (`{colors.surface-canvas-dark}`) and light canvas (`{colors.surface-canvas-light}`) as two complete worlds — let one own marketing/feature pages and the other own transactional pages, with no half-measures.
- Use sticker mascots to break section boundaries — let them overlap, tilt, and float; constraining them inside cards drains their personality.
- Use `card-pricing-featured` (dark inverted tier) instead of an accent-bordered light tier for the featured pricing column.
- Default body line-height to 1.5 on functional UI surfaces and 2.0 on marketing surfaces — the difference is intentional.

### Don't
- Don't introduce additional accent colors beyond `{colors.accent-lime}` and `{colors.accent-pink}` — adding teal, orange, or yellow dilutes the violet-and-lime signature.
- Don't apply drop shadows to cards on dark canvas — depth comes from texture and illustration, not from light-on-dark shadows that would muddy the violet.
- Don't use `{typography.display-hero}` (88px) for anything except the marketing hero — even sub-pages cap at `{typography.display-large}` (60px).
- Don't put body text in `{colors.accent-lime}` — it's a chip color, not a type color, and breaks contrast at body sizes.
- Don't soften the `{colors.primary}` button to a brand-violet — the near-black is the point; it reads as the most authoritative action regardless of canvas polarity.
- Don't put illustrated mascots inside cards or constrained containers — their job is to break grid, not occupy it.

## Responsive Behavior

### Breakpoints

| Name | Width | Key Changes |
|---|---|---|
| 4K / Wide | ≥ 1440px | Full 4-tier pricing row, hero illustration sits beside headline at full scale |
| Desktop | 1152–1440px | Default content max-width sits at 1152px, all 4-tier patterns hold |
| Laptop | 992–1151px | Pricing collapses to 2-up rows, nav remains horizontal |
| Tablet | 768–991px | 2-column feature grids collapse to 1-up; nav still horizontal but compresses |
| Mobile Large | 640–767px | Hamburger nav appears; hero display drops from 88px to ~56px |
| Mobile | 576–639px | Single-column everything; section padding collapses from 96px to 32–48px |
| Small Mobile | 1–575px | Compact mode; sticker mascots drop in size or hide entirely to preserve content priority |

### Touch Targets
- Primary buttons hit a minimum 44×44px on mobile (12px vertical padding × 16px font + line-height = ~44px). Maintains WCAG AAA touch-target spec.
- Pill tags and badges in nav and feature surfaces stay above 32×32px even at small mobile breakpoints; they enlarge if necessary rather than shrink.
- Form fields stay at the 44px minimum height on mobile contact pages.

### Collapsing Strategy
- **Hero display headline** drops from 88px → 60px → 48px across the breakpoint stair; the lime keyword chip preserves padding and corner radius at every step.
- **Pricing tiers** stair-step from 4-up → 2-up → 1-up. The featured dark tier always remains visually distinguished — it never loses its inversion at any breakpoint.
- **Sticker mascots** are progressively de-emphasized: at desktop they overlap section boundaries; at tablet they shift to inline within section padding; at small mobile most are hidden via `display: none` to keep the content scan-able.
- **Top nav** collapses to a hamburger below 768px; the dropdown menu uses the same canvas polarity as the page (dark on hero, light on pricing).
- **Code blocks** preserve 16px Monaco at every breakpoint — they never scale down — but switch to horizontal scroll on overflow rather than wrap.

### Image Behavior
- Product UI mocks scale proportionally; on small mobile they often anchor to one edge with horizontal overflow rather than shrink to illegibility.
- Sticker mascots scale by 50–70% at mobile breakpoints, preserving their personality but ceding screen space to content.
- The lime footer squiggle scales the SVG to container width while keeping stroke width visually consistent.

## Iteration Guide

1. Focus on ONE component at a time. Don't rebuild the system — extend it.
2. Reference component names and tokens directly (`{colors.accent-lime}`, `{button-primary}-pressed`, `{rounded.xxl}`) — do not paraphrase.
3. Run `npx @google/design.md lint DESIGN.md` after edits — `broken-ref`, `contrast-ratio`, and `orphaned-tokens` warnings flag issues automatically.
4. Add new variants as separate component entries (`-pressed`, `-disabled`, `-focused`) — do not bury them inside prose.
5. Default to `{typography.body-md}` for product UI body and `{typography.body-lg}` for marketing prose — the leading difference is intentional and load-bearing.
6. Keep `{colors.accent-lime}` scarce — one lime element per viewport. The signature only works because it's rare.
7. When polarizing a new surface, choose one canvas (`{colors.surface-canvas-dark}` or `{colors.surface-canvas-light}`) and commit to it; don't blend the two on a single page band.


---

## Brand: `supabase`

---
version: alpha
name: Supabaze-Inspired-design-analysis
description: An inspired interpretation of Supabaze's design language — an open-source database platform built on a clean white-and-near-black system with a single signature emerald-green CTA, a custom humanist sans display tier, and dense product UI mockups composited above the hero. The brand reads as quietly technical: minimal chrome, a near-monochrome palette, and the green primary acting as the only chromatic event on the page.

colors:
  primary: "#3ecf8e"
  primary-deep: "#24b47e"
  primary-soft: "#4ade80"
  ink: "#171717"
  ink-secondary: "#212121"
  ink-mute: "#707070"
  ink-mute-2: "#9a9a9a"
  ink-faint: "#b2b2b2"
  on-primary: "#171717"
  on-dark: "#ffffff"
  canvas: "#ffffff"
  canvas-soft: "#fafafa"
  canvas-night: "#1c1c1c"
  canvas-night-soft: "#202020"
  hairline: "#dfdfdf"
  hairline-strong: "#c7c7c7"
  hairline-cool: "#ededed"
  hairline-cool-2: "#efefef"
  hairline-cool-3: "#d4d4d4"
  accent-purple: "#6b01c2"
  accent-violet: "#644fc1"
  accent-purple-soft: "#eddbf9"
  accent-yellow: "#ffdb13"
  accent-tomato: "#ff2201"
  accent-pink: "#c7007e"
  accent-indigo: "#054cff"
  accent-crimson: "#e2005a"

typography:
  display-xxl:
    fontFamily: "Circular, 'Helvetica Neue', Helvetica, Arial, sans-serif"
    fontSize: 64px
    fontWeight: 500
    lineHeight: 1.1
    letterSpacing: -1.92px
  display-xl:
    fontFamily: "Circular, 'Helvetica Neue', Helvetica, Arial, sans-serif"
    fontSize: 48px
    fontWeight: 500
    lineHeight: 1.1
    letterSpacing: -1.44px
  display-lg:
    fontFamily: "Circular, 'Helvetica Neue', Helvetica, Arial, sans-serif"
    fontSize: 36px
    fontWeight: 500
    lineHeight: 1.15
    letterSpacing: -0.72px
  display-md:
    fontFamily: "Circular, 'Helvetica Neue', Helvetica, Arial, sans-serif"
    fontSize: 28px
    fontWeight: 500
    lineHeight: 1.2
    letterSpacing: -0.42px
  heading-lg:
    fontFamily: "Circular, 'Helvetica Neue', Helvetica, Arial, sans-serif"
    fontSize: 22px
    fontWeight: 500
    lineHeight: 1.2
    letterSpacing: 0
  heading-md:
    fontFamily: "Circular, 'Helvetica Neue', Helvetica, Arial, sans-serif"
    fontSize: 18px
    fontWeight: 500
    lineHeight: 1.4
    letterSpacing: 0
  body-lg:
    fontFamily: "Circular, 'Helvetica Neue', Helvetica, Arial, sans-serif"
    fontSize: 18px
    fontWeight: 400
    lineHeight: 1.55
    letterSpacing: 0
  body-md:
    fontFamily: "Circular, 'Helvetica Neue', Helvetica, Arial, sans-serif"
    fontSize: 16px
    fontWeight: 400
    lineHeight: 1.5
    letterSpacing: 0
  button-md:
    fontFamily: "Circular, 'Helvetica Neue', Helvetica, Arial, sans-serif"
    fontSize: 14px
    fontWeight: 500
    lineHeight: 1.0
    letterSpacing: 0
  caption:
    fontFamily: "Circular, 'Helvetica Neue', Helvetica, Arial, sans-serif"
    fontSize: 13px
    fontWeight: 400
    lineHeight: 1.45
    letterSpacing: 0
  micro:
    fontFamily: "Circular, 'Helvetica Neue', Helvetica, Arial, sans-serif"
    fontSize: 12px
    fontWeight: 400
    lineHeight: 1.45
    letterSpacing: 0
  code:
    fontFamily: "ui-monospace, Menlo, Monaco, Consolas, 'Liberation Mono', monospace"
    fontSize: 14px
    fontWeight: 400
    lineHeight: 1.5
    letterSpacing: 0

rounded:
  xs: 4px
  sm: 6px
  md: 8px
  lg: 12px
  xl: 16px
  full: 9999px

spacing:
  xxs: 2px
  xs: 4px
  sm: 8px
  md: 12px
  lg: 16px
  xl: 24px
  xxl: 32px
  huge: 64px

components:
  button-primary-green:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button-md}"
    rounded: "{rounded.sm}"
    padding: 8px 16px
  button-primary-green-pressed:
    backgroundColor: "{colors.primary-deep}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button-md}"
    rounded: "{rounded.sm}"
    padding: 8px 16px
  button-secondary-outline:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.button-md}"
    rounded: "{rounded.sm}"
    padding: 8px 16px
  button-on-dark:
    backgroundColor: "{colors.canvas-night}"
    textColor: "{colors.on-dark}"
    typography: "{typography.button-md}"
    rounded: "{rounded.sm}"
    padding: 8px 16px
  button-link:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.button-md}"
    rounded: "{rounded.xs}"
    padding: 0px
  text-input:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.sm}"
    padding: 8px 12px
  card-feature-light:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.lg}"
    padding: 32px
  card-pricing:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.lg}"
    padding: 32px
  card-pricing-featured:
    backgroundColor: "{colors.canvas-night}"
    textColor: "{colors.on-dark}"
    typography: "{typography.body-md}"
    rounded: "{rounded.lg}"
    padding: 32px
  card-feature-dark:
    backgroundColor: "{colors.canvas-night}"
    textColor: "{colors.on-dark}"
    typography: "{typography.body-md}"
    rounded: "{rounded.lg}"
    padding: 32px
  code-block:
    backgroundColor: "{colors.canvas-night}"
    textColor: "{colors.on-dark}"
    typography: "{typography.code}"
    rounded: "{rounded.sm}"
    padding: 16px
  pill-tag-green:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.micro}"
    rounded: "{rounded.full}"
    padding: 2px 8px
  pill-tag-soft:
    backgroundColor: "{colors.canvas-soft}"
    textColor: "{colors.ink}"
    typography: "{typography.micro}"
    rounded: "{rounded.full}"
    padding: 2px 8px
  nav-bar-light:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.xs}"
    padding: 16px 24px
  link-on-light:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.xs}"
    padding: 0px
  footer-light:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink-mute}"
    typography: "{typography.caption}"
    rounded: "{rounded.xs}"
    padding: 64px 24px
---

## Overview

Supabaze's design language is engineered for clarity above all else. The marketing surfaces sit on `{colors.canvas}` (pure white), with text rendered in `{colors.ink}` (`#171717` — near-black, never pure black). Across the entire system the only consistent chromatic event is the **emerald green primary** (`{colors.primary}` — `#3ecf8e`) — used as the filled CTA, occasional accent dot, and the signature highlight color in the wordmark. Everything else is a calibrated grey ladder from `#ededed` hairline-cool to `#171717` ink, with thin black-on-white typography doing most of the visual work.

Typography runs **Circular** at weight 500 for display and 400 for body. The display tier uses tight negative letter-spacing (-1.92px at 64px) to pull the rounded humanist letterforms into editorial density. There's no atmospheric gradient, no full-bleed photography, no dark-canvas marketing track — the brand commits to white.

The product itself appears as composited UI screenshots on every page: dashboard tables, SQL editors, query builders, log streams. These screenshots are the brand's argument. They sit inside `{rounded.lg}` 12px containers with subtle 1px hairlines, often arranged 2-up or in a floating "stacked panes" composition above the hero band.

**Key Characteristics:**
- Single emerald primary (`{colors.primary}` `#3ecf8e`) as the only chromatic event; everything else is monochrome.
- White canvas marketing track with greyscale hierarchy from `{colors.hairline-cool}` to `{colors.ink}`.
- Custom humanist sans display tier at weight 500 with negative letter-spacing of -1.92px to -0.42px.
- Composited product UI screenshots (dashboard, SQL editor, log stream) are the dominant decorative element — never photography, never illustrations.
- Tight 6px / 8px button radii — square-ish, technical, never pill-shaped.
- Code blocks rendered in deep `{colors.canvas-night}` (`#1c1c1c`) with monospace inline code; the brand's developer DNA is visible in every snippet.
- Pricing tiers use a dark inverted `{colors.canvas-night}` featured tier, not a green one — the green is reserved for buttons and dot accents.

## Colors

> **Source pages:** home (`/`), `/database`, `/partners/integrations`, `/partners/integrations/powersync`, `/solutions/ai-builders`, `/pricing`.

### Brand & Accent
- **Emerald** (`{colors.primary}` — `#3ecf8e`): The signature CTA color. Filled-button background, brand wordmark accent, dot indicator.
- **Emerald Deep** (`{colors.primary-deep}` — `#24b47e`): Pressed-state lift of the primary.
- **Emerald Soft** (`{colors.primary-soft}` — `#4ade80`): Lighter emerald used in chart accents and product UI.
- **Accent Purple** (`{colors.accent-purple}` — `#6b01c2`): Rare accent used in integration logos and chart points; never a button.
- **Accent Violet** (`{colors.accent-violet}` — `#644fc1`): Secondary accent in the same role as accent purple.
- **Accent Yellow** (`{colors.accent-yellow}` — `#ffdb13`): Chart accent / status indicator only.
- **Accent Pink / Crimson / Indigo / Tomato**: Reserved for integration logos and rare chart highlights, never as system colors.

### Surface
- **Canvas** (`{colors.canvas}` — `#ffffff`): Default page background.
- **Canvas Soft** (`{colors.canvas-soft}` — `#fafafa`): Barely-tinted off-white for alternating section bands.
- **Canvas Night** (`{colors.canvas-night}` — `#1c1c1c`): Deep near-black used in code blocks, dashboard mockups, featured pricing tier.
- **Canvas Night Soft** (`{colors.canvas-night-soft}` — `#202020`): Slightly lifted dark for nested chrome.
- **Hairline** (`{colors.hairline}` — `#dfdfdf`): 1px borders on cards and tables.
- **Hairline Strong** (`{colors.hairline-strong}` — `#c7c7c7`): Slightly darker border for emphasis.
- **Hairline Cool** (`{colors.hairline-cool}` — `#ededed`) / **Hairline Cool 2** (`#efefef`) / **Hairline Cool 3** (`#d4d4d4`): The brand's grey ladder for fine chrome work.

### Text
- **Ink** (`{colors.ink}` — `#171717`): Default body text. Near-black, never pure.
- **Ink Secondary** (`{colors.ink-secondary}` — `#212121`): Slightly cooler near-black for body emphasis.
- **Ink Mute** (`{colors.ink-mute}` — `#707070`): Secondary text and helper copy.
- **Ink Mute 2** (`{colors.ink-mute-2}` — `#9a9a9a`): Tertiary text.
- **Ink Faint** (`{colors.ink-faint}` — `#b2b2b2`): Disabled / placeholder text.
- **On Primary** (`{colors.on-primary}` — `#171717`): Text on the emerald primary fill — near-black, not white. The button reads as a "lit" surface with dark type, not a colored chip.
- **On Dark** (`{colors.on-dark}` — `#ffffff`): Text on canvas-night surfaces.

## Typography

### Font Family

The display and UI tier is **Circular** — a proprietary geometric humanist sans by Lineto. Fallback chain: `'Helvetica Neue', Helvetica, Arial`.

For maximum brand fidelity when Circular isn't licensed, use **Inter** (open-source via Google Fonts) at weight 500 for display with `letter-spacing: -1.92px` at 64px. Inter is the closest open-source analogue to Circular's geometric humanist character.

Code blocks use **system mono** (`ui-monospace`, with Menlo / Monaco / Consolas fallbacks).

### Hierarchy

| Token | Size | Weight | Line Height | Letter Spacing | Use |
|---|---|---|---|---|---|
| `{typography.display-xxl}` | 64px | 500 | 1.1 | -1.92px | Hero headline |
| `{typography.display-xl}` | 48px | 500 | 1.1 | -1.44px | Section opener |
| `{typography.display-lg}` | 36px | 500 | 1.15 | -0.72px | Sub-section / pricing tier |
| `{typography.display-md}` | 28px | 500 | 1.2 | -0.42px | Card title |
| `{typography.heading-lg}` | 22px | 500 | 1.2 | 0 | Compact heading |
| `{typography.heading-md}` | 18px | 500 | 1.4 | 0 | Section sub-heading |
| `{typography.body-lg}` | 18px | 400 | 1.55 | 0 | Marketing body lead |
| `{typography.body-md}` | 16px | 400 | 1.5 | 0 | Default UI body |
| `{typography.button-md}` | 14px | 500 | 1.0 | 0 | Button label |
| `{typography.caption}` | 13px | 400 | 1.45 | 0 | Helper, footnote |
| `{typography.micro}` | 12px | 400 | 1.45 | 0 | Pill label, fine print |
| `{typography.code}` | 14px | 400 | 1.5 | 0 | Code block content |

### Principles
- **Weight 500 across display.** Mid-weight reads as engineered, not decorative.
- **Negative tracking on display.** -1.92px at 64px scaling proportionally down — tightens the rounded humanist letterforms into editorial density.
- **Mono for code.** System mono families (Menlo / Monaco) — no proprietary mono webfont.

### Note on Font Substitutes
Circular is proprietary. Use **Inter** at weight 500 with `letter-spacing: -1.92px` for display tiers. **Geist Sans** (open-source from Vercel) is another close alternative for both display and body. Avoid Helvetica defaults — they're heavier and lack the geometric warmth.

## Layout

### Spacing System
- **Base unit**: 8px (with 2 / 4 / 12 sub-tokens for fine work).
- **Tokens**: `{spacing.xxs}` 2px · `{spacing.xs}` 4px · `{spacing.sm}` 8px · `{spacing.md}` 12px · `{spacing.lg}` 16px · `{spacing.xl}` 24px · `{spacing.xxl}` 32px · `{spacing.huge}` 64px.
- **Section padding**: 64–96px on marketing surfaces.
- **Card internal padding**: 32px on feature/pricing cards.

### Grid & Container
- Marketing pages center in a ~1280px container with no edge-bleed; the brand keeps content inside the box.
- Pricing collapses 4-up → 2-up → 1-up at 1024 / 768 breakpoints.
- Product UI mockups stack 2-up or render as overlapping panes inside the same container.

### Whitespace Philosophy
The brand uses generous 64–96px section padding without atmospheric gradients filling the space — the white canvas is the design. The composited product UI mockups break up sections without requiring decoration.

## Elevation & Depth

| Level | Treatment | Use |
|---|---|---|
| 0 | Flat, 1px hairline | Default cards |
| 1 | `box-shadow: 0 1px 3px rgba(0,0,0,0.06)` | Subtle card lift |
| 2 | `box-shadow: 0 8px 24px rgba(0,0,0,0.08)` | Floating composited UI mockups |
| 3 | `box-shadow: 0 16px 48px rgba(0,0,0,0.12)` | Modal overlays, deep elevation |

### Decorative Depth
The brand's depth is **product UI mockups** rather than gradients. Stacked dashboard / SQL editor / log panes composite together with subtle Level 2 shadows to suggest spatial hierarchy.

## Shapes

### Border Radius Scale

| Token | Value | Use |
|---|---|---|
| `{rounded.xs}` | 4px | Form inputs, hairline tags |
| `{rounded.sm}` | 6px | Buttons (the brand's signature button radius), code blocks |
| `{rounded.md}` | 8px | Compact cards, alerts |
| `{rounded.lg}` | 12px | Pricing cards, feature cards, product mockups |
| `{rounded.xl}` | 16px | Modal dialogs, large container chrome |
| `{rounded.full}` | 9999px | Pill tags, avatars |

### Photography Geometry
The brand uses minimal photography. Customer logo strips display wordmarks at uniform height (~24–32px) in greyscale; case-study cards (rare) use 4:3 photos inset in `{rounded.lg}` containers.

## Components

### Buttons

**`button-primary-green`** — the signature CTA.
- Background `{colors.primary}`, text `{colors.on-primary}` (near-black, NOT white), type `{typography.button-md}`, padding `{spacing.sm} {spacing.lg}` (8px 16px), rounded `{rounded.sm}` 6px.
- Pressed state `button-primary-green-pressed` shifts to `{colors.primary-deep}`.

**`button-secondary-outline`** — outline alternative on white.
- Background `{colors.canvas}`, text `{colors.ink}`, 1px solid `{colors.hairline-strong}` border, same shape.

**`button-on-dark`** — used on dark surfaces / code-block CTAs.
- Background `{colors.canvas-night}`, text `{colors.on-dark}`, same shape.

**`button-link`** — text-only inline button.
- Transparent background, text `{colors.ink}` rendered in `{typography.button-md}`, no padding, with a subtle underline on hover.

### Cards & Containers

**`card-feature-light`** — feature card on white.
- Background `{colors.canvas}`, padding `{spacing.xxl}`, rounded `{rounded.lg}` 12px, 1px `{colors.hairline}` border.

**`card-pricing`** — standard pricing tier.
- Background `{colors.canvas}`, padding `{spacing.xxl}`, rounded `{rounded.lg}`, 1px `{colors.hairline}` border. Title in `{typography.heading-lg}`, price in `{typography.display-md}`, body in `{typography.body-md}`, CTA `button-primary-green` pinned bottom.

**`card-pricing-featured`** — inverted dark featured tier.
- Background `{colors.canvas-night}`, text `{colors.on-dark}`, otherwise identical structure.

**`card-feature-dark`** — feature card with deep dark fill.
- Background `{colors.canvas-night}`, text `{colors.on-dark}`, padding `{spacing.xxl}`, rounded `{rounded.lg}`. Used for code-heavy feature explanations.

**`code-block`** — code snippet container.
- Background `{colors.canvas-night}`, text `{colors.on-dark}` rendered in `{typography.code}`. Padding `{spacing.lg}` 16px, rounded `{rounded.sm}` 6px.

### Inputs & Forms

**`text-input`** — standard form input.
- Background `{colors.canvas}`, text `{colors.ink}`, type `{typography.body-md}`, padding `{spacing.sm} {spacing.md}` (8px 12px), rounded `{rounded.sm}` 6px, 1px `{colors.hairline}` border.

### Navigation

**`nav-bar-light`** — top nav across the site.
- Background `{colors.canvas}`, text `{colors.ink}`, padding `{spacing.lg} {spacing.xl}`. Logo on the left, primary nav center, "Sign In" link + filled `button-primary-green` on the right.

### Pills, Tags, and Chips

**`pill-tag-green`** — small green pill used for "new" or featured indicators.
- Background `{colors.primary}`, text `{colors.on-primary}`, type `{typography.micro}`, padding `{spacing.xxs} {spacing.sm}`, rounded `{rounded.full}`.

**`pill-tag-soft`** — neutral pill on light surfaces.
- Background `{colors.canvas-soft}`, text `{colors.ink}`, otherwise same shape.

### Signature Components

**Composited Product UI Mockups** — multi-layer dashboard / SQL editor / log pane composites with subtle Level 2 shadows. The product is the brand's argument; mockups always sit on white canvas with no surrounding decoration.

**`link-on-light`** — inline links in body copy.
- Text `{colors.ink}` rendered in `{typography.body-md}` with a persistent underline.

**`footer-light`** — site-wide footer.
- Background `{colors.canvas}`, text `{colors.ink-mute}`, type `{typography.caption}`, padding `{spacing.huge} {spacing.xl}` (64px 24px). Holds 4–5 columns of link groups, social icons, and a small legal row.

## Do's and Don'ts

### Do
- Reserve `{colors.primary}` emerald for filled CTAs and the wordmark accent — it should appear sparingly.
- Render display tiers at weight 500 with negative letter-spacing — the engineered tightness is part of the brand.
- Use `{rounded.sm}` 6px for buttons — square-ish radii, never pill-shaped.
- Composite product UI mockups inside `{rounded.lg}` containers with subtle Level 2 shadows.
- Use near-black `{colors.ink}` on the emerald button (not white) — the green reads as "lit" with dark type, which is the brand's idiosyncratic choice.
- Apply system mono for every code block.

### Don't
- Don't introduce additional accent colors as system colors — purples, yellows, and pinks belong inside chart points and integration logos only.
- Don't bump display weight above 500 — the brand's calibrated mid-weight breaks at 600+.
- Don't use pill-shaped buttons; the brand's button radius is square-ish 6px.
- Don't use white text on the emerald button — the brand specifically uses near-black on green.
- Don't add atmospheric gradients to hero bands — the white canvas is the design.

## Responsive Behavior

### Breakpoints

| Name | Width | Key Changes |
|---|---|---|
| Wide | ≥ 1440px | Full container width; product mockups at full scale |
| Desktop | 1024–1440px | Default content max-width; pricing 4-up |
| Tablet | 768–1023px | Pricing 2-up; mockups simplify to single panel |
| Mobile | < 768px | Pricing 1-up; hamburger nav; display drops 64 → 36px |

### Touch Targets
- Buttons hit ≥ 36×36px on mobile; vertical padding scales up to maintain WCAG AA minimum.
- Form fields stay at 36px minimum height.

### Collapsing Strategy
- Display tiers stair-step 64 → 48 → 36 → 28 → 22px.
- Product UI mockups simplify to a single primary panel on mobile.
- Pricing tiers stair-step 4-up → 2-up → 1-up; dark featured tier always distinguished.

### Image Behavior
Product UI mockups use `srcset` with desktop / mobile crops; mobile crops focus on the most actionable inner panel.

## Iteration Guide

1. Focus on ONE component at a time.
2. Reference component names and tokens directly.
3. Run `npx @google/design.md lint DESIGN.md` after edits.
4. Default body to `{typography.body-md}`; use `{typography.code}` for any developer-facing snippet.
5. Keep emerald scarce; one filled green button per viewport.
6. The white-canvas commitment is non-negotiable — adding atmospheric backdrops breaks the brand.


---

## Brand: `vercel`

---
version: alpha
name: Vercel-Inspired-design-analysis
description: An inspired interpretation of Vercel's design language — a developer-platform brand whose surface is a stark black-and-ink duet on near-white canvas, broken at hero scale by a multi-color mesh gradient (cyan / blue / magenta / amber) that acts as the entire decorative system, paired with a custom geometric sans for headlines and a monospaced caption face for technical labels.

colors:
  primary: "#171717"
  on-primary: "#ffffff"
  ink: "#171717"
  body: "#4d4d4d"
  mute: "#888888"
  hairline: "#ebebeb"
  hairline-strong: "#a1a1a1"
  canvas: "#ffffff"
  canvas-soft: "#fafafa"
  canvas-soft-2: "#f5f5f5"
  link: "#0070f3"
  link-deep: "#0761d1"
  link-bg-soft: "#d3e5ff"
  success: "#0070f3"
  error: "#ee0000"
  error-soft: "#f7d4d6"
  error-deep: "#c50000"
  warning: "#f5a623"
  warning-soft: "#ffefcf"
  warning-deep: "#ab570a"
  violet: "#7928ca"
  violet-soft: "#d8ccf1"
  violet-deep: "#4c2889"
  cyan: "#50e3c2"
  cyan-soft: "#aaffec"
  cyan-deep: "#29bc9b"
  highlight-pink: "#ff0080"
  highlight-magenta: "#eb367f"
  gradient-develop-start: "#007cf0"
  gradient-develop-end: "#00dfd8"
  gradient-preview-start: "#7928ca"
  gradient-preview-end: "#ff0080"
  gradient-ship-start: "#ff4d4d"
  gradient-ship-end: "#f9cb28"
  selection-bg: "#171717"
  selection-fg: "#f2f2f2"

typography:
  display-xl:
    fontFamily: Geist, Inter, system-ui, -apple-system, sans-serif
    fontSize: 48px
    fontWeight: 600
    lineHeight: 48px
    letterSpacing: -2.4px
  display-lg:
    fontFamily: Geist, Inter, system-ui, -apple-system, sans-serif
    fontSize: 32px
    fontWeight: 600
    lineHeight: 40px
    letterSpacing: -1.28px
  display-md:
    fontFamily: Geist, Inter, system-ui, -apple-system, sans-serif
    fontSize: 24px
    fontWeight: 600
    lineHeight: 32px
    letterSpacing: -0.96px
  display-sm:
    fontFamily: Geist, Inter, system-ui, -apple-system, sans-serif
    fontSize: 20px
    fontWeight: 600
    lineHeight: 28px
    letterSpacing: -0.6px
  body-lg:
    fontFamily: Geist, Inter, system-ui, -apple-system, sans-serif
    fontSize: 18px
    fontWeight: 400
    lineHeight: 28px
    letterSpacing: 0px
  body-md:
    fontFamily: Geist, Inter, system-ui, -apple-system, sans-serif
    fontSize: 16px
    fontWeight: 400
    lineHeight: 24px
  body-md-strong:
    fontFamily: Geist, Inter, system-ui, -apple-system, sans-serif
    fontSize: 16px
    fontWeight: 500
    lineHeight: 24px
  body-sm:
    fontFamily: Geist, Inter, system-ui, -apple-system, sans-serif
    fontSize: 14px
    fontWeight: 400
    lineHeight: 20px
    letterSpacing: -0.28px
  body-sm-strong:
    fontFamily: Geist, Inter, system-ui, -apple-system, sans-serif
    fontSize: 14px
    fontWeight: 500
    lineHeight: 20px
    letterSpacing: -0.28px
  caption:
    fontFamily: Geist, Inter, system-ui, -apple-system, sans-serif
    fontSize: 12px
    fontWeight: 400
    lineHeight: 16px
  caption-mono:
    fontFamily: Geist Mono, ui-monospace, SFMono-Regular, Menlo, Monaco, monospace
    fontSize: 12px
    fontWeight: 400
    lineHeight: 16px
  code:
    fontFamily: Geist Mono, ui-monospace, SFMono-Regular, Menlo, Monaco, monospace
    fontSize: 13px
    fontWeight: 400
    lineHeight: 20px
  button-md:
    fontFamily: Geist, Inter, system-ui, -apple-system, sans-serif
    fontSize: 14px
    fontWeight: 500
    lineHeight: 20px
  button-lg:
    fontFamily: Geist, Inter, system-ui, -apple-system, sans-serif
    fontSize: 16px
    fontWeight: 500
    lineHeight: 24px

rounded:
  none: 0px
  xs: 4px
  sm: 6px
  md: 8px
  lg: 12px
  xl: 16px
  pill-sm: 64px
  pill: 100px
  full: 9999px

spacing:
  xxs: 4px
  xs: 8px
  sm: 12px
  md: 16px
  lg: 24px
  xl: 32px
  2xl: 40px
  3xl: 48px
  4xl: 64px
  5xl: 96px
  6xl: 128px
  section: 192px

components:
  nav-bar:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-sm}"
    height: 64px
    padding: "{spacing.sm} {spacing.lg}"
  nav-link:
    textColor: "{colors.body}"
    typography: "{typography.body-sm}"
    rounded: "{rounded.full}"
    padding: "{spacing.xs} {spacing.sm}"
  nav-cta-signup:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.body-sm-strong}"
    rounded: "{rounded.sm}"
    padding: "0px {spacing.xs}"
    height: 28px
  nav-cta-login:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-sm-strong}"
    rounded: "{rounded.sm}"
    padding: "0px {spacing.xs}"
    height: 28px
  nav-cta-ask-ai:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    borderColor: "{colors.hairline}"
    typography: "{typography.body-sm-strong}"
    rounded: "{rounded.sm}"
    padding: "0px {spacing.xs}"
    height: 28px
  button-primary:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button-lg}"
    rounded: "{rounded.pill}"
    padding: "0px {spacing.sm}"
  button-secondary:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.button-lg}"
    rounded: "{rounded.pill}"
    padding: "0px {spacing.sm}"
  button-primary-sm:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button-md}"
    rounded: "{rounded.pill}"
    padding: "0px {spacing.xs}"
  button-secondary-sm:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.button-md}"
    rounded: "{rounded.pill}"
    padding: "0px {spacing.xs}"
  tab-ghost:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-sm}"
    rounded: "{rounded.pill-sm}"
    padding: "0px {spacing.md}"
  icon-button-circular:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    borderColor: "{colors.hairline}"
    rounded: "{rounded.full}"
  card-marketing:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.md}"
    padding: "{spacing.lg}"
  card-marketing-large:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.lg}"
    padding: "{spacing.xl}"
  card-soft:
    backgroundColor: "{colors.canvas-soft}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.md}"
    padding: "{spacing.lg}"
  template-card:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.md}"
    padding: "{spacing.md}"
  code-editor-mockup:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.code}"
    rounded: "{rounded.md}"
    padding: "{spacing.lg}"
  form-input:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    borderColor: "{colors.hairline}"
    typography: "{typography.body-sm}"
    rounded: "{rounded.sm}"
    padding: "0px {spacing.sm}"
    height: 40px
  form-input-sm:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    borderColor: "{colors.hairline}"
    typography: "{typography.body-sm}"
    rounded: "{rounded.sm}"
    padding: "0px {spacing.sm}"
    height: 32px
  form-input-lg:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    borderColor: "{colors.hairline}"
    typography: "{typography.body-md}"
    rounded: "{rounded.sm}"
    padding: "0px {spacing.sm}"
    height: 48px
  badge-secondary:
    backgroundColor: "{colors.canvas-soft}"
    textColor: "{colors.body}"
    typography: "{typography.caption}"
    rounded: "{rounded.full}"
    padding: "0px {spacing.xs}"
  pricing-card:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.lg}"
    padding: "{spacing.xl}"
  pricing-card-featured:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.body-md}"
    rounded: "{rounded.lg}"
    padding: "{spacing.xl}"
  logo-strip:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.body}"
    typography: "{typography.body-sm}"
    padding: "{spacing.lg} {spacing.xl}"
  hero-band:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.display-xl}"
    padding: "{spacing.4xl} {spacing.lg}"
  feature-mesh-band:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.display-lg}"
    padding: "{spacing.5xl} {spacing.lg}"
  showcase-band-light:
    backgroundColor: "{colors.canvas-soft}"
    textColor: "{colors.ink}"
    typography: "{typography.display-lg}"
    padding: "{spacing.5xl} {spacing.lg}"
  showcase-band-dark:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.display-lg}"
    padding: "{spacing.5xl} {spacing.lg}"
  footer:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.body}"
    typography: "{typography.body-sm}"
    padding: "{spacing.4xl} {spacing.lg}"
  link-inline:
    textColor: "{colors.link}"
    typography: "{typography.body-md}"
  banner-marketing:
    backgroundColor: "{colors.canvas-soft}"
    textColor: "{colors.body}"
    typography: "{typography.body-sm}"
    rounded: "{rounded.full}"
    padding: "{spacing.xs} {spacing.sm}"

  # ─── Examples (illustrative) — auto-derived; resolve any TO_FILL markers below ───
  ex-pricing-tier:
    description: "Default tier card. Mirrors pricing-card chrome on canvas-soft surface with a hairline border."
    backgroundColor: "{colors.canvas-soft}"
    textColor: "{colors.ink}"
    borderColor: "{colors.hairline}"
    rounded: "{rounded.lg}"
    padding: "{spacing.xl}"
  ex-pricing-tier-featured:
    description: "Featured tier — polarity-flipped to ink primary with white text and white CTA."
    backgroundColor: "{colors.ink}"
    textColor: "{colors.on-primary}"
    rounded: "{rounded.lg}"
    padding: "{spacing.xl}"
  ex-product-selector:
    description: "What's Included summary card — repurposed for the brand's GPU / inference / Pro feature tiers."
    backgroundColor: "{colors.canvas-soft}"
    rounded: "{rounded.md}"
    padding: "{spacing.lg}"
  ex-cart-drawer:
    description: "Subscription summary — line items per add-on (NOT a literal e-commerce cart)."
    backgroundColor: "{colors.canvas}"
    rounded: "{rounded.md}"
    padding: "{spacing.lg}"
    item-divider: "{colors.hairline}"
  ex-app-shell-row:
    description: "Sidebar nav row. Active state uses brand primary as a left-edge indicator bar."
    backgroundColor: "{colors.canvas}"
    activeIndicator: "{colors.primary}"
    rounded: "{rounded.sm}"
    padding: "{spacing.xs} {spacing.sm}"
  ex-data-table-cell:
    description: "Mirrors the brand's table chrome. Header uses caption-mono uppercase mono; body uses body-sm."
    headerBackground: "{colors.canvas-soft}"
    headerTypography: "{typography.caption-mono}"
    bodyTypography: "{typography.body-sm}"
    cellPadding: "{spacing.xs} {spacing.sm}"
    rowBorder: "{colors.hairline}"
  ex-auth-form-card:
    description: "Sign-in / sign-up card. Mirrors card-marketing-large chrome with form-input primitives inside."
    backgroundColor: "{colors.canvas-soft}"
    rounded: "{rounded.lg}"
    padding: "{spacing.xl}"
  ex-modal-card:
    description: "Modal dialog surface — same chrome as card-marketing-large with Level 5 modal shadow."
    backgroundColor: "{colors.canvas}"
    rounded: "{rounded.lg}"
    padding: "{spacing.xl}"
  ex-empty-state-card:
    description: "Empty-state illustration frame. Generous padding on canvas-soft."
    backgroundColor: "{colors.canvas-soft}"
    rounded: "{rounded.lg}"
    padding: "{spacing.3xl}"
    captionTypography: "{typography.body-md}"
  ex-toast:
    description: "Toast notification surface — flat-cornered card-marketing chrome with Level 4 shadow."
    backgroundColor: "{colors.canvas}"
    rounded: "{rounded.md}"
    padding: "{spacing.sm} {spacing.md}"
    typography: "{typography.body-sm}"

---


## Overview

Vercel is a developer-platform brand — the page is a deployment dashboard's marketing surface, written for engineers who already know the syntax. It earns that posture with one of the cleanest stark systems on the web: near-white `{colors.canvas-soft}` body background, ink-near-black `{colors.ink}` text, a 200-step gray scale that gives every divider, border, and disabled state its own deliberate step. The only place the brand introduces colour at marketing scale is the multi-stop mesh gradient (`{colors.gradient-develop-start}` → `{colors.gradient-preview-end}` → `{colors.gradient-ship-start}` → cyan / magenta / amber) that floats in atmospheric backdrops, never miniaturised to a swatch. That gradient is the entire decoration system.

Type is the second decisive voice. The brand's own custom geometric sans (Geist) carries display, body, button — everything narrative — at weight 600 for display, 500 for buttons, 400 for body. A matching monospaced face (Geist Mono) carries technical labels: terminal mockups, code blocks, sometimes filename captions. Headlines are sentence-case with aggressive negative letter-spacing (`-2.4px` at 48 px hero) — the brand never letter-spaces positively, never goes uppercase outside of mono labels.

Surfaces use a four-step ladder: `{colors.canvas}` (pure white for cards), `{colors.canvas-soft}` 98% (the page body), `{colors.canvas-soft-2}` 95% (occasional inset region), `{colors.primary}` (the deep ink-near-black used as the polarity-flipped band when a section needs the dark mode treatment). Shadows are exceptionally subtle — every elevated card carries a stacked shadow built from `0px 1px 1px #00000005` + `0px 2px 2px #0000000a` + an inset border. Cards never float on heavy drop-shadow; they sit on the page held by hairline + soft glow.

**Key Characteristics:**
- A single black-ink primary CTA `{colors.primary}` carries every conversion target, paired with white-on-white `button-secondary` for the secondary action. The brand uses 100 px pill shape for marketing CTAs and a tight 6 px square shape for in-app nav buttons.
- A multi-stop mesh gradient (cyan-blue-magenta-amber) is the only decorative chrome — used at hero scale and inside feature-band atmospheric backdrops. It is the brand.
- Every section eyebrow and small label uses the monospace face `{typography.caption-mono}` or `{typography.code}`; everything else is in the geometric sans.
- Subtle stacked-shadow elevation — three offsets layered with 4-12 % black opacity — never a single heavy drop-shadow.
- A complete 100–1000 gray + blue + red + amber + green + teal + purple + pink colour scale exists as a system token set, but the marketing surface uses only the `100`, `1000`, and `700`-level tones; the rest stay in the design-system tokens for in-product surfaces.
- An "Active CPU" pricing rhythm: `pricing-card` lays out 3-up on the pricing page with `pricing-card-featured` (Pro tier) polarity-flipped to `{colors.primary}` against white-card siblings.

## Colors

### Brand & Accent
- **Ink** (`{colors.primary}` — `#171717`): The single primary CTA color. Black-near-pure ink that carries every Sign Up pill, every footer CTA, the dark-band polarity-flip. Used as text color throughout the page on light surfaces. (Resolved from `--ds-gray-1000`.)
- **Cyan** (`{colors.cyan}` — `#50e3c2`): A signature mint-cyan used in the brand gradient and inside Geist-system spotlight tokens. Visible inside the hero gradient stops.
- **Highlight Pink** (`{colors.highlight-pink}` — `#ff0080`): The brand's highlight magenta, used as the high-saturation stop in the preview-gradient pair.
- **Violet** (`{colors.violet}` — `#7928ca`): The deep purple used as the start of the preview-gradient and inside developer-console highlights.
- **Link Blue** (`{colors.link}` — `#0070f3`): The brand's primary link color and the legacy `--geist-success` semantic.

### Surface
- **Canvas** (`{colors.canvas}` — `#ffffff`): The pure-white card / dialog / modal surface.
- **Canvas Soft** (`{colors.canvas-soft}` — `#fafafa`): The default page background — 98 % white. Almost every section sits on this tone.
- **Canvas Soft 2** (`{colors.canvas-soft-2}` — `#f5f5f5`): A slightly deeper inset surface for "code editor inner background", template-card hover states, and dropdown menus.
- **Hairline** (`{colors.hairline}` — `#ebebeb`): 1 px dividers — table rows, card borders, input borders.
- **Hairline Strong** (`{colors.hairline-strong}` — `#a1a1a1`): The 500-level gray, used as the slightly-stronger divider on light bands and as the deemphasised text color.

### Text
- **Ink** (`{colors.ink}` — `#171717`): Every heading and body paragraph on light surfaces.
- **Body** (`{colors.body}` — `#4d4d4d`): Secondary text — sub-headings, body captions, nav-link inactive text, footer column body.
- **Mute** (`{colors.mute}` — `#888888`): Lowest-priority text — placeholder text, fine print, low-key labels.
- **On Primary** (`{colors.on-primary}` — `#ffffff`): All text on `{colors.primary}` surfaces.

### Semantic
- **Success / Link** (`{colors.success}` — `#0070f3`): The brand's legacy success indicator doubles as the primary link color. Visible underline-on-hover for inline body links.
- **Link Deep** (`{colors.link-deep}` — `#0761d1`): The pressed / visited tone for inline links.
- **Link Bg Soft** (`{colors.link-bg-soft}` — `#d3e5ff`): Soft pastel blue fill for "what's new" pill banners and informational badges.
- **Error** (`{colors.error}` — `#ee0000`): Validation red for destructive actions and form errors.
- **Error Soft** (`{colors.error-soft}` — `#f7d4d6`): Soft pastel red for destructive-state backgrounds.
- **Error Deep** (`{colors.error-deep}` — `#c50000`): Pressed / deep destructive state.
- **Warning** (`{colors.warning}` — `#f5a623`): Caution / pending status indicator.
- **Warning Soft** (`{colors.warning-soft}` — `#ffefcf`) / **Warning Deep** (`{colors.warning-deep}` — `#ab570a`): Background + pressed variants.

### Brand Gradient
The brand's signature decoration is a three-pair gradient stack:
- **Develop** (`{colors.gradient-develop-start}` `#007cf0` → `{colors.gradient-develop-end}` `#00dfd8`) — the blue-to-teal pair used to mark the "deploy" / "develop" rhythm.
- **Preview** (`{colors.gradient-preview-start}` `#7928ca` → `{colors.gradient-preview-end}` `#ff0080`) — the violet-to-pink pair used for "preview" surfaces.
- **Ship** (`{colors.gradient-ship-start}` `#ff4d4d` → `{colors.gradient-ship-end}` `#f9cb28`) — the coral-to-amber pair used for "ship" surfaces.

The three pairs collapse into a single multi-color mesh gradient when used as the hero atmospheric backdrop. Treat the gradient as one unified object — do not crop down to a single colour, do not reorder the stops, and do not miniaturise. Used at hero scale only.

## Typography

### Font Family
Two custom faces carry the entire system:

1. **A custom geometric sans** (extracted as `Geist`) for every display, body, button, link, and label. Weights 400 / 500 / 600 are the working set; the face never appears in 700 or heavier. Display sizes are tracked aggressively negative (`-2.4 px` at 48 px hero, `-1.28 px` at 32 px section); body stays at neutral or slightly-negative tracking.
2. **A custom monospaced face** (extracted as `Geist Mono`) for terminal mockups, code blocks, and small mono-caption labels — anything that wants to signal "technical." Weight 400 only at 12 – 13 px. Tracking neutral.

A condensed display sans (`Space Grotesk`) is loaded as a third face for occasional editorial moments but does not render as the primary face anywhere in the captured surfaces.

### Hierarchy

| Token | Size | Weight | Line Height | Letter Spacing | Use |
|---|---|---|---|---|---|
| `{typography.display-xl}` | 48px | 600 | 48px | -2.4px | Hero headline ("Build and deploy on the AI Cloud."). |
| `{typography.display-lg}` | 32px | 600 | 40px | -1.28px | Section headlines ("Your frontend, delivered.", "A compute model for all workloads."). |
| `{typography.display-md}` | 24px | 600 | 32px | -0.96px | Card-cluster headlines, pricing-tier names. |
| `{typography.display-sm}` | 20px | 600 | 28px | -0.6px | Inline display micro-headings. |
| `{typography.body-lg}` | 18px | 400 | 28px | 0 | Lead paragraphs under section headlines. |
| `{typography.body-md}` | 16px | 400 | 24px | 0 | Default body paragraph. |
| `{typography.body-md-strong}` | 16px | 500 | 24px | 0 | Bolded inline body. |
| `{typography.body-sm}` | 14px | 400 | 20px | -0.28px | Secondary body, nav-link text, button-md labels. |
| `{typography.body-sm-strong}` | 14px | 500 | 20px | -0.28px | Nav CTA labels, table-row emphasis. |
| `{typography.caption}` | 12px | 400 | 16px | 0 | Footer secondary lines, badge labels. |
| `{typography.caption-mono}` | 12px | 400 | 16px | 0 | Section eyebrows and label captions that want a technical voice. |
| `{typography.code}` | 13px | 400 | 20px | 0 | Inline code, terminal mockups, command snippets. |
| `{typography.button-md}` | 14px | 500 | 20px | 0 | Small / nav-scale button labels. |
| `{typography.button-lg}` | 16px | 500 | 24px | 0 | Marketing-scale pill button labels. |

### Principles
- **Negative tracking is part of the voice.** Display sizes use aggressive `-2.4` to `-0.6` px tracking. Reverting to default tracking breaks the brand.
- **Sentence-case headlines, period-terminated.** Headlines like "Build and deploy on the AI Cloud." end with a deliberate period — that punctuation is part of the brand's voice.
- **Mono for the technical layer only.** Section eyebrows, code blocks, terminal mockups. Body paragraphs never set in mono.
- **Weight 600 is the display ceiling.** The geometric sans never appears at 700 / 800. The brand reads as a calmer system because of this.

### Note on Font Substitutes
The two primary faces are proprietary (custom-cut for the brand). Open-source substitutes:
- **Geometric sans** — *Inter* (400 / 500 / 600) is the closest stylistic match; `font-feature-settings: "ss01", "ss02"` enables the geometric alternates. *Satoshi* is a passable second choice.
- **Monospace** — *JetBrains Mono* (400) at 12 – 13 px matches the technical voice. *IBM Plex Mono* is the second-best option.

## Layout

### Spacing System
- **Base unit**: 4 px. The brand's `--geist-space` token is exactly 4 px and every captured value is a multiple of 4.
- **Tokens**: `{spacing.xxs}` 4 px · `{spacing.xs}` 8 px · `{spacing.sm}` 12 px · `{spacing.md}` 16 px · `{spacing.lg}` 24 px · `{spacing.xl}` 32 px · `{spacing.2xl}` 40 px · `{spacing.3xl}` 48 px · `{spacing.4xl}` 64 px · `{spacing.5xl}` 96 px · `{spacing.6xl}` 128 px · `{spacing.section}` 192 px.
- **Section padding**: marketing bands use `{spacing.4xl}` to `{spacing.5xl}` top/bottom. Hero bands stretch to `{spacing.section}` to give the mesh gradient room to breathe.
- **Card interior padding**: marketing cards sit at `{spacing.lg}` to `{spacing.xl}`; template-grid cards stay tighter at `{spacing.md}` because they sit in a denser grid.
- **Inline gap**: button rows, nav rows, and chip rows use `{spacing.sm}` to `{spacing.md}` between siblings. The brand's `--geist-gap` is exactly 24 px.

### Grid & Container
- **Max width**: ~1400 px (`--ds-page-width`); the legacy `--geist-page-width` is 1200 px and still appears on some marketing surfaces. Content centres with horizontal gutters of `{spacing.lg}` 24 px on desktop, `{spacing.md}` 16 px on mobile.
- **Column patterns**:
  - Three-feature row: 3-up at desktop, 1-up at mobile (rows like "Web Apps / Composable Commerce / Multi-tenant Platforms").
  - Tab pill row: 5-up centred row of `tab-ghost` pills.
  - Template-grid cluster: 5-up at desktop, scaling to 1-up at mobile.
  - Pricing tier grid: 3-up at desktop with the middle tier polarity-flipped.
  - Logo strip: ~5 logos wide, single row.

### Whitespace Philosophy
The mesh gradient does most of the heavy decorative lifting; whitespace separates the bands. Section spacing is generous — `{spacing.4xl}` to `{spacing.5xl}` between bands lets the gradient breathe. Inside a card, the headline/paragraph stack is tight (`{spacing.xs}` 8 px gap), then a wider gap before the CTA cluster. The page reads as engineered — large gaps + tight interior, never the other way around.

### Responsive Strategy

#### Breakpoints

| Name | Width | Key Changes |
|---|---|---|
| Mobile | < 600px | Hero stacks; nav collapses to hamburger; 3-up feature grids drop to 1-up; tab pill row enables horizontal scroll. |
| Tablet | 600–959px | 3-up grids drop to 2-up; nav still horizontal. |
| Desktop | 960–1199px | Full 3-up grids; pricing 3-up. |
| Wide | 1200–1399px | Container caps at 1400 px content width. |
| Ultra-wide | ≥ 1400px | Content stays centred at 1400 px; bands stretch edge-to-edge in colour but content holds the max-width. |

#### Touch Targets
The `button-primary` pill renders at ~32 px tall in nav and ~48 px tall in marketing contexts. Marketing CTAs comfortably meet WCAG AAA at all breakpoints; nav buttons inflate touch area through `{spacing.xs}` padding on mobile to meet the 44 × 44 px floor.

#### Collapsing Strategy
- **Nav**: full link row + Ask AI / Log In / Sign Up pills at desktop. Collapses to logo + hamburger at mobile with the menu opening as a full-overlay.
- **Hero**: mesh gradient stays centred; headline + body stack vertically at all breakpoints (the brand doesn't use a split-hero pattern).
- **Three-feature row**: 3-up → 2-up → 1-up at the breakpoints above; cards keep their `{rounded.md}` 8 px shape across all viewports.
- **Pricing card grid**: 3-up at desktop, vertical stack at mobile with `pricing-card-featured` always sitting in the middle.
- **Template grid**: 5-up → 3-up → 2-up → 1-up. Each `template-card` keeps its 16:9 aspect on the image.

#### Image Behavior
- **Mesh gradient**: rendered as inline SVG or canvas-painted gradient; scales fluidly with the hero container; never crops, never tiles.
- **Customer logos**: rendered as monochrome SVGs in the logo strip; consistent 24 px height.
- **Code editor mockup**: dark `{colors.primary}` rectangle with mono text rendered inside; treated as an image at the layout level.
- **Template thumbnails**: 16:9 landscape inside `{rounded.md}` card chrome; lazy-loaded; consistent grayscale palette in the placeholder state.

## Elevation & Depth

| Level | Treatment | Use |
|---|---|---|
| Level 0 — Flat | No shadow, no border. | Full-bleed hero bands and the polarity-flipped dark sections. |
| Level 1 — Inset Hairline | `0 0 0 1px #00000014` inset 1 px border. | Default card chrome — the brand's universal "you can see this card" cue. |
| Level 2 — Subtle Drop | `0px 1px 1px #00000005, 0px 2px 2px #0000000a` plus inset hairline. | Slightly elevated cards (template-grid, marketing-card). |
| Level 3 — Soft Stack | `0px 2px 2px #0000000a, 0px 8px 8px -8px #0000000a` plus inset hairline. | The "medium" elevation — feature-grid cards. |
| Level 4 — Float Stack | `0px 2px 2px #0000000a, 0px 8px 16px -4px #0000000a` plus inset hairline. | "Large" elevation — pricing cards, callout panels. |
| Level 5 — Modal | `0px 1px 1px #00000005, 0px 8px 16px -4px #0000000a, 0px 24px 32px -8px #0000000f` plus inset hairline. | Modal / dialog surfaces and dropdown menus. |

The brand uses STACKED shadows — multiple small offsets layered to fake natural light — never a single 8-px-blur generic drop. Inset hairline rings are always added so the card edge stays crisp.

### Decorative Depth
- **Mesh gradient as atmospheric depth**: the hero's multi-stop gradient is the brand's only "atmospheric" effect — applied as a flat 2-D backdrop rather than a 3-D illustration.
- **Polarity-flipped dark band as section-depth**: switching the surface from `{colors.canvas-soft}` to `{colors.primary}` (the deep ink) is the brand's chief depth cue between bands.
- **Inset-shadow + drop-shadow combo**: the cards' combination of an inset 1 px ring and a multi-stop drop produces a "card sits on the page" effect without ever feeling material-heavy.

## Shapes

### Border Radius Scale

| Token | Value | Use |
|---|---|---|
| `{rounded.none}` | 0px | Full-bleed hero / footer bands. |
| `{rounded.xs}` | 4px | Tightest inline pill — the `nav-cta-signup` 6-px-radius button (mapped to `xs/sm`). |
| `{rounded.sm}` | 6px | The brand's `--geist-radius` token — base UI radius for in-app buttons, form inputs, dropdown menus. |
| `{rounded.md}` | 8px | The brand's `--geist-marketing-radius` token — feature cards, template cards. |
| `{rounded.lg}` | 12px | Slightly larger card chrome (pricing-card variants). |
| `{rounded.xl}` | 16px | Largest card chrome — when a card hosts a hero image cap. |
| `{rounded.pill-sm}` | 64px | Tab-ghost pills inside the "AI Apps / Web Apps / Ecommerce / Marketing / Platforms" row. |
| `{rounded.pill}` | 100px | The marketing CTA pill — `button-primary`, `button-secondary`, "Start Deploying" pill. |
| `{rounded.full}` | 9999px | Icon-button circular containers, nav-link ghost pills. |

### Photography Geometry
- **Mesh gradient**: full-bleed 2-D atmospheric backdrop, never cropped to a frame; treated as the page's wallpaper.
- **Customer logos**: monochrome SVG, consistent 24 px height in a flex row.
- **Code editor mockup**: 16:10 dark rectangle, `{rounded.md}` corners.
- **Template thumbnails**: 16:9 landscape inside `{rounded.md}` chrome.
- **Showcase imagery**: 2:1 or 16:9 inside `{rounded.lg}` to `{rounded.xl}` chrome with a stacked shadow.

## Components

### Buttons

**`button-primary`** — the canonical 100-px-radius black pill, marketing scale.
- Background `{colors.primary}`, text `{colors.on-primary}`, label set in `{typography.button-lg}`, padding `0px {spacing.sm}` 12 px, shape `{rounded.pill}` 100 px. Renders ~48 px tall when paired with the marketing flex layout.

**`button-secondary`** — the white pill paired with the black primary inside marketing bands.
- Background `{colors.canvas}`, text `{colors.ink}`, same typography + padding as `button-primary`, shape `{rounded.pill}`.

**`button-primary-sm`** — the smaller-scale primary pill used inside nav and pricing-card CTAs.
- Background `{colors.primary}`, text `{colors.on-primary}`, label set in `{typography.button-md}` (14 px / 500), shape `{rounded.pill}`.

**`button-secondary-sm`** — the smaller-scale white pill paired with `button-primary-sm`.
- Background `{colors.canvas}`, text `{colors.ink}`, same typography + shape as `button-primary-sm`.

**`tab-ghost`** — the centred-row tab pill ("AI Apps / Web Apps / Ecommerce / Marketing / Platforms").
- Background `{colors.canvas}`, text `{colors.ink}`, label set in `{typography.body-sm}`, padding `0px {spacing.md}`, shape `{rounded.pill-sm}` 64 px.

**`icon-button-circular`** — the circular icon container (often a "?" or arrow inside).
- Background `{colors.canvas}`, dark icon, 1 px solid hairline border, shape `{rounded.full}`.

**Nav CTAs:**

**`nav-cta-signup`** — the small black "Sign Up" button in the nav row.
- Background `{colors.primary}`, text `{colors.on-primary}`, label `{typography.body-sm-strong}`, padding `0px {spacing.xs}`, height 28 px, shape `{rounded.sm}` 6 px (the brand's `--geist-radius`).

**`nav-cta-login`** — the white "Log In" button in the nav.
- Background `{colors.canvas}`, text `{colors.ink}`, same typography / height / shape as `nav-cta-signup`.

**`nav-cta-ask-ai`** — the small "Ask AI" button with a faint border.
- Background `{colors.canvas}`, text `{colors.ink}`, 1 px solid `{colors.hairline}` border (extracted as `0px solid rgb(235, 235, 235)`), same typography / height / shape.

### Cards & Containers

**`card-marketing`** — the canonical marketing feature card (3-up section cards).
- Background `{colors.canvas}`, text `{colors.ink}`, padding `{spacing.lg}` 24 px, shape `{rounded.md}` 8 px (the `--geist-marketing-radius`). Carries Level 3 soft-stack shadow.

**`card-marketing-large`** — the larger marketing card used for "compute model" / "AI Gateway" callouts.
- Background `{colors.canvas}`, text `{colors.ink}`, padding `{spacing.xl}`, shape `{rounded.lg}` 12 px. Carries Level 4 float-stack shadow.

**`card-soft`** — the soft-tinted card used inside cluster groups (lighter than canvas-soft).
- Background `{colors.canvas-soft}`, text `{colors.ink}`, padding `{spacing.lg}`, shape `{rounded.md}`.

**`template-card`** — the deploy-template card in the "Deploy your first app" grid.
- Background `{colors.canvas}`, text `{colors.ink}`, padding `{spacing.md}` 16 px, shape `{rounded.md}` 8 px. Hosts a 16:9 thumbnail at the top.

**`code-editor-mockup`** — the dark code-preview surface inside marketing bands.
- Background `{colors.primary}`, text `{colors.on-primary}`, body in `{typography.code}` (13 px / Geist Mono), padding `{spacing.lg}` 24 px, shape `{rounded.md}` 8 px.

**`pricing-card`** — the default pricing-tier card.
- Background `{colors.canvas}`, text `{colors.ink}`, padding `{spacing.xl}` 32 px, shape `{rounded.lg}` 12 px. Inside: tier name in `{typography.display-md}`, price in `{typography.display-xl}`, feature list in `{typography.body-md}` rows, CTA at the bottom.

**`pricing-card-featured`** — the polarity-flipped "Pro" tier card.
- Background `{colors.primary}`, text `{colors.on-primary}`, same shape + padding as `pricing-card`. CTA inverts to `button-secondary-sm` (white pill on black card).

### Inputs & Forms

**`form-input`** — the canonical text input.
- Background `{colors.canvas}`, text `{colors.ink}`, 1 px solid `{colors.hairline}` border, body in `{typography.body-sm}` (14 px), padding `0px {spacing.sm}`, height 40 px (the brand's `--geist-form-height`), shape `{rounded.sm}` 6 px.

**`form-input-sm`** — small-height variant (32 px tall) for tight forms.
- Same as `form-input` but height 32 px (the `--geist-form-small-height`).

**`form-input-lg`** — large-height variant (48 px tall) for hero CTAs.
- Same as `form-input` but height 48 px (the `--geist-form-large-height`); body in `{typography.body-md}` 16 px.

### Navigation

**`nav-bar`** — the sticky top nav.
- Background `{colors.canvas}`, text `{colors.ink}`, height 64 px (the brand's `--header-height`), padding `{spacing.sm} {spacing.lg}`. Layout: logo left, link row centre, "Ask AI / Log In / Sign Up" cluster right.

**`nav-link`** — the centred link row inside `nav-bar`.
- Text `{colors.body}`, set in `{typography.body-sm}`, padding `{spacing.xs} {spacing.sm}`, shape `{rounded.full}` (ghost pill — visible only on hover or active, but the radius is documented).

**`footer`** — the bottom 4-column nav.
- Background `{colors.canvas}`, text `{colors.body}`, padding `{spacing.4xl} {spacing.lg}`. Eyebrow column labels in `{typography.caption-mono}` (uppercase mono effect); link rows in `{typography.body-sm}`.

### Signature Components

**`hero-band`** — the white hero with the mesh gradient backdrop.
- Background `{colors.canvas}` (or `{colors.canvas-soft}` on some surfaces), text `{colors.ink}`, padding `{spacing.4xl} {spacing.lg}`. Inside: a small mono badge above the headline, the headline in `{typography.display-xl}` (sentence-case, period-terminated), a body lead in `{typography.body-lg}`, then a CTA row with `button-primary` + `button-secondary`. The mesh gradient sits behind, scaled to occupy roughly the top half of the band.

**`feature-mesh-band`** — the secondary section that hosts a mesh-gradient atmospheric backdrop with feature copy on top.
- Background `{colors.canvas}`, text `{colors.ink}`, padding `{spacing.5xl} {spacing.lg}`. Section headline in `{typography.display-lg}`; supporting body in `{typography.body-md}`.

**`showcase-band-light`** — a soft-canvas section ("Deploy your first app in seconds").
- Background `{colors.canvas-soft}`, text `{colors.ink}`, padding `{spacing.5xl} {spacing.lg}`.

**`showcase-band-dark`** — the polarity-flipped dark band ("A compute model for all workloads").
- Background `{colors.primary}`, text `{colors.on-primary}`, padding `{spacing.5xl} {spacing.lg}`. Section headline in `{typography.display-lg}` (white on black). Often contains a `code-editor-mockup` flush with the band.

**`logo-strip`** — the customer-logo wrapping row near the top of the page.
- Background `{colors.canvas}`, text `{colors.body}`, padding `{spacing.lg} {spacing.xl}`. Logos rendered as monochrome SVGs at consistent height.

**`badge-secondary`** — the small inline metadata pill ("New", "Beta", "Live").
- Background `{colors.canvas-soft}`, text `{colors.body}`, body in `{typography.caption}`, padding `0px {spacing.xs}`, shape `{rounded.full}`.

**`banner-marketing`** — the "Introducing X" announcement pill at the top of pages.
- Background `{colors.canvas-soft}`, text `{colors.body}`, body in `{typography.body-sm}`, padding `{spacing.xs} {spacing.sm}`, shape `{rounded.full}`.

**`link-inline`** — body-copy inline links.
- Text `{colors.link}` (`#0070f3`), body in `{typography.body-md}`, underlined.

### Examples (illustrative)

> Auto-derived kit-mirror demonstration surfaces (`scripts/derive-examples-block.mjs`). Each `ex-*` entry references brand-native primitives so downstream consumers (`/preview-design`, `/generate-kit`) re-skin the same 10 surfaces consistently. `TO_FILL` markers indicate missing primitives — resolve in the LLM judgment pass.

**`ex-pricing-tier`** — Default Pricing tier card. Re-uses feature-card chrome with brand canvas-soft surface.
- Properties: `backgroundColor`, `textColor`, `borderColor`, `rounded`, `padding`

**`ex-pricing-tier-featured`** — Featured/highlighted tier — polarity-flipped surface (dark fill + light text in light mode, light fill + dark text in dark mode).
- Properties: `backgroundColor`, `textColor`, `rounded`, `padding`

**`ex-product-selector`** — What's Included summary card — re-purposed for SaaS / B2B verticals (NOT a literal product gallery).
- Properties: `backgroundColor`, `rounded`, `padding`

**`ex-cart-drawer`** — Subscription summary — re-purposed for SaaS / B2B (line items per add-on, not literal cart).
- Properties: `backgroundColor`, `rounded`, `padding`, `item-divider`

**`ex-app-shell-row`** — Sidebar nav row inside the App Shell example. Active state uses brand primary as the indicator.
- Properties: `backgroundColor`, `activeIndicator`, `rounded`, `padding`

**`ex-data-table-cell`** — Default data-table th + td chrome. Header uses mono-caps eyebrow typography; body uses body-sm.
- Properties: `headerBackground`, `headerTypography`, `bodyTypography`, `cellPadding`, `rowBorder`

**`ex-auth-form-card`** — Sign-in / sign-up card. Re-uses feature-card chrome with text-input primitives inside.
- Properties: `backgroundColor`, `rounded`, `padding`

**`ex-modal-card`** — Modal dialog surface — same chrome as feature-card with elevated shadow.
- Properties: `backgroundColor`, `rounded`, `padding`

**`ex-empty-state-card`** — Empty-state illustration frame.
- Properties: `backgroundColor`, `rounded`, `padding`, `captionTypography`

**`ex-toast`** — Toast notification surface — feature-card shape + medium shadow.
- Properties: `backgroundColor`, `rounded`, `padding`, `typography`


## Do's and Don'ts

### Do
- Reserve `{colors.primary}` (`#171717`) for primary CTAs across the page. Black ink IS the conversion target.
- Use `{rounded.pill}` 100 px for every marketing-scale CTA and `{rounded.sm}` 6 px for nav-scale buttons. The two pill scales coexist deliberately.
- Set every headline in `{typography.display-*}` weight 600, sentence-case, often period-terminated. Aggressive negative tracking is part of the voice.
- Use the brand mesh gradient as atmospheric decoration at hero scale only — never miniaturise it to an icon, never reduce to a single colour.
- Layer stacked shadows (multiple small offsets with inset hairline) rather than single heavy drops. The brand's elevation is calmer than Material.
- Cycle page surfaces in `{colors.canvas-soft}` → `{colors.canvas}` → `{colors.primary}` polarity-flipped bands; the dark band IS the depth cue.
- Set every code block and technical eyebrow in `{typography.code}` / `{typography.caption-mono}`. Mono is the voice of the platform.

### Don't
- Don't introduce a sixth accent colour. The brand operates with ink + gray + the four-pair gradient palette; new accents flatten the voice.
- Don't render headlines in all-caps. Sentence-case + negative tracking is non-negotiable.
- Don't drop a single heavy drop-shadow on cards. The brand's elevation is built from stacked small offsets + inset hairline rings.
- Don't render the brand gradient at icon scale or in a single-colour reduced form. The gradient lives at hero scale only.
- Don't promote the geometric sans to weight 700. The brand's display ceiling is 600.
- Don't pair the marketing 100-px pill CTA shape with the 6-px nav radius on the same screen — pick a scale and stay there.
- Don't set body paragraphs in the mono face. The mono is for code + technical labels only.


---

## Brand: `webflow`

---
version: alpha
name: Webflow-Inspired-design-analysis
description: An inspired interpretation of Webflow's design language — a visual web development platform whose surface contrasts a deep near-black `#080808` primary against a generous white canvas, broken by a five-stop chromatic accent system (purple / pink / blue / orange / green) that maps to the brand's product categories, and anchored by the proprietary WF Visual Sans family used at restrained 500 / 600 weights with negative tracking.

colors:
  primary: "#080808"
  on-primary: "#ffffff"
  ink: "#080808"
  ink-strong: "#222222"
  body: "#363636"
  body-mid: "#5a5a5a"
  mute: "#898989"
  mute-soft: "#ababab"
  hairline: "#d8d8d8"
  canvas: "#ffffff"
  accent-purple: "#7a3dff"
  accent-pink: "#ed52cb"
  accent-blue: "#3b89ff"
  accent-blue-deep: "#006acc"
  accent-blue-info: "#146ef5"
  accent-orange: "#ff6b00"
  accent-green: "#00d722"
  accent-yellow: "#ffae13"
  accent-red: "#ee1d36"

typography:
  display-xxl:
    fontFamily: WF Visual Sans Variable, Inter, system-ui, -apple-system, sans-serif
    fontSize: 80px
    fontWeight: 600
    lineHeight: 83.2px
    letterSpacing: -0.8px
  display-xl:
    fontFamily: WF Visual Sans Variable, Inter, system-ui, sans-serif
    fontSize: 56px
    fontWeight: 600
    lineHeight: 58.24px
  display-lg:
    fontFamily: WF Visual Sans Variable, Inter, system-ui, sans-serif
    fontSize: 44.8px
    fontWeight: 600
    lineHeight: 46.6px
  display-md:
    fontFamily: WF Visual Sans Variable, Inter, system-ui, sans-serif
    fontSize: 32px
    fontWeight: 500
    lineHeight: 41.6px
  display-sm:
    fontFamily: WF Visual Sans Variable, Inter, system-ui, sans-serif
    fontSize: 24px
    fontWeight: 500
    lineHeight: 31.2px
  display-xs:
    fontFamily: WF Visual Sans Variable, Inter, system-ui, sans-serif
    fontSize: 20px
    fontWeight: 500
    lineHeight: 28px
  eyebrow-uppercase:
    fontFamily: WF Visual Sans Variable, Inter, system-ui, sans-serif
    fontSize: 15px
    fontWeight: 500
    lineHeight: 19.5px
    letterSpacing: 1.5px
  eyebrow-uppercase-sm:
    fontFamily: WF Visual Sans Variable, Inter, system-ui, sans-serif
    fontSize: 12px
    fontWeight: 500
    lineHeight: 12px
    letterSpacing: 0.6px
  body-lg:
    fontFamily: WF Visual Sans Variable, Inter, system-ui, sans-serif
    fontSize: 28.8px
    fontWeight: 400
    lineHeight: 46.08px
    letterSpacing: -0.288px
  body-md:
    fontFamily: WF Visual Sans Variable, Inter, system-ui, sans-serif
    fontSize: 16px
    fontWeight: 400
    lineHeight: 25.6px
    letterSpacing: -0.16px
  body-md-strong:
    fontFamily: WF Visual Sans Variable, Inter, system-ui, sans-serif
    fontSize: 16px
    fontWeight: 500
    lineHeight: 25.6px
    letterSpacing: -0.16px
  body-sm:
    fontFamily: WF Visual Sans Variable, Inter, system-ui, sans-serif
    fontSize: 14px
    fontWeight: 400
    lineHeight: 22.4px
  body-sm-strong:
    fontFamily: WF Visual Sans Variable, Inter, system-ui, sans-serif
    fontSize: 14px
    fontWeight: 500
    lineHeight: 22.4px
  caption:
    fontFamily: WF Visual Sans Variable, Inter, system-ui, sans-serif
    fontSize: 12.8px
    fontWeight: 550
    lineHeight: 15.36px
  caption-mono:
    fontFamily: WFVisualSans-Mono, Inconsolata, ui-monospace, SFMono-Regular, Menlo, monospace
    fontSize: 12px
    fontWeight: 400
    lineHeight: 18px
  button-md:
    fontFamily: WF Visual Sans Variable, Inter, system-ui, sans-serif
    fontSize: 16px
    fontWeight: 500
    lineHeight: 25.6px
    letterSpacing: -0.16px

rounded:
  none: 0px
  xs: 2px
  sm: 4px
  md: 8px
  full: 9999px

spacing:
  xxs: 2px
  xs: 4px
  sm: 8px
  md: 12px
  lg: 16px
  xl: 20px
  2xl: 24px
  3xl: 32px

components:
  nav-bar:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-sm-strong}"
    padding: "{spacing.lg} {spacing.3xl}"
  nav-link:
    textColor: "{colors.ink}"
    typography: "{typography.body-sm-strong}"
  button-primary:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button-md}"
    rounded: "{rounded.sm}"
    padding: "{spacing.md} {spacing.xl}"
  button-secondary:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    borderColor: "{colors.hairline}"
    typography: "{typography.button-md}"
    rounded: "{rounded.sm}"
    padding: "{spacing.md} {spacing.xl}"
  button-text-arrow:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.button-md}"
    padding: "{spacing.xl} 0"
  button-icon-circular:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    rounded: "{rounded.full}"
    padding: "{spacing.sm}"
  text-input:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    borderColor: "{colors.hairline}"
    typography: "{typography.body-md}"
    rounded: "{rounded.sm}"
    padding: "{spacing.md} {spacing.lg}"
  badge-info:
    backgroundColor: "{colors.accent-blue-info}"
    textColor: "{colors.on-primary}"
    typography: "{typography.caption}"
    rounded: "{rounded.sm}"
    padding: "{spacing.xs} {spacing.sm}"
  badge-info-soft:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.accent-blue-info}"
    typography: "{typography.caption}"
    rounded: "{rounded.sm}"
    padding: "{spacing.xs} {spacing.sm}"
  card-feature:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    borderColor: "{colors.hairline}"
    typography: "{typography.body-md}"
    rounded: "{rounded.md}"
    padding: "{spacing.3xl}"
  card-feature-dark:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.body-md}"
    rounded: "{rounded.md}"
    padding: "{spacing.3xl}"
  card-pricing:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    borderColor: "{colors.hairline}"
    typography: "{typography.body-md}"
    rounded: "{rounded.md}"
    padding: "{spacing.3xl}"
  hero-band:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.display-xxl}"
    padding: "{spacing.3xl} {spacing.3xl}"
  hero-band-dark:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.display-xxl}"
    padding: "{spacing.3xl} {spacing.3xl}"
  content-band:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.display-lg}"
    padding: "{spacing.3xl} {spacing.3xl}"
  category-card-purple:
    backgroundColor: "{colors.accent-purple}"
    textColor: "{colors.on-primary}"
    typography: "{typography.display-md}"
    rounded: "{rounded.md}"
    padding: "{spacing.3xl}"
  category-card-blue:
    backgroundColor: "{colors.accent-blue}"
    textColor: "{colors.on-primary}"
    typography: "{typography.display-md}"
    rounded: "{rounded.md}"
    padding: "{spacing.3xl}"
  category-card-orange:
    backgroundColor: "{colors.accent-orange}"
    textColor: "{colors.on-primary}"
    typography: "{typography.display-md}"
    rounded: "{rounded.md}"
    padding: "{spacing.3xl}"
  category-card-green:
    backgroundColor: "{colors.accent-green}"
    textColor: "{colors.primary}"
    typography: "{typography.display-md}"
    rounded: "{rounded.md}"
    padding: "{spacing.3xl}"
  category-card-pink:
    backgroundColor: "{colors.accent-pink}"
    textColor: "{colors.on-primary}"
    typography: "{typography.display-md}"
    rounded: "{rounded.md}"
    padding: "{spacing.3xl}"
  footer:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.body-mid}"
    typography: "{typography.body-sm}"
    padding: "{spacing.3xl} {spacing.3xl}"

  # ─── Examples (illustrative) — auto-derived; resolve any TO_FILL markers below ───
  ex-pricing-tier:
    description: "Default Pricing tier card. Re-uses feature-card chrome with brand canvas-soft surface."
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    borderColor: "{colors.hairline}"
    rounded: "{rounded.md}"
    padding: "{spacing.3xl}"
  ex-pricing-tier-featured:
    description: "Featured/highlighted tier — polarity-flipped surface (dark fill + light text in light mode, light fill + dark text in dark mode)."
    backgroundColor: "{colors.ink}"
    textColor: "{colors.on-primary}"
    rounded: "{rounded.md}"
    padding: "{spacing.3xl}"
  ex-product-selector:
    description: "What's Included summary card — re-purposed for SaaS / B2B verticals (NOT a literal product gallery)."
    backgroundColor: "{colors.canvas}"
    rounded: "{rounded.md}"
    padding: "{spacing.3xl}"
  ex-cart-drawer:
    description: "Subscription summary — re-purposed for SaaS / B2B (line items per add-on, not literal cart)."
    backgroundColor: "{colors.canvas}"
    rounded: "{rounded.md}"
    padding: "{spacing.2xl}"
    item-divider: "{colors.hairline}"
  ex-app-shell-row:
    description: "Sidebar nav row inside the App Shell example. Active state uses brand primary as the indicator."
    backgroundColor: "{colors.canvas}"
    activeIndicator: "{colors.primary}"
    rounded: "{rounded.sm}"
    padding: "{spacing.md} {spacing.lg}"
  ex-data-table-cell:
    description: "Default data-table th + td chrome. Header uses mono-caps eyebrow typography; body uses body-sm."
    headerBackground: "{colors.canvas}"
    headerTypography: "{typography.caption}"
    bodyTypography: "{typography.body-sm}"
    cellPadding: "{spacing.md} {spacing.lg}"
    rowBorder: "{colors.hairline}"
  ex-auth-form-card:
    description: "Sign-in / sign-up card. Re-uses feature-card chrome with text-input primitives inside."
    backgroundColor: "{colors.canvas}"
    rounded: "{rounded.md}"
    padding: "{spacing.3xl}"
  ex-modal-card:
    description: "Modal dialog surface — same chrome as feature-card with elevated shadow."
    backgroundColor: "{colors.canvas}"
    rounded: "{rounded.md}"
    padding: "{spacing.3xl}"
  ex-empty-state-card:
    description: "Empty-state illustration frame."
    backgroundColor: "{colors.canvas}"
    rounded: "{rounded.md}"
    padding: "{spacing.3xl}"
    captionTypography: "{typography.body-md}"
  ex-toast:
    description: "Toast notification surface — feature-card shape + medium shadow."
    backgroundColor: "{colors.canvas}"
    rounded: "{rounded.md}"
    padding: "{spacing.md} {spacing.lg}"
    typography: "{typography.body-sm}"

---


## Overview

Webflow positions itself as the visual web development platform — the marketing surface reads as a confident professional product, not a tech startup. The default page is a generous white canvas (`{colors.canvas}`) with a deep near-black `{colors.primary}` (`#080808`) for the brand's primary CTA, typography, and ink. Around this restrained primary, the brand layers a five-stop chromatic accent system — `{colors.accent-purple}` `#7a3dff`, `{colors.accent-pink}` `#ed52cb`, `{colors.accent-blue}` `#3b89ff`, `{colors.accent-orange}` `#ff6b00`, `{colors.accent-green}` `#00d722` — each mapped to one of the platform's product categories (design, CMS, hosting, ecommerce, etc.). These accents appear as full-card fills inside the product-category grid, not as button colours; the brand's primary CTA stays near-black.

Type carries the second decisive voice. The proprietary `WF Visual Sans Variable` family carries every display, body, and label role at weight 500 / 600 — the brand never goes heavier than semibold, never lighter than regular. Hero display sits at 80 px / weight 600 / `-0.8 px` tracking — confident but not shouting. Uppercase eyebrows in 15 px weight 500 with `1.5 px` positive tracking mark every section header.

The shape system is restrained. Buttons take a tight `{rounded.sm}` 4 px radius — neither pill nor square; the brand reads as engineered. Cards step up to `{rounded.md}` 8 px. Pill (`{rounded.full}` 9999 px) is reserved for circular icon containers. Layered drop-shadows on featured cards add modest elevation but never feel material-heavy.

**Key Characteristics:**
- A two-colour conversion hierarchy — `{colors.primary}` near-black for every primary CTA, white-on-hairline for every secondary. Chromatic accents are used as full surface fills on category cards, never as button backgrounds.
- The brand's signature is its **five-stop chromatic category palette**: purple / pink / blue / orange / green, each tied to a product surface. Used at full saturation as card fills.
- Hero typography at 80 px weight 600 with `-0.8 px` tracking — restrained, confident, never billboard-loud.
- WF Visual Sans Variable is the single family; the brand uses no separate sans for body / display. WFVisualSans-Mono / Inconsolata appears only for technical captions.
- Tight `{rounded.sm}` 4 px button geometry; cards at `{rounded.md}` 8 px. The brand never uses pill CTAs.
- Layered multi-offset drop-shadows on featured cards — the brand's only elevation cue.

## Colors

### Brand & Accent
- **Ink Black** (`{colors.primary}` — `#080808`): The brand's primary conversion colour. Every primary CTA, every heading, every wordmark. Deeper than pure black to read as branded.
- **Accent Purple** (`{colors.accent-purple}` — `#7a3dff`): One of the five chromatic category accents — used for design / build product surfaces.
- **Accent Pink** (`{colors.accent-pink}` — `#ed52cb`): Magenta accent — used for animation / interaction product surfaces.
- **Accent Blue** (`{colors.accent-blue}` — `#3b89ff`): Bright cyan-blue — used for SEO / analytics product surfaces.
- **Accent Blue Deep** (`{colors.accent-blue-deep}` — `#006acc`): The deeper blue used for emphasis links.
- **Accent Blue Info** (`{colors.accent-blue-info}` — `#146ef5`): The badge-info blue.
- **Accent Orange** (`{colors.accent-orange}` — `#ff6b00`): Used for hosting / infrastructure product surfaces.
- **Accent Green** (`{colors.accent-green}` — `#00d722`): Used for ecommerce / status-success surfaces.
- **Accent Yellow** (`{colors.accent-yellow}` — `#ffae13`): Used for warning / collaboration product surfaces.
- **Accent Red** (`{colors.accent-red}` — `#ee1d36`): Used for error / destructive states.

### Surface
- **Canvas** (`{colors.canvas}` — `#ffffff`): The default page background.
- **Hairline** (`{colors.hairline}` — `#d8d8d8`): 1 px solid borders — input borders, card chrome, divider lines.

### Text
- **Ink** (`{colors.ink}` — `#080808`): Default text and headings.
- **Ink Strong** (`{colors.ink-strong}` — `#222222`): Near-black emphasis.
- **Body** (`{colors.body}` — `#363636`): Default body paragraph color.
- **Body Mid** (`{colors.body-mid}` — `#5a5a5a`): Mid-emphasis secondary text — footer lines, captions.
- **Mute** (`{colors.mute}` — `#898989`): Lower-priority text.
- **Mute Soft** (`{colors.mute-soft}` — `#ababab`): The lightest text role — placeholder text, fine print.

### Semantic
- **Info Blue** (`{colors.accent-blue-info}` — `#146ef5`): Info badge / notification.
- **Success Green** (`{colors.accent-green}` — `#00d722`): Success indicators.
- **Warning Yellow** (`{colors.accent-yellow}` — `#ffae13`): Warning states.
- **Error Red** (`{colors.accent-red}` — `#ee1d36`): Validation / destructive.

## Typography

### Font Family
A single proprietary family carries every typographic role: **WF Visual Sans Variable** (with `Arial` system fallback). Weights 400 / 500 / 550 / 600 are present; the brand never uses 700 / 800 / 900. A monospace variant — **WFVisualSans-Mono** with `Inconsolata` fallback — handles rare technical caption moments and code-style labels. OpenType features `"ss02"`, `"ss10"`, `"zero"` are enabled in the mono variant for the styled zero glyph.

### Hierarchy

| Token | Size | Weight | Line Height | Letter Spacing | Use |
|---|---|---|---|---|---|
| `{typography.display-xxl}` | 80px | 600 | 83.2px | -0.8px | Hero headline. |
| `{typography.display-xl}` | 56px | 600 | 58.24px | 0 | Sub-hero displays. |
| `{typography.display-lg}` | 44.8px | 600 | 46.6px | 0 | Section headlines. |
| `{typography.display-md}` | 32px | 500 | 41.6px | 0 | Card-cluster headlines. |
| `{typography.display-sm}` | 24px | 500 | 31.2px | 0 | Sub-section displays. |
| `{typography.display-xs}` | 20px | 500 | 28px | 0 | Inline display micro-headings. |
| `{typography.eyebrow-uppercase}` | 15px | 500 | 19.5px | 1.5px | UPPERCASE eyebrow tags above sections. |
| `{typography.eyebrow-uppercase-sm}` | 12px | 500 | 12px | 0.6px | Small uppercase metadata. |
| `{typography.body-lg}` | 28.8px | 400 | 46.08px | -0.288px | Lead paragraphs. |
| `{typography.body-md}` | 16px | 400 | 25.6px | -0.16px | Default body. |
| `{typography.body-md-strong}` | 16px | 500 | 25.6px | -0.16px | Bolded inline body. |
| `{typography.body-sm}` | 14px | 400 | 22.4px | 0 | Secondary body. |
| `{typography.body-sm-strong}` | 14px | 500 | 22.4px | 0 | Bold caption / nav-link. |
| `{typography.caption}` | 12.8px | 550 | 15.36px | 0 | Badge labels (the brand's signature 550 weight). |
| `{typography.caption-mono}` | 12px | 400 | 18px | 0 | Mono code captions. |
| `{typography.button-md}` | 16px | 500 | 25.6px | -0.16px | Button labels. |

### Principles
- **Weight ceiling at 600.** The brand never uses 700+. Confident, not loud.
- **Negative tracking at display sizes.** `-0.8 px` at 80 px, scaling through. Tight kerning is part of the voice.
- **Uppercase eyebrows mark every section.** 15 px / weight 500 / `1.5 px` positive tracking is the brand's signature label style.
- **Single family across the system.** No separate display vs body face. The variable axes do the work.

### Note on Font Substitutes
WF Visual Sans Variable is proprietary. Open-source substitutes:
- **Display + body** — *Inter* weights 400 / 500 / 600 with `font-feature-settings: "ss01"` enabled is the closest stylistic match.
- **Mono** — *Inconsolata* (the documented fallback) or *DM Mono*.

## Layout

### Spacing System
- **Base unit**: 4 px (with frequent 0.4 / 0.8 sub-multiples for fine padding).
- **Tokens**: `{spacing.xxs}` 2 px · `{spacing.xs}` 4 px · `{spacing.sm}` 8 px · `{spacing.md}` 12 px · `{spacing.lg}` 16 px · `{spacing.xl}` 20 px · `{spacing.2xl}` 24 px · `{spacing.3xl}` 32 px.
- **Section padding**: hero / content bands use `{spacing.3xl}` 32 px gutters with generous vertical spacing.
- **Card interior padding**: feature and pricing cards sit at `{spacing.3xl}` 32 px.

### Grid & Container
- Marketing container is wide (effectively edge-to-edge with `{spacing.3xl}` gutters).
- Category card grid: 2 / 3-up at desktop with mixed sizing (some larger feature cards span 2 columns).
- Pricing tier grid: 3-up at desktop, 1-up at mobile.

### Responsive Strategy

#### Breakpoints

| Name | Width | Key Changes |
|---|---|---|
| Mobile | < 479px | Hero stacks; all grids 1-up. |
| Mobile-Large | 479–767px | Same as Mobile. |
| Tablet | 768–991px | 2-up grids. |
| Desktop | ≥ 992px | Full multi-up grids. |

#### Touch Targets
Buttons render at ~44 px (12 px vertical padding + 25.6 px line-height). WCAG AAA met.

#### Collapsing Strategy
- Nav: full link row at desktop. Hamburger at mobile.
- Category card grid: 2 / 3 / 4-up at desktop, drops to 1-up at mobile.
- Pricing tier: 3 / 4-up at desktop, 1-up at mobile.

#### Image Behavior
- Category cards: full-bleed solid colour fills (no photography).
- Product screenshots: 16:9 inside `{rounded.md}` card chrome.
- No portrait imagery in the marketing surface.

## Elevation & Depth

| Level | Treatment | Use |
|---|---|---|
| Level 0 — Flat | No shadow, no border. | Default bands. |
| Level 1 — Hairline | 1 px solid `{colors.hairline}` border on `{colors.canvas}`. | Default card chrome and input borders. |
| Level 2 — Layered Drop | Multi-stop layered shadow with subtle warm offsets — `0 84px 24px rgba(0,0,0,0), 0 54px 22px rgba(0,0,0,0.01), 0 30px 18px rgba(0,0,0,0.04), 0 13px 13px rgba(0,0,0,0.08), 0 3px 7px rgba(0,0,0,0.09)`. | Featured cards needing visible lift. |
| Level 3 — Layered Drop Strong | Deeper version of Level 2 with `0.12` final offset opacity. | Pricing / modal-level emphasis. |
| Level 4 — Heavy Modal | Extremely heavy multi-stop — `0 24px 24px rgba(0,0,0,0.26), 0 6px 13px rgba(0,0,0,0.29)` final stops. | Modal / dialog surfaces. |

### Decorative Depth
- The chromatic category cards (full-saturation purple / pink / blue / orange / green fills) provide visual depth through pure colour contrast against the white canvas.
- Layered shadow recipes are the brand's only true atmospheric effect — they're 5-stop drop-shadow stacks with very low individual opacities.

## Shapes

### Border Radius Scale

| Token | Value | Use |
|---|---|---|
| `{rounded.none}` | 0px | Full-bleed bands. |
| `{rounded.xs}` | 2px | Tight inline pills. |
| `{rounded.sm}` | 4px | The brand's canonical button + badge + small-element radius. |
| `{rounded.md}` | 8px | Card chrome and feature / category cards. |
| `{rounded.full}` | 9999px | Circular icon containers only. |

## Components

### Buttons

**`button-primary`** — the canonical near-black CTA.
- Background `{colors.primary}` (`#080808`), text `{colors.on-primary}` white, label `{typography.button-md}` (16 px weight 500), padding `{spacing.md} {spacing.xl}`, shape `{rounded.sm}` 4 px.

**`button-secondary`** — the white outline CTA.
- Background `{colors.canvas}`, text `{colors.ink}`, 1 px solid `{colors.hairline}` border, same typography + padding + shape.

**`button-text-arrow`** — the underlined text-link CTA with arrow used in long-form sections.
- Background `{colors.canvas}`, text `{colors.ink}`, no border, body in `{typography.button-md}`, padding `{spacing.xl}` 0.

**`button-icon-circular`** — the circular icon button for carousel controls.
- Background `{colors.canvas}`, ink icon, shape `{rounded.full}`.

### Cards & Containers

**`card-feature`** — the canonical feature card on canvas.
- Background `{colors.canvas}`, text `{colors.ink}`, 1 px solid `{colors.hairline}`, padding `{spacing.3xl}`, shape `{rounded.md}`. Often elevated to Level 2 shadow when featured.

**`card-feature-dark`** — the polarity-flipped feature card on near-black.
- Background `{colors.primary}`, text `{colors.on-primary}`, padding `{spacing.3xl}`, shape `{rounded.md}`.

**`card-pricing`** — the pricing-tier card.
- Background `{colors.canvas}`, text `{colors.ink}`, hairline border, padding `{spacing.3xl}`, shape `{rounded.md}`. Layered shadow on the featured tier.

### Inputs & Forms

**`text-input`** — the canonical text input.
- Background `{colors.canvas}`, text `{colors.ink}`, 1 px solid `{colors.hairline}`, body in `{typography.body-md}`, padding `{spacing.md} {spacing.lg}`, shape `{rounded.sm}`.

### Navigation

**`nav-bar`** — the sticky top nav.
- Background `{colors.canvas}`, text `{colors.ink}`, padding `{spacing.lg} {spacing.3xl}`.

**`nav-link`** — link items inside `nav-bar`.
- Text `{colors.ink}`, set in `{typography.body-sm-strong}`.

**`footer`** — the footer band.
- Background `{colors.canvas}`, text `{colors.body-mid}`, padding `{spacing.3xl} {spacing.3xl}`. Body in `{typography.body-sm}`.

### Signature Components

**`hero-band`** — the white hero band.
- Background `{colors.canvas}`, text `{colors.ink}`, padding `{spacing.3xl} {spacing.3xl}`. Headline in `{typography.display-xxl}` (80 px weight 600).

**`hero-band-dark`** — the polarity-flipped near-black hero band (used on some campaign pages).
- Background `{colors.primary}`, text `{colors.on-primary}`, same padding / headline scale.

**`content-band`** — the standard content band on canvas.
- Background `{colors.canvas}`, text `{colors.ink}`, padding `{spacing.3xl} {spacing.3xl}`. Section headline in `{typography.display-lg}`.

**`category-card-purple`** — full-fill purple category card.
- Background `{colors.accent-purple}`, text white, padding `{spacing.3xl}`, shape `{rounded.md}`.

**`category-card-pink`** — full-fill pink category card.
- Background `{colors.accent-pink}`, text white, padding `{spacing.3xl}`, shape `{rounded.md}`.

**`category-card-blue`** — full-fill blue category card.
- Background `{colors.accent-blue}`, text white, padding `{spacing.3xl}`, shape `{rounded.md}`.

**`category-card-orange`** — full-fill orange category card.
- Background `{colors.accent-orange}`, text white, padding `{spacing.3xl}`, shape `{rounded.md}`.

**`category-card-green`** — full-fill green category card (uses ink text for legibility against the lighter green).
- Background `{colors.accent-green}`, text `{colors.primary}` (ink), padding `{spacing.3xl}`, shape `{rounded.md}`.

**`badge-info`** + **`badge-info-soft`** — info badges in solid blue or soft outline.
- Filled: bg `{colors.accent-blue-info}` text white. Soft: bg canvas, text `{colors.accent-blue-info}`. Both at `{typography.caption}` (12.8 px weight 550) — the brand's signature 550-weight caption.

### Examples (illustrative)

> Auto-derived kit-mirror demonstration surfaces (`scripts/derive-examples-block.mjs`). Each `ex-*` entry references brand-native primitives so downstream consumers (`/preview-design`, `/generate-kit`) re-skin the same 10 surfaces consistently. `TO_FILL` markers indicate missing primitives — resolve in the LLM judgment pass.

**`ex-pricing-tier`** — Default Pricing tier card. Re-uses feature-card chrome with brand canvas-soft surface.
- Properties: `backgroundColor`, `textColor`, `borderColor`, `rounded`, `padding`

**`ex-pricing-tier-featured`** — Featured/highlighted tier — polarity-flipped surface (dark fill + light text in light mode, light fill + dark text in dark mode).
- Properties: `backgroundColor`, `textColor`, `rounded`, `padding`

**`ex-product-selector`** — What's Included summary card — re-purposed for SaaS / B2B verticals (NOT a literal product gallery).
- Properties: `backgroundColor`, `rounded`, `padding`

**`ex-cart-drawer`** — Subscription summary — re-purposed for SaaS / B2B (line items per add-on, not literal cart).
- Properties: `backgroundColor`, `rounded`, `padding`, `item-divider`

**`ex-app-shell-row`** — Sidebar nav row inside the App Shell example. Active state uses brand primary as the indicator.
- Properties: `backgroundColor`, `activeIndicator`, `rounded`, `padding`

**`ex-data-table-cell`** — Default data-table th + td chrome. Header uses mono-caps eyebrow typography; body uses body-sm.
- Properties: `headerBackground`, `headerTypography`, `bodyTypography`, `cellPadding`, `rowBorder`

**`ex-auth-form-card`** — Sign-in / sign-up card. Re-uses feature-card chrome with text-input primitives inside.
- Properties: `backgroundColor`, `rounded`, `padding`

**`ex-modal-card`** — Modal dialog surface — same chrome as feature-card with elevated shadow.
- Properties: `backgroundColor`, `rounded`, `padding`

**`ex-empty-state-card`** — Empty-state illustration frame.
- Properties: `backgroundColor`, `rounded`, `padding`, `captionTypography`

**`ex-toast`** — Toast notification surface — feature-card shape + medium shadow.
- Properties: `backgroundColor`, `rounded`, `padding`, `typography`


## Do's and Don'ts

### Do
- Reserve `{colors.primary}` (`#080808`) for every primary CTA, every heading, and every wordmark. Near-black is the conversion colour.
- Use the five chromatic accents (purple / pink / blue / orange / green) as full-fill category cards, NOT as button backgrounds.
- Set hero headlines in `{typography.display-xxl}` weight 600 with `-0.8 px` tracking.
- Pair the proprietary WF Visual Sans family across every typographic role.
- Use `{rounded.sm}` 4 px for buttons, `{rounded.md}` 8 px for cards. The brand never uses pill CTAs.
- Use layered multi-stop drop-shadows on featured cards — the brand's distinctive elevation recipe.

### Don't
- Don't promote button-medium weight to 700+. The brand's weight ceiling is 600.
- Don't use chromatic accents as button backgrounds. They're surface fills, not actions.
- Don't render CTAs as pills. The brand's button geometry is tight 4 px rectangle.
- Don't introduce a sixth accent colour. The 5-stop palette is the system.


---

