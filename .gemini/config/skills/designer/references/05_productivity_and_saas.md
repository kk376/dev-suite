# Productivity, Collaboration, Workspaces & SaaS

> Warm neutrals, document ergonomics, modular block cards, drag-and-drop surfaces, delightful micro-interactions.

## Brands in this Archetype

- [`airtable`](#airtable)
- [`cal`](#cal)
- [`clay`](#clay)
- [`figma`](#figma)
- [`framer`](#framer)
- [`intercom`](#intercom)
- [`miro`](#miro)
- [`notion`](#notion)
- [`slack`](#slack)
- [`superhuman`](#superhuman)
- [`zapier`](#zapier)

---

## Brand: `airtable`

---
version: alpha
name: Airtable-design-analysis
description: A sober, editorial workflow-software interface anchored on white canvas and dark-ink type, where brand voltage comes from full-bleed signature cards in coral, dark green, peach, and dark navy that punctuate long-scroll explainer pages. Primary actions use a near-black pill CTA; secondary actions sit in a white outlined button. Type runs Haas Grotesk in modest weights — never bold for its own sake.

colors:
  primary: "#181d26"
  primary-active: "#0d1218"
  ink: "#181d26"
  body: "#333840"
  muted: "#41454d"
  hairline: "#dddddd"
  border-strong: "#9297a0"
  canvas: "#ffffff"
  surface-soft: "#f8fafc"
  surface-strong: "#e0e2e6"
  surface-dark: "#181d26"
  surface-dark-elevated: "#1d1f25"
  signature-coral: "#aa2d00"
  signature-forest: "#0a2e0e"
  signature-cream: "#f5e9d4"
  signature-peach: "#fcab79"
  signature-mint: "#a8d8c4"
  signature-yellow: "#f4d35e"
  signature-mustard: "#d9a441"
  on-primary: "#ffffff"
  on-dark: "#ffffff"
  link: "#1b61c9"
  link-active: "#1a3866"
  info: "#254fad"
  info-border: "#458fff"
  success: "#006400"
  success-border: "#39bf45"
  pricing-ink: "#1d1f25"

typography:
  display-xl:
    fontFamily: "Haas Groot Disp, Haas, sans-serif"
    fontSize: 48px
    fontWeight: 500
    lineHeight: 1.1
    letterSpacing: 0
  display-lg:
    fontFamily: "Haas Groot Disp, Haas, sans-serif"
    fontSize: 40px
    fontWeight: 400
    lineHeight: 1.2
    letterSpacing: 0
  display-md:
    fontFamily: "Haas Groot Disp, Haas, sans-serif"
    fontSize: 32px
    fontWeight: 400
    lineHeight: 1.2
    letterSpacing: 0
  title-lg:
    fontFamily: "Haas, sans-serif"
    fontSize: 24px
    fontWeight: 400
    lineHeight: 1.35
    letterSpacing: 0.12px
  title-md:
    fontFamily: "Haas Groot Disp, Haas, sans-serif"
    fontSize: 20px
    fontWeight: 400
    lineHeight: 1.5
    letterSpacing: 0
  title-sm:
    fontFamily: "Haas, sans-serif"
    fontSize: 18px
    fontWeight: 500
    lineHeight: 1.4
    letterSpacing: 0
  label-md:
    fontFamily: "Haas, sans-serif"
    fontSize: 16px
    fontWeight: 500
    lineHeight: 1.4
    letterSpacing: 0
  button:
    fontFamily: "Haas, sans-serif"
    fontSize: 16px
    fontWeight: 500
    lineHeight: 1.4
    letterSpacing: 0
  body-md:
    fontFamily: "Haas, sans-serif"
    fontSize: 14px
    fontWeight: 400
    lineHeight: 1.25
    letterSpacing: 0
  caption:
    fontFamily: "Haas, sans-serif"
    fontSize: 14px
    fontWeight: 500
    lineHeight: 1.35
    letterSpacing: 0.16px
  legal:
    fontFamily: "Haas, sans-serif"
    fontSize: 13.12px
    fontWeight: 600
    lineHeight: 1.2
    letterSpacing: 0
  pricing-display:
    fontFamily: "Inter Display, system-ui, sans-serif"
    fontSize: 44.8px
    fontWeight: 475
    lineHeight: 1.1
    letterSpacing: 0
  pricing-section:
    fontFamily: "Inter Display, system-ui, sans-serif"
    fontSize: 28px
    fontWeight: 475
    lineHeight: 1.2
    letterSpacing: 0
  pricing-card-title:
    fontFamily: "Inter Display, system-ui, sans-serif"
    fontSize: 20px
    fontWeight: 475
    lineHeight: 1.3
    letterSpacing: 0

rounded:
  xs: 2px
  sm: 6px
  md: 10px
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
    rounded: "{rounded.lg}"
    padding: 16px 24px
  button-primary-active:
    backgroundColor: "{colors.primary-active}"
    textColor: "{colors.on-primary}"
    rounded: "{rounded.lg}"
  button-secondary:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.button}"
    rounded: "{rounded.lg}"
    padding: 16px 24px
  button-secondary-on-dark:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.button}"
    rounded: "{rounded.lg}"
    padding: 16px 24px
  button-legal:
    backgroundColor: "{colors.link}"
    textColor: "{colors.on-primary}"
    typography: "{typography.legal}"
    rounded: "{rounded.xs}"
    padding: 12px 10px
  button-icon-circular:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    rounded: "{rounded.full}"
    size: 40px
  button-pricing-pill:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.pricing-ink}"
    typography: "{typography.button}"
    rounded: "{rounded.pill}"
    padding: 12px 24px
  text-link:
    backgroundColor: transparent
    textColor: "{colors.link}"
    typography: "{typography.body-md}"
  top-nav:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    height: 64px
  hero-band:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.display-lg}"
    padding: 96px
  signature-coral-card:
    backgroundColor: "{colors.signature-coral}"
    textColor: "{colors.on-primary}"
    typography: "{typography.display-md}"
    rounded: "{rounded.lg}"
    padding: 48px
  signature-forest-card:
    backgroundColor: "{colors.signature-forest}"
    textColor: "{colors.on-primary}"
    typography: "{typography.display-md}"
    rounded: "{rounded.lg}"
    padding: 48px
  hero-card-dark:
    backgroundColor: "{colors.surface-dark}"
    textColor: "{colors.on-dark}"
    typography: "{typography.display-md}"
    rounded: "{rounded.lg}"
    padding: 48px
  feature-card-tabbed:
    backgroundColor: "{colors.surface-soft}"
    textColor: "{colors.ink}"
    typography: "{typography.title-lg}"
    rounded: "{rounded.lg}"
    padding: 32px
  cream-callout-card:
    backgroundColor: "{colors.signature-cream}"
    textColor: "{colors.ink}"
    typography: "{typography.title-lg}"
    rounded: "{rounded.md}"
    padding: 24px
  demo-grid-card:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.label-md}"
    rounded: "{rounded.md}"
    padding: 16px
  logo-strip:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.muted}"
    typography: "{typography.body-md}"
    padding: 32px
  article-card:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.title-sm}"
    rounded: "{rounded.md}"
    padding: 16px
  topic-filter-rail:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.body}"
    typography: "{typography.body-md}"
    width: 240px
  text-input:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.sm}"
    padding: 12px 16px
    height: 44px
  text-input-focus:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    rounded: "{rounded.sm}"
  pricing-tier-card:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.pricing-ink}"
    typography: "{typography.pricing-card-title}"
    rounded: "{rounded.md}"
    padding: 32px
  pricing-tier-card-featured:
    backgroundColor: "{colors.surface-soft}"
    textColor: "{colors.pricing-ink}"
    typography: "{typography.pricing-card-title}"
    rounded: "{rounded.md}"
    padding: 32px
  pricing-comparison-row:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.body}"
    typography: "{typography.body-md}"
    padding: 12px
  cta-band-light:
    backgroundColor: "{colors.surface-strong}"
    textColor: "{colors.ink}"
    typography: "{typography.display-md}"
    rounded: "{rounded.lg}"
    padding: 48px
  footer:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.body}"
    typography: "{typography.body-md}"
    padding: 64px
---

## Overview

Airtable's marketing surfaces are quietly editorial. The base atmosphere is white canvas, dark ink type, generous whitespace, and a near-black pill CTA — nothing is fighting for attention until a section needs to. The brand voltage doesn't come from gradient washes or accent walls; it comes from **full-bleed signature cards** in `{colors.signature-coral}`, `{colors.signature-forest}`, and `{colors.surface-dark}` that punctuate long-scroll explainer pages every two or three screens. Between those signature bands, the page reads like a print magazine: a headline, supporting copy, a small image cluster, then breathing room.

Type voice is Haas Grotesk at modest weights (400 for display, 500 for sub-titles and buttons). Display headlines never go bolder than 500 — emphasis comes from size and color contrast, not from weight. Body copy stays at 14px / 400 throughout. The pricing surface runs its own dialect: **Inter Display** at unusual mid-weights (475 / 575) and **pill-shaped buttons** (`{rounded.pill}`) that don't appear on any other page — a deliberate sub-system signaling "this page is about commercial precision."

**Key Characteristics:**
- Primary CTA is `{colors.primary}` (near-black ink) with white text and a `{rounded.lg}` (12px) corner — it reads as confident and final, never decorative.
- Secondary CTA is a `{colors.canvas}` button with `{colors.ink}` text and a hairline outline. The two together form Airtable's signature button pair.
- Hero is white canvas. There is no atmospheric gradient, no mesh, no background flourish. The brand strength comes from the type and the buttons sitting in clean whitespace.
- Brand voltage lives in **signature surface cards**: `{colors.signature-coral}`, `{colors.signature-forest}`, and `{colors.surface-dark}` carry full-bleed product callouts every few screens.
- Demo-card grids carry product UI fragments on `{colors.signature-peach}`, `{colors.signature-mint}`, `{colors.signature-cream}` and other warm pastel surfaces.
- Section rhythm: white canvas → coral signature card → white body → cream callout band → dark navy CTA → light gray CTA banner → footer. The canvas resets between every signature surface.
- Border radius is hierarchical: `{rounded.lg}` (12px) for primary CTAs and large signature cards, `{rounded.md}` (10px) for content cards and demo grids, `{rounded.sm}` (6px) for inputs, `{rounded.full}` for icon buttons. Pricing buttons jump to `{rounded.pill}` to mark themselves as a separate dialect.
- Vertical rhythm is `{spacing.section}` (96px) between major bands — universal across every page.

## Colors

### Brand & Accent
- **Primary** (`{colors.primary}` — #181d26): The dominant brand color. Used for the primary CTA background, h1/h2 display type, and the `{component.surface-dark}` band. Not "blue, then black" — black IS the primary throughout the marketing system.
- **Primary Active** (`{colors.primary-active}` — #0d1218): The press state on primary buttons.

### Surface
- **Canvas** (`{colors.canvas}` — #ffffff): The default page surface; the floor of every editorial body.
- **Surface Soft** (`{colors.surface-soft}` — #f8fafc): Tabbed feature cards and the featured pricing tier.
- **Surface Strong** (`{colors.surface-strong}` — #e0e2e6): The light gray "Start building with Airtable" CTA banner near the footer.
- **Surface Dark** (`{colors.surface-dark}` — #181d26): The dark navy CTA cards used mid-page (for example "The path to 10× every person in your organization").
- **Surface Dark Elevated** (`{colors.surface-dark-elevated}` — #1d1f25): The articles-page hero base behind the rainbow-stripe overlay.
- **Hairline** (`{colors.hairline}` — #dddddd): The 1px border tone for input outlines, table dividers, secondary-button outlines.

### Text
- **Ink** (`{colors.ink}` — #181d26): The strongest text — h1/h2 display type and primary button text-on-light. Same hex as `{colors.primary}` because they are the same role expressed at type and button layers.
- **Body** (`{colors.body}` — #333840): The default running-text color.
- **Muted** (`{colors.muted}` — #41454d): Footer links, breadcrumbs, captions.
- **Border Strong** (`{colors.border-strong}` — #9297a0): The 1px outline color on disabled secondary buttons.
- **On Primary / On Dark** (`{colors.on-primary}` — #ffffff): The text color on primary buttons and dark surfaces.

### Signature Card Surfaces
These are the colors that carry Airtable's brand voltage. They appear as full-bleed, full-card surfaces — never as accents on a small element.
- **Coral** (`{colors.signature-coral}` — #aa2d00): The largest signature card on the homepage ("Production apps in prototype speed"). Full-bleed dark coral with white type.
- **Forest** (`{colors.signature-forest}` — #0a2e0e): A deep-green signature card used in the homepage demo-grid cluster.
- **Cream** (`{colors.signature-cream}` — #f5e9d4): The cream callout band ("The path to 10× every person in your organization") — a soft beige surface holding dark type and product UI fragments.
- **Peach** (`{colors.signature-peach}` — #fcab79), **Mint** (`{colors.signature-mint}` — #a8d8c4), **Yellow** (`{colors.signature-yellow}` — #f4d35e), **Mustard** (`{colors.signature-mustard}` — #d9a441): Demo-card surfaces that carry small product UI fragments inside the multi-card grid sections.

### Semantic
- **Link** (`{colors.link}` — #1b61c9): Inline body links and anchor text. Darker on press to `{colors.link-active}` (#1a3866). Despite the `--theme_button-background-primary` CSS-variable name, this color is **not** the primary button color — it is the link color.
- **Info** (`{colors.info}` — #254fad) and **Info Border** (`{colors.info-border}` — #458fff): Inline info badges and focused-input outline.
- **Success** (`{colors.success}` — #006400) and **Success Border** (`{colors.success-border}` — #39bf45): Confirmation states.

## Typography

### Font Family
The system runs **Haas / Haas Groot Disp** (Airtable's licensed display + text type). Haas Groot Disp covers display sizes (h1 / h2); Haas Grotesk covers everything 24px and below. The fallback stack walks `-apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen, Ubuntu, Cantarell, "Fira Sans", "Droid Sans", "Helvetica Neue", sans-serif`.

The pricing surface runs a separate **Inter Display** stack at mid-weights (475 / 575) — a deliberate sub-system signaling commercial precision.

### Hierarchy

| Token | Size | Weight | Line Height | Letter Spacing | Use |
|---|---|---|---|---|---|
| `{typography.display-xl}` | 48px | 500 | 1.1 | 0 | Articles page h2 — second-tier editorial headline |
| `{typography.display-lg}` | 40px | 400 | 1.2 | 0 | Homepage h1 hero |
| `{typography.display-md}` | 32px | 400 | 1.2 | 0 | Platform-page h2 — feature-section headlines |
| `{typography.title-lg}` | 24px | 400 | 1.35 | 0.12px | Section titles |
| `{typography.title-md}` | 20px | 400 | 1.5 | 0 | Sub-section titles in tabbed feature cards |
| `{typography.title-sm}` | 18px | 500 | 1.4 | 0 | Article-card titles |
| `{typography.label-md}` | 16px | 500 | 1.4 | 0 | Demo-card titles, list labels |
| `{typography.button}` | 16px | 500 | 1.4 | 0 | Standard CTA button labels |
| `{typography.body-md}` | 14px | 400 | 1.25 | 0 | Body copy, footer links, top-nav items |
| `{typography.caption}` | 14px | 500 | 1.35 | 0.16px | Light captions and meta text |
| `{typography.legal}` | 13.12px | 600 | 1.2 | 0 | Cookie/legal CTA buttons |
| `{typography.pricing-display}` | 44.8px | 475 | 1.1 | 0 | Pricing-page h1 |
| `{typography.pricing-section}` | 28px | 475 | 1.2 | 0 | Pricing-page section heads |
| `{typography.pricing-card-title}` | 20px | 475 | 1.3 | 0 | Pricing tier card plan name |

### Principles
The Haas system prefers weight 400 for display sizes — a 40px h1 is **not** bold. Visual emphasis is delegated to size, color contrast, and the signature surface cards. Where the system does want weight, it pivots to 500 (sub-titles, buttons, article titles), never 600 or 700 in the editorial body. The only true bold (600) lives in `{typography.legal}` — a sign that boldness is reserved for terms-of-service surfaces, not marketing.

The pricing-page sub-system uses Inter Display at `font-weight: 475` — a custom mid-weight between regular (400) and medium (500), shipped as a variable font.

### Note on Font Substitutes
If Haas Groot Disp and Haas Grotesk are unavailable, **Inter Display** (variable) is the closest open-source substitute for both — adjust line-height down by ~5% to match Haas's tighter cap-height. For the pricing sub-system, use Inter Display directly. On macOS / iOS, **system-ui** is sufficient; on Windows, the chain falls through to Segoe UI, which is a usable but slightly cooler substitute.

## Layout

### Spacing System
- **Base unit:** 4px (all spacing snaps to 4-multiples).
- **Tokens:** `{spacing.xxs}` 4px · `{spacing.xs}` 8px · `{spacing.sm}` 12px · `{spacing.md}` 16px · `{spacing.lg}` 24px · `{spacing.xl}` 32px · `{spacing.xxl}` 48px · `{spacing.section}` 96px.
- **Section padding (vertical):** `{spacing.section}` (96px) is the universal vertical rhythm constant — every major editorial band on every page uses 96px top + 96px bottom internal padding.
- **Card internal padding:** `{spacing.xl}` (32px) for tabbed feature cards and pricing tier cards; `{spacing.xxl}` (48px) inside signature coral / forest / dark cards; `{spacing.lg}` (24px) for cream callouts and demo-grid cards.
- **Gutters:** `{spacing.lg}` (24px) between cards in 3-up grids; `{spacing.md}` (16px) inside denser logo strips and footer column gutters.

### Grid & Container
- **Max content width:** ~1280px centered, with `{spacing.xxl}` (48px) horizontal breathing room.
- **Editorial body:** Single 8/12-column at large breakpoints, collapsing to single-column on mobile.
- **Demo-card grids:** 3 or 4 columns at desktop, 2 at tablet, 1 at mobile. Card sizes are deliberately uneven within the grid to dodge a uniform "spec sheet" feel.
- **Logo strip:** 6 monochrome partner logos in a single row at desktop; wraps to 3-up on mobile.

### Whitespace Philosophy
Airtable uses whitespace as the dominant atmospheric tool. Hero sections sit in 96px+ of pure whitespace above and below the headline + sub-headline pair, with no decoration in that whitespace. The hero is intentionally calm — there is no gradient, no aurora, no atmospheric mesh behind the type. The system trusts whitespace alone to do the framing.

## Elevation & Depth

| Level | Treatment | Use |
|---|---|---|
| Flat | No shadow, no border | Body sections, top nav, footer |
| Soft hairline | 1px `{colors.hairline}` border | Inputs, sub-nav rails, comparison-table dividers, secondary buttons |
| Button rest | Soft drop with subtle blue-tinted glow at low alpha | Primary CTA buttons (the blue tint is a holdover from the link color and reads as a faint accent under the dark button) |
| Button focus | Outer 2px blue ring at higher alpha | Keyboard focus state on primary buttons |
| Card flat | No shadow; relies on color contrast against the surface band | Signature coral / forest / dark cards, cream callouts, demo-grid cards |

The elevation philosophy is **color-block first, shadow second**. Shadows are minimal; depth is delegated to the contrast between white canvas and signature surface cards. There is no soft-glow / atmospheric-shadow / heavy-elevation language anywhere in the marketing system.

### Decorative Depth
- **Vertical rainbow stripes** appear on the articles hero only — multi-color vertical bands sitting on `{colors.surface-dark-elevated}`. This is a single-page treatment, not a system-wide signature.
- **Photography-as-depth** in the demo-card grid: every card carries a real product UI screenshot or mockup, contributing depth through legible artifact density rather than decorative effects.

## Shapes

### Border Radius Scale

| Token | Value | Use |
|---|---|---|
| `{rounded.xs}` | 2px | Cookie-consent and legal CTA buttons — system-required surfaces |
| `{rounded.sm}` | 6px | Text inputs, small inline buttons |
| `{rounded.md}` | 10px | Secondary content cards, article cards, cream callouts |
| `{rounded.lg}` | 12px | Primary CTA buttons, signature surface cards, tabbed feature cards |
| `{rounded.pill}` | 9999px | Pricing-page CTA buttons (sub-system only) |
| `{rounded.full}` | 9999px / 50% | Circular icon buttons, avatar surfaces |

### Photography Geometry
Product UI screenshots inside demo-card grids retain native aspect ratios (typically 4:3 or 16:10) and crop into `{rounded.md}` containers. Hero illustrations bleed full-width with no rounding. Article-card thumbnails use 16:9 with `{rounded.md}` corners. Avatars in testimonials use `{rounded.full}` (perfect circles). Pricing comparison table images stay rectangular with no rounding.

## Components

> **No hover states documented.** Per the global no-hover policy (Step 6), every component spec below documents only Default and Active/Pressed states. Variants live as separate entries in the `components:` front matter.

**`top-nav`** — A 64px-tall white bar pinned to the top of every page. Airtable wordmark sits at left; primary horizontal menu (Platform, Solutions, Resources, Enterprise, Pricing) sits center-left in `{typography.body-md}`; the right cluster carries a "Book Demo" outline link, "Sign up for free" `{component.button-primary}`, and "Log In" text link. The nav stays light on every page — Airtable does not invert the nav over dark sections.

### Buttons

**`button-primary`** — The signature primary CTA. Background `{colors.primary}` (near-black), text `{colors.on-primary}`, type `{typography.button}`, padding 16px × 24px, rounded `{rounded.lg}` (12px). This is the "Get started for free" / "Sign up for free" button visible on every hero. It reads as confident and final — not decorative — which is why the system uses it sparingly (one per viewport).
- Active state: `button-primary-active` darkens to `{colors.primary-active}` (#0d1218).

**`button-secondary`** — White outline button (e.g. "Book demo"). Background `{colors.canvas}`, text `{colors.ink}`, type `{typography.button}`, rounded `{rounded.lg}` (12px), 1px hairline outline. Sits next to `{component.button-primary}` as the "less-committed" choice.

**`button-secondary-on-dark`** — Same shape as `{component.button-secondary}` but used on signature coral / forest / dark surfaces. Background `{colors.canvas}`, text `{colors.ink}` — the white button stays white over dark surfaces because the system never inverts to a translucent on-dark style on the marketing site.

**`button-pricing-pill`** — The pricing-page CTA family. Background `{colors.canvas}`, text `{colors.pricing-ink}`, rounded `{rounded.pill}` (9999px), padding 12px × 24px. The only place pill-shape appears in the marketing system. Treat it as part of the pricing sub-system signaling.

**`button-legal`** — Cookie-consent and legal-banner CTAs. Background `{colors.link}`, text `{colors.on-primary}`, type `{typography.legal}` (13.12px / 600), rounded `{rounded.xs}` (2px), padding 12px × 10px. The 2px corner radius and 600 weight signal "this is a required system surface," not a designed brand surface.

**`button-icon-circular`** — 40px × 40px circular button with `{colors.canvas}` background, hairline border, and `{colors.ink}` icon. Used for carousel controls, "share", and "back" affordances.

**`text-link`** — Inline body links in `{colors.link}` (#1b61c9, the actual link blue). No underline by default. Type inherits `{typography.body-md}`.

### Cards & Containers

**`hero-band`** — The full-page-width white-canvas hero. No surface card, no border, no shadow, no atmospheric gradient — just the headline, sub-headline, and primary + secondary button pair sitting in 96px of whitespace. Vertical padding `{spacing.section}` (96px).

**`signature-coral-card`** — The large full-bleed coral card on the homepage ("Production apps in prototype speed"). Background `{colors.signature-coral}` (#aa2d00, a dark coral / oxide red), text `{colors.on-primary}`, rounded `{rounded.lg}` (12px), internal padding `{spacing.xxl}` (48px). Carries an h2 in `{typography.display-md}`, supporting copy in `{typography.body-md}`, and `{component.button-secondary-on-dark}` as the CTA.

**`signature-forest-card`** — A deep green signature card (`{colors.signature-forest}` — #0a2e0e) used as a demo-grid sibling to the coral card on the homepage.

**`hero-card-dark`** — The dark navy mid-page CTA card (e.g. "The path to 10× every person in your organization"). Background `{colors.surface-dark}` (#181d26), text `{colors.on-dark}`, rounded `{rounded.lg}` (12px), internal padding `{spacing.xxl}` (48px). The same color as `{colors.primary}` because the system uses ink as both type color and signature dark surface.

**`feature-card-tabbed`** — Light-cream cards (e.g. the "Coke / Pelosi / Conde Nast / Time Inc" tabbed feature card on the homepage). Background `{colors.surface-soft}`, rounded `{rounded.lg}` (12px), internal padding `{spacing.xl}` (32px). Left rail carries vertically-stacked tab labels in `{typography.title-md}`; right pane shows the active tab's content (illustration + body copy + small CTA).

**`cream-callout-card`** — Beige callout cards (`{colors.signature-cream}`). Rounded `{rounded.md}` (10px), internal padding `{spacing.lg}` (24px). Carry product UI fragments or stat callouts — softer than the dark/coral signature cards but still a deliberate brand surface.

**`demo-grid-card`** — Used in multi-card grids that punctuate every page. Background `{colors.canvas}` or one of the demo-grid surfaces (`{colors.signature-peach}`, `{colors.signature-mint}`, `{colors.signature-yellow}`, `{colors.signature-mustard}`), rounded `{rounded.md}` (10px), internal padding `{spacing.md}` (16px). Each card frames a product UI fragment. Card heights vary deliberately to dodge a uniform "spec sheet" feel.

**`logo-strip`** — Horizontal monochrome partner-logo row (HBO, Netflix, Amazon, Time, Conde Nast). Logos render in `{colors.muted}`, surface is `{colors.canvas}`, vertical padding `{spacing.xl}` (32px). 6 logos at desktop, 3 at mobile.

**`article-card`** — The trending-stories grid on the articles page. Background `{colors.canvas}`, rounded `{rounded.md}` (10px), internal padding `{spacing.md}` (16px). Each card carries a colorful illustrated thumbnail (16:9), a small uppercase category tag, an `{typography.title-sm}` title, and a meta line. 3-up at desktop.

**`topic-filter-rail`** — The left rail on the articles page. 240px wide, `{colors.canvas}` background, `{typography.body-md}`, vertically grouped category headings ("Marketing", "Product", "Project management", "Operations") with sub-bullets. Active item carries a small numeric count badge.

### Inputs & Forms

**`text-input`** — Standard text input. Background `{colors.canvas}`, text `{colors.ink}`, type `{typography.body-md}`, rounded `{rounded.sm}` (6px), padding 12px × 16px, height 44px. 1px hairline border in `{colors.hairline}`.

**`text-input-focus`** — Focus state. Border thickens or recolors to `{colors.info-border}`.

### Pricing Sub-System

**`pricing-tier-card`** — Standard tier card. Background `{colors.canvas}`, text `{colors.pricing-ink}`, type `{typography.pricing-card-title}` for the plan name, rounded `{rounded.md}` (10px), internal padding `{spacing.xl}` (32px). Carries the plan name, a price block in `{typography.pricing-display}` (44.8px / 475), feature checklist, and a `{component.button-pricing-pill}` at the bottom.

**`pricing-tier-card-featured`** — The featured tier (typically "Team" or "Business"). Background shifts to `{colors.surface-soft}`. No accent border, no badge — the background tone shift is the only signal.

**`pricing-comparison-row`** — Each row of the long comparison table at the bottom of the pricing page. Labels in the left column; checkmarks or values across 4 plan columns. 12px vertical padding per row, hairline divider between rows.

### Navigation Variants

**`footer`** — Light surface (`{colors.canvas}`), 6-column link list at desktop covering Platform / Solutions / Resources / Learn / Company sub-trees. Vertical padding `{spacing.section}` divided across upper link block and lower legal row. Type `{typography.body-md}`.

**`cta-band-light`** — The light gray "Start building with Airtable" CTA strip near the footer. Background `{colors.surface-strong}` (#e0e2e6), text `{colors.ink}`, rounded `{rounded.lg}` (12px), padding `{spacing.xxl}` (48px). Carries an h2 in `{typography.display-md}` and a `{component.button-primary}`.

### Signature Components

**Articles Vertical Rainbow Stripe Hero** — The articles-page hero treatment. Multi-color vertical bands at varying widths sitting on `{colors.surface-dark-elevated}`. The h1 + sub-head + CTA cluster sits center-left on top of the stripes. This is a single-page hero treatment, not a system-wide signature — do not promote it to a multi-page pattern.

## Do's and Don'ts

### Do
- Keep `{component.button-primary}` near-black. The brand's primary CTA is `{colors.primary}`, not the link blue. Mixing them up turns a confident hero into a confused one.
- Reserve `{component.button-primary}` for one primary action per viewport. The system is designed for scarcity at the brand-action layer.
- Use `{component.button-secondary}` (white with hairline outline) as the natural pair with `{component.button-primary}`. The two together form Airtable's signature button row.
- Trust whitespace as the hero atmosphere. Hero bands are intentionally calm — no gradient, no mesh, no atmospheric backdrop. Going against this reads as off-brand.
- Use `{component.signature-coral-card}`, `{component.signature-forest-card}`, and `{component.hero-card-dark}` to break editorial monotony. These are the brand's voltage moments.
- Keep `{component.demo-grid-card}` heights uneven within a grid. Uniform heights feel like a spec sheet.
- Treat the pricing surface as its own dialect: keep `{typography.pricing-display}`, `{typography.pricing-card-title}`, and `{component.button-pricing-pill}` together. Mixing them with Haas Grotesk button type breaks the sub-system's voice.
- Anchor every editorial band with `{spacing.section}` (96px) vertical padding.

### Don't
- Don't make `{colors.link}` (#1b61c9) the primary button color. It is the link color. The primary button is `{colors.primary}` (#181d26, near-black). Treating link-blue as the brand action is the most common mistake when reading Airtable's CSS variables.
- Don't add a gradient backdrop to the hero. Airtable's hero is white, full stop. Mesh, aurora, spotlight gradients all read as "another SaaS template" — not Airtable.
- Don't bold display-weight type. `{typography.display-xl}` and `{typography.display-lg}` are intentionally weight 400 / 500 — going to 700 reads as marketing-page-template.
- Don't use `{rounded.pill}` outside the pricing surface. It's a sub-system signal, not a general radius option.
- Don't repeat the same surface mode in two consecutive bands. The editorial pacing depends on rhythm: white → signature card → white → cream → dark → white. Two whites in a row read as a typography blog.
- Don't add hover state styling beyond what the system already encodes. The system documents Default and Active/Pressed only.
- Don't introduce additional accent colors beyond the documented signature card palette. The system's voltage already uses coral, forest, dark navy, cream, peach, mint, yellow, and mustard.

## Responsive Behavior

### Breakpoints

| Name | Width | Key Changes |
|---|---|---|
| Mobile | < 768px | Single-column body; top nav collapses to hamburger; demo-grid drops to 1-up; signature cards stay full-bleed; logo strip wraps to 2 rows; footer collapses to single-column |
| Tablet | 768–1024px | 2-up demo-grid; top nav stays horizontal but tightens; cream-callout cards stack 2-up; pricing comparison table becomes horizontally scrollable |
| Desktop | 1024–1440px | 3-up demo-grid (and 4-up for tighter content); full top-nav with all menu items visible; pricing tier cards render 4-across |
| Wide | > 1440px | Same as Desktop with more outer breathing room; max content width caps at ~1280px and the page adds outer margin rather than scaling type up |

### Touch Targets
- `{component.button-primary}` and siblings render at 48 × 48px minimum (16px vertical padding + 16px line-height) — comfortably above WCAG AAA's 44 × 44.
- `{component.button-icon-circular}` is exactly 40 × 40px — slightly under WCAG's recommended 44, but the centered icon and dot-radius compensate visually.
- `{component.text-input}` height is 44px.

### Collapsing Strategy
- Top nav collapses to a hamburger at < 768px; the menu opens as a full-screen sheet rather than a dropdown.
- Card grids reduce columns rather than scaling cards down.
- The `{component.feature-card-tabbed}` re-stacks the tab rail above the content pane on mobile.
- The pricing comparison table converts to horizontally-scrollable swipe at < 1024px; the four plan headers stay visible while body rows scroll.

### Image Behavior
- Demo-card UI screenshots crop to fit their container rather than scaling up.
- Hero illustrations bleed full-width on mobile, losing horizontal margin.
- Signature card images (inside coral / forest / dark cards) compress to their card width without cropping.

## Iteration Guide

1. Focus on ONE component at a time. Reference its YAML key directly (`{component.button-primary}`, `{component.signature-coral-card}`).
2. When adding a new component, decide first which sub-system it belongs to: the main editorial system (Haas, `{rounded.lg}`/`{rounded.md}`) or the pricing sub-system (Inter Display, `{rounded.pill}`).
3. Variants of an existing component (`-active`, `-disabled`, `-focus`) live as separate entries in `components:` — never as nested state objects.
4. Use `{token.refs}` everywhere prose mentions a color, a radius, a typography role, or a spacing value. Hex codes appear at most once next to the reference.
5. Never document hover. The system documents Default and Active/Pressed states only.
6. Run `npx @google/design.md lint DESIGN.md` after edits — `broken-ref`, `contrast-ratio`, and `orphaned-tokens` warnings flag issues automatically.
7. When in doubt about emphasis: bigger type before bolder type, signature surface card before solid accent.

## Known Gaps

- The exact hex values of pastel demo-grid surfaces (`{colors.signature-peach}`, `{colors.signature-mint}`, `{colors.signature-yellow}`, `{colors.signature-mustard}`) are inferred from screenshot pixel sampling. Some product launches may swap these surfaces seasonally.
- Hover behavior across all components is not documented (per global no-hover policy).
- Animation and transition timings are not in scope.
- Form validation states beyond `text-input-focus` are not extracted — error and success states for inputs would need a dedicated form page to confirm.
- The pricing comparison table's checkmark glyph and column-divider widths are described structurally but not formalized as tokens.
- The CSS variable `--theme_button-background-primary: #1b61c9` exists at `:root` but is not used as the primary CTA color anywhere on the marketing site. It maps to the link/info color role instead. Documented here so future extractions don't re-trip over the misleading variable name.


---

## Brand: `cal`

---
version: alpha
name: Cal.com-design-analysis
description: A clean, calendar-software-first interface anchored on white canvas with black primary CTAs and custom Cal Sans display typography. The system reads as friendly modern SaaS — generous whitespace, soft-rounded cards (~12px), product UI fragments shown directly inside cards, and a dark navy footer that visually closes long-scroll pages. Brand voltage comes from the Cal Sans display headline (a custom geometric face) and from product UI artifacts shown in-card rather than from accent colors.

colors:
  primary: "#111111"
  primary-active: "#242424"
  primary-disabled: "#e5e7eb"
  ink: "#111111"
  body: "#374151"
  muted: "#6b7280"
  muted-soft: "#898989"
  hairline: "#e5e7eb"
  hairline-soft: "#f3f4f6"
  canvas: "#ffffff"
  surface-soft: "#f8f9fa"
  surface-card: "#f5f5f5"
  surface-strong: "#e5e7eb"
  surface-dark: "#101010"
  surface-dark-elevated: "#1a1a1a"
  on-primary: "#ffffff"
  on-dark: "#ffffff"
  on-dark-soft: "#a1a1aa"
  brand-accent: "#3b82f6"
  success: "#10b981"
  warning: "#f59e0b"
  error: "#ef4444"
  badge-orange: "#fb923c"
  badge-pink: "#ec4899"
  badge-violet: "#8b5cf6"
  badge-emerald: "#34d399"

typography:
  display-xl:
    fontFamily: "Cal Sans, Inter, sans-serif"
    fontSize: 64px
    fontWeight: 600
    lineHeight: 1.05
    letterSpacing: -2px
  display-lg:
    fontFamily: "Cal Sans, Inter, sans-serif"
    fontSize: 48px
    fontWeight: 600
    lineHeight: 1.1
    letterSpacing: -1.5px
  display-md:
    fontFamily: "Cal Sans, Inter, sans-serif"
    fontSize: 36px
    fontWeight: 600
    lineHeight: 1.15
    letterSpacing: -1px
  display-sm:
    fontFamily: "Cal Sans, Inter, sans-serif"
    fontSize: 28px
    fontWeight: 600
    lineHeight: 1.2
    letterSpacing: -0.5px
  title-lg:
    fontFamily: "Inter, sans-serif"
    fontSize: 22px
    fontWeight: 600
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
  body-md:
    fontFamily: "Inter, sans-serif"
    fontSize: 16px
    fontWeight: 400
    lineHeight: 1.5
    letterSpacing: 0
  body-sm:
    fontFamily: "Inter, sans-serif"
    fontSize: 14px
    fontWeight: 400
    lineHeight: 1.5
    letterSpacing: 0
  caption:
    fontFamily: "Inter, sans-serif"
    fontSize: 13px
    fontWeight: 500
    lineHeight: 1.4
    letterSpacing: 0
  code:
    fontFamily: "JetBrains Mono, ui-monospace, monospace"
    fontSize: 14px
    fontWeight: 400
    lineHeight: 1.5
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
  xl: 16px
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
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.button}"
    rounded: "{rounded.md}"
    padding: 12px 20px
    height: 40px
  button-icon-circular:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    rounded: "{rounded.full}"
    size: 36px
  button-text-link:
    backgroundColor: transparent
    textColor: "{colors.ink}"
    typography: "{typography.button}"
  text-link:
    backgroundColor: transparent
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
  top-nav:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.nav-link}"
    height: 64px
  nav-pill-group:
    backgroundColor: "{colors.surface-soft}"
    textColor: "{colors.ink}"
    typography: "{typography.nav-link}"
    rounded: "{rounded.pill}"
    padding: 6px
  hero-band:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.display-xl}"
    padding: 96px
  hero-app-mockup-card:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    rounded: "{rounded.xl}"
  feature-card:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ink}"
    typography: "{typography.title-md}"
    rounded: "{rounded.lg}"
    padding: 32px
  feature-icon-card:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.title-sm}"
    rounded: "{rounded.lg}"
    padding: 24px
  product-mockup-card:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    rounded: "{rounded.lg}"
    padding: 24px
  testimonial-card:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.lg}"
    padding: 24px
  pricing-tier-card:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.title-lg}"
    rounded: "{rounded.lg}"
    padding: 32px
  pricing-tier-card-featured:
    backgroundColor: "{colors.surface-dark}"
    textColor: "{colors.on-dark}"
    typography: "{typography.title-lg}"
    rounded: "{rounded.lg}"
    padding: 32px
  text-input:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.md}"
    padding: 10px 14px
    height: 40px
  text-input-focused:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    rounded: "{rounded.md}"
  category-tab:
    backgroundColor: transparent
    textColor: "{colors.muted}"
    typography: "{typography.nav-link}"
    padding: 8px 14px
    rounded: "{rounded.md}"
  category-tab-active:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.nav-link}"
    rounded: "{rounded.md}"
  avatar-circle:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ink}"
    rounded: "{rounded.full}"
    size: 36px
  badge-pill:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ink}"
    typography: "{typography.caption}"
    rounded: "{rounded.pill}"
    padding: 4px 12px
  rating-stars:
    backgroundColor: transparent
    textColor: "{colors.badge-orange}"
    typography: "{typography.caption}"
  cta-band-light:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ink}"
    typography: "{typography.display-sm}"
    rounded: "{rounded.lg}"
    padding: 48px
  footer:
    backgroundColor: "{colors.surface-dark}"
    textColor: "{colors.on-dark-soft}"
    typography: "{typography.body-sm}"
    padding: 64px
---

## Overview

Cal.com's marketing surface is a clean, friendly modern-SaaS interface — white canvas (`{colors.canvas}` — #ffffff) with black primary CTAs (`{colors.primary}` — #111111), custom **Cal Sans** display typography, and `{colors.surface-card}` (#f5f5f5) light-gray cards holding product UI fragments. The system reads as confidently engineered without trying to impress — every band has clear hierarchy, generous whitespace, and a single primary action.

Type voice splits cleanly into two roles: **Cal Sans** (the brand's custom geometric display face — used for h1, h2, h3, and hero headlines) and **Inter** (used for everything else — body, buttons, nav, captions). Cal Sans uses weight 600 with negative letter-spacing (-0.5px to -2px depending on size) — it feels modern, slightly condensed, distinctly Cal.com.

Component voltage comes from **product UI fragments shown directly inside cards** — calendar widgets, scheduling forms, automation diagrams, integration tiles. Cal.com doesn't paint marketing illustrations of the product; it shows the actual product chrome at small scale embedded in the marketing flow.

The footer flips to `{colors.surface-dark}` (#101010) — a deep near-black that visually closes every long-scroll page. The footer is the only dark surface in the system; everything above stays white-with-light-gray-cards.

**Key Characteristics:**
- White canvas with black primary CTA (`{colors.primary}` — #111111). Buttons are `{rounded.md}` (8px) with confident weight-600 labels. Standard friendly-SaaS button.
- Custom `Cal Sans` display typeface for headlines (substituted with Inter weight 600 here). Negative letter-spacing on display sizes — geometric, precise, slightly condensed.
- Light-gray card surfaces (`{colors.surface-card}` — #f5f5f5) for feature cards, testimonials, and pricing tiers (non-featured). The featured pricing tier flips to `{colors.surface-dark}` (the only dark card on light pages).
- Product UI fragments embedded directly in cards — Cal.com shows real schedule pickers, calendar widgets, integration grids inside its marketing cards. Brand voltage from real product chrome at small scale.
- Nav-pill-group (`{component.nav-pill-group}`) — a small pill-radius wrapper around grouped nav segments (e.g., the sub-nav switcher between product views). The pill wrapper is one of the system's signature interactive components.
- Avatars are circular (`{rounded.full}`), 36px diameter, used in testimonial rows and team-listing surfaces.
- Footer is dark navy (`{colors.surface-dark}` — #101010) with light text (`{colors.on-dark-soft}` — #a1a1aa). The dark footer closes every page even though the body above is white.
- Spacing rhythm is `{spacing.section}` (96px) between major bands — tight enough to feel modern-SaaS but generous enough to breathe.
- Border radius is hierarchical: `{rounded.md}` (8px) for buttons + inputs, `{rounded.lg}` (12px) for content cards, `{rounded.xl}` (16px) for the hero app-mockup container, `{rounded.pill}` for nav-pill-group + badges, `{rounded.full}` for avatars + icon buttons.

## Colors

### Brand & Accent
- **Primary** (`{colors.primary}` — #111111): The dominant action color. All primary CTAs, h1/h2 display type. Press state shifts to `{colors.primary-active}` (#242424).
- **Brand Accent** (`{colors.brand-accent}` — #3b82f6): Used sparely on inline links and on a small badge / "Customer story" highlight. Cal.com is a near-monochrome brand — the blue appears rarely.
- **Badge Pastels** — A small pastel set for category badges and avatar fills: `{colors.badge-orange}` (#fb923c), `{colors.badge-pink}` (#ec4899), `{colors.badge-violet}` (#8b5cf6), `{colors.badge-emerald}` (#34d399). These appear on tag pills and small accent moments inside product UI fragments — never on hero CTAs.

### Surface
- **Canvas** (`{colors.canvas}` — #ffffff): The default page floor.
- **Surface Soft** (`{colors.surface-soft}` — #f8f9fa): Nav-pill-group background, very-soft section dividers.
- **Surface Card** (`{colors.surface-card}` — #f5f5f5): Feature cards, testimonial cards, badge pills, default avatar fills.
- **Surface Strong** (`{colors.surface-strong}` — #e5e7eb): Hairline border alternative; disabled button background.
- **Surface Dark** (`{colors.surface-dark}` — #101010): The footer background — the only dark surface on every page. Also used for the featured pricing tier card.
- **Surface Dark Elevated** (`{colors.surface-dark-elevated}` — #1a1a1a): Used for nested cards inside the dark footer or featured pricing card.
- **Hairline** (`{colors.hairline}` — #e5e7eb): The 1px border tone on light surfaces. Used on input borders, table dividers, content card outlines (sometimes).
- **Hairline Soft** (`{colors.hairline-soft}` — #f3f4f6): A barely-visible divider used between sections that share the white canvas.

### Text
- **Ink** (`{colors.ink}` — #111111): All headlines and primary text.
- **Body** (`{colors.body}` — #374151): Default running-text color.
- **Muted** (`{colors.muted}` — #6b7280): Secondary text — sub-headings, breadcrumbs, footer body.
- **Muted Soft** (`{colors.muted-soft}` — #898989): Tertiary text — captions, fine-print, copyright lines.
- **On Primary / On Dark** (`{colors.on-primary}` / `{colors.on-dark}` — #ffffff): Text on primary buttons and dark footer.
- **On Dark Soft** (`{colors.on-dark-soft}` — #a1a1aa): Footer body text — slightly muted white for the link rows.

### Semantic
- **Success** (`{colors.success}` — #10b981): Confirmation states, success badges in product UI.
- **Warning** (`{colors.warning}` — #f59e0b): Warning callouts.
- **Error** (`{colors.error}` — #ef4444): Validation errors.

## Typography

### Font Family
The system runs **Cal Sans** for display + brand wordmark and **Inter** for everything else. Cal Sans is Cal.com's custom geometric display typeface — slightly condensed, weight 600, negative letter-spacing. Inter handles body, buttons, navigation, captions, and tabular code blocks. The fallback stack walks `-apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif` for both families.

The split is functional:
- Cal Sans (display, 600 weight, -0.5 to -2px tracking) — h1, h2, h3
- Inter (body + UI, 400-600 weight, 0 letter-spacing) — paragraphs, labels, buttons, nav

### Hierarchy

| Token | Size | Weight | Line Height | Letter Spacing | Use |
|---|---|---|---|---|---|
| `{typography.display-xl}` | 64px | 600 | 1.05 | -2px | Homepage h1 ("The better way to schedule your meetings") — Cal Sans |
| `{typography.display-lg}` | 48px | 600 | 1.1 | -1.5px | Section heads ("Your all-purpose scheduling app") — Cal Sans |
| `{typography.display-md}` | 36px | 600 | 1.15 | -1px | Sub-section heads, card titles — Cal Sans |
| `{typography.display-sm}` | 28px | 600 | 1.2 | -0.5px | CTA-band heads, pricing tier prices — Cal Sans |
| `{typography.title-lg}` | 22px | 600 | 1.3 | -0.3px | Pricing plan names — Inter |
| `{typography.title-md}` | 18px | 600 | 1.4 | 0 | Feature card titles, intro paragraphs |
| `{typography.title-sm}` | 16px | 600 | 1.4 | 0 | Small card titles, list labels |
| `{typography.body-md}` | 16px | 400 | 1.5 | 0 | Default running-text |
| `{typography.body-sm}` | 14px | 400 | 1.5 | 0 | Footer body, fine-print |
| `{typography.caption}` | 13px | 500 | 1.4 | 0 | Badge labels, captions |
| `{typography.code}` | 14px | 400 | 1.5 | 0 | Code snippets, API examples — JetBrains Mono |
| `{typography.button}` | 14px | 600 | 1.0 | 0 | Standard button labels |
| `{typography.nav-link}` | 14px | 500 | 1.4 | 0 | Top-nav menu items |

### Principles
Cal Sans is the brand voice — every display headline uses it. Inter handles the supporting type. The boundary is strict: never put body copy in Cal Sans, never put a display headline in Inter. Cal Sans without negative letter-spacing reads as off-brand — the -0.5 to -2px tracking is part of the voice.

Display weight stays at 600 across all sizes — never 700, never 500. The middle weight is what makes Cal Sans feel modern and confident without becoming bombastic.

### Note on Font Substitutes
If Cal Sans is unavailable, **Inter** at weight 600 with -0.04em letter-spacing is a usable approximation. The geometric character of Cal Sans differs from Inter's humanist forms, but the substitution preserves the weight + tracking signature. **Manrope** at weight 700 is another close alternative.

## Layout

### Spacing System
- **Base unit:** 4px.
- **Tokens:** `{spacing.xxs}` 4px · `{spacing.xs}` 8px · `{spacing.sm}` 12px · `{spacing.md}` 16px · `{spacing.lg}` 24px · `{spacing.xl}` 32px · `{spacing.xxl}` 48px · `{spacing.section}` 96px.
- **Section padding:** `{spacing.section}` (96px) — the universal vertical rhythm between editorial bands.
- **Card internal padding:** `{spacing.xl}` (32px) for feature cards and pricing tier cards; `{spacing.lg}` (24px) for testimonial and product-mockup cards.
- **Gutters:** `{spacing.lg}` (24px) between cards in 3-up grids; `{spacing.md}` (16px) inside footer columns.

### Grid & Container
- **Max content width:** ~1200px centered on marketing pages.
- **Editorial body:** Single 12-column grid; hero band often uses 7/5 split (h1 left, app mockup card right).
- **Feature card grids:** 3-up at desktop, 2-up at tablet, 1-up at mobile.
- **Pricing grid:** 4-up at desktop, 2-up at tablet, 1-up at mobile.
- **Footer:** 4-column link list at desktop, wrapping to 2-up at tablet, 1-up at mobile.

### Whitespace Philosophy
Cal.com uses generous but not excessive whitespace — section padding sits at 96px (modern-SaaS standard), and card internal padding stays at 32px. The rhythm is calibrated for fast scanning: every band has a single h1 + h2 + supporting cards, never densely packed lists. The result reads as confident-not-shouting.

## Elevation & Depth

| Level | Treatment | Use |
|---|---|---|
| Flat | No shadow, no border | Body sections, top nav, hero bands |
| Soft hairline | 1px `{colors.hairline}` border | Inputs, table dividers, occasionally on cards |
| Card surface | `{colors.surface-card}` background — no shadow | Feature cards, testimonials |
| Subtle drop shadow | Faint shadow at low alpha | Pricing tier cards, hover-elevated states (the system uses `0 1px 2px rgba(0,0,0,0.05)` and `0 4px 12px rgba(0,0,0,0.08)`) |
| Featured tier | `{colors.surface-dark}` background, no shadow needed | The featured pricing tier inverts to dark surface — color contrast does the elevation work |

The elevation philosophy is **soft and modern** — small drop shadows on elevated cards, color-block contrast for emphasis. No heavy shadows, no neumorphism, no glassmorphism.

### Decorative Depth
- Calendar widgets and product UI fragments embedded inside marketing cards carry their own internal shadows from the product UI itself — these are not system tokens, they're product chrome shown as content.
- Avatar circles in testimonial sections sometimes carry pastel fill colors (`{colors.badge-orange}`, `{colors.badge-pink}`, etc.) — adds a small chromatic flourish without breaking the monochrome brand voice.

## Shapes

### Border Radius Scale

| Token | Value | Use |
|---|---|---|
| `{rounded.xs}` | 4px | Almost no use — reserved for badge accents |
| `{rounded.sm}` | 6px | Small inline buttons, dropdown items |
| `{rounded.md}` | 8px | Standard CTA buttons, text inputs, category tabs |
| `{rounded.lg}` | 12px | Content cards (feature cards, testimonial cards, pricing tier cards) |
| `{rounded.xl}` | 16px | Hero app-mockup card (a slightly larger radius for the marquee component) |
| `{rounded.pill}` | 9999px | Nav-pill-group, badge pills |
| `{rounded.full}` | 9999px / 50% | Avatars, icon buttons |

### Photography Geometry
Avatar photos use `{rounded.full}` (perfect circles) at 36px or 40px. Product UI fragments inside marketing cards retain their native chrome (which often has its own internal radii — e.g., calendar grid cells, button rows). Hero illustration zones use 16:9 or 4:3 ratios with `{rounded.xl}` corners.

## Components

### Top Navigation

**`top-nav`** — White nav bar pinned to the top of every page. 64px tall, `{colors.canvas}` background. Carries the Cal.com wordmark + logo at left (the lowercase "Cal.com" with the brand circle), primary horizontal menu (Product, Solutions, Resources, Pricing, Enterprise) center, right-side cluster with "Sign in" text-link, "Sign up free" `{component.button-primary}`, and a sometimes-visible language selector. Menu items in `{typography.nav-link}` (Inter 14px / 500).

**`nav-pill-group`** — A small pill-radius wrapper around 2-3 sub-nav segments (e.g., the product-mode switcher between "Personal" / "Teams" / "Enterprise"). Background `{colors.surface-soft}` with internal padding 6px, rounded `{rounded.pill}`. Active segment renders as a white-canvas pill with a subtle drop shadow inside the wrapper. The pill-in-pill treatment is one of Cal.com's signature interactive components.

### Buttons

**`button-primary`** — The signature primary CTA. Background `{colors.primary}` (#111111), text `{colors.on-primary}`, type `{typography.button}` (Inter 14px / 600), padding 12px × 20px, height 40px, rounded `{rounded.md}` (8px). Active state `button-primary-active` shifts to `{colors.primary-active}` (#242424).

**`button-secondary`** — White button with hairline outline. Background `{colors.canvas}`, text `{colors.ink}`, 1px hairline border, same padding + height + radius as primary.

**`button-icon-circular`** — 36 × 36px circular icon button. Background `{colors.canvas}`, hairline border, ink-color icon. Used for share, "view more", carousel arrows.

**`button-text-link`** — Inline text button, no background. Used for "Sign in" in the top nav and inline CTA links inside cards.

**`text-link`** — Inline body links in `{colors.ink}` (the brand keeps inline links monochrome). Underlined on hover (not documented per the no-hover policy, but mentioned for context).

### Cards & Containers

**`hero-band`** — White-canvas hero with a 7-5 grid: h1 + sub-headline + button row on the left, `{component.hero-app-mockup-card}` on the right. Vertical padding `{spacing.section}` (96px).

**`hero-app-mockup-card`** — A larger product-UI mockup card showing the actual Cal.com booking widget with calendar grid, time slots, and a primary "Confirm" button inside. Background `{colors.canvas}`, 1px hairline border, rounded `{rounded.xl}` (16px), subtle drop shadow. Used as the hero's right-side artifact.

**`feature-card`** — Used in 3-up feature grids ("With us, appointment scheduling is easy"). Background `{colors.surface-card}` (#f5f5f5), rounded `{rounded.lg}` (12px), internal padding `{spacing.xl}` (32px). Carries a small icon at top, an `{typography.title-md}` headline, and a body description in `{typography.body-md}`.

**`feature-icon-card`** — A simpler card variant used in 4-up feature grids on lower-density bands. Background `{colors.canvas}` with hairline border, rounded `{rounded.lg}`, padding `{spacing.lg}` (24px). Carries a small icon, `{typography.title-sm}` title, short description.

**`product-mockup-card`** — A card showing actual Cal.com product UI fragments (workflow editor, calendar grid, integration grid, automation flow). Background `{colors.canvas}`, rounded `{rounded.lg}`, padding `{spacing.lg}` (24px). The product UI inside has its own internal chrome — these cards display the product, they don't decorate around it.

**`testimonial-card`** — Used in customer-quote grids. Background `{colors.surface-card}`, rounded `{rounded.lg}`, padding `{spacing.lg}` (24px). Top row carries a `{component.avatar-circle}` + name + role; below sits the testimonial quote in `{typography.body-md}`.

**`pricing-tier-card`** — Standard tier card. Background `{colors.canvas}`, rounded `{rounded.lg}`, padding `{spacing.xl}` (32px). Carries the plan name in `{typography.title-lg}`, price in `{typography.display-sm}`, feature checklist in `{typography.body-md}`, and a `{component.button-primary}` at the bottom.

**`pricing-tier-card-featured`** — The featured tier (typically "Teams"). Background flips to `{colors.surface-dark}` (#101010), text inverts to `{colors.on-dark}`. The dark surface IS the featured-tier signal — no accent border, no badge, no scale shift.

### Inputs & Forms

**`text-input`** — Standard text input. Background `{colors.canvas}`, text `{colors.ink}`, type `{typography.body-md}`, rounded `{rounded.md}` (8px), padding 10px × 14px, height 40px. 1px hairline border in `{colors.hairline}`.

**`text-input-focused`** — Focus state. Border thickens or shifts to `{colors.ink}` for emphasis.

### Tags / Badges

**`badge-pill`** — Small pill label used for category tags ("Product", "Article", "New") and pastel-fill avatar substitutes. Background `{colors.surface-card}` or one of the badge pastels (`{colors.badge-orange}`, `{colors.badge-pink}`, etc.), text `{colors.ink}`, type `{typography.caption}` (13px / 500), rounded `{rounded.pill}`, padding 4px × 12px.

**`avatar-circle`** — 36px diameter, rounded `{rounded.full}`. Either holds a photo or a pastel fill with initials in `{typography.caption}`.

**`rating-stars`** — Inline star rating in `{colors.badge-orange}` (#fb923c). Used near testimonial avatars to display a 5-star satisfaction score.

### Tab / Filter

**`category-tab`** + **`category-tab-active`** — Used inside the nav-pill-group. Inactive: transparent background, `{colors.muted}` text. Active: `{colors.canvas}` background, `{colors.ink}` text, subtle drop shadow inside the pill-group wrapper. Padding 8px × 14px, rounded `{rounded.md}`.

### CTA / Footer

**`cta-band-light`** — A pre-footer "Smarter, simpler scheduling" CTA card. Background `{colors.surface-card}`, rounded `{rounded.lg}`, padding `{spacing.xxl}` (48px). Carries an h2 in `{typography.display-sm}`, a sub-line, and a `{component.button-primary}` centered.

**`footer`** — Dark navy footer that closes every page. Background `{colors.surface-dark}` (#101010), text `{colors.on-dark-soft}`. 4-column link list at desktop covering Product / Solutions / Company / Resources. Vertical padding 64px. The Cal.com wordmark sits at the top-left in `{colors.on-dark}`. The footer is the only dark surface on every page — the deliberate inversion visually closes the page.

## Do's and Don'ts

### Do
- Reserve `{colors.primary}` (#111111) for primary CTAs and h1/h2 type. Cal.com's button is near-black, not blue.
- Use Cal Sans for every display headline. Pair with Inter body. Never blur the boundary.
- Apply negative letter-spacing on display sizes (-0.5 to -2px). Cal Sans without it reads as off-brand.
- Use `{component.feature-card}` (light gray) and `{component.product-mockup-card}` (white with chrome) deliberately — the gray cards signal "abstract feature claim", white cards signal "look at the actual product".
- Embed real product UI fragments inside marketing cards. Don't paint marketing illustrations of the product when you can show the product itself.
- Keep avatar circles at 36px, perfect circles, sometimes with pastel fills. Avatars are the only place where badge pastels appear.
- Use `{component.nav-pill-group}` for grouped sub-nav segments. The pill-in-pill treatment is signature.
- End every page with the dark footer. The light-to-dark transition is part of the editorial rhythm.

### Don't
- Don't use accent colors (`{colors.brand-accent}`, badge pastels) on primary CTAs. The system is monochrome at the action layer.
- Don't bold display weight beyond 600. Cal Sans at 700 reads as bombastic.
- Don't use rounded radius beyond `{rounded.xl}` (16px) on cards. Larger radii read as consumer-app, not professional booking software.
- Don't put dark surface cards anywhere except the footer and the featured pricing tier. The dark surface is a deliberate, scarce signal.
- Don't repeat the same surface mode in two consecutive bands. Cal.com's pacing alternates white → light-gray → white → product-mockup-card → white → dark-footer.
- Don't add hover state styling beyond what the system already encodes — primary darkens on press; nothing else changes.

## Responsive Behavior

### Breakpoints

| Name | Width | Key Changes |
|---|---|---|
| Mobile | < 768px | Hamburger nav; hero h1 64→32px; hero-app-mockup-card stacks below content; feature grids 1-up; pricing 1-up; footer 4 cols → 1 |
| Tablet | 768–1024px | Top nav stays horizontal but tightens; nav-pill-group wraps; feature cards 2-up; pricing 2-up |
| Desktop | 1024–1440px | Full top-nav with all menu items; 3-up feature cards; 4-up pricing tiers |
| Wide | > 1440px | Same as desktop with more outer breathing room; max content width caps at 1200px |

### Touch Targets
- `{component.button-primary}` at minimum 40 × 40px.
- `{component.button-icon-circular}` at exactly 36 × 36 — slightly under WCAG's 44 × 44 but the centered icon and full-circle silhouette compensate.
- `{component.text-input}` height is 40px.
- `{component.category-tab}` rendered inside nav-pill-group has 8 × 14 padding; effective tap area meets 44px+ with the surrounding pill.

### Collapsing Strategy
- Top nav collapses to hamburger at < 768px; menu opens as a full-screen sheet.
- Hero band's 7-5 grid collapses to single-column on mobile — h1 + sub-head + buttons first, then the app-mockup card below.
- Feature grids reduce columns rather than scaling cards down.
- Pricing tier cards collapse 4 → 2 → 1; featured-tier dark surface stays visually distinct at every breakpoint.
- Nav-pill-group wraps to multi-row on tablet if the segments don't fit horizontally.
- Avatar + testimonial card layouts stay grid-aligned at every breakpoint.

### Image Behavior
- Product UI fragments inside cards retain native aspect ratios; the cards themselves resize.
- Avatar photos crop to circles at every breakpoint.
- Hero app-mockup card scales proportionally on mobile — the calendar grid stays legible.

## Iteration Guide

1. Focus on ONE component at a time. Reference its YAML key directly (`{component.feature-card}`, `{component.pricing-tier-card-featured}`).
2. Variants of an existing component (`-active`, `-disabled`, `-focused`) live as separate entries in `components:`.
3. Use `{token.refs}` everywhere — never inline hex.
4. Never document hover. Default and Active/Pressed states only.
5. Display headlines stay Cal Sans 600 with negative letter-spacing. Body stays Inter 400. The trinity does not blur.
6. The dark footer is the only dark surface on most pages. Don't add other dark cards casually.
7. When in doubt about emphasis: bigger Cal Sans before bolder Cal Sans.

## Known Gaps

- The dembrandt frequency analyzer captured `Buttons: 0 variants` — Cal.com renders most CTAs as styled `<a>` link elements rather than `<button>` tags, which dembrandt's button selector doesn't capture. Button styles are documented from screenshot ground-truth + standard Cal Sans / Inter baselines.
- Cal Sans is licensed to Cal.com and not available as a public web font; substitutes are documented in the typography section.
- The badge pastel set (orange / pink / violet / emerald) is documented from observed avatar fill colors; exact hex values may shift seasonally.
- Animation and transition timings (calendar slot picker, schedule confirmation, integration grid hover-reveal) are not in scope.
- Form validation states beyond `{component.text-input-focused}` are not extracted — error / success states would need a sign-up or booking flow to confirm.
- The actual booking widget surface (cal.com/{username}) is the product, not a marketing surface; its spec is out of scope.
- Avatar photos in testimonial sections sometimes carry pastel circular fills with initials instead of photographs; both treatments coexist on the same page.


---

## Brand: `clay`

---
version: alpha
name: Clay-design-analysis
description: A vibrant claymation-meets-data interface for Clay.com (GTM data-orchestration platform). Anchors on white canvas with dark-navy primary CTAs, custom rounded display type, and saturated single-color feature cards — hot pink, deep teal, lavender, peach, ochre — that punctuate long-scroll explainer pages. Brand voltage comes from 3D-rendered claymation illustrations (mountains, characters, mascots) used as full-bleed hero artifacts and the bright multi-color card surfaces showing product UI fragments.

colors:
  primary: "#0a0a0a"
  primary-active: "#1f1f1f"
  primary-disabled: "#e5e5e5"
  ink: "#0a0a0a"
  body: "#3a3a3a"
  body-strong: "#1a1a1a"
  muted: "#6a6a6a"
  muted-soft: "#9a9a9a"
  hairline: "#e5e5e5"
  hairline-soft: "#f0f0f0"
  canvas: "#fffaf0"
  surface-soft: "#faf5e8"
  surface-card: "#f5f0e0"
  surface-strong: "#ebe6d6"
  surface-dark: "#0a1a1a"
  surface-dark-elevated: "#1a2a2a"
  on-primary: "#ffffff"
  on-dark: "#ffffff"
  on-dark-soft: "#a0a0a0"
  brand-pink: "#ff4d8b"
  brand-teal: "#1a3a3a"
  brand-lavender: "#b8a4ed"
  brand-peach: "#ffb084"
  brand-ochre: "#e8b94a"
  brand-mint: "#a4d4c5"
  brand-coral: "#ff6b5a"
  success: "#22c55e"
  warning: "#f59e0b"
  error: "#ef4444"

typography:
  display-xl:
    fontFamily: "Plain Black, Inter, sans-serif"
    fontSize: 72px
    fontWeight: 500
    lineHeight: 1
    letterSpacing: -2.5px
  display-lg:
    fontFamily: "Plain Black, Inter, sans-serif"
    fontSize: 56px
    fontWeight: 500
    lineHeight: 1.05
    letterSpacing: -2px
  display-md:
    fontFamily: "Plain Black, Inter, sans-serif"
    fontSize: 40px
    fontWeight: 500
    lineHeight: 1.1
    letterSpacing: -1px
  display-sm:
    fontFamily: "Plain Black, Inter, sans-serif"
    fontSize: 32px
    fontWeight: 500
    lineHeight: 1.15
    letterSpacing: -0.5px
  title-lg:
    fontFamily: "Inter, sans-serif"
    fontSize: 24px
    fontWeight: 600
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
  xs: 6px
  sm: 8px
  md: 12px
  lg: 16px
  xl: 24px
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
    height: 44px
  button-primary-active:
    backgroundColor: "{colors.primary-active}"
    textColor: "{colors.on-primary}"
    rounded: "{rounded.md}"
  button-primary-disabled:
    backgroundColor: "{colors.primary-disabled}"
    textColor: "{colors.muted}"
    rounded: "{rounded.md}"
  button-secondary:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.button}"
    rounded: "{rounded.md}"
    padding: 12px 20px
    height: 44px
  button-on-color:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.button}"
    rounded: "{rounded.md}"
    padding: 12px 20px
    height: 44px
  button-text-link:
    backgroundColor: transparent
    textColor: "{colors.ink}"
    typography: "{typography.button}"
  text-link:
    backgroundColor: transparent
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
  top-nav:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.nav-link}"
    height: 64px
  hero-band:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.display-xl}"
    padding: 96px
  hero-illustration-card:
    backgroundColor: "{colors.surface-soft}"
    textColor: "{colors.ink}"
    rounded: "{rounded.xl}"
  feature-card-pink:
    backgroundColor: "{colors.brand-pink}"
    textColor: "{colors.on-primary}"
    typography: "{typography.title-md}"
    rounded: "{rounded.xl}"
    padding: 32px
  feature-card-teal:
    backgroundColor: "{colors.brand-teal}"
    textColor: "{colors.on-dark}"
    typography: "{typography.title-md}"
    rounded: "{rounded.xl}"
    padding: 32px
  feature-card-lavender:
    backgroundColor: "{colors.brand-lavender}"
    textColor: "{colors.ink}"
    typography: "{typography.title-md}"
    rounded: "{rounded.xl}"
    padding: 32px
  feature-card-peach:
    backgroundColor: "{colors.brand-peach}"
    textColor: "{colors.ink}"
    typography: "{typography.title-md}"
    rounded: "{rounded.xl}"
    padding: 32px
  feature-card-ochre:
    backgroundColor: "{colors.brand-ochre}"
    textColor: "{colors.ink}"
    typography: "{typography.title-md}"
    rounded: "{rounded.xl}"
    padding: 32px
  feature-card-cream:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ink}"
    typography: "{typography.title-md}"
    rounded: "{rounded.xl}"
    padding: 32px
  product-mockup-card:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.title-md}"
    rounded: "{rounded.lg}"
    padding: 24px
  testimonial-card:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.lg}"
    padding: 24px
  pricing-tier-card:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.title-lg}"
    rounded: "{rounded.lg}"
    padding: 32px
  pricing-tier-card-featured:
    backgroundColor: "{colors.brand-teal}"
    textColor: "{colors.on-dark}"
    typography: "{typography.title-lg}"
    rounded: "{rounded.lg}"
    padding: 32px
  text-input:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.md}"
    padding: 12px 16px
    height: 44px
  text-input-focused:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    rounded: "{rounded.md}"
  category-tab:
    backgroundColor: transparent
    textColor: "{colors.muted}"
    typography: "{typography.nav-link}"
    rounded: "{rounded.pill}"
    padding: 8px 16px
  category-tab-active:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ink}"
    typography: "{typography.nav-link}"
    rounded: "{rounded.pill}"
  badge-pill:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ink}"
    typography: "{typography.caption}"
    rounded: "{rounded.pill}"
    padding: 4px 12px
  expert-card:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.title-md}"
    rounded: "{rounded.lg}"
    padding: 24px
  cta-band-illustrated:
    backgroundColor: "{colors.surface-soft}"
    textColor: "{colors.ink}"
    typography: "{typography.display-md}"
    rounded: "{rounded.xl}"
    padding: 80px
  footer:
    backgroundColor: "{colors.surface-soft}"
    textColor: "{colors.body}"
    typography: "{typography.body-sm}"
    padding: 80px
---

## Overview

Clay.com is the most playful B2B SaaS interface in the GTM-data category. The base atmosphere is **cream-tinted white canvas** (`{colors.canvas}` — #fffaf0) holding dark-navy ink type and **3D-rendered claymation illustrations** (mountains, mascot characters, peach/ochre/lavender landscapes) as the dominant brand voltage. Where most data-platform brands play it cool with grids and gradients, Clay leans hard into hand-crafted-looking 3D illustrations and saturated single-color feature cards.

Type voice runs **Plain Black** (or substituted with Inter weight 500-600) — a custom rounded display face used at very large sizes (72px hero) with negative letter-spacing. Body type uses Inter at standard weights. The display weight stays at 500, never bolder — the rounded character of the typeface gives it warmth without needing weight.

Component voltage comes from **saturated single-color feature cards** in a 6-color palette: hot pink, deep teal, lavender, peach, ochre, and cream-card. Each card shows product UI fragments at small scale — Claygent agent runs, sequencer flows, CRM enrichment outputs. The colored card IS the primary visual element on every long-scroll page.

**Key Characteristics:**
- Cream-tinted white canvas (`{colors.canvas}` — #fffaf0). The warmth differentiates Clay from cool-gray competitor sites.
- Dark navy/black primary CTAs (`{colors.primary}` — #0a0a0a). Buttons rounded `{rounded.md}` (12px) — friendly modern but not pill.
- 6-color saturated feature card palette: `{colors.brand-pink}`, `{colors.brand-teal}`, `{colors.brand-lavender}`, `{colors.brand-peach}`, `{colors.brand-ochre}`, `{colors.surface-card}` (cream).
- 3D claymation illustrations (mountains, characters, abstract shapes) as full-bleed hero artifacts — the brand's most-recognized visual element.
- Custom rounded Plain Black display typeface at 500 weight with -1 to -2.5px letter-spacing on display sizes.
- Border radius is generous: `{rounded.md}` (12px) for buttons + inputs, `{rounded.lg}` (16px) for content cards, `{rounded.xl}` (24px) for feature cards. The bigger radius matches the rounded display type's character.
- Product UI fragments embedded inside colored cards at small scale — agent run logs, sequencer flows, enrichment results.
- Section rhythm `{spacing.section}` (96px) between major bands.
- Footer is cream-tinted (`{colors.surface-soft}`) — Clay does NOT use a dark footer. Even the closing band stays warm-light.

## Colors

### Brand & Accent
- **Primary** (`{colors.primary}` — #0a0a0a): All primary CTAs, h1/h2 ink type. Near-black with slight warmth.
- **Brand Pink** (`{colors.brand-pink}` — #ff4d8b): Hot-pink feature card surface. Sequencer / outbound feature pages.
- **Brand Teal** (`{colors.brand-teal}` — #1a3a3a): Deep teal-green feature card. Often the featured pricing tier.
- **Brand Lavender** (`{colors.brand-lavender}` — #b8a4ed): Soft lavender feature card.
- **Brand Peach** (`{colors.brand-peach}` — #ffb084): Warm peach feature card.
- **Brand Ochre** (`{colors.brand-ochre}` — #e8b94a): Mustard / ochre feature card and illustration accents.
- **Brand Mint** (`{colors.brand-mint}` — #a4d4c5): Mint accent on illustrations and small badges.
- **Brand Coral** (`{colors.brand-coral}` — #ff6b5a): Coral accent for highlights.

### Surface
- **Canvas** (`{colors.canvas}` — #fffaf0): The default page floor. Cream-tinted white.
- **Surface Soft** (`{colors.surface-soft}` — #faf5e8): Footer and CTA-band background.
- **Surface Card** (`{colors.surface-card}` — #f5f0e0): Cream feature cards, testimonial cards.
- **Surface Strong** (`{colors.surface-strong}` — #ebe6d6): Stronger cream for emphasized bands.
- **Surface Dark** (`{colors.surface-dark}` — #0a1a1a): Dark teal-tinted near-black for occasional dark cards (rare).
- **Surface Dark Elevated** (`{colors.surface-dark-elevated}` — #1a2a2a): Elevated dark cards.
- **Hairline** (`{colors.hairline}` — #e5e5e5): 1px borders on cards and inputs.

### Text
- **Ink** (`{colors.ink}` — #0a0a0a): Headlines and primary text.
- **Body Strong** (`{colors.body-strong}` — #1a1a1a): Emphasized body, lead paragraphs.
- **Body** (`{colors.body}` — #3a3a3a): Default running-text.
- **Muted** (`{colors.muted}` — #6a6a6a): Sub-headings, breadcrumbs, footer body.
- **Muted Soft** (`{colors.muted-soft}` — #9a9a9a): Captions, fine-print.
- **On Primary / On Dark** (`{colors.on-primary}` — #ffffff): Text on primary buttons + dark feature cards (teal).

### Semantic
- **Success** (`{colors.success}` — #22c55e): Success states.
- **Warning** (`{colors.warning}` — #f59e0b): Warning callouts.
- **Error** (`{colors.error}` — #ef4444): Validation errors.

## Typography

### Font Family
The system runs **Plain Black** (a custom rounded display face) for headlines and **Inter** for body, navigation, and UI. Plain Black at weight 500 with negative letter-spacing handles every display headline; Inter handles the rest. The fallback stack walks `Inter, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif` for both.

### Hierarchy

| Token | Size | Weight | Line Height | Letter Spacing | Use |
|---|---|---|---|---|---|
| `{typography.display-xl}` | 72px | 500 | 1.0 | -2.5px | Homepage h1 ("Go to market with unique data") — Plain Black |
| `{typography.display-lg}` | 56px | 500 | 1.05 | -2px | Section heads — Plain Black |
| `{typography.display-md}` | 40px | 500 | 1.1 | -1px | Sub-section heads, product names |
| `{typography.display-sm}` | 32px | 500 | 1.15 | -0.5px | CTA-band heads, feature card titles |
| `{typography.title-lg}` | 24px | 600 | 1.3 | -0.3px | Pricing plan names, larger feature titles |
| `{typography.title-md}` | 18px | 600 | 1.4 | 0 | Card titles, intro paragraphs |
| `{typography.title-sm}` | 16px | 600 | 1.4 | 0 | Small card titles, list labels |
| `{typography.body-md}` | 16px | 400 | 1.55 | 0 | Default running-text |
| `{typography.body-sm}` | 14px | 400 | 1.55 | 0 | Footer body, fine-print |
| `{typography.caption}` | 13px | 500 | 1.4 | 0 | Badge labels, captions |
| `{typography.caption-uppercase}` | 12px | 600 | 1.4 | 1.5px | Section labels, "FEATURED" badges |
| `{typography.button}` | 14px | 600 | 1.0 | 0 | Standard button labels |
| `{typography.nav-link}` | 14px | 500 | 1.4 | 0 | Top-nav menu items |

### Principles
Plain Black at weight 500 + negative letter-spacing IS the brand voice. Going to weight 700 reads as bombastic; the rounded character of the typeface adds warmth that bolder weight would flatten.

The body-vs-display split is functional: Plain Black for Plain Black moments (headlines), Inter for everything else (running text, UI, buttons). Mixing them is a system violation.

### Note on Font Substitutes
If Plain Black is unavailable, **Inter** at weight 500 with -0.05em letter-spacing is a usable approximation. **Söhne Breit** at weight Buch is an alternative if licensed. **Recoleta** at weight 500 carries similar rounded-display warmth.

## Layout

### Spacing System
- **Base unit:** 4px.
- **Tokens:** `{spacing.xxs}` 4px · `{spacing.xs}` 8px · `{spacing.sm}` 12px · `{spacing.md}` 16px · `{spacing.lg}` 24px · `{spacing.xl}` 32px · `{spacing.xxl}` 48px · `{spacing.section}` 96px.
- **Section padding:** `{spacing.section}` (96px) between major editorial bands.
- **Card internal padding:** `{spacing.xl}` (32px) for feature cards and pricing tiers; `{spacing.lg}` (24px) for testimonial and product mockup cards.

### Grid & Container
- **Max content width:** ~1280px centered.
- **Editorial body:** Single 12-column grid; hero often uses 7/5 split (h1 left, illustration right).
- **Feature card grids:** 3-up at desktop, 2-up at tablet, 1-up at mobile.
- **Pricing grid:** 3-4 up at desktop, 1-up at mobile.

### Whitespace Philosophy
Clay uses generous whitespace around big rounded display headlines and saturated feature cards. The cream canvas + colored cards + 3D illustrations create a playful warmth that competing data-platform sites lack.

## Elevation & Depth

| Level | Treatment | Use |
|---|---|---|
| Flat | No shadow, no border | Body sections, top nav, hero |
| Soft hairline | 1px `{colors.hairline}` border | Inputs, small content cards |
| Saturated card | Brand pink/teal/lavender/peach/ochre fill — no shadow | Feature cards |
| Cream card | `{colors.surface-card}` background — no shadow | Testimonial, secondary cards |
| Subtle drop shadow | Faint shadow at low alpha | Hover-elevated states (rare) |

The system uses no heavy shadows. Depth comes from the saturated color contrast between cream canvas and bright feature cards.

### Decorative Depth
- **3D claymation illustrations** — mountains, characters, mascots rendered in a hand-crafted 3D style. The brand's most-recognized depth element. Not a token — these are illustrated assets.
- **Mascot characters** appear as inline figures in feature cards and CTAs.

## Shapes

### Border Radius Scale

| Token | Value | Use |
|---|---|---|
| `{rounded.xs}` | 6px | Small badges, dropdown items |
| `{rounded.sm}` | 8px | Small buttons, hairline-border accent |
| `{rounded.md}` | 12px | Standard CTA buttons, text inputs |
| `{rounded.lg}` | 16px | Content cards, testimonial cards, pricing tiers |
| `{rounded.xl}` | 24px | Feature cards (the saturated brand-color cards) |
| `{rounded.pill}` | 9999px | Category tabs, badge pills |
| `{rounded.full}` | 9999px / 50% | Avatars, icon buttons |

## Components

### Top Navigation

**`top-nav`** — Cream nav bar pinned to top. 64px tall, `{colors.canvas}` background. Carries the Clay logo + wordmark at left, primary horizontal menu (Product, Solutions, Resources, Pricing, Customers) center, right-side cluster with "Sign in" + "Try free" `{component.button-primary}`. Menu items in `{typography.nav-link}` (Inter 14px / 500).

### Buttons

**`button-primary`** — Background `{colors.primary}` (near-black), text `{colors.on-primary}` (white), type `{typography.button}` (Inter 14px / 600), padding 12px × 20px, height 44px, rounded `{rounded.md}` (12px).

**`button-secondary`** — Cream button with hairline outline. Background `{colors.canvas}`, text `{colors.ink}`, 1px hairline border.

**`button-on-color`** — White button used over saturated brand-color feature cards. Same shape as primary but inverted (white background, ink text).

**`button-text-link`** — Inline text button, no background. Used for "Sign in" and inline link CTAs.

**`text-link`** — Inline body links in `{colors.ink}` with underline.

### Cards & Containers

**`hero-band`** — Cream-canvas hero with 7-5 grid: h1 + sub-headline + button row on the left, 3D claymation illustration on the right. Vertical padding `{spacing.section}` (96px).

**`hero-illustration-card`** — Right-side artifact holding 3D claymation illustration (mountains, mascot character, abstract shapes). Background `{colors.surface-soft}`, rounded `{rounded.xl}` (24px). The illustration IS the artifact.

**`feature-card-pink`** / **`feature-card-teal`** / **`feature-card-lavender`** / **`feature-card-peach`** / **`feature-card-ochre`** — Saturated single-color feature cards. Background varies per variant; rounded `{rounded.xl}` (24px); padding `{spacing.xl}` (32px). Each card carries an h3 in `{typography.title-md}`, a body description, and a product UI fragment or mascot illustration. Text color flips to `{colors.on-dark}` (white) on pink and teal cards, `{colors.ink}` (dark) on lavender/peach/ochre cards (the lighter saturations have enough contrast for dark text).

**`feature-card-cream`** — Lower-key feature card variant on `{colors.surface-card}`. Used for less-emphasized features that don't warrant a saturated color.

**`product-mockup-card`** — Card showing actual Clay product UI (Claygent agent runs, sequencer flows, CRM enrichment tables). Background `{colors.canvas}` with hairline border, rounded `{rounded.lg}`, padding `{spacing.lg}` (24px).

**`testimonial-card`** — Customer quote cards. Background `{colors.surface-card}` (cream), rounded `{rounded.lg}`, padding `{spacing.lg}` (24px). Top row has avatar + name + role; below sits the testimonial in `{typography.body-md}`.

**`pricing-tier-card`** — Standard tier card. Background `{colors.canvas}` with hairline, rounded `{rounded.lg}`, padding `{spacing.xl}` (32px).

**`pricing-tier-card-featured`** — The featured tier flips to `{colors.brand-teal}` (deep teal-green). The teal surface IS the featured signal.

**`expert-card`** — Used on /experts page. Background `{colors.canvas}` with hairline, rounded `{rounded.lg}`, padding `{spacing.lg}`. Carries an avatar at top, expert name, specialization, and a "Book session" link.

### Inputs & Forms

**`text-input`** — Background `{colors.canvas}`, text `{colors.ink}`, type `{typography.body-md}`, rounded `{rounded.md}` (12px), padding 12px × 16px, height 44px. 1px hairline border.

**`text-input-focused`** — Border thickens to ink for emphasis.

### Tabs / Badges

**`category-tab`** + **`category-tab-active`** — Pill-shaped tabs in sub-nav. Inactive: transparent + muted text. Active: cream-card background + ink text. Padding 8px × 16px.

**`badge-pill`** — Small cream-fill pill labels in `{typography.caption}` (13px / 500), rounded `{rounded.pill}`.

### CTA / Footer

**`cta-band-illustrated`** — Pre-footer "Turn your growth ideas into reality today" band. Background `{colors.surface-soft}`, rounded `{rounded.xl}`, padding 80px. Carries an h2 in `{typography.display-md}`, a sub-line, and a `{component.button-primary}` — usually paired with a 3D illustration of a mascot or scene.

**`footer`** — Cream-tinted footer (NOT dark navy unlike most SaaS sites). Background `{colors.surface-soft}`, text `{colors.body}`. 4-column link list. Vertical padding 80px. Often features a horizon-style 3D mountain illustration at the very bottom — Clay's signature footer mountain.

## Do's and Don'ts

### Do
- Anchor every page on the cream canvas (`{colors.canvas}` — #fffaf0). The warm tint differentiates Clay from cool-gray data sites.
- Use 3D claymation illustrations as hero artifacts. Hand-crafted 3D characters and mountains ARE the brand.
- Cycle saturated feature cards across the page — pink → teal → lavender → peach → ochre → cream. Repeating the same color twice in a row reads as off-rhythm.
- Use Plain Black at weight 500 with negative letter-spacing on every display headline.
- Show product UI fragments inside saturated feature cards. The brand voltage is product-driven, not abstract.
- Use cream footer (NOT dark). Clay deliberately closes pages with warm cream rather than the standard dark-footer SaaS template.
- Anchor every band with `{spacing.section}` (96px) vertical rhythm.

### Don't
- Don't use cool grays for canvas. The cream tint is non-negotiable.
- Don't use a 7th brand-color card. The 6-color palette is saturated enough.
- Don't bold display weight beyond 500. Plain Black at 700 reads as bombastic.
- Don't repeat the same brand-color card twice in a row.
- Don't replace claymation illustrations with flat vector art. The hand-crafted 3D character IS the brand voice.
- Don't use a dark footer. The cream footer is part of the system's warm-throughout pacing.
- Don't add hover state styling beyond what the system already encodes.

## Responsive Behavior

### Breakpoints

| Name | Width | Key Changes |
|---|---|---|
| Mobile | < 768px | Hamburger nav; hero h1 72→36px; hero-illustration-card stacks below; feature grids 1-up; pricing 1-up |
| Tablet | 768–1024px | Top nav tightens; feature cards 2-up; pricing 2-up |
| Desktop | 1024–1440px | Full top-nav; 3-up feature cards; 3-up pricing tiers |
| Wide | > 1440px | Same as desktop with more breathing room; max content 1280px |

### Touch Targets
- `{component.button-primary}` at minimum 44 × 44px (matches WCAG AAA).
- `{component.text-input}` height is 44px.

### Collapsing Strategy
- Top nav collapses to hamburger at < 768px.
- Hero 7-5 grid → single-column on mobile.
- Feature card grids reduce columns rather than scaling.
- Saturated feature cards retain their colored fill at every breakpoint.
- Pricing tier cards collapse 4 → 2 → 1.

## Iteration Guide

1. Focus on ONE component at a time. Reference its YAML key (`{component.feature-card-pink}`, `{component.pricing-tier-card-featured}`).
2. Pick the right brand-color card for the feature: pink for outbound/sequencer, teal for enterprise/featured, lavender for AI-agent products, peach for general SaaS warmth, ochre for community / experts.
3. Variants of an existing component (`-active`, `-disabled`) live as separate entries.
4. Use `{token.refs}` everywhere — never inline hex.
5. Never document hover.
6. Display headlines stay Plain Black 500 with negative letter-spacing. Body stays Inter 400.
7. The cream-throughout palette is a system contract — don't add a dark footer.

## Known Gaps

- Plain Black is licensed to Clay and not available as a public web font; Inter weight 500 with negative letter-spacing is the closest substitute.
- 3D claymation illustrations are commissioned assets, not system tokens — they're rendered per-page.
- The mascot characters (named characters that recur across the site) are illustrated assets; their exact lineage and naming are not formalized in tokens.
- Animation and transition timings (3D illustration parallax on scroll, feature card entrance animations) are not in scope.
- Form validation states beyond `{component.text-input-focused}` are not extracted.
- The actual Clay product surface (in-app data tables, formula editor, agent builder) shares some tokens with the marketing site but adds many product-specific components that are out of scope.


---

## Brand: `figma`

---
version: alpha
name: Figma-design-analysis
description: "A confident black-and-white editorial frame interrupted by oversized, hand-cut pastel color blocks. The marketing canvas is rigorously monochrome — figmaSans variable type, pure white surfaces, pure black ink, pill-shaped CTAs — while each story section drops the page into a saturated lime, lavender, cream, mint, or pink panel that reads like a sticky note placed on a clean desk. The result is a design system that feels both technical and joyful — a tool for serious work, made by people who like color."

colors:
  primary: "#000000"
  on-primary: "#ffffff"
  ink: "#000000"
  canvas: "#ffffff"
  inverse-canvas: "#000000"
  inverse-ink: "#ffffff"
  on-inverse-soft: "#ffffff"
  hairline: "#e6e6e6"
  hairline-soft: "#f1f1f1"
  surface-soft: "#f7f7f5"
  block-lime: "#dceeb1"
  block-lilac: "#c5b0f4"
  block-cream: "#f4ecd6"
  block-pink: "#efd4d4"
  block-mint: "#c8e6cd"
  block-coral: "#f3c9b6"
  block-navy: "#1f1d3d"
  accent-magenta: "#ff3d8b"
  semantic-success: "#1ea64a"
  overlay-scrim: "#000000"

typography:
  display-xl:
    fontFamily: figmaSans
    fontSize: 86px
    fontWeight: 340
    lineHeight: 1.00
    letterSpacing: -1.72px
    fontFeature: kern
  display-lg:
    fontFamily: figmaSans
    fontSize: 64px
    fontWeight: 340
    lineHeight: 1.10
    letterSpacing: -0.96px
    fontFeature: kern
  headline:
    fontFamily: figmaSans
    fontSize: 26px
    fontWeight: 540
    lineHeight: 1.35
    letterSpacing: -0.26px
    fontFeature: kern
  subhead:
    fontFamily: figmaSans
    fontSize: 26px
    fontWeight: 340
    lineHeight: 1.35
    letterSpacing: -0.26px
    fontFeature: kern
  card-title:
    fontFamily: figmaSans
    fontSize: 24px
    fontWeight: 700
    lineHeight: 1.45
    letterSpacing: 0
    fontFeature: kern
  body-lg:
    fontFamily: figmaSans
    fontSize: 20px
    fontWeight: 330
    lineHeight: 1.40
    letterSpacing: -0.14px
    fontFeature: kern
  body:
    fontFamily: figmaSans
    fontSize: 18px
    fontWeight: 320
    lineHeight: 1.45
    letterSpacing: -0.26px
    fontFeature: kern
  body-sm:
    fontFamily: figmaSans
    fontSize: 16px
    fontWeight: 330
    lineHeight: 1.45
    letterSpacing: -0.14px
    fontFeature: kern
  link:
    fontFamily: figmaSans
    fontSize: 20px
    fontWeight: 480
    lineHeight: 1.40
    letterSpacing: -0.10px
    fontFeature: kern
  button:
    fontFamily: figmaSans
    fontSize: 20px
    fontWeight: 480
    lineHeight: 1.40
    letterSpacing: -0.10px
    fontFeature: kern
  eyebrow:
    fontFamily: figmaMono
    fontSize: 18px
    fontWeight: 400
    lineHeight: 1.30
    letterSpacing: 0.54px
    fontFeature: kern
  caption:
    fontFamily: figmaMono
    fontSize: 12px
    fontWeight: 400
    lineHeight: 1.00
    letterSpacing: 0.60px
    fontFeature: kern

rounded:
  xs: 2px
  sm: 6px
  md: 8px
  lg: 24px
  xl: 32px
  pill: 50px
  full: 9999px

spacing:
  hair: 1px
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
    rounded: "{rounded.pill}"
    padding: 10px 20px
  button-primary-pressed:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button}"
    rounded: "{rounded.pill}"
  button-secondary:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.button}"
    rounded: "{rounded.pill}"
    padding: 8px 18px 10px
  button-tertiary-text:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.link}"
    rounded: "{rounded.full}"
    padding: 8px 12px
  button-icon-circular:
    backgroundColor: "{colors.surface-soft}"
    textColor: "{colors.ink}"
    typography: "{typography.button}"
    rounded: "{rounded.full}"
    size: 40px
  button-icon-circular-inverse:
    backgroundColor: "{colors.on-inverse-soft}"
    textColor: "{colors.inverse-ink}"
    typography: "{typography.button}"
    rounded: "{rounded.full}"
    size: 40px
  button-magenta-promo:
    backgroundColor: "{colors.accent-magenta}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button}"
    rounded: "{rounded.pill}"
    padding: 10px 18px
  pricing-tab-default:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.button}"
    rounded: "{rounded.pill}"
    padding: 8px 18px
  pricing-tab-selected:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button}"
    rounded: "{rounded.pill}"
    padding: 8px 18px
  text-input:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body}"
    rounded: "{rounded.md}"
    padding: 12px 14px
  text-input-focused:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body}"
    rounded: "{rounded.md}"
    padding: 12px 14px
  pricing-card:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body}"
    rounded: "{rounded.lg}"
    padding: 24px
  pricing-card-feature-row:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-sm}"
    rounded: "{rounded.xs}"
  color-block-section:
    backgroundColor: "{colors.block-lime}"
    textColor: "{colors.ink}"
    typography: "{typography.subhead}"
    rounded: "{rounded.lg}"
    padding: 48px
  color-block-section-lilac:
    backgroundColor: "{colors.block-lilac}"
    textColor: "{colors.ink}"
    typography: "{typography.subhead}"
    rounded: "{rounded.lg}"
    padding: 48px
  color-block-section-navy:
    backgroundColor: "{colors.block-navy}"
    textColor: "{colors.inverse-ink}"
    typography: "{typography.subhead}"
    rounded: "{rounded.lg}"
    padding: 48px
  promo-banner-lilac:
    backgroundColor: "{colors.block-lilac}"
    textColor: "{colors.ink}"
    typography: "{typography.body-sm}"
    rounded: "{rounded.md}"
    padding: 16px 24px
  template-card:
    backgroundColor: "{colors.surface-soft}"
    textColor: "{colors.ink}"
    typography: "{typography.body-sm}"
    rounded: "{rounded.md}"
    padding: 16px
  feature-illustration-tile:
    backgroundColor: "{colors.surface-soft}"
    textColor: "{colors.ink}"
    typography: "{typography.eyebrow}"
    rounded: "{rounded.md}"
    padding: 24px
  top-nav:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-sm}"
    rounded: "{rounded.xs}"
    height: 56px
  marquee-strip:
    backgroundColor: "{colors.inverse-canvas}"
    textColor: "{colors.inverse-ink}"
    typography: "{typography.body-sm}"
    rounded: "{rounded.xs}"
    height: 36px
  comparison-checkmark:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.semantic-success}"
    typography: "{typography.body-sm}"
    rounded: "{rounded.full}"
    size: 16px
  footer:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.caption}"
    rounded: "{rounded.xs}"
    padding: 64px 32px
---

## Overview

Figma's marketing canvas is, at the system level, an editor-clean black-and-white frame. The chrome — top nav, body type, footer, primary CTA — is monochrome. Headlines are oversized `{typography.display-xl}` set in `figmaSans` with aggressive negative tracking, body copy hovers around weight 320–340 of the same variable family, and small mono `{typography.eyebrow}` and `{typography.caption}` labels (figmaMono, all-caps, positive tracking) act as section markers. Every CTA is a pill — `{rounded.pill}` — and the primary action across the entire site is the same black `{components.button-primary}` paired with the same white `{components.button-secondary}`.

What makes the design unique is what happens **between** those monochrome bookends: the page repeatedly drops into oversized pastel **color-block sections** — lime, lavender, cream, mint, pink, coral, and a deep navy — that span the full content width with `{rounded.lg}` corners and `{spacing.xxl}` interior padding. These blocks are where the storytelling lives. They aren't accents tucked into a card; they take over a whole viewport's worth of vertical space, like a designer arranging giant sticky notes on a clean wall. FigJam is the most pastel-saturated, the home page rotates through the full set, and the pricing page ends with a lime FAQ panel — same vocabulary, different rhythm per route.

This is a system built on contrast: the monochrome chrome makes the color blocks feel intentional rather than decorative, and the color blocks make the monochrome chrome feel like editorial paper rather than enterprise SaaS. Density is generous, line-heights are tight on display sizes, and the interface never reaches for shadows or gradients to do the work that color blocks and confident typography already do.

**Key Characteristics:**
- Monochrome system core: `{colors.primary}` (black) and `{colors.canvas}` (white) carry every CTA, every body line, every footer link.
- Oversized pastel **color-block sections** (`{colors.block-lime}`, `{colors.block-lilac}`, `{colors.block-cream}`, `{colors.block-mint}`, `{colors.block-pink}`, `{colors.block-coral}`, `{colors.block-navy}`) define the narrative rhythm of every long-form page.
- Pill is the only button shape — `{rounded.pill}` for text CTAs, `{rounded.full}` for icon buttons. No square buttons anywhere.
- `figmaSans` variable typeface used at unusually fine weight increments (320, 330, 340, 450, 480, 540) — the type system reads as a single voice that flexes rather than a multi-weight family.
- Tight negative letter-spacing on display sizes (-1.72px at 86px, -0.96px at 64px) creates a confident editorial cadence.
- `figmaMono` reserved for category labels, eyebrows, and captions — always uppercase, positive tracking — to flag taxonomy without competing with display type.
- Color-block page rhythm (home): white hero → marquee strip → white feature → lime systems block → navy ship-products block → coral developer block → white template grid → white footer.

## Colors

> Source pages: figma.com (home), /design/, /figjam/brainstorming-tool/, /pricing/, /contact/.

### Brand & Accent
- **Black** ({colors.primary}): The system primary. Every primary CTA, every headline, every body line, the marquee strip, the inverse canvas of dark sections.
- **White** ({colors.on-primary}): Inverse text on black surfaces; also the canvas color used as the foreground of secondary pill buttons (`{components.button-secondary}`).
- **Magenta Promo** ({colors.accent-magenta}): A single saturated CTA pink reserved for promotional inline buttons — appears, for example, on the lilac "Save your spot" Release Notes banner. Use scarcely; it is not a section color.

### Surface
- **Canvas** ({colors.canvas}): Default page background and the body of every white card.
- **Inverse Canvas** ({colors.inverse-canvas}): Footer, marquee strip, and a subset of "ship products"-style story sections.
- **Surface Soft** ({colors.surface-soft}): Off-white tile background used for icon buttons, template cards, and feature illustration tiles when they sit on the white canvas.
- **Hairline** ({colors.hairline}): 1px borders on form inputs, pricing cards, and table dividers.
- **Hairline Soft** ({colors.hairline-soft}): Even subtler dividers — comparison-table row separators and footer column rules.
- **Block Lime** ({colors.block-lime}): The signature **systems / FAQ / contact-form** color block. Recurs across home, pricing, contact.
- **Block Lilac** ({colors.block-lilac}): Hero block on `/design/`; also the inline Release Notes promo banner.
- **Block Cream** ({colors.block-cream}): Soft warm background — FigJam hero strip, template-grid section.
- **Block Mint** ({colors.block-mint}): FigJam pastel section.
- **Block Pink** ({colors.block-pink}): FigJam pastel section.
- **Block Coral** ({colors.block-coral}): "Ship products" coral story block on home.
- **Block Navy** ({colors.block-navy}): Deep indigo story block — only place dark surfaces appear above the footer.

### Text
- **Ink** ({colors.ink}): All headline, body, and caption type on light surfaces. There is no softer mid-gray text role on marketing — body copy is always black at weight 320–340, and weight (not opacity) carries the hierarchy.
- **Inverse Ink** ({colors.inverse-ink}): Type on inverse-canvas surfaces (footer, marquee strip, navy color block).
- **On-Inverse Soft** ({colors.on-inverse-soft}): White used at ~16% opacity for circular icon-button surfaces against dark sections (token captures the base color; the translucency is applied at render time).

### Semantic
- **Success Green** ({colors.semantic-success}): Comparison-table checkmarks on pricing. Used as a glyph fill, not a surface.
- **Overlay Scrim** ({colors.overlay-scrim}): Black used at ~60% opacity behind modal / video-overlay surfaces (token captures the base; opacity applied at render time).

## Typography

### Font Family

- **figmaSans** — Figma's proprietary variable typeface; fallback stack `figmaSans Fallback, SF Pro Display, system-ui, helvetica`. Variable weight axis is exercised at unusually fine increments (320, 330, 340, 450, 480, 540, 700) — the design system reads as a single voice modulating rather than a stepped weight family.
- **figmaMono** — Proprietary monospace; fallback `figmaMono Fallback, SF Mono, menlo`. Used exclusively for eyebrow labels and captions, always uppercase with positive letter-spacing.

OpenType `kern` is enabled across every role.

### Hierarchy

| Token | Size | Weight | Line Height | Letter Spacing | Use |
|---|---|---|---|---|---|
| `{typography.display-xl}` | 86px | 340 | 1.00 | -1.72px | Hero headlines (home, FigJam) |
| `{typography.display-lg}` | 64px | 340 | 1.10 | -0.96px | Section opener headlines |
| `{typography.headline}` | 26px | 540 | 1.35 | -0.26px | Story-block titles inside color blocks |
| `{typography.subhead}` | 26px | 340 | 1.35 | -0.26px | Long-form intro paragraphs that sit at near-headline scale |
| `{typography.card-title}` | 24px | 700 | 1.45 | 0 | Pricing-tier titles, feature card titles |
| `{typography.body-lg}` | 20px | 330 | 1.40 | -0.14px | Lead body copy on hero, contact form labels |
| `{typography.body}` | 18px | 320 | 1.45 | -0.26px | Default body |
| `{typography.body-sm}` | 16px | 330 | 1.45 | -0.14px | Card body, footer link list |
| `{typography.link}` | 20px | 480 | 1.40 | -0.10px | Inline link emphasis |
| `{typography.button}` | 20px | 480 | 1.40 | -0.10px | All pill buttons, primary and secondary |
| `{typography.eyebrow}` | 18px | 400 | 1.30 | 0.54px | figmaMono uppercase section eyebrows |
| `{typography.caption}` | 12px | 400 | 1.00 | 0.60px | figmaMono uppercase captions, footer column heads |

### Principles

- **Weight, not size, carries hierarchy on body copy.** A 20px paragraph at weight 330 sits next to a 20px link at weight 480 — the eye reads emphasis without scale change.
- **Negative letter-spacing scales with size.** Display-xl pulls -1.72px; subhead pulls only -0.26px. Body copy stays near-zero. The result is editorial-feeling display type without sacrificing readability at body size.
- **Mono is taxonomy, not body.** figmaMono is reserved for eyebrows and captions — never used to set a paragraph.
- **Tight line-heights on display, generous on body.** Display sizes run 1.00–1.10; body runs 1.40–1.45. The contrast reinforces that headlines are graphics and body copy is for reading.

### Note on Font Substitutes

If implementing without access to figmaSans / figmaMono, suitable open-source substitutes are **Inter** (or **Geist**) for the sans, and **JetBrains Mono** (or **Geist Mono**) for the mono. Inter at variable weights closely matches the fine-grained weight axis figmaSans uses; expect to manually adjust line-heights down by ~0.02 to compensate for Inter's slightly taller x-height.

## Layout

### Spacing System

- **Base unit**: 8px.
- **Tokens (front matter)**: `{spacing.hair}` 1px · `{spacing.xxs}` 4px · `{spacing.xs}` 8px · `{spacing.sm}` 12px · `{spacing.md}` 16px · `{spacing.lg}` 24px · `{spacing.xl}` 32px · `{spacing.xxl}` 48px · `{spacing.section}` 96px.
- Section interior padding: `{spacing.xxl}` (48px) on color-block sections.
- Card interior padding: `{spacing.lg}` (24px) on pricing cards and template tiles.
- Form input padding: `{spacing.sm}` 12px vertical · 14px horizontal.
- Button padding: `{spacing.xs}` 8px vertical · `{spacing.lg}` 24px horizontal for pill buttons (the asymmetric `8px 18px 10px` extracted on `button-secondary` nudges the type optically inside the pill).
- Universal rhythm constant: `{spacing.section}` (96px) — the vertical gap between major content sections holds across home, pricing, and FigJam pages.

### Grid & Container

- Max content width sits around 1280px (one of the explicit breakpoints), with side gutters that scale from `{spacing.xxl}` on desktop down to `{spacing.lg}` on mobile.
- Three- and four-column grids on the desktop pricing comparison and FigJam template galleries.
- Color-block sections break the column grid — they span content width with full bleed inside the rounded `{rounded.lg}` corners, then place a single editorial column of headline + body inside.

### Whitespace Philosophy

White space is used to make the color blocks feel deliberate. Between every colored panel and the next, the page returns to white canvas with `{spacing.section}` of breathing room. Inside a color block, the type itself is given generous side margins (often more than 1/4 of the block's width on each side) so the panel reads as a poster, not a wall of copy.

## Elevation & Depth

| Level | Treatment | Use |
|---|---|---|
| 0 (flat) | No shadow, no border | Default for color-block sections, inverse-canvas footer, hero |
| 1 (hairline) | 1px `{colors.hairline}` border on `{colors.canvas}` | Pricing cards, form inputs, comparison table cells |
| 2 (soft elevation) | Subtle drop shadow approx 0 4px 16px rgba(0,0,0,0.06) | Floating template tiles, dropdown menus |
| 3 (modal) | Stronger shadow + `{colors.overlay-scrim}` behind | Video / image lightbox overlays |

Figma's marketing system is shadow-light by design — the color blocks substitute for traditional elevation. Where most SaaS sites use a shadowed white card to draw attention, Figma uses a saturated background panel. This makes the rare actual shadow (e.g., a floating template card hovering over a cream section) feel like an exception worth noticing.

### Decorative Depth

- **Color-block sections** are the primary depth device. The change from white canvas to lime / lavender / cream is the section break.
- **Sticky-note style component thumbnails** in FigJam — slightly off-axis pastel rectangles arranged like notes on a board — read as collage, not card-stack.
- **Embedded product UI mocks** (Figma Design panels, FigJam canvas snippets) appear as flat compositions on color blocks; their internal shadows are subtle and stay within the mock.

## Shapes

### Border Radius Scale

| Token | Value | Use |
|---|---|---|
| `{rounded.xs}` | 2px | Anchor / link decoration corners |
| `{rounded.sm}` | 6px | Small chips, sub-nav tabs |
| `{rounded.md}` | 8px | Form inputs, list items, image frames |
| `{rounded.lg}` | 24px | Pricing cards, color-block sections, large image containers |
| `{rounded.xl}` | 32px | Hero feature panels, oversized callouts |
| `{rounded.pill}` | 50px | All text CTAs (primary, secondary, tab toggles) |
| `{rounded.full}` | 9999px | Circular icon buttons, comparison-table checkmark glyphs |

### Photography & Illustration Geometry

- Image frames use `{rounded.md}` (8px) — generous enough to feel friendly, conservative enough to read as editorial.
- Template thumbnails on the home grid sit in `{rounded.md}` tiles with `{spacing.md}` interior padding around the embedded preview.
- FigJam pastel sticky-note component thumbnails preserve a small `{rounded.sm}` corner that mimics actual sticky paper.
- No avatar circles appear in marketing surfaces — Figma's marketing avoids personification.

## Components

### Buttons

**`button-primary`** — The black "Get started for free" pill that appears in the top nav, every hero, and every closing CTA.
- Background `{colors.primary}`, text `{colors.on-primary}`, type `{typography.button}`, padding 10px 20px, rounded `{rounded.pill}`.
- Pressed state lives in `button-primary-pressed` (same surface; the live site relies on micro-scale rather than a darkened fill).

**`button-secondary`** — White pill with black text. Used for tertiary navigation actions ("Contact sales") and as the visual counterpart to the primary pill.
- Background `{colors.canvas}`, text `{colors.ink}`, type `{typography.button}`, padding 8px 18px 10px (asymmetric vertical to optically center the type), rounded `{rounded.pill}`. No border.

**`button-tertiary-text`** — Plain text link styled as a button hit target inside top nav and footer.
- Background `{colors.canvas}`, text `{colors.ink}`, type `{typography.link}`, rounded `{rounded.full}` (hit target only), padding `{spacing.xs}` `{spacing.sm}`.

**`button-icon-circular`** — 40px circular icon button used for carousel controls, social links, and inline actions on light surfaces.
- Background `{colors.surface-soft}`, text `{colors.ink}`, rounded `{rounded.full}`, size 40px.

**`button-icon-circular-inverse`** — Same shape, used on inverse-canvas / dark color blocks.
- Background `{colors.on-inverse-soft}` (translucent white), text `{colors.inverse-ink}`, rounded `{rounded.full}`, size 40px.

**`button-magenta-promo`** — Saturated pink pill used only inside promotional surfaces such as the lilac "Save your spot" Release Notes banner. Reserved for moments where Figma's product team wants the CTA to pop against an already-colored panel.
- Background `{colors.accent-magenta}`, text `{colors.on-primary}`, type `{typography.button}`, rounded `{rounded.pill}`, padding 10px 18px.

### Pricing Tabs

**`pricing-tab-default`** + **`pricing-tab-selected`** — The pill-toggle that switches between Starter / Professional / Organization / Enterprise on `/pricing/`.
- Default: `{colors.canvas}` background, `{colors.ink}` text, rounded `{rounded.pill}`.
- Selected: `{colors.primary}` background, `{colors.on-primary}` text — exactly the same surface as `button-primary`, which makes the selected tab feel like an active CTA, not a passive state.

### Inputs & Forms

**`text-input`** + **`text-input-focused`** — Form fields on `/contact/` and pricing seat-count steppers.
- Background `{colors.canvas}`, text `{colors.ink}`, type `{typography.body}`, rounded `{rounded.md}`, padding 12px 14px.
- Focused state retains the same surface — focus is communicated via ring, not via fill change.

### Cards & Containers

**`pricing-card`** — Each tier on `/pricing/`.
- Background `{colors.canvas}`, text `{colors.ink}`, type `{typography.body}`, rounded `{rounded.lg}`, padding `{spacing.lg}`. Stroked with `{colors.hairline}` rather than shadowed.

**`pricing-card-feature-row`** — Single row inside the comparison table.
- Background `{colors.canvas}`, text `{colors.ink}`, type `{typography.body-sm}`. Row separator is `{colors.hairline-soft}`.

**`template-card`** — Thumbnail tile in the home "Explore what people are making" grid and the FigJam template gallery.
- Background `{colors.surface-soft}`, text `{colors.ink}`, type `{typography.body-sm}`, rounded `{rounded.md}`, padding `{spacing.md}`.

**`feature-illustration-tile`** — Larger composition tile that holds a product UI mock or pastel illustration.
- Background `{colors.surface-soft}`, text `{colors.ink}`, type `{typography.eyebrow}`, rounded `{rounded.md}`, padding `{spacing.lg}`.

### Color-Block Sections (signature)

The defining surface of Figma's marketing. Each is a full-content-width panel with `{rounded.lg}` corners and `{spacing.xxl}` interior padding. Variants:

**`color-block-section`** — lime ground for "systems" stories (home), pricing FAQ, and the contact form.
- Background `{colors.block-lime}`, text `{colors.ink}`, type `{typography.subhead}`, rounded `{rounded.lg}`, padding `{spacing.xxl}`.

**`color-block-section-lilac`** — lavender ground for `/design/` hero and FigJam highlight sections.
- Background `{colors.block-lilac}`, otherwise identical structure.

**`color-block-section-navy`** — deep indigo ground for the home "Ship products" story block. The only inverse color-block surface above the footer.
- Background `{colors.block-navy}`, text `{colors.inverse-ink}`, otherwise identical structure.

(Cream, mint, pink, and coral block variants follow the same shape with their respective `{colors.block-*}` surface.)

### Promo Banner

**`promo-banner-lilac`** — The Release Notes / "Save your spot" inline banner that floats above the contact form.
- Background `{colors.block-lilac}`, text `{colors.ink}`, type `{typography.body-sm}`, rounded `{rounded.md}`, padding `{spacing.md}` `{spacing.lg}`. Carries a `button-magenta-promo` on the right edge.

### Navigation

**`top-nav`** — Sticky white bar with logo, primary nav links, sign-in link, and the right-anchored `button-secondary` ("Contact sales") + `button-primary` ("Get started for free") pair.
- Background `{colors.canvas}`, text `{colors.ink}`, type `{typography.body-sm}`, height 56px.
- Mobile: collapses primary links into a hamburger that opens a full-canvas overlay; the two pill CTAs remain visible on the bar.

**`marquee-strip`** — Thin black ribbon directly under the nav that scrolls through customer logos in white.
- Background `{colors.inverse-canvas}`, text `{colors.inverse-ink}`, type `{typography.body-sm}`, height 36px.

### Comparison Glyphs

**`comparison-checkmark`** — Green check used in the pricing comparison matrix.
- Background `{colors.canvas}`, glyph color `{colors.semantic-success}`, rounded `{rounded.full}`, size 16px.

### Footer

**`footer`** — Dense link grid on white canvas with the wordmark "Figma" set in display weight at the top-left.
- Background `{colors.canvas}`, text `{colors.ink}`, type `{typography.caption}` for column headings and small links, padding `{spacing.section}` top/bottom · `{spacing.xl}` sides.

## Do's and Don'ts

### Do

- Reserve `{colors.primary}` for genuine primary CTAs and selected states (e.g., `pricing-tab-selected`). Don't use it as a decorative accent.
- When introducing a story section, choose **one** color block from the `{colors.block-*}` family and let it span full content width with `{rounded.lg}` corners and `{spacing.xxl}` interior padding.
- Keep type in `figmaSans` at variable weights — pick from 320, 330, 340, 480, 540, 700 to express hierarchy. Avoid intermediate weights outside this set.
- Use `figmaMono` only for eyebrows and captions, always uppercase, with the documented positive letter-spacing.
- Compose every CTA as a pill (`{rounded.pill}`) and every icon button as a circle (`{rounded.full}`).
- Allow the page to **return to white canvas** between every two color blocks so each block reads as deliberate.
- Pair `button-primary` and `button-secondary` whenever a section needs both a primary action and a sales / secondary action — the black-and-white pair is the brand signature.

### Don't

- Don't introduce mid-gray text. Body hierarchy comes from `figmaSans` weight, not from opacity.
- Don't add drop shadows to color-block sections — the color is the depth device.
- Don't introduce new accent colors outside the documented `{colors.block-*}` palette and `{colors.accent-magenta}`. Adding, e.g., a saturated brand orange would break the system.
- Don't combine more than one color block visible inside a single viewport — Figma's pacing always lets the white canvas separate them.
- Don't square off CTAs. Square buttons read as a different brand.
- Don't put `figmaMono` in body copy — it's a taxonomy tool, not a reading typeface.
- Don't replace the `pricing-tab-selected` black fill with a colored tab; the brand pattern is "selected = primary surface".

## Responsive Behavior

### Breakpoints

| Name | Width | Key Changes |
|---|---|---|
| 4k | 1920px | Max content width holds at 1280px; gutters expand |
| Desktop-XL | 1440px | Default desktop layout |
| Desktop | 1400px | Comparison table column widths normalize |
| Desktop-S | 1280px | Pricing 4-up tier grid maintained |
| Tablet | 960px | Pricing collapses 4-up → 2-up; nav becomes hamburger |
| Mobile-L | 768px | Color-block sections become full-bleed (no rounded corners on edges) |
| Mobile | 560px | Display-xl reduces from 86px to ~48px; pill CTAs go full-width |
| Mobile-XS | 559px | Two-column footer collapses to single column |

### Touch Targets

- Pill buttons (`button-primary`, `button-secondary`) maintain a minimum 44px tap height across all viewports — achieved by combining `{typography.button}` 20px line-height with the documented vertical padding.
- Circular icon buttons (`button-icon-circular`) are 40px on desktop and grow to 44px on touch viewports.
- Form input minimum tap target on `/contact/` is 48px high.

### Collapsing Strategy

- **Nav**: desktop horizontal nav with two right-anchored pills collapses to a hamburger overlay below 960px. The two pills (`Contact sales`, `Get started for free`) stay visible on the bar above 560px and stack in the overlay below.
- **Pricing tier grid**: 4-up → 2-up at 960px → 1-up below 768px. The pill toggle stays horizontal and scrolls horizontally if needed below 560px.
- **Color-block sections**: above 768px the section keeps `{spacing.xxl}` of canvas around it so the rounded corners read; below 768px the corners are removed and the block bleeds to viewport edge for a poster effect.
- **Comparison table**: below 960px the matrix collapses into per-tier accordions to avoid horizontal scroll.

### Image Behavior

- Product UI mocks inside color blocks scale proportionally and never crop. Below 768px they shrink rather than reflow.
- Template thumbnails in the home grid use lazy loading and animate in on scroll.
- Sticky-note style FigJam thumbnails maintain their slight off-axis rotation across breakpoints — the rotation is a brand signal, not a desktop-only flourish.

## Iteration Guide

1. Focus on ONE component at a time and reference it by its `components:` token name (e.g., `{components.button-primary}`, `{components.color-block-section}`).
2. When introducing a new section, decide **first** which `{colors.block-*}` token it sits on; the surface choice is the most consequential decision.
3. Default body type to `{typography.body}`; reach for `{typography.subhead}` or `{typography.headline}` only inside a color block.
4. Run `npx @google/design.md lint DESIGN.md` after edits — `broken-ref`, `contrast-ratio`, and `orphaned-tokens` warnings flag issues automatically.
5. Add new variants as separate component entries (`-pressed`, `-selected`) — do not bury them in prose.
6. Keep `{colors.primary}` scarce. If two `button-primary` instances appear in the same viewport, the section is doing too much — neutralize one to `button-secondary`.
7. Treat `{colors.accent-magenta}` as a single-shot color: one promo CTA per page, never two.

## Known Gaps

- The exact pastel hex values of `{colors.block-*}` are derived from screenshot pixels; the production source likely uses named tokens that aren't exposed via CSS variables. Treat the documented hex values as faithful approximations rather than exact brand specs.
- Dark mode is not documented because the marketing site does not ship a dark theme — the closest analog is the navy color-block (`color-block-section-navy`) and the inverse-canvas footer.
- Form-field error and validation styling is not visible on `/contact/` because no error states render in the static screenshot. Inputs have hairline borders and rounded `{rounded.md}` corners; error treatment is not documented.
- The animated marquee-strip and color-block reveal animations are not documented (per the no-interaction policy).


---

## Brand: `framer`

---
version: alpha
name: Framer-design-analysis
description: "A confident dark-canvas builder marketing site that treats the page like a working artboard — pure black surfaces, white display type set in GT Walsheim Medium with aggressive negative tracking, and a single confident blue (#0099ff) reserved for hyperlinks and selection states. The page rhythm is broken by oversized vibrant gradient atmosphere panels — magenta, violet, orange spotlights — that act as living showcase tiles, not decoration. Every CTA is a white pill on dark; every card is a translucent or charcoal surface; every section title pulls letter-spacing tight enough to feel like a poster."

colors:
  primary: "#ffffff"
  on-primary: "#000000"
  accent-blue: "#0099ff"
  ink: "#ffffff"
  ink-muted: "#999999"
  canvas: "#090909"
  surface-1: "#141414"
  surface-2: "#1c1c1c"
  hairline: "#262626"
  hairline-soft: "#1a1a1a"
  inverse-canvas: "#ffffff"
  inverse-ink: "#000000"
  gradient-magenta: "#d44df0"
  gradient-violet: "#6a4cf5"
  gradient-orange: "#ff7a3d"
  gradient-coral: "#ff5577"
  semantic-success: "#22c55e"

typography:
  display-xxl:
    fontFamily: GT Walsheim Framer Medium
    fontSize: 110px
    fontWeight: 500
    lineHeight: 0.85
    letterSpacing: -5.5px
  display-xl:
    fontFamily: GT Walsheim Medium
    fontSize: 85px
    fontWeight: 500
    lineHeight: 0.95
    letterSpacing: -4.25px
    fontFeature: ss02
  display-lg:
    fontFamily: GT Walsheim Medium
    fontSize: 62px
    fontWeight: 500
    lineHeight: 1.00
    letterSpacing: -3.1px
    fontFeature: ss02
  display-md:
    fontFamily: GT Walsheim Medium
    fontSize: 32px
    fontWeight: 500
    lineHeight: 1.13
    letterSpacing: -1.0px
  headline:
    fontFamily: Inter
    fontSize: 22px
    fontWeight: 700
    lineHeight: 1.20
    letterSpacing: -0.8px
    fontFeature: cv05
  subhead:
    fontFamily: Inter Variable
    fontSize: 24px
    fontWeight: 400
    lineHeight: 1.30
    letterSpacing: -0.01px
    fontFeature: cv11
  body-lg:
    fontFamily: Inter Variable
    fontSize: 18px
    fontWeight: 400
    lineHeight: 1.30
    letterSpacing: -0.18px
    fontFeature: cv11
  body:
    fontFamily: Inter Variable
    fontSize: 15px
    fontWeight: 400
    lineHeight: 1.30
    letterSpacing: -0.15px
    fontFeature: cv11
  body-sm:
    fontFamily: Inter Variable
    fontSize: 14px
    fontWeight: 500
    lineHeight: 1.40
    letterSpacing: -0.14px
    fontFeature: cv11
  caption:
    fontFamily: Inter Variable
    fontSize: 13px
    fontWeight: 500
    lineHeight: 1.20
    letterSpacing: -0.13px
    fontFeature: cv11
  micro:
    fontFamily: Inter Variable
    fontSize: 12px
    fontWeight: 400
    lineHeight: 1.20
    letterSpacing: -0.12px
    fontFeature: cv11
  button:
    fontFamily: Inter Variable
    fontSize: 14px
    fontWeight: 500
    lineHeight: 1.0
    letterSpacing: -0.14px
    fontFeature: cv11

rounded:
  xs: 4px
  sm: 6px
  md: 10px
  lg: 15px
  xl: 20px
  xxl: 30px
  pill: 100px
  full: 9999px

spacing:
  hair: 1px
  xxs: 4px
  xs: 8px
  sm: 12px
  md: 15px
  lg: 20px
  xl: 30px
  xxl: 40px
  section: 96px

components:
  button-primary:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button}"
    rounded: "{rounded.pill}"
    padding: 10px 15px
  button-primary-pressed:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button}"
    rounded: "{rounded.pill}"
  button-secondary:
    backgroundColor: "{colors.surface-1}"
    textColor: "{colors.ink}"
    typography: "{typography.button}"
    rounded: "{rounded.pill}"
    padding: 10px 15px
  button-translucent:
    backgroundColor: "{colors.surface-2}"
    textColor: "{colors.ink}"
    typography: "{typography.button}"
    rounded: "{rounded.xxl}"
    padding: 8px 14px
  button-icon-circular:
    backgroundColor: "{colors.surface-1}"
    textColor: "{colors.ink}"
    typography: "{typography.button}"
    rounded: "{rounded.full}"
    size: 40px
  pricing-tab-default:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink-muted}"
    typography: "{typography.button}"
    rounded: "{rounded.pill}"
    padding: 8px 14px
  pricing-tab-selected:
    backgroundColor: "{colors.surface-2}"
    textColor: "{colors.ink}"
    typography: "{typography.button}"
    rounded: "{rounded.pill}"
    padding: 8px 14px
  text-input:
    backgroundColor: "{colors.surface-1}"
    textColor: "{colors.ink}"
    typography: "{typography.body}"
    rounded: "{rounded.md}"
    padding: 10px 14px
  text-input-focused:
    backgroundColor: "{colors.surface-1}"
    textColor: "{colors.ink}"
    typography: "{typography.body}"
    rounded: "{rounded.md}"
    padding: 10px 14px
  pricing-card:
    backgroundColor: "{colors.surface-1}"
    textColor: "{colors.ink}"
    typography: "{typography.body}"
    rounded: "{rounded.xl}"
    padding: 24px
  pricing-card-featured:
    backgroundColor: "{colors.surface-2}"
    textColor: "{colors.ink}"
    typography: "{typography.body}"
    rounded: "{rounded.xl}"
    padding: 24px
  template-card:
    backgroundColor: "{colors.surface-1}"
    textColor: "{colors.ink}"
    typography: "{typography.body-sm}"
    rounded: "{rounded.lg}"
    padding: 12px
  gradient-spotlight-card:
    backgroundColor: "{colors.gradient-violet}"
    textColor: "{colors.ink}"
    typography: "{typography.subhead}"
    rounded: "{rounded.xl}"
    padding: 32px
  gradient-spotlight-card-magenta:
    backgroundColor: "{colors.gradient-magenta}"
    textColor: "{colors.ink}"
    typography: "{typography.subhead}"
    rounded: "{rounded.xl}"
    padding: 32px
  gradient-spotlight-card-orange:
    backgroundColor: "{colors.gradient-orange}"
    textColor: "{colors.ink}"
    typography: "{typography.subhead}"
    rounded: "{rounded.xl}"
    padding: 32px
  product-mockup-tile:
    backgroundColor: "{colors.surface-1}"
    textColor: "{colors.ink}"
    typography: "{typography.body-sm}"
    rounded: "{rounded.xl}"
    padding: 16px
  feature-row:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body}"
    rounded: "{rounded.xs}"
  comparison-row:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink-muted}"
    typography: "{typography.body-sm}"
    rounded: "{rounded.xs}"
  top-nav:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-sm}"
    rounded: "{rounded.xs}"
    height: 56px
  faq-row:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body}"
    rounded: "{rounded.md}"
    padding: 24px
  footer:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink-muted}"
    typography: "{typography.caption}"
    rounded: "{rounded.xs}"
    padding: 64px 32px
---

## Overview

Framer's marketing canvas is a near-pure black artboard. The dominant surface is `{colors.canvas}` — almost pure black with a faint warmth — and on top of it sits oversized white display type set in **GT Walsheim Medium** with letter-spacing pulled to extreme negative values (-5.5px on the 110px display, -4.25px on the 85px hero). The page reads like a poster: one assertive statement per band, generous breathing room above and below.

The single accent is `{colors.accent-blue}` — used scarcely, mostly for hyperlinks, selection halos, and a subtle blue-tinted shadow ring on focused inputs. The brand chrome itself is monochrome: white pill buttons, charcoal cards, gray secondary text. What makes Framer distinctive is the rhythm break — every few sections the page drops in a **vibrant gradient atmosphere card**: a magenta-violet spotlight, a sunset-orange wash, a coral-pink panel. These aren't section backgrounds; they're individual cards arranged in a card grid, each one a small living poster that shows what Framer can produce.

Body type is **Inter Variable**, with Framer leaning hard into Inter's character variants (`cv01`, `cv05`, `cv09`, `cv11`, `ss03`, `ss07`, `dlig`) — the result is a body voice that feels custom-tuned, with single-storey "a", straight-leg "l", and tabular figures. There's no light mode on the marketing site; the brand IS dark.

**Key Characteristics:**
- Black-canvas marketing system: `{colors.canvas}` is the surface for hero, body, pricing, FAQ, and footer alike — no light interludes.
- Massive negative letter-spacing on display sizes (-5.5px / -4.25px / -3.1px) creates a poster-grade headline cadence.
- White pill (`{components.button-primary}`) is the only primary CTA shape across the site; secondary actions live as charcoal pills (`{components.button-secondary}`) or text links.
- Oversized **gradient spotlight cards** (violet, magenta, orange, coral) act as showcase tiles inside the dark grid; they are individual cards, not section backgrounds.
- Inter Variable with bespoke OpenType character variants (`cv01/05/09/11`, `ss03/ss07`, `dlig`) used everywhere body type appears — the typographic voice is unmistakable.
- Border radius scale runs from 4px utility chips up to 100px pills and full circles, with 15–20px the default for cards and 30px for atmospheric gradient cards.
- A single chromatic accent `{colors.accent-blue}` reserved for hyperlinks, focus, and selection — never decorative.

## Colors

> Source pages: framer.com (home), /ai/, /startups/, /marketplace/templates/nudge/, /gallery/a16z-speedrun-×-tonik, /pricing.

### Brand & Accent
- **Pure White** ({colors.primary}): The brand primary surface. Every primary CTA pill, every display headline, every body line on canvas.
- **Sky Blue** ({colors.accent-blue}): The single chromatic accent. Hyperlinks, focused-input rings, and a few selection states. Never used for backgrounds or as a brand fill.

### Surface
- **Canvas** ({colors.canvas}): Default page background — near-black with a faint warmth. Footer, pricing, hero, and FAQ all sit on it.
- **Surface 1** ({colors.surface-1}): One step above canvas — pricing cards, secondary buttons, mockup tiles.
- **Surface 2** ({colors.surface-2}): Two steps above — featured pricing card, hero pill backdrop, selected pricing tab.
- **Hairline** ({colors.hairline}): 1px borders on input groups, comparison-table dividers.
- **Hairline Soft** ({colors.hairline-soft}): Subtler dividers — between FAQ rows and footer column rules.
- **Inverse Canvas** ({colors.inverse-canvas}): Pure white — used as the surface of light-on-dark pill CTAs and a small set of light-mode template thumbnails embedded in the showcase grid.

### Text
- **Ink** ({colors.ink}): All headline and emphasized body type — pure white.
- **Ink Muted** ({colors.ink-muted}): Secondary type — gray (#999999) used for meta info, footer columns, comparison-row labels, deselected pricing tabs. Hierarchy on the dark canvas is carried by ink → ink-muted contrast, not by weight changes.

### Semantic
- **Success Green** ({colors.semantic-success}): Pricing comparison-table checkmarks. Glyph fill, not surface.

### Brand Gradient (signature)
- **Gradient Magenta** ({colors.gradient-magenta}): Spotlight card variant.
- **Gradient Violet** ({colors.gradient-violet}): Spotlight card variant — most common.
- **Gradient Orange** ({colors.gradient-orange}): Spotlight card variant — sunset wash.
- **Gradient Coral** ({colors.gradient-coral}): Spotlight card variant — coral/pink.

These four sit as oversized atmospheric tiles inside otherwise monochrome card grids — a dark canvas with one or two glowing spotlight cards is a recurring page signature.

## Typography

### Font Family

- **GT Walsheim Framer Medium** / **GT Walsheim Medium** — Framer's display typeface. Geometric, slightly humanist, very confident at large sizes with extreme negative tracking. Fallbacks: `GT Walsheim Medium Placeholder` system font.
- **Inter Variable** — System body typeface. Used with extensive OpenType character variants: `cv01` (alternate "1"), `cv05` (alternate "g"), `cv09` (alternate "i" / "l"), `cv11` (alternate "0"), `ss03` / `ss07` stylistic sets, `dlig` discretionary ligatures, and `tnum` for numerics in tabular contexts. The result is a body voice that feels bespoke without commissioning a custom face.
- **Inter** — Used selectively for `{typography.headline}` (the 22px / 20px tier). The non-variable cut catches small tracking targets that the variable file rounds.

### Hierarchy

| Token | Size | Weight | Line Height | Letter Spacing | Use |
|---|---|---|---|---|---|
| `{typography.display-xxl}` | 110px | 500 | 0.85 | -5.5px | Largest hero headline (home, AI page) |
| `{typography.display-xl}` | 85px | 500 | 0.95 | -4.25px | Section opener headlines |
| `{typography.display-lg}` | 62px | 500 | 1.00 | -3.1px | Sub-section openers |
| `{typography.display-md}` | 32px | 500 | 1.13 | -1.0px | Card titles, smaller display |
| `{typography.headline}` | 22px | 700 | 1.20 | -0.8px | Pricing tier headlines, FAQ category titles |
| `{typography.subhead}` | 24px | 400 | 1.30 | -0.01px | Lead body next to display headlines |
| `{typography.body-lg}` | 18px | 400 | 1.30 | -0.18px | Hero subhead, lead paragraphs |
| `{typography.body}` | 15px | 400 | 1.30 | -0.15px | Default body, card descriptions |
| `{typography.body-sm}` | 14px | 500 | 1.40 | -0.14px | Pricing comparison rows, dense data |
| `{typography.caption}` | 13px | 500 | 1.20 | -0.13px | Eyebrows, footer columns, meta |
| `{typography.micro}` | 12px | 400 | 1.20 | -0.12px | Disclaimer, footnote |
| `{typography.button}` | 14px | 500 | 1.0 | -0.14px | Pill buttons |

### Principles

- **Letter-spacing scales with size, hard.** Display-xxl pulls -5.5px (5% of size); body sticks to about -1% (-0.15px on 15px). The result: posters at the top, comfortable reading at body.
- **OpenType character variants are the brand voice.** Switching off `cv11`, `ss03`, etc. visibly changes the body voice — the brand depends on them.
- **Weight stays in a narrow band.** Display sits at 500, body at 400, body-sm/caption at 500. Hierarchy is carried by size + tracking, not by 700/900 ramps.
- **Tight line-heights everywhere.** Even body runs at 1.30 — Framer's editorial tone is denser than typical SaaS marketing.

### Note on Font Substitutes

If implementing without GT Walsheim Medium, suitable open-source substitutes include **Mona Sans**, **Geist**, or **Inter** at weight 600–700 with manually tightened tracking. Mona Sans's hairline weights at 100–300 are particularly close to Framer's cleaner section openers. Inter Variable is open-source — keep it as-is and preserve the documented OpenType variants.

## Layout

### Spacing System

- **Base unit**: 5px (Framer uses non-standard 5/10/15/20/30 increments rather than the more common 4/8/16/24).
- **Tokens (front matter)**: `{spacing.hair}` 1px · `{spacing.xxs}` 4px · `{spacing.xs}` 8px · `{spacing.sm}` 12px · `{spacing.md}` 15px · `{spacing.lg}` 20px · `{spacing.xl}` 30px · `{spacing.xxl}` 40px · `{spacing.section}` 96px.
- Card interior padding: `{spacing.lg}` 20px on pricing cards; `{spacing.xl}` 30px on gradient spotlight cards.
- Pill button padding: 10px vertical · 15px horizontal — `{components.button-primary}`.
- Section padding (vertical): roughly `{spacing.section}` 96px on home; tighter (~64px) on pricing comparison.

### Grid & Container

- Max content width sits around the 1199px breakpoint, with side gutters that scale toward `{spacing.xl}` on desktop.
- Card grids on the home gallery use 2-up at desktop, collapsing to 1-up below 810px.
- Pricing tier grid is 4-up across the documented breakpoints; comparison table beneath it uses fixed-width left column with horizontally scrolling tier columns at narrow widths.

### Whitespace Philosophy

The dark canvas IS the whitespace. Where lighter brands lean on white air to separate sections, Framer leans on long stretches of black with a single oversized statement floating in the middle. Sections separate by mode change: a band of charcoal cards, then a band of black with a gradient spotlight, then back to charcoal — like cuts in a dark film.

## Elevation & Depth

| Level | Treatment | Use |
|---|---|---|
| 0 (flat) | No shadow, no border | Default for canvas-mounted display type, FAQ rows, footer |
| 1 (charcoal) | `{colors.surface-1}` lift on canvas | Pricing cards, mockup tiles, secondary buttons |
| 2 (light-edge) | `rgba(255,255,255,0.10)` 0.5px top edge + `rgba(0,0,0,0.25)` 0px 10px 30px drop | Floating product cards, modal cards |
| 3 (selected) | `rgba(0,153,255,0.15)` 0px 0px 0px 1px ring | Focused inputs, selected option |

Four shadow signatures recur across the homepage: a 1px subtle drop, a translucent blue ring, a thick near-black 2px outline (used as the active-element marker on sub-nav), and the layered light-edge + drop-shadow used for floating cards.

### Decorative Depth

- **Gradient spotlight cards** are the dominant depth device — color saturation against black canvas substitutes for shadow-driven elevation.
- **Layered product mockups** (browser frames containing live Framer-built sites) sit inside `{colors.surface-1}` cards with the level-2 light-edge treatment.
- **Subtle blue ring (focus / selected)** is the only chromatic depth signal — used to mark the active state of input groups and pricing tier toggles without changing the underlying surface.

## Shapes

### Border Radius Scale

Framer's extracted radius set is unusually granular (1px, 4px, 5px, 6px, 8px, 10px, 12px, 15px, 20px, 30px, 40px, 100px). The named scale below picks the levels the marketing surface actually consumes.

| Token | Value | Use |
|---|---|---|
| `{rounded.xs}` | 4px | Small chip / utility radius |
| `{rounded.sm}` | 6px | Inline tag, badge |
| `{rounded.md}` | 10px | Form input, list item |
| `{rounded.lg}` | 15px | Template card thumbnails |
| `{rounded.xl}` | 20px | Pricing cards, mockup tiles |
| `{rounded.xxl}` | 30px | Gradient spotlight cards, oversized panels |
| `{rounded.pill}` | 100px | All primary text CTAs |
| `{rounded.full}` | 9999px | Circular icon buttons, avatar circles |

### Photography & Illustration Geometry

- Embedded site mockups (browser-chromed previews of Framer-built sites) sit in `{rounded.xl}` 20px tiles with `{spacing.md}` 15px interior padding.
- Gradient spotlight cards use `{rounded.xxl}` 30px corners — softer than the 20px content cards by design, to make them feel like atmospheric panels rather than tighter UI.
- Icon glyphs and sub-nav glyphs render in `{rounded.full}` circles at 32–40px sizes.

## Components

### Buttons

**`button-primary`** — White pill on dark canvas. The primary CTA across home, pricing, AI, and gallery pages.
- Background `{colors.primary}`, text `{colors.on-primary}`, type `{typography.button}`, padding 10px 15px, rounded `{rounded.pill}`.
- Pressed state lives in `button-primary-pressed` (the live site uses a transform-scale shrink rather than a darkened fill).

**`button-secondary`** — Charcoal pill. Used for secondary navigation actions ("Sign in", "Talk to sales") and as the visual counterpart to the primary pill.
- Background `{colors.surface-1}`, text `{colors.ink}`, type `{typography.button}`, padding 10px 15px, rounded `{rounded.pill}`.

**`button-translucent`** — Translucent / lifted secondary used on top of busy backgrounds (gallery hero, gradient cards).
- Background `{colors.surface-2}`, text `{colors.ink}`, type `{typography.button}`, rounded `{rounded.xxl}`, padding 8px 14px.

**`button-icon-circular`** — 40px circle for inline icon actions (carousel arrows, social links).
- Background `{colors.surface-1}`, text `{colors.ink}`, rounded `{rounded.full}`, size 40px.

### Pricing Tabs

**`pricing-tab-default`** + **`pricing-tab-selected`** — The pill-toggle that switches between Basic / Pro / Business / Enterprise on `/pricing`.
- Default: `{colors.canvas}` background, `{colors.ink-muted}` text, rounded `{rounded.pill}`.
- Selected: `{colors.surface-2}` background, `{colors.ink}` text — selected = lift, not color. Surface depth communicates "active" without needing a chromatic fill.

### Inputs & Forms

**`text-input`** + **`text-input-focused`** — Form fields on `/pricing` (seat-count, currency switcher) and the in-product preview surfaces.
- Background `{colors.surface-1}`, text `{colors.ink}`, type `{typography.body}`, rounded `{rounded.md}`, padding 10px 14px.
- Focused state retains the same surface; the focus ring is the level-3 blue-tinted shadow `rgba(0,153,255,0.15)` 0 0 0 1px.

### Cards & Containers

**`pricing-card`** — Each tier on `/pricing`.
- Background `{colors.surface-1}`, text `{colors.ink}`, type `{typography.body}`, rounded `{rounded.xl}`, padding 24px.

**`pricing-card-featured`** — The Pro tier (visually emphasized).
- Background `{colors.surface-2}`, otherwise identical structure. The lift is one surface step up — no chromatic outline.

**`template-card`** — Thumbnail tile in the home "Built with Framer" gallery and `/marketplace`.
- Background `{colors.surface-1}`, text `{colors.ink}`, type `{typography.body-sm}`, rounded `{rounded.lg}`, padding 12px.

**`product-mockup-tile`** — Larger tile that frames a live product UI mock (Framer canvas, Workshop video, AI translate panel).
- Background `{colors.surface-1}`, text `{colors.ink}`, type `{typography.body-sm}`, rounded `{rounded.xl}`, padding 16px.

### Gradient Spotlight Cards (signature)

The defining decorative surface of Framer's marketing — oversized atmospheric tiles dropped into otherwise monochrome card grids. Variants:

**`gradient-spotlight-card`** — violet ground (most common).
- Background `{colors.gradient-violet}`, text `{colors.ink}`, type `{typography.subhead}`, rounded `{rounded.xl}`, padding 32px. (The on-site card often pushes to `{rounded.xxl}` 30px when it spans a wider tile.)

**`gradient-spotlight-card-magenta`** — magenta-pink ground.
- Background `{colors.gradient-magenta}`, otherwise identical.

**`gradient-spotlight-card-orange`** — sunset-orange wash.
- Background `{colors.gradient-orange}`, otherwise identical.

(Coral pink follows the same shape with `{colors.gradient-coral}`.)

### Comparison & FAQ

**`feature-row`** + **`comparison-row`** — Single rows inside the pricing comparison table.
- `feature-row`: `{colors.canvas}` background, `{colors.ink}` text. Header rows.
- `comparison-row`: `{colors.canvas}` background, `{colors.ink-muted}` text. Data rows with `{typography.body-sm}` and 1px `{colors.hairline-soft}` underlines.

**`faq-row`** — Each accordion line in the pricing-page FAQ.
- Background `{colors.canvas}`, text `{colors.ink}`, type `{typography.body}`, rounded `{rounded.md}`, padding 24px.

### Navigation

**`top-nav`** — Sticky bar on `{colors.canvas}` with the Framer wordmark left, primary nav links centered, and a `button-secondary` ("Sign in") + `button-primary` ("Get started for free") pair right.
- Background `{colors.canvas}`, text `{colors.ink}`, type `{typography.body-sm}`, height 56px.
- Mobile: collapses primary links into a hamburger; the two pill CTAs collapse into a single primary pill on the bar.

### Footer

**`footer`** — Dense link grid on `{colors.canvas}` with the Framer wordmark left and 5–6 columns of caption-sized links.
- Background `{colors.canvas}`, text `{colors.ink-muted}`, type `{typography.caption}`, padding 64px 32px.

## Do's and Don'ts

### Do

- Reserve `{colors.primary}` (white) and `{colors.canvas}` (near-black) as the system's two anchor surfaces. Every band of the page chooses one or the other.
- Push display-size letter-spacing aggressively negative — `{typography.display-xxl}` at -5.5px is the brand signature, not a stylistic accident.
- Use `{colors.accent-blue}` only for hyperlinks, focus rings, and selected indicators. Never as a background or button fill.
- Drop one or two `gradient-spotlight-card` variants into a card grid; they are the brand's atmosphere device. Don't overdo it — three or more in the same viewport reads as a moodboard, not a system.
- Compose every CTA as a pill (`{rounded.pill}`); secondary actions live as charcoal pills, never as bordered ghost buttons.
- Keep body type Inter Variable with character variants `cv01`, `cv05`, `cv09`, `cv11`, `ss03`, `ss07` enabled — the brand voice depends on them.
- Use surface lift (canvas → surface-1 → surface-2) to mark hierarchy on dark, not opacity changes on white type.

### Don't

- Don't ship a light-mode marketing page. Framer's identity is dark.
- Don't introduce mid-tone gray text outside `{colors.ink-muted}`. The hierarchy is binary: `ink` or `ink-muted`.
- Don't use `{colors.accent-blue}` as a brand fill (e.g., a blue CTA pill). The blue is a signal color, not a surface.
- Don't square off CTAs. Pill (`{rounded.pill}`) or full circle is the brand vocabulary.
- Don't reduce the negative letter-spacing on display sizes "for accessibility". The compression is intrinsic to the brand voice; reduce the SIZE if needed, but keep the percentage.
- Don't apply gradient backgrounds to whole sections. Gradients are CARDS, not section grounds.
- Don't combine more than one chromatic accent. The palette is monochrome plus one blue plus the gradient family — not "blue, green, and red".

## Responsive Behavior

### Breakpoints

| Name | Width | Key Changes |
|---|---|---|
| Desktop | 1199px | Default desktop layout |
| Tablet | 810px | Card grids collapse 4-up → 2-up; nav becomes hamburger |
| Mobile-Lg | 809px | Pricing comparison table becomes per-tier accordion |
| Mobile-XS | 98px | Smallest documented breakpoint — single-column everything |

### Touch Targets

- Pill buttons (`button-primary`, `button-secondary`) maintain a minimum 44px tap height across all viewports — combine `{typography.button}` 14px line-height with the documented 10px vertical padding.
- Circular icon buttons (`button-icon-circular`) are 40px on desktop and grow to 44px on touch viewports.
- Pricing-tab pills hold ≥40px tap height; below 810px they may collapse into a horizontal-scroll row instead of stacking.

### Collapsing Strategy

- **Nav**: horizontal nav with a centered link group + right-anchored pill pair collapses to a hamburger overlay below 810px. The `button-primary` stays visible on the bar.
- **Card grids**: the gallery and template-card grids go 2-up on desktop → 1-up on mobile. Gradient spotlight cards retain `{rounded.xxl}` corners at every viewport — they don't bleed.
- **Pricing comparison table**: collapses into per-tier accordions below 810px to avoid horizontal scroll.
- **Display type**: `{typography.display-xxl}` 110px scales down toward `{typography.display-lg}` 62px on tablet and `{typography.display-md}` 32px on mobile, preserving the percentage-negative letter-spacing.

### Image Behavior

- Embedded product mockups (browser frames containing live Framer-built sites) maintain their aspect ratio and never crop.
- Gradient spotlight cards keep their gradient orientations across breakpoints — the gradient direction is part of the brand spec.

## Iteration Guide

1. Focus on ONE component at a time and reference it by its `components:` token name (e.g., `{components.button-primary}`, `{components.gradient-spotlight-card}`).
2. When introducing a new section on the dark canvas, decide first which surface lift it lives on — `{colors.canvas}` for hero/FAQ, `{colors.surface-1}` for cards, `{colors.surface-2}` for featured cards. The depth choice is the most consequential decision.
3. Default body to `{typography.body}` with all the documented OpenType variants; reach for `{typography.subhead}` only inside spotlight cards.
4. Run `npx @google/design.md lint DESIGN.md` after edits — `broken-ref`, `contrast-ratio`, and `orphaned-tokens` warnings flag issues automatically.
5. Add new variants as separate component entries (`-pressed`, `-featured`, `-selected`) — do not bury them in prose.
6. Treat `{colors.accent-blue}` as a single-shot signal color: hyperlinks, focus, and selection — that's it. If you find yourself reaching for a second blue, the brand is drifting.
7. Gradient spotlight cards are scarce by design. One or two per long page is the spec; three is a moodboard.

## Known Gaps

- The exact gradient stops for the spotlight cards are derived from screenshot pixels rather than from CSS variables — the production gradients are likely defined as `linear-gradient` strings on individual elements rather than as design tokens. Treat the documented `{colors.gradient-*}` hex values as base anchors, not as exact gradient specs.
- Form-field validation / error styling is not visible on the inspected pages because no error states render in the static screenshots.
- Dark mode is the only mode — no light-mode adaptation is documented because the marketing site does not ship one.
- The marketplace template detail page returned sparser CSS variable data than the other pages; surface tokens for that page were inferred from the matching home / gallery treatment rather than extracted directly.


---

## Brand: `intercom`

---
version: alpha
name: Intercom-design-analysis
description: "An editorial customer-service marketing canvas built around a soft cream-white ground, charcoal type set in Saans (Intercom's proprietary geometric sans), and a single confident Fin Orange (#ff5600) reserved for the Fin AI brand. Cards live as floating white tiles with thin hairline borders and minimal radii (8–16px). Display headlines run Saans at weight 500 with measured negative tracking. The system reads as a careful, product-led publication: product screenshots dominate, ornament is rare, and the only place chromatic energy enters is the Fin Orange CTA."

colors:
  primary: "#111111"
  on-primary: "#ffffff"
  ink: "#111111"
  ink-muted: "#626260"
  ink-subtle: "#7b7b78"
  ink-tertiary: "#9c9fa5"
  canvas: "#f5f1ec"
  surface-1: "#ffffff"
  surface-2: "#ebe7e1"
  inverse-canvas: "#000000"
  inverse-surface-1: "#313130"
  inverse-ink: "#ffffff"
  inverse-ink-muted: "#9c9fa5"
  hairline: "#d3cec6"
  hairline-soft: "#ebe7e1"
  fin-orange: "#ff5600"
  report-orange: "#fe4c02"
  report-blue: "#65b5ff"
  report-green: "#0bdf50"
  report-pink: "#ff2067"
  report-lime: "#b3e01c"
  report-cyan: "#03b2cb"
  brand-blue: "#0007cb"
  semantic-error: "#c41c1c"
  semantic-success: "#0bdf50"

typography:
  display-xl:
    fontFamily: Saans
    fontSize: 72px
    fontWeight: 500
    lineHeight: 1.05
    letterSpacing: -2.0px
  display-lg:
    fontFamily: Saans
    fontSize: 56px
    fontWeight: 500
    lineHeight: 1.10
    letterSpacing: -1.4px
  display-md:
    fontFamily: Saans
    fontSize: 40px
    fontWeight: 500
    lineHeight: 1.15
    letterSpacing: -0.8px
  headline:
    fontFamily: Saans
    fontSize: 28px
    fontWeight: 500
    lineHeight: 1.20
    letterSpacing: -0.5px
  card-title:
    fontFamily: Saans
    fontSize: 22px
    fontWeight: 500
    lineHeight: 1.25
    letterSpacing: -0.3px
  subhead:
    fontFamily: Saans
    fontSize: 20px
    fontWeight: 400
    lineHeight: 1.40
    letterSpacing: -0.2px
  body-lg:
    fontFamily: Saans
    fontSize: 18px
    fontWeight: 400
    lineHeight: 1.50
    letterSpacing: -0.1px
  body:
    fontFamily: Saans
    fontSize: 16px
    fontWeight: 400
    lineHeight: 1.50
    letterSpacing: 0
  body-sm:
    fontFamily: Saans
    fontSize: 14px
    fontWeight: 400
    lineHeight: 1.50
    letterSpacing: 0
  caption:
    fontFamily: Saans
    fontSize: 12px
    fontWeight: 400
    lineHeight: 1.40
    letterSpacing: 0
  button:
    fontFamily: Saans
    fontSize: 15px
    fontWeight: 500
    lineHeight: 1.20
    letterSpacing: 0
  eyebrow:
    fontFamily: Saans
    fontSize: 14px
    fontWeight: 500
    lineHeight: 1.30
    letterSpacing: 0
  mono:
    fontFamily: SaansMono
    fontSize: 13px
    fontWeight: 400
    lineHeight: 1.50
    letterSpacing: 0

rounded:
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
  md: 16px
  lg: 24px
  xl: 32px
  xxl: 48px
  section: 96px

components:
  button-primary:
    backgroundColor: "{colors.ink}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button}"
    rounded: "{rounded.md}"
    padding: 10px 18px
  button-primary-pressed:
    backgroundColor: "{colors.inverse-canvas}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button}"
    rounded: "{rounded.md}"
  button-secondary:
    backgroundColor: "{colors.surface-1}"
    textColor: "{colors.ink}"
    typography: "{typography.button}"
    rounded: "{rounded.md}"
    padding: 10px 18px
  button-tertiary:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.button}"
    rounded: "{rounded.md}"
    padding: 10px 18px
  button-fin:
    backgroundColor: "{colors.fin-orange}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button}"
    rounded: "{rounded.md}"
    padding: 10px 18px
  pricing-card:
    backgroundColor: "{colors.surface-1}"
    textColor: "{colors.ink}"
    typography: "{typography.body}"
    rounded: "{rounded.lg}"
    padding: 24px
  pricing-card-featured:
    backgroundColor: "{colors.ink}"
    textColor: "{colors.on-primary}"
    typography: "{typography.body}"
    rounded: "{rounded.lg}"
    padding: 24px
  feature-card:
    backgroundColor: "{colors.surface-1}"
    textColor: "{colors.ink}"
    typography: "{typography.body}"
    rounded: "{rounded.lg}"
    padding: 24px
  product-mockup-card:
    backgroundColor: "{colors.surface-1}"
    textColor: "{colors.ink}"
    typography: "{typography.body}"
    rounded: "{rounded.xl}"
    padding: 24px
  testimonial-card:
    backgroundColor: "{colors.surface-1}"
    textColor: "{colors.ink}"
    typography: "{typography.body-lg}"
    rounded: "{rounded.lg}"
    padding: 32px
  customer-logo-tile:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink-muted}"
    typography: "{typography.caption}"
    rounded: "{rounded.xs}"
    padding: 16px
  text-input:
    backgroundColor: "{colors.surface-1}"
    textColor: "{colors.ink}"
    typography: "{typography.body}"
    rounded: "{rounded.md}"
    padding: 10px 14px
  text-input-focused:
    backgroundColor: "{colors.surface-1}"
    textColor: "{colors.ink}"
    typography: "{typography.body}"
    rounded: "{rounded.md}"
    padding: 10px 14px
  pricing-tab-default:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink-muted}"
    typography: "{typography.button}"
    rounded: "{rounded.pill}"
    padding: 8px 16px
  pricing-tab-selected:
    backgroundColor: "{colors.surface-1}"
    textColor: "{colors.ink}"
    typography: "{typography.button}"
    rounded: "{rounded.pill}"
    padding: 8px 16px
  faq-row:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body}"
    rounded: "{rounded.md}"
    padding: 24px
  cta-banner:
    backgroundColor: "{colors.surface-1}"
    textColor: "{colors.ink}"
    typography: "{typography.headline}"
    rounded: "{rounded.lg}"
    padding: 48px
  startup-discount-card:
    backgroundColor: "{colors.surface-2}"
    textColor: "{colors.ink}"
    typography: "{typography.body}"
    rounded: "{rounded.lg}"
    padding: 32px
  top-nav:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-sm}"
    rounded: "{rounded.xs}"
    height: 56px
  footer:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink-muted}"
    typography: "{typography.caption}"
    rounded: "{rounded.xs}"
    padding: 64px 32px
---

## Overview

Intercom's marketing canvas is a soft cream-white ground (`{colors.canvas}` ≈ #f5f1ec) — not pure white. The warmth is the brand's signal: this is editorial, calm, and product-focused, not bright SaaS. On top of the cream canvas sit white floating cards (`{colors.surface-1}`), thin hairline dividers (`{colors.hairline}`), and charcoal type (`{colors.ink}` #111111).

Display type is **Saans** — Intercom's proprietary geometric sans — set at weight 500 with measured negative letter-spacing (-2.0px on 72px display). Body type is the same family at weight 400. The single proprietary mono is **SaansMono**, used sparingly for code snippets and product UI screenshots embedded in the marketing surface.

The single chromatic accent is **Fin Orange** (`{colors.fin-orange}` #ff5600) — Intercom's AI-product brand color. It surfaces on the Fin product CTA, the Fin badge in pricing, and a few inline emphasis moments. It is NOT a system primary; the system primary is charcoal `{colors.ink}`. Intercom also maintains a small **report palette** (`{colors.report-blue}`, `{colors.report-green}`, `{colors.report-pink}`, `{colors.report-lime}`) used inside in-product analytics surfaces shown in mockups.

The page rhythm is heavy on **product mockups**: every section's payload is a high-fidelity screenshot of Intercom's product UI, framed in white cards with `{rounded.xl}` 16px corners. The marketing chrome is intentionally quiet so the product can be the protagonist.

**Key Characteristics:**
- **Cream canvas** (`{colors.canvas}` #f5f1ec) is the brand's defining surface — neither white nor gray, deliberately warm.
- Product-screenshot-led page rhythm: every section centers a product mockup card, marketing chrome stays minimal.
- **Saans** proprietary sans-serif carries the entire hierarchy; SaansMono for code-only contexts.
- **Charcoal** `{colors.ink}` (#111111) is the system primary — buttons, headlines, body type all sit on charcoal.
- **Fin Orange** (`{colors.fin-orange}` #ff5600) is the AI product color — used on the Fin CTA and Fin badge, never decoratively.
- Display tracking pulls aggressively negative (-2.0px on 72px); body stays at 0.
- Card corners stay modest at `{rounded.lg}` 12px and `{rounded.xl}` 16px — never pill-rounded; never square.

## Colors

> Source pages: intercom.com (home), /pricing, /helpdesk, /customers, /helpdesk/inbox.

### Brand & Accent
- **Charcoal** ({colors.ink}): The system primary surface. Headlines, body type, primary CTA pill background — all charcoal.
- **White** ({colors.on-primary}): Text on charcoal CTAs; canvas of floating cards.
- **Fin Orange** ({colors.fin-orange}): The AI-product accent. Used on the Fin CTA, Fin badge, and a small set of inline emphasis moments.
- **Report Orange** ({colors.report-orange}): A slightly different orange used inside the report / analytics palette for in-product mockups.
- **Brand Blue** ({colors.brand-blue}): Saturated brand blue (#0007cb) — used on a small set of marketing illustrations.

### Surface
- **Canvas** ({colors.canvas}): Default page background — soft cream-white #f5f1ec.
- **Surface 1** ({colors.surface-1}): Pure white — used for floating cards (pricing, feature, product-mockup).
- **Surface 2** ({colors.surface-2}): Slightly darker cream — startup-discount banner, alt-row stripes.
- **Hairline** ({colors.hairline}): 1px borders on cards — soft warm gray (#d3cec6).
- **Hairline Soft** ({colors.hairline-soft}): Even softer dividers between FAQ rows and footer columns.
- **Inverse Canvas** ({colors.inverse-canvas}): Pure black — only on the testimonial / quote callout strip.
- **Inverse Surface 1** ({colors.inverse-surface-1}): One step lighter — hovered footer items in dark contexts.

### Text
- **Ink** ({colors.ink}): All headlines, body type, button labels — charcoal #111111.
- **Ink Muted** ({colors.ink-muted}): Secondary type at #626260 — meta info, deselected pricing tabs.
- **Ink Subtle** ({colors.ink-subtle}): Tertiary type at #7b7b78 — footer columns, helper text.
- **Ink Tertiary** ({colors.ink-tertiary}): Quaternary type at #9c9fa5 — disabled, footnotes.
- **Inverse Ink** ({colors.inverse-ink}): White on black — quote-strip type.
- **Inverse Ink Muted** ({colors.inverse-ink-muted}): Light gray on black — quote-strip meta.

### Semantic & Report Palette (in-product mockups)
- **Error Red** ({colors.semantic-error}): Form validation, destructive states.
- **Success Green** ({colors.semantic-success}): Positive states (also `{colors.report-green}`).
- **Report Blue** ({colors.report-blue}): Analytics chart blue.
- **Report Pink** ({colors.report-pink}): Analytics chart pink.
- **Report Lime** ({colors.report-lime}): Analytics chart lime.
- **Report Cyan** ({colors.report-cyan}): Phone country selector accent.

The report palette appears INSIDE product UI mockups — these are Intercom's in-product chart colors, not marketing surface colors.

## Typography

### Font Family

- **Saans** — Intercom's proprietary geometric sans, fallback `Saans Fallback, ui-sans-serif, system-ui`. Carries display, body, eyebrow, and button.
- **SaansMono** — Proprietary mono, fallback `SaansMono Fallback, ui-monospace`. Used inside code snippets shown in product mockups.

The same family carries the entire hierarchy. Hierarchy is carried by size + weight + tracking, not by family change.

### Hierarchy

| Token | Size | Weight | Line Height | Letter Spacing | Use |
|---|---|---|---|---|---|
| `{typography.display-xl}` | 72px | 500 | 1.05 | -2.0px | Largest hero headline |
| `{typography.display-lg}` | 56px | 500 | 1.10 | -1.4px | Section opener headlines |
| `{typography.display-md}` | 40px | 500 | 1.15 | -0.8px | Sub-section headlines |
| `{typography.headline}` | 28px | 500 | 1.20 | -0.5px | Pricing tier titles, CTA banner |
| `{typography.card-title}` | 22px | 500 | 1.25 | -0.3px | Card title, feature card |
| `{typography.subhead}` | 20px | 400 | 1.40 | -0.2px | Lead body, intro paragraphs |
| `{typography.body-lg}` | 18px | 400 | 1.50 | -0.1px | Hero subhead, lead paragraphs |
| `{typography.body}` | 16px | 400 | 1.50 | 0 | Default body |
| `{typography.body-sm}` | 14px | 400 | 1.50 | 0 | Card body, footer |
| `{typography.caption}` | 12px | 400 | 1.40 | 0 | Captions, meta |
| `{typography.button}` | 15px | 500 | 1.20 | 0 | Pill / square button labels |
| `{typography.eyebrow}` | 14px | 500 | 1.30 | 0 | Section eyebrow (sentence case) |
| `{typography.mono}` | 13px | 400 | 1.50 | 0 | SaansMono for code in mockups |

### Principles

- **Weight 500 carries display.** Saans at 500 reads as confident without bold.
- **Negative letter-spacing scales with size.** -2.0px at 72px (≈3% of size), down to 0 on body.
- **Line-heights tighten on display, relax on body.** 1.05 at display-xl, 1.50 at body.
- **No mono on chrome.** SaansMono lives in product UI; marketing chrome stays in Saans.
- **Eyebrow uses sentence case** at 14px / 500 weight — no all-caps tracking.

### Note on Font Substitutes

If implementing without Saans, suitable substitutes include **Söhne** (paid), **Inter** (free, weight 500), or **Geist Sans** (free). Inter at weight 500 is the closest free substitute; SaansMono can be approximated with **JetBrains Mono** at weight 400.

## Layout

### Spacing System

- **Base unit**: 8px.
- **Tokens (front matter)**: `{spacing.xxs}` 4px · `{spacing.xs}` 8px · `{spacing.sm}` 12px · `{spacing.md}` 16px · `{spacing.lg}` 24px · `{spacing.xl}` 32px · `{spacing.xxl}` 48px · `{spacing.section}` 96px.
- Card interior padding: `{spacing.lg}` 24px on pricing/feature cards; `{spacing.xl}` 32px on testimonial/discount cards; `{spacing.xxl}` 48px on CTA banners.
- Pill button padding: 10px vertical · 18px horizontal.

### Grid & Container

- Max content width sits around 1280px.
- Card grids are 3-up at desktop, 2-up at tablet, 1-up at mobile.
- Pricing tier grid is 3-up; comparison strip below shows checkmarks per tier.
- Product mockup cards span full content width — they're the protagonist of every section.

### Whitespace Philosophy

The cream canvas does the work white space would in another brand. Sections separate by ample vertical breathing room (`{spacing.section}` 96px) plus the lift-onto-white cards.

## Elevation & Depth

| Level | Treatment | Use |
|---|---|---|
| 0 (flat) | No shadow, no border | Default for body type, hero text, footer |
| 1 (lift on cream) | `{colors.surface-1}` white background on `{colors.canvas}` cream | Pricing cards, feature cards, product mockups |
| 2 (hairline lift) | `{colors.surface-1}` + 1px `{colors.hairline}` border | Floating tiles with extra definition |
| 3 (deep accent) | `{colors.inverse-canvas}` true black | Quote / testimonial callout strip |

Intercom resists drop shadows. Depth is communicated by the white-on-cream surface change.

### Decorative Depth

- **Product UI mockups** dominate every section's right column or center band — these are screenshots, not illustrations.
- **No atmospheric gradients, no spotlight cards, no pastel section blocks.** The cream + white system is deliberately restrained.

## Shapes

### Border Radius Scale

| Token | Value | Use |
|---|---|---|
| `{rounded.xs}` | 4px | Small chips, badges |
| `{rounded.sm}` | 6px | Inline tags |
| `{rounded.md}` | 8px | All buttons, form inputs |
| `{rounded.lg}` | 12px | Pricing cards, feature cards, FAQ rows |
| `{rounded.xl}` | 16px | Product mockup cards |
| `{rounded.xxl}` | 24px | Oversized CTA banners |
| `{rounded.pill}` | 9999px | Tab toggles |
| `{rounded.full}` | 9999px | Avatar circles |

### Photography & Illustration Geometry

- Product UI screenshots dominate the marketing surface; they sit in `{rounded.xl}` 16px tiles.
- Customer logo tiles render at small sizes (~24–32px logo height) on `{colors.canvas}` cream with no border.
- Avatar circles in testimonial cards use `{rounded.full}` at 40–48px sizes.

## Components

### Buttons

**`button-primary`** — Charcoal CTA. The default primary CTA across all pages.
- Background `{colors.ink}`, text `{colors.on-primary}`, type `{typography.button}`, padding 10px 18px, rounded `{rounded.md}`.
- Pressed state lives in `button-primary-pressed`.

**`button-secondary`** — White button on cream. Used for secondary CTAs.
- Background `{colors.surface-1}`, text `{colors.ink}`, type `{typography.button}`, padding 10px 18px, rounded `{rounded.md}`. 1px `{colors.hairline}` border.

**`button-tertiary`** — Plain text button.
- Background `{colors.canvas}`, text `{colors.ink}`, type `{typography.button}`, rounded `{rounded.md}`, padding 10px 18px.

**`button-fin`** — Fin Orange CTA — reserved for Fin AI product CTAs.
- Background `{colors.fin-orange}`, text `{colors.on-primary}`, type `{typography.button}`, rounded `{rounded.md}`, padding 10px 18px.

### Pricing Tabs

**`pricing-tab-default`** + **`pricing-tab-selected`** — Pill-toggle on `/pricing`.
- Default: `{colors.canvas}` background, `{colors.ink-muted}` text, rounded `{rounded.pill}`.
- Selected: `{colors.surface-1}` white background, `{colors.ink}` text — selected = lift onto white.

### Cards & Containers

**`pricing-card`** — Each tier on `/pricing`.
- Background `{colors.surface-1}`, text `{colors.ink}`, type `{typography.body}`, rounded `{rounded.lg}`, padding 24px.

**`pricing-card-featured`** — Featured / recommended tier — inverts to charcoal.
- Background `{colors.ink}`, text `{colors.on-primary}`, otherwise identical structure.

**`feature-card`** — Generic feature highlight.
- Background `{colors.surface-1}`, text `{colors.ink}`, type `{typography.body}`, rounded `{rounded.lg}`, padding 24px.

**`product-mockup-card`** — The dominant card type — frames a high-fidelity product UI screenshot.
- Background `{colors.surface-1}`, text `{colors.ink}`, type `{typography.body}`, rounded `{rounded.xl}`, padding 24px.

**`testimonial-card`** — Customer quote with avatar + name + company.
- Background `{colors.surface-1}`, text `{colors.ink}`, type `{typography.body-lg}`, rounded `{rounded.lg}`, padding 32px.

**`startup-discount-card`** — The "Startups get 90% off" tinted card.
- Background `{colors.surface-2}`, text `{colors.ink}`, type `{typography.body}`, rounded `{rounded.lg}`, padding 32px.

**`customer-logo-tile`** — Small tile in the customer marquee.
- Background `{colors.canvas}`, text `{colors.ink-muted}`, type `{typography.caption}`, rounded `{rounded.xs}`, padding 16px.

**`cta-banner`** — Closing CTA panel near page bottom.
- Background `{colors.surface-1}`, text `{colors.ink}`, type `{typography.headline}`, rounded `{rounded.lg}`, padding 48px.

### Inputs & Forms

**`text-input`** + **`text-input-focused`** — Form fields on contact and search overlays.
- Background `{colors.surface-1}`, text `{colors.ink}`, type `{typography.body}`, rounded `{rounded.md}`, padding 10px 14px.

### FAQ

**`faq-row`** — Expandable accordion row in the pricing FAQ.
- Background `{colors.canvas}`, text `{colors.ink}`, type `{typography.body}`, rounded `{rounded.md}`, padding 24px. 1px `{colors.hairline-soft}` bottom rule.

### Navigation

**`top-nav`** — Sticky cream bar with the Intercom wordmark left, nav links centered, log-in + sign-up pair right.
- Background `{colors.canvas}`, text `{colors.ink}`, type `{typography.body-sm}`, height 56px.

### Footer

**`footer`** — Dense link grid on `{colors.canvas}` cream with the Intercom wordmark left.
- Background `{colors.canvas}`, text `{colors.ink-muted}`, type `{typography.caption}`, padding 64px 32px.

## Do's and Don'ts

### Do

- Reserve `{colors.canvas}` cream as the system's anchor surface — never replace with pure white.
- Lift cards from cream onto white (`{colors.surface-1}`) for hierarchy.
- Use **`button-fin`** Fin Orange ONLY on Fin AI product CTAs and Fin badges.
- Pair Saans display at weight 500 with body at 400.
- Use product UI screenshots as the protagonist of every section.
- Use `{rounded.lg}` 12px for cards and `{rounded.xl}` 16px for product mockup tiles.
- Apply negative tracking proportionally to display sizes.

### Don't

- Don't use pure white as the canvas.
- Don't use Fin Orange as a section background or as a generic primary CTA.
- Don't add drop shadows to floating cards.
- Don't introduce a second display family.
- Don't pill-round CTAs.
- Don't write all-caps tracked eyebrows.
- Don't promote the report palette colors to brand-level surfaces.
- Don't combine charcoal CTAs and Fin Orange CTAs in the same viewport.

## Responsive Behavior

### Breakpoints

| Name | Width | Key Changes |
|---|---|---|
| Desktop-XL | 1440px | Default desktop layout |
| Desktop | 1280px | Card grid 3-up maintained |
| Tablet | 1024px | Card grid 3-up → 2-up |
| Mobile-Lg | 768px | Pricing comparison becomes accordion; nav hamburger |
| Mobile | 480px | Single-column; display-xl scales 72px → ~32px |

### Touch Targets

- CTAs hold ≥40px tap height across viewports.
- Pricing tab pills hold ≥40px tap height.
- Form inputs hold ≥44px tap target on touch.

### Collapsing Strategy

- **Top nav**: links collapse to hamburger below 768px; primary CTA stays visible.
- **Card grids**: 3-up → 2-up at 1024px → 1-up below 768px.
- **Pricing comparison**: collapses into per-tier accordion below 768px.
- **Display type**: `{typography.display-xl}` 72px scales toward `{typography.display-md}` 40px on mobile.

### Image Behavior

- Product UI screenshots maintain aspect ratio and never crop.
- Customer logos in the marquee may collapse from 6-up to 3-up below 768px.

## Iteration Guide

1. Focus on ONE component at a time and reference it by its `components:` token name.
2. When introducing a section, decide first whether it sits on `{colors.canvas}` cream (default) or whether it lifts onto a `{colors.surface-1}` white card.
3. Default body to `{typography.body}` at weight 400.
4. Run `npx @google/design.md lint DESIGN.md` after edits.
5. Add new variants as separate component entries.
6. Treat Fin Orange as a product accent: Fin CTA and Fin badge only.
7. Lead every section with a product screenshot.

## Known Gaps

- The **report palette** lives in product analytics dashboards rendered inside marketing mockups; they are documented for completeness but are not brand surface colors.
- Form-field error and validation styling is not visible on the inspected pages.
- Dark mode is not documented because the marketing site does not ship a dark theme.
- The helpdesk / inbox product surfaces show in-product UI states that aren't formal marketing chrome.
- Saans and SaansMono are proprietary; an open-source substitute (Inter, Söhne, Geist) is acceptable.


---

## Brand: `miro`

---
version: alpha
name: Miro-design-analysis
description: Miro presents itself as the AI-powered visual workspace through a confident, almost playful brand voice — anchored by its signature canary yellow ({colors.brand-yellow}) wordmark over white canvas, broken open by colorful pastel feature tints (rose, teal, coral, orange, mint) that echo the actual sticky-note color palette used on the live whiteboard. Black-pill primary buttons dominate marketing, real Miro-board mockups serve as feature illustrations, and a 4-tier pricing grid leads into a dense comparison table. Roobert PRO carries display headlines; the system supports homepage, pricing, AI Workflows product page, agile vertical, and customer stories surfaces.

colors:
  primary: "#1c1c1e"
  on-primary: "#ffffff"
  brand-yellow: "#ffd02f"
  brand-yellow-deep: "#fcb900"
  yellow-light: "#fff4c4"
  yellow-dark: "#746019"
  brand-blue: "#4262ff"
  blue-450: "#5b76fe"
  blue-pressed: "#2a41b6"
  brand-coral: "#ff9999"
  coral-light: "#ffc6c6"
  coral-dark: "#600000"
  brand-rose: "#ffd8f4"
  rose-light: "#fde0f0"
  brand-pink: "#fde0f0"
  brand-teal: "#0fbcb0"
  teal-light: "#c3faf5"
  moss-dark: "#187574"
  brand-orange-light: "#ffe6cd"
  brand-red: "#fbd4d4"
  brand-red-dark: "#e3c5c5"
  success-accent: "#00b473"
  canvas: "#ffffff"
  surface: "#f7f8fa"
  surface-soft: "#fafbfc"
  surface-yellow: "#fff8e0"
  surface-pricing-featured: "#f5f3ff"
  hairline: "#e0e2e8"
  hairline-soft: "#eef0f3"
  hairline-strong: "#c7cad5"
  ink-deep: "#050038"
  ink: "#1c1c1e"
  charcoal: "#2c2c34"
  slate: "#555a6a"
  steel: "#6b6f7e"
  stone: "#8e91a0"
  muted: "#a5a8b5"
  on-dark: "#ffffff"
  on-dark-muted: "#a5a8b5"
  footer-bg: "#1c1c1e"

typography:
  hero-display:
    fontFamily: Roobert PRO
    fontSize: 80px
    fontWeight: 500
    lineHeight: 1.05
    letterSpacing: -2px
  display-lg:
    fontFamily: Roobert PRO
    fontSize: 60px
    fontWeight: 500
    lineHeight: 1.10
    letterSpacing: -1.5px
  heading-1:
    fontFamily: Roobert PRO
    fontSize: 48px
    fontWeight: 500
    lineHeight: 1.15
    letterSpacing: -1px
  heading-2:
    fontFamily: Roobert PRO
    fontSize: 36px
    fontWeight: 500
    lineHeight: 1.20
    letterSpacing: -0.5px
  heading-3:
    fontFamily: Roobert PRO
    fontSize: 28px
    fontWeight: 500
    lineHeight: 1.25
  heading-4:
    fontFamily: Roobert PRO
    fontSize: 22px
    fontWeight: 500
    lineHeight: 1.30
  heading-5:
    fontFamily: Roobert PRO
    fontSize: 18px
    fontWeight: 500
    lineHeight: 1.40
  subtitle:
    fontFamily: Roobert PRO
    fontSize: 18px
    fontWeight: 400
    lineHeight: 1.50
  body-md:
    fontFamily: Roobert PRO
    fontSize: 16px
    fontWeight: 400
    lineHeight: 1.50
  body-md-medium:
    fontFamily: Roobert PRO
    fontSize: 16px
    fontWeight: 500
    lineHeight: 1.50
  body-sm:
    fontFamily: Roobert PRO
    fontSize: 14px
    fontWeight: 400
    lineHeight: 1.50
  body-sm-medium:
    fontFamily: Roobert PRO
    fontSize: 14px
    fontWeight: 500
    lineHeight: 1.50
  caption:
    fontFamily: Roobert PRO
    fontSize: 13px
    fontWeight: 400
    lineHeight: 1.40
  caption-bold:
    fontFamily: Roobert PRO
    fontSize: 13px
    fontWeight: 600
    lineHeight: 1.40
  micro:
    fontFamily: Roobert PRO
    fontSize: 12px
    fontWeight: 500
    lineHeight: 1.40
  micro-uppercase:
    fontFamily: Roobert PRO
    fontSize: 11px
    fontWeight: 600
    lineHeight: 1.40
    letterSpacing: 0.5px
  button-md:
    fontFamily: Roobert PRO
    fontSize: 14px
    fontWeight: 500
    lineHeight: 1.30
  stat-display:
    fontFamily: Roobert PRO
    fontSize: 64px
    fontWeight: 500
    lineHeight: 1.10
    letterSpacing: -1.5px

rounded:
  xs: 4px
  sm: 6px
  md: 8px
  lg: 12px
  xl: 16px
  xxl: 20px
  xxxl: 28px
  feature: 32px
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
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button-md}"
    rounded: "{rounded.full}"
    padding: "12px 24px"
  button-primary-pressed:
    backgroundColor: "{colors.charcoal}"
    textColor: "{colors.on-primary}"
  button-primary-disabled:
    backgroundColor: "{colors.hairline}"
    textColor: "{colors.muted}"
  button-yellow:
    backgroundColor: "{colors.brand-yellow}"
    textColor: "{colors.primary}"
    typography: "{typography.button-md}"
    rounded: "{rounded.full}"
    padding: "12px 24px"
  button-blue:
    backgroundColor: "{colors.brand-blue}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button-md}"
    rounded: "{rounded.full}"
    padding: "12px 24px"
  button-secondary:
    backgroundColor: "transparent"
    textColor: "{colors.ink}"
    typography: "{typography.button-md}"
    rounded: "{rounded.full}"
    padding: "12px 24px"
    border: "1px solid {colors.hairline-strong}"
  button-on-dark:
    backgroundColor: "{colors.on-dark}"
    textColor: "{colors.primary}"
    typography: "{typography.button-md}"
    rounded: "{rounded.full}"
    padding: "12px 24px"
  button-ghost:
    backgroundColor: "transparent"
    textColor: "{colors.ink}"
    typography: "{typography.button-md}"
    rounded: "{rounded.md}"
    padding: "8px 12px"
  button-link:
    backgroundColor: "transparent"
    textColor: "{colors.brand-blue}"
    typography: "{typography.body-sm-medium}"
    padding: "0"
  button-icon-circular:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    rounded: "{rounded.full}"
    size: 36px
    border: "1px solid {colors.hairline}"
  card-base:
    backgroundColor: "{colors.canvas}"
    rounded: "{rounded.xl}"
    padding: "{spacing.xl}"
    border: "1px solid {colors.hairline-soft}"
  card-feature:
    backgroundColor: "{colors.canvas}"
    rounded: "{rounded.xxxl}"
    padding: "{spacing.xxl}"
    border: "1px solid {colors.hairline-soft}"
  card-feature-yellow:
    backgroundColor: "{colors.brand-yellow}"
    textColor: "{colors.primary}"
    rounded: "{rounded.xxxl}"
    padding: "{spacing.xxl}"
  card-feature-coral:
    backgroundColor: "{colors.coral-light}"
    textColor: "{colors.primary}"
    rounded: "{rounded.xxxl}"
    padding: "{spacing.xxl}"
  card-feature-teal:
    backgroundColor: "{colors.teal-light}"
    textColor: "{colors.primary}"
    rounded: "{rounded.xxxl}"
    padding: "{spacing.xxl}"
  card-feature-rose:
    backgroundColor: "{colors.rose-light}"
    textColor: "{colors.primary}"
    rounded: "{rounded.xxxl}"
    padding: "{spacing.xxl}"
  card-customer-story:
    backgroundColor: "{colors.canvas}"
    rounded: "{rounded.xxxl}"
    padding: "0"
    border: "1px solid {colors.hairline-soft}"
  card-stat:
    backgroundColor: "transparent"
    textColor: "{colors.ink}"
    typography: "{typography.stat-display}"
    padding: "{spacing.lg}"
  pricing-card:
    backgroundColor: "{colors.canvas}"
    rounded: "{rounded.xl}"
    padding: "{spacing.xxl}"
    border: "1px solid {colors.hairline}"
  pricing-card-featured:
    backgroundColor: "{colors.surface-pricing-featured}"
    rounded: "{rounded.xl}"
    padding: "{spacing.xxl}"
    border: "2px solid {colors.brand-blue}"
  pricing-card-enterprise:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    rounded: "{rounded.xl}"
    padding: "{spacing.xxl}"
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
    border: "2px solid {colors.brand-blue}"
  search-pill:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.steel}"
    typography: "{typography.body-sm}"
    rounded: "{rounded.md}"
    padding: "{spacing.xs} {spacing.md}"
    height: 40px
    border: "1px solid {colors.hairline}"
  filter-dropdown:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-sm-medium}"
    rounded: "{rounded.full}"
    padding: "{spacing.xs} {spacing.md}"
    border: "1px solid {colors.hairline-strong}"
  pill-tab:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.steel}"
    typography: "{typography.body-sm-medium}"
    rounded: "{rounded.full}"
    padding: "{spacing.xs} {spacing.md}"
    border: "1px solid {colors.hairline}"
  pill-tab-active:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    rounded: "{rounded.full}"
    border: "1px solid {colors.primary}"
  toggle-monthly-yearly:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.ink}"
    rounded: "{rounded.full}"
    padding: "4px"
  badge-promo:
    backgroundColor: "{colors.brand-yellow}"
    textColor: "{colors.primary}"
    typography: "{typography.caption-bold}"
    rounded: "{rounded.full}"
    padding: "4px 10px"
  badge-tag-yellow:
    backgroundColor: "{colors.surface-yellow}"
    textColor: "{colors.yellow-dark}"
    typography: "{typography.caption-bold}"
    rounded: "{rounded.full}"
    padding: "4px 10px"
  badge-tag-purple:
    backgroundColor: "{colors.surface-pricing-featured}"
    textColor: "{colors.brand-blue}"
    typography: "{typography.caption-bold}"
    rounded: "{rounded.full}"
    padding: "4px 10px"
  badge-tag-coral:
    backgroundColor: "{colors.coral-light}"
    textColor: "{colors.coral-dark}"
    typography: "{typography.caption-bold}"
    rounded: "{rounded.full}"
    padding: "4px 10px"
  badge-success:
    backgroundColor: "{colors.success-accent}"
    textColor: "{colors.on-primary}"
    typography: "{typography.caption-bold}"
    rounded: "{rounded.full}"
    padding: "4px 10px"
  badge-discount:
    backgroundColor: "{colors.brand-yellow}"
    textColor: "{colors.primary}"
    typography: "{typography.caption-bold}"
    rounded: "{rounded.sm}"
    padding: "2px 6px"
  promo-banner:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.body-sm-medium}"
    padding: "{spacing.sm} {spacing.md}"
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
  template-card:
    backgroundColor: "{colors.canvas}"
    rounded: "{rounded.xl}"
    padding: "{spacing.md}"
    border: "1px solid {colors.hairline}"
  whiteboard-mockup:
    backgroundColor: "{colors.canvas}"
    rounded: "{rounded.xl}"
    padding: "0"
    border: "1px solid {colors.hairline-soft}"
    shadow: "rgba(5, 0, 56, 0.08) 0px 12px 32px -4px"
  faq-accordion-item:
    backgroundColor: "{colors.canvas}"
    rounded: "{rounded.md}"
    padding: "{spacing.xl}"
    border: "0 0 1px {colors.hairline} solid"
  logo-wall-item:
    backgroundColor: "transparent"
    textColor: "{colors.steel}"
    typography: "{typography.body-md-medium}"
    padding: "{spacing.lg}"
  hero-band-marketing:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.hero-display}"
    rounded: "0"
    padding: "{spacing.hero}"
  cta-banner-dark:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    rounded: "{rounded.feature}"
    padding: "{spacing.section}"
  industry-tile:
    backgroundColor: "{colors.canvas}"
    rounded: "{rounded.xl}"
    padding: "{spacing.xl}"
    border: "1px solid {colors.hairline-soft}"
  capterra-badge:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.caption}"
    rounded: "{rounded.md}"
    padding: "{spacing.sm} {spacing.md}"
    border: "1px solid {colors.hairline}"
  footer-region:
    backgroundColor: "{colors.footer-bg}"
    textColor: "{colors.on-dark}"
    typography: "{typography.body-sm}"
    padding: "{spacing.section} {spacing.xxl}"
  footer-link:
    backgroundColor: "transparent"
    textColor: "{colors.on-dark-muted}"
    typography: "{typography.body-sm}"
    padding: "{spacing.xxs} 0"
  app-store-badge:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.primary}"
    typography: "{typography.caption-bold}"
    rounded: "{rounded.md}"
    padding: "{spacing.sm} {spacing.md}"
---

## Overview

Miro positions itself as the AI-powered visual workspace through a confident, slightly playful brand voice. The homepage opens with a stark white canvas anchored by a small canary-yellow Miro wordmark in the top-left, a black-pill primary CTA "Get started free" and a secondary "Book a demo" outline pill — then dramatic real-Miro-board mockup imagery (sticky notes, kanban, mind maps) carries the visual weight. Across deeper surfaces, the system breaks open: pastel feature cards (rose, teal, coral, yellow) echo the actual sticky-note color palette of the live whiteboard product, and customer story cards reuse those tints to differentiate brand vignettes.

Roobert PRO — Miro's custom display face — anchors every typographic surface, from the 80px hero display down to 11px micro labels. The face's slightly rounded, geometric character pairs naturally with the playful product photography and the friendly product positioning. Black-pill primary buttons (`{rounded.full}`) dominate marketing CTAs; the brand color, signature canary yellow ({colors.brand-yellow}), is reserved for the wordmark, top promo banners, and "yellow tag" feature pills — never as a primary CTA. The 4-tier pricing comparison (Free / Starter / Business / Enterprise) leads into the densest surface in the system: a feature comparison table that runs ~80 rows deep across multiple section dividers.

**Key Characteristics:**
- Stark white canvas + Miro wordmark in canary yellow ({colors.brand-yellow}) as the recognizable opening signature
- Black-pill primary CTAs ({colors.primary} + `{rounded.full}`) as the dominant interactive element
- Pastel feature cards (yellow, rose, coral, teal, mint) that echo the actual sticky-note palette
- Roobert PRO across every UI surface; geometric, slightly rounded character
- Real Miro-board mockup imagery used as feature illustrations
- 4-tier pricing card grid + dense feature comparison table
- Massive dark footer ({colors.footer-bg}) with multi-column links + app-store badges

## Colors

> Source pages: miro.com/ (homepage), /pricing/ (4-tier comparison), /products/ai-workflows/ (AI product), /agile/ (vertical landing), /customers/ (story directory). Token coverage was identical across all five pages.

### Brand & Accent
- **Miro Yellow** ({colors.brand-yellow}): The brand's recognizable canary yellow — wordmark color, top promo banner, "yellow tag" pills
- **Yellow Deep** ({colors.brand-yellow-deep}): Darker variant for hover states and emphasis
- **Yellow Light** ({colors.yellow-light}): Pale yellow background tint for tag chips
- **Yellow Dark** ({colors.yellow-dark}): Yellow-tag text color (dark olive) for chip foreground
- **Brand Blue** ({colors.brand-blue}): Action blue for inline links and featured-pricing-tier border
- **Blue Pressed** ({colors.blue-pressed}): Pressed-state blue
- **Brand Coral** ({colors.brand-coral}): Coral accent for warm callouts
- **Coral Light** ({colors.coral-light}): Pale coral for feature card backgrounds
- **Coral Dark** ({colors.coral-dark}): Coral-tag text color (deep wine)
- **Brand Rose** ({colors.brand-rose}): Soft rose-pink for feature card variants
- **Brand Teal** ({colors.brand-teal}): Brand teal
- **Teal Light** ({colors.teal-light}): Pale teal for feature card backgrounds
- **Moss Dark** ({colors.moss-dark}): Deep teal-green text color
- **Brand Pink** ({colors.brand-pink}): Pale pink for soft callouts
- **Brand Orange Light** ({colors.brand-orange-light}): Soft orange for feature card backgrounds

### Surface
- **Canvas White** ({colors.canvas}): Page background and primary card surface
- **Surface** ({colors.surface}): Subtle section backgrounds, search-pill rest
- **Surface Soft** ({colors.surface-soft}): Quieter section divisions
- **Surface Yellow** ({colors.surface-yellow}): Pale yellow-tinted surface for tag chip
- **Surface Pricing Featured** ({colors.surface-pricing-featured}): Pale lavender for featured pricing tier
- **Hairline** ({colors.hairline}): 1px borders and primary dividers
- **Hairline Soft** ({colors.hairline-soft}): Quieter table-row dividers
- **Hairline Strong** ({colors.hairline-strong}): Stronger 1px border for inputs

### Text
- **Ink Deep** ({colors.ink-deep}): Headlines on lighter feature cards
- **Ink** ({colors.ink}): Primary headlines and body text
- **Charcoal** ({colors.charcoal}): Body emphasis text
- **Slate** ({colors.slate}): Secondary text, metadata
- **Steel** ({colors.steel}): Tertiary text, footer links
- **Stone** ({colors.stone}): Captions, muted labels
- **Muted** ({colors.muted}): Disabled labels, input placeholders
- **On Dark** ({colors.on-dark}): White text on dark surfaces
- **On Dark Muted** ({colors.on-dark-muted}): Reduced-opacity white on dark

### Semantic
- **Success Accent** ({colors.success-accent}): Confirmation/success indicator green
- **Brand Red** ({colors.brand-red}): Soft red for error backgrounds
- **Brand Red Dark** ({colors.brand-red-dark}): Stronger red for error borders

## Typography

### Font Family
**Roobert PRO** (primary): Miro's custom geometric sans-serif typeface. Used across every UI surface from oversized 80px hero displays to 11px micro labels. The face has a slightly rounded, friendly character that matches the brand's playful product positioning. Fallbacks: Noto Sans, -apple-system, BlinkMacSystemFont, sans-serif.

### Hierarchy

| Token | Size | Weight | Line Height | Letter Spacing | Use |
|---|---|---|---|---|---|
| `{typography.hero-display}` | 80px | 500 | 1.05 | -2px | Marketing hero ("See how teams get great done with Miro") |
| `{typography.display-lg}` | 60px | 500 | 1.10 | -1.5px | Major section openers |
| `{typography.heading-1}` | 48px | 500 | 1.15 | -1px | Page-level headlines |
| `{typography.heading-2}` | 36px | 500 | 1.20 | -0.5px | Subsection headlines |
| `{typography.heading-3}` | 28px | 500 | 1.25 | 0 | Card titles |
| `{typography.heading-4}` | 22px | 500 | 1.30 | 0 | Feature tile titles |
| `{typography.heading-5}` | 18px | 500 | 1.40 | 0 | FAQ questions, smaller cards |
| `{typography.subtitle}` | 18px | 400 | 1.50 | 0 | Hero subtitle |
| `{typography.body-md}` | 16px | 400 | 1.50 | 0 | Primary body text |
| `{typography.body-md-medium}` | 16px | 500 | 1.50 | 0 | Logo wall labels |
| `{typography.body-sm}` | 14px | 400 | 1.50 | 0 | Secondary body, table cells |
| `{typography.body-sm-medium}` | 14px | 500 | 1.50 | 0 | Filter dropdowns, button labels |
| `{typography.caption}` | 13px | 400 | 1.40 | 0 | Helper text |
| `{typography.caption-bold}` | 13px | 600 | 1.40 | 0 | Badge labels, tag chips |
| `{typography.micro}` | 12px | 500 | 1.40 | 0 | Footer microcopy |
| `{typography.micro-uppercase}` | 11px | 600 | 1.40 | 0.5px | Section dividers in tables |
| `{typography.button-md}` | 14px | 500 | 1.30 | 0 | Pill button labels |
| `{typography.stat-display}` | 64px | 500 | 1.10 | -1.5px | "100M+ users" stat callouts |

### Principles
- **Tight hero leading** (1.05) creates magazine-grade display headlines on the 80px hero
- **Negative letter-spacing progression** — display sizes use -2px to -1.5px; smaller headings relax to 0
- **Stat-display token** (64px / 500) for marketing stat callouts
- **Single weight scale** — 400 (body), 500 (medium emphasis + headings), 600 (badges and uppercase). Roobert PRO does not use 700 in this system.

## Layout

### Spacing System
- **Base unit**: 4px (8px primary increment)
- **Tokens**: `{spacing.xxs}` (4px) · `{spacing.xs}` (8px) · `{spacing.sm}` (12px) · `{spacing.md}` (16px) · `{spacing.lg}` (20px) · `{spacing.xl}` (24px) · `{spacing.xxl}` (32px) · `{spacing.xxxl}` (40px) · `{spacing.section-sm}` (48px) · `{spacing.section}` (64px) · `{spacing.section-lg}` (96px) · `{spacing.hero}` (120px)
- **Section rhythm**: Marketing pages use `{spacing.section-lg}` (96px); pricing comparison tightens to `{spacing.section}` (64px); customer story stack uses `{spacing.xxl}` (32px)
- **Card internal padding**: `{spacing.xl}` (24px) for compact cards; `{spacing.xxl}` (32px) for feature panels

### Grid & Container
- Marketing pages use 1280px max-width with 32px gutters
- Pricing page renders 4-tier card row at desktop (Free / Starter / Business / Enterprise)
- Customer stories page uses 2-column grid with filter dropdowns
- AI Workflows page uses 2-column hero, then 3-up feature grid

### Whitespace Philosophy
Marketing surfaces give content generous breathing room — `{spacing.hero}` (120px) hero padding gives the small wordmark room to breathe. Pricing surfaces tighten dramatically.

## Elevation & Depth

The system runs predominantly flat with strategic depth on hero mockups.

| Level | Treatment | Use |
|---|---|---|
| 0 (flat) | No shadow; `{colors.hairline-soft}` border | Default cards, table rows, form inputs |
| 1 (subtle) | `rgba(5, 0, 56, 0.04) 0px 1px 2px 0px` | Subtle hover-elevated tiles |
| 2 (card) | `rgba(5, 0, 56, 0.06) 0px 4px 12px 0px` | Standard feature cards |
| 3 (mockup) | `rgba(5, 0, 56, 0.08) 0px 12px 32px -4px` | Hero whiteboard mockup framing |
| 4 (modal) | `rgba(5, 0, 56, 0.12) 0px 16px 48px -8px` | Modals, dropdowns |

### Decorative Depth
- The atmospheric depth on Miro's hero comes from the live-product-board mockup illustrations — sticky notes layered at z-offsets, color-block tints behind whiteboard frames
- Pastel feature cards carry their own visual weight via saturated background color
- Customer-story cards layer dark photographic content with overlay scrims

## Shapes

### Border Radius Scale

| Token | Value | Use |
|---|---|---|
| `{rounded.xs}` | 4px | Small chips, micro-controls |
| `{rounded.sm}` | 6px | Discount badges |
| `{rounded.md}` | 8px | Inputs, search-pill |
| `{rounded.lg}` | 12px | Standard cards, table containers |
| `{rounded.xl}` | 16px | Pricing cards, feature panels |
| `{rounded.xxl}` | 20px | Larger feature cards |
| `{rounded.xxxl}` | 28px | Pastel feature cards (yellow, rose, coral, teal) |
| `{rounded.feature}` | 32px | Hero CTA banner cards |
| `{rounded.full}` | 9999px | All buttons, pill tabs, badges |

### Photography Geometry
- Real Miro board mockups render with `{rounded.xl}` (16px) corners and a subtle drop shadow
- Customer story cards use `{rounded.xxxl}` (28px) corners with full-bleed photography
- Template card thumbnails use `{rounded.xl}` (16px) with photographic content
- Customer logos wall presents wordmarks inline at consistent 100px height

## Components

> Per the no-hover policy, hover states are NOT documented. Default and pressed/active states only.

### Buttons

**`button-primary`** — Black pill primary CTA, the dominant action ("Get started free").
- Background `{colors.primary}`, text `{colors.on-primary}`, typography `{typography.button-md}`, padding `12px 24px`, rounded `{rounded.full}`.
- Pressed state `button-primary-pressed` lifts to `{colors.charcoal}`.
- Disabled state `button-primary-disabled` uses `{colors.hairline}` background and `{colors.muted}` text.

**`button-yellow`** — Brand-yellow pill for moments of brand emphasis.
- Background `{colors.brand-yellow}`, text `{colors.primary}`, typography `{typography.button-md}`, padding `12px 24px`, rounded `{rounded.full}`.

**`button-blue`** — Brand-blue pill for inline action callouts.
- Background `{colors.brand-blue}`, text `{colors.on-primary}`, typography `{typography.button-md}`, padding `12px 24px`, rounded `{rounded.full}`.

**`button-secondary`** — Outlined pill for secondary actions ("Book a demo").
- Background transparent, text `{colors.ink}`, border `1px solid {colors.hairline-strong}`, typography `{typography.button-md}`, padding `12px 24px`, rounded `{rounded.full}`.

**`button-on-dark`** — White pill for dark CTA banners.
- Background `{colors.on-dark}`, text `{colors.primary}`, typography `{typography.button-md}`, padding `12px 24px`, rounded `{rounded.full}`.

**`button-ghost`** — Quieter rectangular ghost button.
- Background transparent, text `{colors.ink}`, typography `{typography.button-md}`, padding `8px 12px`, rounded `{rounded.md}`.

**`button-link`** — Inline text link.
- Background transparent, text `{colors.brand-blue}`, typography `{typography.body-sm-medium}`, padding `0`.

**`button-icon-circular`** — 36×36px circular utility button.
- Background `{colors.canvas}`, text `{colors.ink}`, border `1px solid {colors.hairline}`, rounded `{rounded.full}`.

### Cards & Containers

**`card-base`** — Standard content card.
- Background `{colors.canvas}`, rounded `{rounded.xl}`, padding `{spacing.xl}`, border `1px solid {colors.hairline-soft}`.

**`card-feature`** — White feature card with larger 28px corners.
- Background `{colors.canvas}`, rounded `{rounded.xxxl}`, padding `{spacing.xxl}`, border `1px solid {colors.hairline-soft}`.

**`card-feature-yellow`** — Pastel-yellow feature card.
- Background `{colors.brand-yellow}`, text `{colors.primary}`, rounded `{rounded.xxxl}`, padding `{spacing.xxl}`.

**`card-feature-coral`** — Pastel-coral feature card variant.
- Background `{colors.coral-light}`, text `{colors.primary}`, rounded `{rounded.xxxl}`, padding `{spacing.xxl}`.

**`card-feature-teal`** — Pastel-teal feature card variant.
- Background `{colors.teal-light}`, text `{colors.primary}`, rounded `{rounded.xxxl}`, padding `{spacing.xxl}`.

**`card-feature-rose`** — Pastel-rose feature card variant.
- Background `{colors.rose-light}`, text `{colors.primary}`, rounded `{rounded.xxxl}`, padding `{spacing.xxl}`.

**`card-customer-story`** — Customer story card.
- Background `{colors.canvas}`, rounded `{rounded.xxxl}`, padding `0` (image fills the card), border `1px solid {colors.hairline-soft}`.

**`card-stat`** — Stat-row cell for "100M+ users".
- Background transparent, text `{colors.ink}`, typography `{typography.stat-display}`, padding `{spacing.lg}`.

**`pricing-card`** — Standard pricing tier card.
- Background `{colors.canvas}`, rounded `{rounded.xl}`, padding `{spacing.xxl}`, border `1px solid {colors.hairline}`.

**`pricing-card-featured`** — Featured pricing tier (Business — lavender background + blue border).
- Background `{colors.surface-pricing-featured}`, rounded `{rounded.xl}`, padding `{spacing.xxl}`, border `2px solid {colors.brand-blue}`.

**`pricing-card-enterprise`** — Dark-canvas enterprise tier card.
- Background `{colors.primary}`, text `{colors.on-primary}`, rounded `{rounded.xl}`, padding `{spacing.xxl}`.

### Inputs & Forms

**`text-input`** — Standard text field.
- Background `{colors.canvas}`, text `{colors.ink}`, border `1px solid {colors.hairline-strong}`, rounded `{rounded.md}`, padding `{spacing.sm} {spacing.md}`, height 44px.

**`text-input-focused`** — Activated state.
- Border switches to `2px solid {colors.brand-blue}`.

**`search-pill`** — Search bar.
- Background `{colors.surface}`, text `{colors.steel}`, typography `{typography.body-sm}`, rounded `{rounded.md}`, height 40px, border `1px solid {colors.hairline}`.

**`filter-dropdown`** — Pill-shaped filter dropdown ("Company use" / "Industry" / "Use case").
- Background `{colors.canvas}`, text `{colors.ink}`, typography `{typography.body-sm-medium}`, rounded `{rounded.full}`, padding `{spacing.xs} {spacing.md}`, border `1px solid {colors.hairline-strong}`.

### Tabs

**`pill-tab`** + **`pill-tab-active`** — Pill-style tab nav.
- Inactive: background `{colors.canvas}`, text `{colors.steel}`, border `1px solid {colors.hairline}`, padding `{spacing.xs} {spacing.md}`, rounded `{rounded.full}`.
- Active: background `{colors.primary}`, text `{colors.on-primary}`.

**`toggle-monthly-yearly`** — Two-state pill toggle (Monthly / Annual on pricing).
- Background `{colors.surface}`, rounded `{rounded.full}`, padding `4px`.

### Badges & Status

**`badge-promo`** — Yellow promo banner badge.
- Background `{colors.brand-yellow}`, text `{colors.primary}`, typography `{typography.caption-bold}`, rounded `{rounded.full}`, padding `4px 10px`.

**`badge-tag-yellow`** — Soft-yellow feature tag chip ("Yellow" tag on AI Workflows page).
- Background `{colors.surface-yellow}`, text `{colors.yellow-dark}`, typography `{typography.caption-bold}`, rounded `{rounded.full}`, padding `4px 10px`.

**`badge-tag-purple`** — Lavender feature tag chip ("AI agent" tag).
- Background `{colors.surface-pricing-featured}`, text `{colors.brand-blue}`, typography `{typography.caption-bold}`, rounded `{rounded.full}`, padding `4px 10px`.

**`badge-tag-coral`** — Coral feature tag chip variant.
- Background `{colors.coral-light}`, text `{colors.coral-dark}`, typography `{typography.caption-bold}`, rounded `{rounded.full}`, padding `4px 10px`.

**`badge-success`** — Green success indicator.
- Background `{colors.success-accent}`, text `{colors.on-primary}`, typography `{typography.caption-bold}`, rounded `{rounded.full}`, padding `4px 10px`.

**`badge-discount`** — Yellow rectangular discount pill ("Save 15%").
- Background `{colors.brand-yellow}`, text `{colors.primary}`, typography `{typography.caption-bold}`, rounded `{rounded.sm}`, padding `2px 6px`.

**`promo-banner`** — Sticky black promo strip ABOVE the top nav.
- Background `{colors.primary}`, text `{colors.on-primary}`, typography `{typography.body-sm-medium}`, padding `{spacing.sm} {spacing.md}`. Carries inline yellow "GET YOUR SPOT" pill.

### Tables

**`comparison-table`** — Pricing feature comparison table.
- Background `{colors.canvas}`, text `{colors.ink}`, typography `{typography.body-sm}`, rounded `{rounded.md}`, border `1px solid {colors.hairline}`.

**`comparison-row`** — Individual feature row.
- Background `{colors.canvas}`, text `{colors.ink}`, padding `{spacing.md} {spacing.lg}`, bottom border `1px solid {colors.hairline-soft}`.

### Documentation Components

**`whiteboard-mockup`** — Real Miro-board UI rendered as feature illustration.
- Background `{colors.canvas}`, rounded `{rounded.xl}`, border `1px solid {colors.hairline-soft}`, shadow `rgba(5, 0, 56, 0.08) 0px 12px 32px -4px`.

**`template-card`** — Template thumbnail card.
- Background `{colors.canvas}`, rounded `{rounded.xl}`, padding `{spacing.md}`, border `1px solid {colors.hairline}`.

**`industry-tile`** — Industry-vertical tile.
- Background `{colors.canvas}`, rounded `{rounded.xl}`, padding `{spacing.xl}`, border `1px solid {colors.hairline-soft}`.

**`faq-accordion-item`** — FAQ panel item.
- Background `{colors.canvas}`, rounded `{rounded.md}`, padding `{spacing.xl}`, bottom border `1px solid {colors.hairline}`.

**`logo-wall-item`** — Customer logo wordmark cell.
- Background transparent, text `{colors.steel}`, typography `{typography.body-md-medium}`, padding `{spacing.lg}`.

**`capterra-badge`** — Review/rating badge in the footer.
- Background `{colors.canvas}`, text `{colors.ink}`, typography `{typography.caption}`, rounded `{rounded.md}`, padding `{spacing.sm} {spacing.md}`, border `1px solid {colors.hairline}`.

**`app-store-badge`** — App store / Google Play download pill.
- Background `{colors.canvas}`, text `{colors.primary}`, typography `{typography.caption-bold}`, rounded `{rounded.md}`, padding `{spacing.sm} {spacing.md}`.

### Navigation

**Top Navigation (Marketing)** — Sticky white bar with yellow Miro wordmark + horizontal links + right-side CTAs.
- Background `{colors.canvas}`, height ~64px.
- Left: Yellow square Miro wordmark + horizontal link list (Product, Solutions, Resources).
- Right: "Login / Pricing / Contact sales" links + black-pill "Get started free".

### Signature Components

**`hero-band-marketing`** — Marketing hero band.
- Background `{colors.canvas}`, padding `{spacing.hero}`.
- Layout: centered headline in `{typography.hero-display}`, centered subtitle, centered button row, then whiteboard mockup illustration below.

**`cta-banner-dark`** — Dark CTA banner at the bottom of feature pages.
- Background `{colors.primary}`, text `{colors.on-primary}`, rounded `{rounded.feature}`, padding `{spacing.section}`. Centered headline + subtitle + `button-on-dark` "Get started free".

**`footer-region`** — Massive multi-column dark footer.
- Background `{colors.footer-bg}`, padding `{spacing.section} {spacing.xxl}`.
- 6-column link grid (Product / Solutions / Tools / Resources / Company / Plans & Pricing).
- Section headings in `{typography.body-md-medium}` `{colors.on-dark}`.

**`footer-link`** — Individual link in the footer.
- Background transparent, text `{colors.on-dark-muted}`, typography `{typography.body-sm}`, padding `{spacing.xxs} 0`.

## Do's and Don'ts

### Do
- Reserve `{colors.brand-yellow}` for the wordmark, top promo banner, and "yellow tag" chips
- Use `{colors.primary}` (black) as the dominant CTA on all surfaces
- Pair pastel feature cards (yellow, rose, coral, teal) with white feature cards in the same viewport
- Apply `{rounded.full}` to every button, every pill tab, every status badge
- Apply `{rounded.xxxl}` (28px) to pastel feature cards
- Use real Miro-board mockups as feature illustrations
- Maintain Roobert PRO across every UI surface

### Don't
- Don't use `{colors.brand-yellow}` on standard CTAs or large background surfaces
- Don't introduce additional accent colors beyond yellow + brand pastels
- Don't soften corners on buttons; the pill is a brand signature
- Don't reduce hero leading below 1.05
- Don't apply heavy shadows on flat documentation cards; reserve elevation for whiteboard mockups
- Don't use stock photography — show the live product board UI

## Responsive Behavior

### Breakpoints
| Name | Width | Key Changes |
|---|---|---|
| Mobile (small) | < 480px | Single column. Hero scales to 36px. Pill nav collapses to hamburger. Pricing tiers stack 1-up. |
| Mobile (large) | 480 – 767px | Feature tiles 2-up. Hero scales to 48px. |
| Tablet | 768 – 1023px | 2-column feature grids. Pill-tab nav returns. |
| Desktop | 1024 – 1279px | 4-tier pricing card row. Customer story grid 2-up. Hero at 64px. |
| Wide Desktop | ≥ 1280px | Full hero presentation, 80px hero display. |

### Touch Targets
- Pill buttons render at 40–44px effective height — at WCAG AAA floor
- Circular icon buttons: 36×36px desktop → 44×44px mobile
- Form inputs render at 44px height
- Filter dropdowns render at ~36px tall — bumps to 44px on mobile

### Collapsing Strategy
- **Promo banner** stays full-width; truncates at < 480px
- **Top nav** below 1024px collapses to hamburger
- **Hero band**: 2-column hero collapses to stacked at < 1024px
- **Pricing comparison**: 4-column tiers → 2-column tablet → 1-column mobile; comparison table becomes horizontal-scroll
- **Customer story grid**: 2-up → 1-up at < 768px
- **Hero typography**: 80px → 60px tablet → 48px mobile-large → 36px mobile-small
- **Footer**: 6-column desktop → 3-column tablet → 2-column mobile → accordion at small mobile

### Image Behavior
- Whiteboard mockups maintain aspect ratio; lazy-loaded below the fold
- Customer story photography uses 16:9 ratio with full-bleed scaling
- Logo wall presents wordmarks at consistent 100px height

## Iteration Guide

1. Focus on ONE component at a time
2. Reference component names and tokens directly
3. Run `npx @google/design.md lint DESIGN.md` after edits
4. Add new variants as separate `components:` entries
5. Default to `{typography.body-md}` for body and `{typography.subtitle}` for emphasis
6. Keep `{colors.brand-yellow}` confined to wordmark, promo banner, and yellow-tag chips
7. Pill-shaped buttons (`{rounded.full}`) always
8. When showing the product, use a real Miro-board mockup with sticky-note color tints

## Known Gaps

- Specific dark-mode token values not surfaced
- Animation/transition timings not extracted; recommend 150–200ms ease
- Form validation success state not explicitly captured beyond defaults
- Sticky note color tints inside the actual whiteboard product are richer than what marketing surfaces capture


---

## Brand: `notion`

---
version: alpha
name: Notion-design-analysis
description: Notion presents itself as the all-in-one workspace through a confident, illustration-rich brand voice — anchored by a deep navy hero band ({colors.brand-navy}) decorated with brand-colored sticky-note dots and mesh wire illustrations, a signature purple pill primary CTA ({colors.primary}), and a rich palette of pastel-tinted feature cards that echo the colorful database properties of the live product. The system uses a Notion-Sans (Inter-based) typeface across every UI surface, anchors a 4-tier pricing comparison (Free / Plus / Business / Enterprise), and presents the live workspace UI mockup directly inside the hero band. Coverage spans homepage, Enterprise, Product AI, Product Agents, Startups, and Pricing surfaces.

colors:
  primary: "#5645d4"
  primary-pressed: "#4534b3"
  primary-deep: "#3a2a99"
  on-primary: "#ffffff"
  brand-navy: "#0a1530"
  brand-navy-deep: "#070f24"
  brand-navy-mid: "#1a2a52"
  link-blue: "#0075de"
  link-blue-pressed: "#005bab"
  brand-orange: "#dd5b00"
  brand-orange-deep: "#793400"
  brand-pink: "#ff64c8"
  brand-pink-deep: "#a02e6d"
  brand-purple: "#7b3ff2"
  brand-purple-300: "#d6b6f6"
  brand-purple-800: "#391c57"
  brand-teal: "#2a9d99"
  brand-green: "#1aae39"
  brand-yellow: "#f5d75e"
  brand-brown: "#523410"
  card-tint-peach: "#ffe8d4"
  card-tint-rose: "#fde0ec"
  card-tint-mint: "#d9f3e1"
  card-tint-lavender: "#e6e0f5"
  card-tint-sky: "#dcecfa"
  card-tint-yellow: "#fef7d6"
  card-tint-yellow-bold: "#f9e79f"
  card-tint-cream: "#f8f5e8"
  card-tint-gray: "#f0eeec"
  canvas: "#ffffff"
  surface: "#f6f5f4"
  surface-soft: "#fafaf9"
  hairline: "#e5e3df"
  hairline-soft: "#ede9e4"
  hairline-strong: "#c8c4be"
  ink-deep: "#000000"
  ink: "#1a1a1a"
  charcoal: "#37352f"
  slate: "#5d5b54"
  steel: "#787671"
  stone: "#a4a097"
  muted: "#bbb8b1"
  on-dark: "#ffffff"
  on-dark-muted: "#a4a097"
  semantic-success: "#1aae39"
  semantic-warning: "#dd5b00"
  semantic-error: "#e03131"

typography:
  hero-display:
    fontFamily: Notion Sans
    fontSize: 80px
    fontWeight: 600
    lineHeight: 1.05
    letterSpacing: -2px
  display-lg:
    fontFamily: Notion Sans
    fontSize: 56px
    fontWeight: 600
    lineHeight: 1.10
    letterSpacing: -1px
  heading-1:
    fontFamily: Notion Sans
    fontSize: 48px
    fontWeight: 600
    lineHeight: 1.15
    letterSpacing: -0.5px
  heading-2:
    fontFamily: Notion Sans
    fontSize: 36px
    fontWeight: 600
    lineHeight: 1.20
    letterSpacing: -0.5px
  heading-3:
    fontFamily: Notion Sans
    fontSize: 28px
    fontWeight: 600
    lineHeight: 1.25
  heading-4:
    fontFamily: Notion Sans
    fontSize: 22px
    fontWeight: 600
    lineHeight: 1.30
  heading-5:
    fontFamily: Notion Sans
    fontSize: 18px
    fontWeight: 600
    lineHeight: 1.40
  subtitle:
    fontFamily: Notion Sans
    fontSize: 18px
    fontWeight: 400
    lineHeight: 1.50
  body-md:
    fontFamily: Notion Sans
    fontSize: 16px
    fontWeight: 400
    lineHeight: 1.55
  body-md-medium:
    fontFamily: Notion Sans
    fontSize: 16px
    fontWeight: 500
    lineHeight: 1.55
  body-sm:
    fontFamily: Notion Sans
    fontSize: 14px
    fontWeight: 400
    lineHeight: 1.50
  body-sm-medium:
    fontFamily: Notion Sans
    fontSize: 14px
    fontWeight: 500
    lineHeight: 1.50
  caption:
    fontFamily: Notion Sans
    fontSize: 13px
    fontWeight: 400
    lineHeight: 1.40
  caption-bold:
    fontFamily: Notion Sans
    fontSize: 13px
    fontWeight: 600
    lineHeight: 1.40
  micro:
    fontFamily: Notion Sans
    fontSize: 12px
    fontWeight: 500
    lineHeight: 1.40
  micro-uppercase:
    fontFamily: Notion Sans
    fontSize: 11px
    fontWeight: 600
    lineHeight: 1.40
    letterSpacing: 1px
  button-md:
    fontFamily: Notion Sans
    fontSize: 14px
    fontWeight: 500
    lineHeight: 1.30

rounded:
  xs: 4px
  sm: 6px
  md: 8px
  lg: 12px
  xl: 16px
  xxl: 20px
  xxxl: 24px
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
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button-md}"
    rounded: "{rounded.md}"
    padding: "10px 18px"
  button-primary-pressed:
    backgroundColor: "{colors.primary-pressed}"
    textColor: "{colors.on-primary}"
  button-primary-disabled:
    backgroundColor: "{colors.hairline}"
    textColor: "{colors.muted}"
  button-dark:
    backgroundColor: "{colors.ink-deep}"
    textColor: "{colors.on-dark}"
    typography: "{typography.button-md}"
    rounded: "{rounded.md}"
    padding: "10px 18px"
  button-secondary:
    backgroundColor: "transparent"
    textColor: "{colors.ink}"
    typography: "{typography.button-md}"
    rounded: "{rounded.md}"
    padding: "10px 18px"
    border: "1px solid {colors.hairline-strong}"
  button-on-dark:
    backgroundColor: "{colors.on-dark}"
    textColor: "{colors.ink}"
    typography: "{typography.button-md}"
    rounded: "{rounded.md}"
    padding: "10px 18px"
  button-secondary-on-dark:
    backgroundColor: "transparent"
    textColor: "{colors.on-dark}"
    typography: "{typography.button-md}"
    rounded: "{rounded.md}"
    padding: "10px 18px"
    border: "1px solid {colors.on-dark-muted}"
  button-ghost:
    backgroundColor: "transparent"
    textColor: "{colors.ink}"
    typography: "{typography.button-md}"
    rounded: "{rounded.sm}"
    padding: "8px 12px"
  button-link:
    backgroundColor: "transparent"
    textColor: "{colors.link-blue}"
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
  card-feature-yellow-bold:
    backgroundColor: "{colors.card-tint-yellow-bold}"
    textColor: "{colors.charcoal}"
    rounded: "{rounded.lg}"
    padding: "{spacing.xxl}"
  card-feature-peach:
    backgroundColor: "{colors.card-tint-peach}"
    textColor: "{colors.charcoal}"
    rounded: "{rounded.lg}"
    padding: "{spacing.xxl}"
  card-feature-rose:
    backgroundColor: "{colors.card-tint-rose}"
    textColor: "{colors.charcoal}"
    rounded: "{rounded.lg}"
    padding: "{spacing.xxl}"
  card-feature-mint:
    backgroundColor: "{colors.card-tint-mint}"
    textColor: "{colors.charcoal}"
    rounded: "{rounded.lg}"
    padding: "{spacing.xxl}"
  card-feature-sky:
    backgroundColor: "{colors.card-tint-sky}"
    textColor: "{colors.charcoal}"
    rounded: "{rounded.lg}"
    padding: "{spacing.xxl}"
  card-feature-lavender:
    backgroundColor: "{colors.card-tint-lavender}"
    textColor: "{colors.charcoal}"
    rounded: "{rounded.lg}"
    padding: "{spacing.xxl}"
  card-feature-yellow:
    backgroundColor: "{colors.card-tint-yellow}"
    textColor: "{colors.charcoal}"
    rounded: "{rounded.lg}"
    padding: "{spacing.xxl}"
  card-feature-cream:
    backgroundColor: "{colors.card-tint-cream}"
    textColor: "{colors.charcoal}"
    rounded: "{rounded.lg}"
    padding: "{spacing.xxl}"
  card-agent-tile:
    backgroundColor: "{colors.canvas}"
    rounded: "{rounded.lg}"
    padding: "{spacing.xl}"
    border: "1px solid {colors.hairline}"
  card-template:
    backgroundColor: "{colors.canvas}"
    rounded: "{rounded.lg}"
    padding: "{spacing.lg}"
    border: "1px solid {colors.hairline}"
  card-startup-perk:
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
    backgroundColor: "{colors.surface}"
    rounded: "{rounded.lg}"
    padding: "{spacing.xxl}"
    border: "2px solid {colors.primary}"
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
    border: "2px solid {colors.primary}"
  search-pill:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.steel}"
    typography: "{typography.body-md}"
    rounded: "{rounded.md}"
    padding: "{spacing.sm} {spacing.md}"
    height: 44px
    border: "1px solid {colors.hairline}"
  pill-tab:
    backgroundColor: "transparent"
    textColor: "{colors.steel}"
    typography: "{typography.body-sm-medium}"
    rounded: "{rounded.full}"
    padding: "{spacing.xs} {spacing.md}"
    border: "1px solid {colors.hairline}"
  pill-tab-active:
    backgroundColor: "{colors.ink-deep}"
    textColor: "{colors.on-dark}"
    rounded: "{rounded.full}"
    border: "1px solid {colors.ink-deep}"
  segmented-tab:
    backgroundColor: "transparent"
    textColor: "{colors.steel}"
    typography: "{typography.body-sm-medium}"
    padding: "{spacing.sm} {spacing.md}"
    border: "0 0 2px transparent solid"
  segmented-tab-active:
    backgroundColor: "transparent"
    textColor: "{colors.ink}"
    typography: "{typography.body-sm-medium}"
    border: "0 0 2px {colors.ink} solid"
  badge-purple:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.caption-bold}"
    rounded: "{rounded.full}"
    padding: "4px 10px"
  badge-pink:
    backgroundColor: "{colors.brand-pink}"
    textColor: "{colors.on-primary}"
    typography: "{typography.caption-bold}"
    rounded: "{rounded.full}"
    padding: "4px 10px"
  badge-orange:
    backgroundColor: "{colors.brand-orange}"
    textColor: "{colors.on-primary}"
    typography: "{typography.caption-bold}"
    rounded: "{rounded.full}"
    padding: "4px 10px"
  badge-tag-purple:
    backgroundColor: "{colors.card-tint-lavender}"
    textColor: "{colors.brand-purple-800}"
    typography: "{typography.caption-bold}"
    rounded: "{rounded.sm}"
    padding: "2px 8px"
  badge-tag-orange:
    backgroundColor: "{colors.card-tint-peach}"
    textColor: "{colors.brand-orange-deep}"
    typography: "{typography.caption-bold}"
    rounded: "{rounded.sm}"
    padding: "2px 8px"
  badge-tag-green:
    backgroundColor: "{colors.card-tint-mint}"
    textColor: "{colors.brand-green}"
    typography: "{typography.caption-bold}"
    rounded: "{rounded.sm}"
    padding: "2px 8px"
  badge-popular:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.caption-bold}"
    rounded: "{rounded.full}"
    padding: "4px 10px"
  promo-banner:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.ink}"
    typography: "{typography.body-sm-medium}"
    padding: "{spacing.sm} {spacing.md}"
  hero-band-dark:
    backgroundColor: "{colors.brand-navy}"
    textColor: "{colors.on-dark}"
    rounded: "0"
    padding: "{spacing.hero}"
  workspace-mockup-card:
    backgroundColor: "{colors.canvas}"
    rounded: "{rounded.lg}"
    padding: "0"
    border: "1px solid {colors.hairline}"
    shadow: "rgba(15, 15, 15, 0.2) 0px 24px 48px -8px"
  cta-banner-light:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.ink}"
    rounded: "{rounded.lg}"
    padding: "{spacing.section}"
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
  testimonial-card:
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
  stat-row:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.ink}"
    rounded: "{rounded.lg}"
    padding: "{spacing.section-sm}"
  footer-region:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.charcoal}"
    typography: "{typography.body-sm}"
    padding: "{spacing.section} {spacing.xxl}"
    border: "1px solid {colors.hairline}"
  footer-link:
    backgroundColor: "transparent"
    textColor: "{colors.steel}"
    typography: "{typography.body-sm}"
    padding: "{spacing.xxs} 0"
---

## Overview

Notion presents itself as the all-in-one workspace through a confident, illustration-rich brand voice. The homepage opens with **"Meet the night shift."** rendered centered over a deep navy hero band ({colors.brand-navy}), decorated with brand-colored sticky-note dots and mesh wire illustrations scattered around the headline. The signature **purple pill primary CTA** ({colors.primary}) "Get Notion free" sits at the visual center, paired with an outlined "Request a demo" secondary. Below the buttons, a real Notion workspace UI mockup card (the "Ramp HQ" kanban board) breaks out of the hero band with a deep diffuse drop shadow.

Below the hero, the page cycles through a distinctive sequence of feature sections: a dense sticky-note "Keep work moving 24/7" panel with red/blue/green/purple/teal status icons; a **bold yellow** ({colors.card-tint-yellow-bold}) "Ask your on-demand assistants" banner card flanked by orange/rose/mint pastel feature tiles showing assistant UI mockups; and a "Bring all your work together" 3-column grid with brand-colored mockups (sky-blue tutorial card, light Notion calendar, brown/rust testimonial slate). The pricing page renders 4 tiers (Free / Plus / Business / Enterprise) horizontally with one tier featured (purple-bordered) and a dense feature comparison table running below.

The system uses a Notion-Sans typeface (Inter-based) across every UI surface — humanist-geometric character that pairs naturally with the colorful illustrations. Buttons are `{rounded.md}` (8px) rectangles, NOT pills — distinguishing Notion's sober rectangular geometry from competitors that use pills universally. Cards use `{rounded.lg}` (12px) consistently.

**Key Characteristics:**
- Deep navy hero band ({colors.brand-navy}) with scattered sticky-note dots + mesh wire decorative illustrations
- **Signature purple pill** ({colors.primary}) primary CTA — Notion's recognizable "Get Notion free" button color
- Real Notion workspace UI mockup card embedded in the hero with deep drop shadow
- Bold yellow feature banner ({colors.card-tint-yellow-bold}) for high-emphasis content sections
- Pastel feature card palette (peach, rose, mint, lavender, sky, yellow) echoing the live product database properties
- Notion-Sans (Inter-based) across every UI surface
- 8px-rounded buttons (NOT pills), 12px-rounded cards — sober editorial geometry
- 4-tier pricing comparison with dense feature table
- Centered hero layout (different from the left-aligned norm of most B2B SaaS)

## Colors

> Source pages: notion.com/ (homepage), /enterprise, /product/ai, /product/agents, /startups, /pricing. Token coverage was identical across all six pages.

### Brand & Primary
- **Notion Purple** ({colors.primary}): Signature primary CTA color — the unmistakable "Get Notion free" pill button. Reserved for the dominant CTA only.
- **Purple Pressed** ({colors.primary-pressed}): Pressed-state variant
- **Purple Deep** ({colors.primary-deep}): Deeper variant for emphasis
- **Brand Navy** ({colors.brand-navy}): Hero band background — deep navy
- **Brand Navy Deep** ({colors.brand-navy-deep}): Deeper navy for promo banner
- **Brand Navy Mid** ({colors.brand-navy-mid}): Mid-spectrum navy
- **Link Blue** ({colors.link-blue}): Inline text link blue (NOT primary CTA)
- **Link Blue Pressed** ({colors.link-blue-pressed}): Pressed-state link blue

### Brand Color Spectrum (echoes live product database properties)
- **Brand Pink** ({colors.brand-pink}): Pink accent
- **Brand Pink Deep** ({colors.brand-pink-deep}): Deeper pink
- **Brand Orange** ({colors.brand-orange}): Orange accent
- **Brand Orange Deep** ({colors.brand-orange-deep}): Deeper orange-rust
- **Brand Purple** ({colors.brand-purple}): Purple accent variant
- **Brand Purple 300** ({colors.brand-purple-300}): Light purple
- **Brand Purple 800** ({colors.brand-purple-800}): Deep purple for tag text
- **Brand Teal** ({colors.brand-teal}): Teal accent
- **Brand Green** ({colors.brand-green}): Bright green
- **Brand Yellow** ({colors.brand-yellow}): Soft yellow
- **Brand Brown** ({colors.brand-brown}): Brand brown for "earthy" tints

### Card Tints (Pastel Feature Card Backgrounds)
- **Tint Peach** ({colors.card-tint-peach}): Pale peach
- **Tint Rose** ({colors.card-tint-rose}): Pale rose-pink
- **Tint Mint** ({colors.card-tint-mint}): Pale mint-green
- **Tint Lavender** ({colors.card-tint-lavender}): Pale lavender
- **Tint Sky** ({colors.card-tint-sky}): Pale sky-blue
- **Tint Yellow** ({colors.card-tint-yellow}): Pale yellow
- **Tint Yellow Bold** ({colors.card-tint-yellow-bold}): Bold yellow for high-emphasis feature banners ("Ask your on-demand assistants")
- **Tint Cream** ({colors.card-tint-cream}): Cream tint
- **Tint Gray** ({colors.card-tint-gray}): Neutral surface

### Surface
- **Canvas White** ({colors.canvas}): Page background and primary card surface
- **Surface** ({colors.surface}): Subtle section backgrounds, search-pill rest, featured pricing tier
- **Surface Soft** ({colors.surface-soft}): Quieter section divisions
- **Hairline** ({colors.hairline}): 1px borders and primary dividers
- **Hairline Soft** ({colors.hairline-soft}): Quieter dividers
- **Hairline Strong** ({colors.hairline-strong}): Stronger 1px border for inputs

### Text
- **Ink Deep** ({colors.ink-deep}): Pure black for emphasis
- **Ink** ({colors.ink}): Primary headlines and body text
- **Charcoal** ({colors.charcoal}): Body emphasis (Notion's signature warm-charcoal)
- **Slate** ({colors.slate}): Secondary text
- **Steel** ({colors.steel}): Tertiary, footer links
- **Stone** ({colors.stone}): Muted labels
- **Muted** ({colors.muted}): Disabled, placeholders
- **On Dark** ({colors.on-dark}): White text on dark surfaces
- **On Dark Muted** ({colors.on-dark-muted}): Reduced-opacity white

### Semantic
- **Success** ({colors.semantic-success}): Confirmation green
- **Warning** ({colors.semantic-warning}): Mid-priority alerts (orange)
- **Error** ({colors.semantic-error}): Validation errors (red)

## Typography

### Font Family
**Notion Sans** (primary): Notion's custom Inter-based variable typeface. Fallbacks: Inter, -apple-system, system-ui, 'Segoe UI', Helvetica, sans-serif. Humanist-geometric character used across every UI surface.

### Hierarchy

| Token | Size | Weight | Line Height | Letter Spacing | Use |
|---|---|---|---|---|---|
| `{typography.hero-display}` | 80px | 600 | 1.05 | -2px | Hero ("Meet the night shift") |
| `{typography.display-lg}` | 56px | 600 | 1.10 | -1px | Section openers |
| `{typography.heading-1}` | 48px | 600 | 1.15 | -0.5px | Page-level headlines ("Try for free") |
| `{typography.heading-2}` | 36px | 600 | 1.20 | -0.5px | Subsection headlines ("Keep work moving 24/7") |
| `{typography.heading-3}` | 28px | 600 | 1.25 | 0 | Card titles |
| `{typography.heading-4}` | 22px | 600 | 1.30 | 0 | Feature tile titles |
| `{typography.heading-5}` | 18px | 600 | 1.40 | 0 | FAQ questions |
| `{typography.subtitle}` | 18px | 400 | 1.50 | 0 | Hero subtitle |
| `{typography.body-md}` | 16px | 400 | 1.55 | 0 | Primary body text |
| `{typography.body-md-medium}` | 16px | 500 | 1.55 | 0 | Body emphasis |
| `{typography.body-sm}` | 14px | 400 | 1.50 | 0 | Secondary body |
| `{typography.body-sm-medium}` | 14px | 500 | 1.50 | 0 | Active sidebar, button labels |
| `{typography.caption-bold}` | 13px | 600 | 1.40 | 0 | Badge labels |
| `{typography.button-md}` | 14px | 500 | 1.30 | 0 | Button labels |

### Principles
- Tight hero leading (1.05) on 80px display
- Negative letter-spacing on display sizes (-2px to -0.5px)
- Generous body leading (1.55) for documentation readability
- 600 weight for headlines + 500 for buttons; 400 body

## Layout

### Spacing System
- **Base unit**: 4px (8px primary increment)
- **Tokens**: `{spacing.xxs}` (4px) through `{spacing.hero}` (120px)
- **Section rhythm**: Marketing pages use `{spacing.section-lg}` (96px); pricing tightens to `{spacing.section}` (64px)

### Grid & Container
- 1280px max-width with 32px gutters
- Pricing: 4-tier card row at desktop with dense comparison table
- Homepage: centered hero with workspace mockup below buttons; alternating colorful feature card sections

### Whitespace Philosophy
Marketing surfaces use generous breathing room between feature card bands. Workspace mockup card on hero gets full-width treatment with deep drop shadow.

## Elevation & Depth

| Level | Treatment | Use |
|---|---|---|
| 0 (flat) | No shadow; `{colors.hairline}` border | Default cards, table rows |
| 1 (subtle) | `rgba(15, 15, 15, 0.04) 0px 1px 2px 0px` | Hover-elevated tiles |
| 2 (card) | `rgba(15, 15, 15, 0.08) 0px 4px 12px 0px` | Feature cards |
| 3 (mockup) | `rgba(15, 15, 15, 0.20) 0px 24px 48px -8px` | Hero workspace mockup card |
| 4 (modal) | `rgba(15, 15, 15, 0.16) 0px 16px 48px -8px` | Modals, dropdowns |

### Decorative Depth
- Hero workspace mockup card uses deep diffuse drop shadow (Level 3) — significant elevation against the navy band
- Pastel feature cards carry their own visual weight via tint backgrounds
- Sticky-note dot illustrations and mesh wires add atmospheric decoration to navy hero

## Shapes

### Border Radius Scale

| Token | Value | Use |
|---|---|---|
| `{rounded.xs}` | 4px | Tag chips |
| `{rounded.sm}` | 6px | Type badges |
| `{rounded.md}` | 8px | Buttons, inputs, search-pill |
| `{rounded.lg}` | 12px | Cards, pricing tiers, agent tiles, workspace mockup |
| `{rounded.xl}` | 16px | Larger feature panels |
| `{rounded.xxl}` | 20px | Featured product showcases |
| `{rounded.xxxl}` | 24px | Larger feature cards |
| `{rounded.full}` | 9999px | Status badges, pill tabs (NOT regular buttons) |

Notion's geometry is sober-editorial — `{rounded.md}` (8px) buttons distinguish it from pill-button-everywhere brands.

## Components

> Per the no-hover policy, hover states are NOT documented.

### Buttons

**`button-primary`** — Signature purple rectangular primary CTA, the dominant action.
- Background `{colors.primary}`, text `{colors.on-primary}`, typography `{typography.button-md}`, padding `10px 18px`, rounded `{rounded.md}`.
- Pressed state `button-primary-pressed` deepens to `{colors.primary-pressed}`.
- Disabled state uses `{colors.hairline}` background.

**`button-dark`** — Black rectangular CTA on light backgrounds.
- Background `{colors.ink-deep}`, text `{colors.on-dark}`, typography `{typography.button-md}`, padding `10px 18px`, rounded `{rounded.md}`.

**`button-secondary`** — Outlined rectangular for secondary actions ("Request a demo").
- Background transparent, text `{colors.ink}`, border `1px solid {colors.hairline-strong}`, typography `{typography.button-md}`, padding `10px 18px`, rounded `{rounded.md}`.

**`button-on-dark`** — White button on dark hero bands.
- Background `{colors.on-dark}`, text `{colors.ink}`, typography `{typography.button-md}`, padding `10px 18px`, rounded `{rounded.md}`.

**`button-secondary-on-dark`** — Outlined button on dark.
- Background transparent, text `{colors.on-dark}`, border `1px solid {colors.on-dark-muted}`, typography `{typography.button-md}`, padding `10px 18px`, rounded `{rounded.md}`.

**`button-ghost`** — Quieter ghost button.
- Background transparent, text `{colors.ink}`, typography `{typography.button-md}`, padding `8px 12px`, rounded `{rounded.sm}`.

**`button-link`** — Inline blue text link (NOT primary purple).
- Background transparent, text `{colors.link-blue}`, typography `{typography.body-sm-medium}`, padding `0`.

### Cards & Containers

**`card-base`** — Standard content card.
- Background `{colors.canvas}`, rounded `{rounded.lg}`, padding `{spacing.xl}`, border `1px solid {colors.hairline}`.

**`card-feature`** — Feature card with larger padding.
- Background `{colors.canvas}`, rounded `{rounded.lg}`, padding `{spacing.xxl}`, border `1px solid {colors.hairline}`.

**`card-feature-yellow-bold`** — Bold yellow feature banner for high-emphasis content ("Ask your on-demand assistants").
- Background `{colors.card-tint-yellow-bold}`, text `{colors.charcoal}`, rounded `{rounded.lg}`, padding `{spacing.xxl}`.

**`card-feature-peach`** + **`card-feature-rose`** + **`card-feature-mint`** + **`card-feature-sky`** + **`card-feature-lavender`** + **`card-feature-yellow`** + **`card-feature-cream`** — Pastel-tinted feature cards.
- Each variant uses its corresponding `card-tint-*` color as background, text `{colors.charcoal}`, rounded `{rounded.lg}`, padding `{spacing.xxl}`.

**`card-agent-tile`** — Agent assistant tile.
- Background `{colors.canvas}`, rounded `{rounded.lg}`, padding `{spacing.xl}`, border `1px solid {colors.hairline}`.

**`card-template`** — Template thumbnail card.
- Background `{colors.canvas}`, rounded `{rounded.lg}`, padding `{spacing.lg}`, border `1px solid {colors.hairline}`.

**`card-startup-perk`** — Startup-program perk grid item.
- Background `{colors.canvas}`, rounded `{rounded.lg}`, padding `{spacing.xl}`, border `1px solid {colors.hairline}`.

**`pricing-card`** — Standard pricing tier card.
- Background `{colors.canvas}`, rounded `{rounded.lg}`, padding `{spacing.xxl}`, border `1px solid {colors.hairline}`.

**`pricing-card-featured`** — Featured pricing tier (Plus or Business — purple-bordered).
- Background `{colors.surface}`, rounded `{rounded.lg}`, padding `{spacing.xxl}`, border `2px solid {colors.primary}`.

### Inputs & Forms

**`text-input`** — Standard text field.
- Background `{colors.canvas}`, text `{colors.ink}`, border `1px solid {colors.hairline-strong}`, rounded `{rounded.md}`, padding `{spacing.sm} {spacing.md}`, height 44px.

**`text-input-focused`** — Activated state.
- Border switches to `2px solid {colors.primary}` (purple).

**`search-pill`** — Search bar.
- Background `{colors.surface}`, text `{colors.steel}`, typography `{typography.body-md}`, rounded `{rounded.md}`, height 44px, border `1px solid {colors.hairline}`.

### Tabs

**`pill-tab`** + **`pill-tab-active`** — Pill-style tab nav for top-level switching.
- Inactive: text `{colors.steel}`, border `1px solid {colors.hairline}`, padding `{spacing.xs} {spacing.md}`, rounded `{rounded.full}`.
- Active: background `{colors.ink-deep}`, text `{colors.on-dark}`.

**`segmented-tab`** + **`segmented-tab-active`** — Underline-style tab navigation.
- Inactive: text `{colors.steel}`, no border. Active: text `{colors.ink}`, 2px bottom border in `{colors.ink}`.

### Badges & Status

**`badge-purple`** — Purple status badge (matches primary CTA).
- Background `{colors.primary}`, text `{colors.on-primary}`, typography `{typography.caption-bold}`, rounded `{rounded.full}`, padding `4px 10px`.

**`badge-pink`** — Pink accent badge.
- Background `{colors.brand-pink}`, text `{colors.on-primary}`, typography `{typography.caption-bold}`, rounded `{rounded.full}`, padding `4px 10px`.

**`badge-orange`** — Orange accent badge.
- Background `{colors.brand-orange}`, text `{colors.on-primary}`, typography `{typography.caption-bold}`, rounded `{rounded.full}`, padding `4px 10px`.

**`badge-tag-purple`** — Soft-purple feature tag chip.
- Background `{colors.card-tint-lavender}`, text `{colors.brand-purple-800}`, typography `{typography.caption-bold}`, rounded `{rounded.sm}`, padding `2px 8px`.

**`badge-tag-orange`** — Soft-orange feature tag.
- Background `{colors.card-tint-peach}`, text `{colors.brand-orange-deep}`, typography `{typography.caption-bold}`, rounded `{rounded.sm}`, padding `2px 8px`.

**`badge-tag-green`** — Soft-mint feature tag.
- Background `{colors.card-tint-mint}`, text `{colors.brand-green}`, typography `{typography.caption-bold}`, rounded `{rounded.sm}`, padding `2px 8px`.

**`badge-popular`** — "Most Popular" tier indicator.
- Background `{colors.primary}`, text `{colors.on-primary}`, typography `{typography.caption-bold}`, rounded `{rounded.full}`, padding `4px 10px`.

**`promo-banner`** — Light surface promo strip ABOVE the top nav.
- Background `{colors.surface}`, text `{colors.ink}`, typography `{typography.body-sm-medium}`, padding `{spacing.sm} {spacing.md}`. ("Developers: Get a first look at our new Developer Platform on May 13.")

### Tables

**`comparison-table`** — Pricing feature comparison table.
- Background `{colors.canvas}`, text `{colors.ink}`, typography `{typography.body-sm}`, rounded `{rounded.md}`, border `1px solid {colors.hairline}`.

**`comparison-row`** — Individual feature row.
- Background `{colors.canvas}`, text `{colors.ink}`, padding `{spacing.md} {spacing.lg}`, bottom border `1px solid {colors.hairline-soft}`.

### Documentation Components

**`workspace-mockup-card`** — Embedded Notion workspace UI mockup on hero band ("Ramp HQ" kanban board).
- Background `{colors.canvas}`, rounded `{rounded.lg}`, border `1px solid {colors.hairline}`, deep shadow `rgba(15, 15, 15, 0.20) 0px 24px 48px -8px`. Carries actual Notion product UI mock.

**`testimonial-card`** — Customer testimonial card.
- Background `{colors.canvas}`, rounded `{rounded.lg}`, padding `{spacing.xxl}`, border `1px solid {colors.hairline}`.

**`logo-wall-item`** — Customer logo wordmark cell.
- Background transparent, text `{colors.steel}`, typography `{typography.body-md-medium}`, padding `{spacing.lg}`.

**`faq-accordion-item`** — FAQ panel.
- Background `{colors.canvas}`, rounded `{rounded.md}`, padding `{spacing.xl}`, bottom border `1px solid {colors.hairline}`.

**`stat-row`** — Stats strip with bar chart visualization ("More productivity. Fewer tools.").
- Background `{colors.surface}`, text `{colors.ink}`, rounded `{rounded.lg}`, padding `{spacing.section-sm}`.

**`cta-banner-light`** — Light surface CTA banner.
- Background `{colors.surface}`, text `{colors.ink}`, rounded `{rounded.lg}`, padding `{spacing.section}`.

### Navigation

**Top Navigation (Marketing)** — Sticky white bar.
- Background `{colors.canvas}`, height ~64px, bottom border `1px solid {colors.hairline}`.
- Left: Notion "N" logo + "Product / AI / Solutions / Resources / Enterprise / Pricing / Request a demo" links.
- Right: "Get Notion free" purple button + "Log in" link.

### Signature Components

**`hero-band-dark`** — Deep navy hero band with embedded workspace mockup and decorative dots/wires.
- Background `{colors.brand-navy}`, text `{colors.on-dark}`, padding `{spacing.hero}`.
- Layout: centered headline `{typography.hero-display}`, subtitle, button row (`button-primary` purple + `button-secondary-on-dark`), `workspace-mockup-card` below.
- Atmospheric decoration: scattered colorful sticky-note dots and mesh wire illustrations around the hero content (NOT a literal pattern fill — handled per-page via SVG/illustration).

**`footer-region`** — Multi-column light footer.
- Background `{colors.canvas}`, padding `{spacing.section} {spacing.xxl}`, top border `1px solid {colors.hairline}`.
- 6-column link grid (Product / Download / Resources / Notion for / Company / Legal).

**`footer-link`** — Individual footer link.
- Background transparent, text `{colors.steel}`, typography `{typography.body-sm}`, padding `{spacing.xxs} 0`.

## Do's and Don'ts

### Do
- Use `{colors.primary}` (purple) as the dominant CTA across all surfaces — it's the brand's recognizable signal
- Pair deep navy hero bands ({colors.brand-navy}) with the purple button + decorative sticky-note dots
- Use pastel feature card tints (peach, rose, mint, lavender, sky, yellow) generously
- Use `{colors.card-tint-yellow-bold}` for high-emphasis "Ask the assistant"-style banner cards
- Apply `{rounded.md}` (8px) to buttons consistently — Notion uses rectangles, not pills
- Apply `{rounded.lg}` (12px) to all card families
- Maintain Notion-Sans across every UI surface
- Use the workspace mockup card on hero bands to show actual product UI

### Don't
- Don't use the purple for body text or large background surfaces
- Don't use pill-shaped buttons; Notion's geometry is rectangular-sober
- Don't mix link-blue ({colors.link-blue}) with primary-purple ({colors.primary}) — they have distinct roles
- Don't apply heavy shadows on flat documentation cards
- Don't replace Notion-Sans with a generic Inter

## Responsive Behavior

### Breakpoints
| Name | Width | Key Changes |
|---|---|---|
| Mobile (small) | < 480px | Single column. Hero 36px. Pricing 1-up. |
| Mobile (large) | 480 – 767px | Feature cards 2-up. Hero 48px. |
| Tablet | 768 – 1023px | 2-column feature grids. Hero 56px. |
| Desktop | 1024 – 1279px | 4-tier pricing card row. Hero 72px. |
| Wide Desktop | ≥ 1280px | Full 80px hero presentation. |

### Touch Targets
- Buttons render at 40–44px effective height
- Form inputs render at 44px height
- Pill tabs ~32px → 44px on mobile

### Collapsing Strategy
- **Promo banner** stays full-width; truncates at < 480px
- **Top nav** below 1024px collapses to hamburger
- **Hero band**: workspace mockup card moves below text/buttons on mobile
- **Pricing tiers**: 4-column → 2-column tablet → 1-column mobile
- **Feature cards**: 3-up desktop → 2-up tablet → 1-up mobile
- **Hero typography**: 80px → 56px → 48px → 36px
- **Footer**: 6-column desktop → 3-column tablet → accordion mobile

### Image Behavior
- Workspace mockup card maintains aspect ratio
- Pastel illustrations inside feature cards scale proportionally
- Customer logo wall: wordmarks at consistent 60–80px height

## Iteration Guide

1. Focus on ONE component at a time
2. Reference component names and tokens directly
3. Run `npx @google/design.md lint DESIGN.md` after edits
4. Add new variants as separate `components:` entries
5. Default to `{typography.body-md}` for body
6. Keep `{colors.primary}` (purple) as the primary CTA — distinct from `{colors.link-blue}` for inline links
7. Use `{rounded.md}` for buttons (rectangles), `{rounded.lg}` for cards, `{rounded.full}` for pill tabs/badges only

## Known Gaps

- Specific dark-mode token values not surfaced beyond hero bands
- Animation/transition timings not extracted; recommend 150–200ms ease
- Form validation success state not explicitly captured
- Pastel-tint mapping (which feature uses which tint) is observation-based — the actual brand library may have more entries


---

## Brand: `slack`

---
version: alpha
name: Slacc-Inspired-design-analysis
description: An inspired interpretation of Slacc's design language — a workplace messaging brand built on a deep aubergine primary, with cream-lavender hero gradients, blue inline links, and pill CTAs. The system pairs a proprietary humanist sans for display with a separate utility sans for body, and stages product UI mockups inside soft pastel-mesh hero composites that act as both decoration and feature explanation.

colors:
  primary: "#4a154b"
  primary-deep: "#481a54"
  primary-press: "#611f69"
  primary-tint: "#592466"
  on-primary: "#ffffff"
  ink: "#1d1d1d"
  ink-mute: "#696969"
  link-blue: "#1264a3"
  link-hover: "#3860be"
  canvas: "#ffffff"
  canvas-cream: "#f4ede4"
  canvas-lavender: "#f9f0ff"
  surface-elev: "#ffffff"
  surface-aubergine: "#4a154b"
  hairline: "#e6e6e6"
  hairline-strong: "#000000"
  semantic-error: "#cc4117"
  semantic-success: "#007a5a"
  on-aubergine-mute: "#d9bdde"

typography:
  display-xxl:
    fontFamily: "Salesforce-Avant-Garde, system-ui, -apple-system, BlinkMacSystemFont, sans-serif"
    fontSize: 64px
    fontWeight: 700
    lineHeight: 1.12
    letterSpacing: -0.768px
  display-xl:
    fontFamily: "Salesforce-Avant-Garde, system-ui, -apple-system, BlinkMacSystemFont, sans-serif"
    fontSize: 58px
    fontWeight: 600
    lineHeight: 1.25
    letterSpacing: -0.464px
  display-lg:
    fontFamily: "Salesforce-Avant-Garde, system-ui, -apple-system, BlinkMacSystemFont, sans-serif"
    fontSize: 50px
    fontWeight: 700
    lineHeight: 1.12
    letterSpacing: -0.6px
  display-md:
    fontFamily: "Salesforce-Avant-Garde, system-ui, -apple-system, BlinkMacSystemFont, sans-serif"
    fontSize: 32px
    fontWeight: 700
    lineHeight: 1.25
    letterSpacing: -0.256px
  heading-lg:
    fontFamily: "Salesforce-Avant-Garde, system-ui, -apple-system, BlinkMacSystemFont, sans-serif"
    fontSize: 24px
    fontWeight: 700
    lineHeight: 1.33
    letterSpacing: -0.096px
  heading-md:
    fontFamily: "Salesforce-Avant-Garde, system-ui, -apple-system, BlinkMacSystemFont, sans-serif"
    fontSize: 22px
    fontWeight: 600
    lineHeight: 1.4
    letterSpacing: 0
  heading-sm:
    fontFamily: "Salesforce-Avant-Garde, system-ui, -apple-system, BlinkMacSystemFont, sans-serif"
    fontSize: 18px
    fontWeight: 600
    lineHeight: 1.56
    letterSpacing: -0.0216px
  body-lg:
    fontFamily: "Salesforce-Sans, system-ui, -apple-system, sans-serif"
    fontSize: 18px
    fontWeight: 400
    lineHeight: 1.55
    letterSpacing: -0.0216px
  body-md:
    fontFamily: "Salesforce-Sans, system-ui, -apple-system, sans-serif"
    fontSize: 16px
    fontWeight: 400
    lineHeight: 1.55
    letterSpacing: 0
  body-strong:
    fontFamily: "Salesforce-Sans, system-ui, -apple-system, sans-serif"
    fontSize: 16px
    fontWeight: 700
    lineHeight: 1.5
    letterSpacing: 0.16px
  button-lg:
    fontFamily: "Salesforce-Sans, system-ui, -apple-system, sans-serif"
    fontSize: 18px
    fontWeight: 700
    lineHeight: 1.0
    letterSpacing: 0
  button-md:
    fontFamily: "Salesforce-Sans, system-ui, -apple-system, sans-serif"
    fontSize: 16px
    fontWeight: 700
    lineHeight: 1.38
    letterSpacing: 0.2px
  button-cap:
    fontFamily: "Salesforce-Sans, system-ui, -apple-system, sans-serif"
    fontSize: 14.4px
    fontWeight: 700
    lineHeight: 1.0
    letterSpacing: 0.144px
  caption:
    fontFamily: "Salesforce-Sans, system-ui, -apple-system, sans-serif"
    fontSize: 14px
    fontWeight: 400
    lineHeight: 1.43
    letterSpacing: 0.1px
  micro-cap:
    fontFamily: "Salesforce-Sans, system-ui, -apple-system, sans-serif"
    fontSize: 12px
    fontWeight: 700
    lineHeight: 1.0
    letterSpacing: 0.96px

rounded:
  xs: 2px
  sm: 4px
  md: 8px
  lg: 12px
  xl: 16px
  xxl: 48px
  pill: 90px

spacing:
  xs: 4px
  sm: 8px
  md: 12px
  lg: 16px
  xl: 20px
  xxl: 24px
  huge: 28px

components:
  button-primary-pill:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button-md}"
    rounded: "{rounded.pill}"
    padding: 14px 28px
  button-primary-pill-pressed:
    backgroundColor: "{colors.primary-press}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button-md}"
    rounded: "{rounded.pill}"
    padding: 14px 28px
  button-secondary-pill:
    backgroundColor: "{colors.canvas-lavender}"
    textColor: "{colors.ink}"
    typography: "{typography.button-md}"
    rounded: "{rounded.pill}"
    padding: 10px 30px
  button-outline-aubergine:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.primary}"
    typography: "{typography.button-md}"
    rounded: "{rounded.pill}"
    padding: 14px 28px
  button-outline-on-aubergine:
    backgroundColor: "{colors.surface-aubergine}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button-md}"
    rounded: "{rounded.pill}"
    padding: 14px 28px
  text-input:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.sm}"
    padding: 10px 12px
  pill-cap-shade:
    backgroundColor: "{colors.canvas-cream}"
    textColor: "{colors.ink}"
    typography: "{typography.micro-cap}"
    rounded: "{rounded.pill}"
    padding: 4px 12px
  card-pricing:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.xl}"
    padding: 32px
  card-pricing-featured:
    backgroundColor: "{colors.surface-aubergine}"
    textColor: "{colors.on-primary}"
    typography: "{typography.body-md}"
    rounded: "{rounded.xl}"
    padding: 32px
  card-feature-cream:
    backgroundColor: "{colors.canvas-cream}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.xl}"
    padding: 32px
  card-aubergine-band:
    backgroundColor: "{colors.surface-aubergine}"
    textColor: "{colors.on-primary}"
    typography: "{typography.body-lg}"
    rounded: "{rounded.xl}"
    padding: 48px
  card-stat:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.primary}"
    typography: "{typography.display-lg}"
    rounded: "{rounded.xl}"
    padding: 32px
  nav-bar-light:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.xs}"
    padding: 16px 24px
  link-on-light:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.link-blue}"
    typography: "{typography.body-md}"
    rounded: "{rounded.xs}"
    padding: 0px
  link-on-aubergine:
    backgroundColor: "{colors.surface-aubergine}"
    textColor: "{colors.on-primary}"
    typography: "{typography.body-md}"
    rounded: "{rounded.xs}"
    padding: 0px
  footer-aubergine:
    backgroundColor: "{colors.surface-aubergine}"
    textColor: "{colors.on-primary}"
    typography: "{typography.caption}"
    rounded: "{rounded.xs}"
    padding: 32px 24px
---

## Overview

Slacc's design language centers on a deep aubergine primary (`{colors.primary}`) — the brand's most enduring visual asset — applied as the dominant button color, the footer band, the featured pricing tier, and the brand wordmark. Around that aubergine the system stages an unusually delicate ecosystem: cream-lavender hero canvases with soft pastel-mesh gradients (peachy oranges, lavenders, dusty greens) that pulse behind floating product UI mockups, with the actual interface chrome rendered in fine detail at 3:2 aspect.

Typography splits between two proprietary humanist sans families. The display tier runs at 700 weight at sizes 32–64px with negative letter-spacing for tight optical density on hero headlines. The UI tier uses the second family at 400–700 with slightly relaxed leading (1.55) — the brand's body copy reads quietly without competing with the aubergine moments.

Buttons are pill-shaped at 90px radius with an unusual amount of horizontal padding (28–30px), giving them a distinctly comfortable, almost over-padded feel. The primary aubergine pill is the only filled button in most contexts; secondary actions use a soft lavender pill (`{colors.canvas-lavender}`) which reads as a gentler echo of the primary surface. Inline links shift to a saturated blue (`{colors.link-blue}`) — the brand's only chromatic departure from the aubergine-and-cream world.

**Key Characteristics:**
- Single aubergine primary (`{colors.primary}`) reused across CTAs, the featured pricing tier, the footer band, and the wordmark — the brand's chromatic monotheism.
- Cream-lavender hero canvas (`{colors.canvas-cream}` / `{colors.canvas-lavender}`) with diffused pastel-mesh atmospheric gradients and floating UI mockups composited above.
- Pill buttons at `{rounded.pill}` (90px radius) with generous 28–30px horizontal padding — over-padded by SaaS-default standards, deliberately so.
- Tight negative letter-spacing on display sizes (-0.768px on 64px hero) for editorial-density headlines.
- Blue inline links (`{colors.link-blue}`) — the only non-aubergine chromatic accent in body type.
- Pastel-mesh gradient atmospherics: every hero band has a subtle peach-lavender-dusty-green wash behind it; product UI sits on top, never inside, the gradient.
- Statistics cards rendered in massive aubergine display type (90% / 43 / 87%) on white — quantitative emphasis through scale alone.

## Colors

> **Source pages:** home (`/`), `/features/channels`, `/pricing`, `/contact-sales`.

### Brand & Accent
- **Aubergine** (`{colors.primary}` — `#4a154b`): The brand's primary surface and CTA color. Deep, warm purple with a hint of ruby — used on filled buttons, the featured pricing tier, the footer band, and the brand wordmark.
- **Aubergine Deep** (`{colors.primary-deep}` — `#481a54`): A near-identical sibling of `{colors.primary}` extracted from a different surface; treat as functionally equivalent.
- **Aubergine Press** (`{colors.primary-press}` — `#611f69`): Pressed-state lift of the primary, slightly lighter and warmer.
- **Aubergine Tint** (`{colors.primary-tint}` — `#592466`): Border accent on aubergine-on-aubergine surfaces.
- **Link Blue** (`{colors.link-blue}` — `#1264a3`): Inline link color — saturated, slightly warm blue. The only chromatic alternative to aubergine in body type.
- **Link Hover** (`{colors.link-hover}` — `#3860be`): A more saturated blue used on link hover state.

### Surface
- **Canvas White** (`{colors.canvas}` — `#ffffff`): Default content surface.
- **Canvas Cream** (`{colors.canvas-cream}` — `#f4ede4`): Warm off-white used on hero gradients and feature bands. Adds editorial warmth.
- **Canvas Lavender** (`{colors.canvas-lavender}` — `#f9f0ff`): Pale lavender tint used as the secondary-button surface and as a soft section band.
- **Surface Aubergine** (`{colors.surface-aubergine}` — `#4a154b`): The primary aubergine reused as a surface — featured pricing tier, footer, dark feature bands.
- **Hairline** (`{colors.hairline}` — `#e6e6e6`): 1px borders on cards and table dividers.

### Text
- **Ink** (`{colors.ink}` — `#1d1d1d`): Primary body text on light surfaces. Just shy of pure black.
- **Ink Mute** (`{colors.ink-mute}` — `#696969`): Secondary text, captions, helper copy.
- **On Primary** (`{colors.on-primary}` — `#ffffff`): Text on aubergine surfaces and filled CTAs.
- **On Aubergine Mute** (`{colors.on-aubergine-mute}` — `#d9bdde`): Secondary text on aubergine surfaces — a desaturated mauve that reads as muted-light.

### Semantic
- **Error** (`{colors.semantic-error}` — `#cc4117`): Form error and destructive-action color.
- **Success** (`{colors.semantic-success}` — `#007a5a`): Inline success indicators.

## Typography

### Font Family

The display tier is **Salesforce Avant Garde** — a proprietary humanist sans with broad apertures and a slightly geometric character. When unavailable, fall back to the system font stack (`system-ui, -apple-system, BlinkMacSystemFont`).

The UI tier is **Salesforce Sans** — a separate proprietary face used for body, captions, and button labels. Same fallback chain.

Both faces are proprietary and not freely available. Substitute with **Inter** (open-source via Google Fonts) at matching weights for both display and body — Inter is the closest open analogue across both tiers.

### Hierarchy

| Token | Size | Weight | Line Height | Letter Spacing | Use |
|---|---|---|---|---|---|
| `{typography.display-xxl}` | 64px | 700 | 1.12 | -0.768px | Marketing hero headline |
| `{typography.display-xl}` | 58px | 600 | 1.25 | -0.464px | Section openers |
| `{typography.display-lg}` | 50px | 700 | 1.12 | -0.6px | Statistics callouts |
| `{typography.display-md}` | 32px | 700 | 1.25 | -0.256px | Card / feature titles |
| `{typography.heading-lg}` | 24px | 700 | 1.33 | -0.096px | Pricing tier names |
| `{typography.heading-md}` | 22px | 600 | 1.4 | 0 | Sub-section heading |
| `{typography.heading-sm}` | 18px | 600 | 1.56 | -0.0216px | Compact card title |
| `{typography.body-lg}` | 18px | 400 | 1.55 | -0.0216px | Marketing body lead |
| `{typography.body-md}` | 16px | 400 | 1.55 | 0 | Default UI body |
| `{typography.body-strong}` | 16px | 700 | 1.5 | 0.16px | Emphasized body |
| `{typography.button-lg}` | 18px | 700 | 1.0 | 0 | Hero pill button label |
| `{typography.button-md}` | 16px | 700 | 1.38 | 0.2px | Standard pill button label |
| `{typography.button-cap}` | 14.4px | 700 | 1.0 | 0.144px | Compact pill label |
| `{typography.caption}` | 14px | 400 | 1.43 | 0.1px | Helper, footnote |
| `{typography.micro-cap}` | 12px | 700 | 1.0 | 0.96px | All-caps eyebrow |

### Principles
- **Tight tracking on display.** Negative letter-spacing across 32–64px sizes; the proprietary face is wide by default, the negative tracking pulls it into editorial density.
- **Body at 1.55 leading.** Slightly relaxed for marketing readability without crossing into airy / 1.7+ territory.
- **Caps for eyebrows.** All eyebrows render uppercase with positive 0.96–0.144px tracking depending on size.

### Note on Font Substitutes
Use **Inter** (open-source Google Fonts) for both display and UI tiers — Inter at 700 weight with `-0.768px` letter-spacing closely approximates the brand's display behavior. For maximum brand fidelity, **Lato** is a softer humanist alternative that pairs well at body sizes. Avoid System UI fonts on the body — the brand's subtle warmth disappears at default weights.

## Layout

### Spacing System
- **Base unit**: 8px (with 4 / 12 / 16 / 20 / 24 / 28 sub-tokens for fine vertical rhythm).
- **Tokens**: `{spacing.xs}` 4px · `{spacing.sm}` 8px · `{spacing.md}` 12px · `{spacing.lg}` 16px · `{spacing.xl}` 20px · `{spacing.xxl}` 24px · `{spacing.huge}` 28px.
- **Section padding**: 64–96px on marketing surfaces; tightens to 48px on transactional pages.
- **Card internal padding**: 32px on pricing cards; 48px on aubergine band cards.

### Grid & Container
- Marketing pages center in a ~1240px container with edge-bleeding pastel-mesh gradients escaping the container.
- Pricing collapses 4-up → 2-up → 1-up at 992 / 768 breakpoints.
- Statistics row: 3-column grid with massive 50px aubergine display numerals.

### Whitespace Philosophy
The pastel-mesh gradients fill most of the negative space on marketing pages — sections feel expansive without being literally empty. On transactional pages the gradients drop, and whitespace reverts to traditional 48px-section breathing room.

## Elevation & Depth

| Level | Treatment | Use |
|---|---|---|
| 0 | Flat | Default surface |
| 1 | `box-shadow: rgba(0,0,0,0.1) 0 5px 20px 0` | Floating buttons on hero |
| 2 | `box-shadow: rgba(0,0,0,0.1) 0 0 32px 0` | Product UI mockup composites |
| 3 | `box-shadow: rgba(0,0,0,0.2) 0 1px 10px 0` | Toast / notification chrome |
| 4 | `box-shadow: rgb(97,31,105) 0 0 0 1px inset` | Aubergine inset border (button focus, special chrome) |

### Decorative Depth
The brand's depth language is the **pastel-mesh gradient** — peach, lavender, dusty green stops blurred together at large radii to create soft atmospheric backdrops behind product UI screenshots. The gradient is the brand's flavor of "depth without shadows": the eye perceives the product mockup as floating above a luminous backdrop without any literal lift.

## Shapes

### Border Radius Scale

| Token | Value | Use |
|---|---|---|
| `{rounded.xs}` | 2px | Hairline tags, status pills (rare) |
| `{rounded.sm}` | 4px | Form inputs |
| `{rounded.md}` | 8px | Compact card chrome, video frames |
| `{rounded.lg}` | 12px | Mid-size cards, secondary surface |
| `{rounded.xl}` | 16px | Pricing cards, feature cards |
| `{rounded.xxl}` | 48px | Stat badge backdrops |
| `{rounded.pill}` | 90px | All buttons |

### Photography Geometry
The brand uses **product UI screenshots** more than photography. UI mockups sit on top of pastel-mesh gradients at roughly 4:3 aspect, with no shadow but with the gradient providing the "lift" the eye expects. Real photography appears in customer-logo strips and the occasional case-study card, treated as full-bleed inside `{rounded.xl}` containers.

## Components

### Buttons

**`button-primary-pill`** — the dominant CTA system-wide.
- Background `{colors.primary}`, text `{colors.on-primary}`, type `{typography.button-md}`, padding `14px 28px`, rounded `{rounded.pill}` 90px.
- Pressed state `button-primary-pill-pressed` shifts background to `{colors.primary-press}`.

**`button-secondary-pill`** — the soft lavender alternative.
- Background `{colors.canvas-lavender}`, text `{colors.ink}`, padding `10px 30px`, same pill geometry. Used as the second action beside the primary aubergine pill.

**`button-outline-aubergine`** — outline variant on white surfaces.
- Background `{colors.canvas}`, text `{colors.primary}`, 2px solid `{colors.primary}` border, same pill shape.

**`button-outline-on-aubergine`** — outline on aubergine canvas.
- Background `{colors.surface-aubergine}` (transparent over the surface), text `{colors.on-primary}`, 2px solid `{colors.on-primary}` border, same pill shape.

### Cards & Containers

**`card-pricing`** — standard pricing tier card.
- Background `{colors.canvas}`, padding `{spacing.xxl}+` (32px), rounded `{rounded.xl}` 16px, 1px `{colors.hairline}` border. Title in `{typography.heading-lg}`, price in `{typography.display-md}`, body in `{typography.body-md}`, CTA pinned to bottom as `button-primary-pill`.

**`card-pricing-featured`** — the inverted aubergine featured tier.
- Background `{colors.surface-aubergine}`, text `{colors.on-primary}`, otherwise identical to `card-pricing`. The aubergine fill is the brand's signature featured-tier choice.

**`card-feature-cream`** — feature explanation card on the cream track.
- Background `{colors.canvas-cream}`, text `{colors.ink}`, rounded `{rounded.xl}`, padding 32px.

**`card-aubergine-band`** — large horizontal band card with aubergine fill, often containing the closing CTA of a marketing page.
- Background `{colors.surface-aubergine}`, text `{colors.on-primary}`, padding 48px, rounded `{rounded.xl}` 16px.

**`card-stat`** — statistics callout card.
- Background `{colors.canvas}`, text `{colors.primary}` rendered in `{typography.display-lg}` (50px aubergine numeral). Holds a single percentage/number with a small caption underneath.

### Inputs & Forms

**`text-input`** — standard form field.
- Background `{colors.canvas}`, text `{colors.ink}`, type `{typography.body-md}`, padding `10px 12px`, rounded `{rounded.sm}` 4px, 1px `{colors.hairline}` border.

### Navigation

**`nav-bar-light`** — top nav across all marketing pages.
- Background `{colors.canvas}`, text `{colors.ink}`, padding `{spacing.lg} {spacing.xxl}`. Logo wordmark on the left, nav items center, two pill buttons on the right (`button-secondary-pill` for "Sign In", `button-primary-pill` for "Try For Free").

### Pills, Tags, and Chips

**`pill-cap-shade`** — small all-caps pill used as eyebrow above pricing-tier titles.
- Background `{colors.canvas-cream}`, text `{colors.ink}`, type `{typography.micro-cap}`, padding `4px 12px`, rounded `{rounded.pill}`.

### Signature Components

**Pastel-Mesh Gradient Backdrop** — peach (`#fff0e6`-ish) + lavender (`#e9d8ff`) + dusty green stops blurred together behind hero bands. Implemented as a CSS radial-gradient stack, not a single image. Provides the brand's depth/luminosity without literal shadows.

**Floating Product UI Mockup** — product screenshots framed in `{rounded.lg}` (12px) containers, positioned above the pastel-mesh gradient with no border or shadow. The gradient does the lifting.

**Aubergine Footer Band** — every marketing page closes with a full-bleed `card-aubergine-band` containing a closing CTA in white type. The band height is generous (~480–600px on desktop) and reads as the page's signature.

**`link-on-light`** — inline links in body copy on light surfaces.
- Text `{colors.link-blue}` rendered in `{typography.body-md}`. No underline by default; underline appears on hover via the link-hover behavior.

**`link-on-aubergine`** — links inside aubergine surfaces.
- Text `{colors.on-primary}` with persistent underline.

**`footer-aubergine`** — site-wide footer.
- Background `{colors.surface-aubergine}`, text `{colors.on-primary}` rendered in `{typography.caption}`, padding `{spacing.huge}+ {spacing.xxl}` (32px 24px). Holds 4–5 columns of `{colors.on-aubergine-mute}` link groups, social icons, and a small legal/copyright row at the bottom.

## Do's and Don'ts

### Do
- Reserve `{colors.primary}` aubergine for filled CTAs, the featured pricing tier, and the closing aubergine band — it's the brand's chromatic monotheism.
- Use `{rounded.pill}` (90px) for every button across the system — never a rounded-rectangle button.
- Pair display tiers with negative letter-spacing (`-0.768px` at 64px); the proprietary face needs the tracking pull.
- Compose hero bands with pastel-mesh gradient backdrop + floating product UI mockup; the gradient is the depth.
- Use `{colors.link-blue}` for inline links — it's the only chromatic departure from aubergine and is part of the brand voice.

### Don't
- Don't add a third accent color to the system — the aubergine + blue link combination is exhaustive.
- Don't shrink button padding below `14px 28px` — the over-padded pill is part of the brand feel.
- Don't render display tiers at default tracking (0) — without negative letter-spacing the headlines read loose and unedited.
- Don't put product UI screenshots inside cards — they sit ABOVE the pastel-mesh gradient, never inside chrome.
- Don't use aubergine for body text — it's a surface and CTA color, not a type color at body sizes.
- Don't replace the pill shape with a square button anywhere.

## Responsive Behavior

### Breakpoints

| Name | Width | Key Changes |
|---|---|---|
| Wide | ≥ 1440px | Full-bleed pastel-mesh hero; pricing 4-up |
| Desktop | 1024–1440px | Default content max-width; pricing 4-up |
| Tablet | 768–1023px | Pricing 2-up; product UI mockups crop to focal panel |
| Mobile | < 768px | Pricing 1-up; hamburger nav; display-xxl drops 64 → 40px |

### Touch Targets
- Pill buttons hit ≥ 48×48px due to the over-padded geometry. WCAG AAA compliant.
- Form fields stay at the 44px minimum height.

### Collapsing Strategy
- Display tiers stair-step 64 → 50 → 32 → 28 → 24 across breakpoints.
- Pastel-mesh gradients re-tile on mobile to prevent the wash from disappearing entirely.
- Floating product UI mockups crop to the most actionable inner panel on mobile.
- Pricing tiers stair-step 4 → 2 → 1; aubergine featured tier stays distinguished.
- Top nav collapses to hamburger below 768px; menu inherits canvas color.

### Image Behavior
Product UI mockups use `srcset` for desktop / tablet / mobile crops; the mobile crop centers on the most actionable inner panel rather than scaling the whole composite down.

## Iteration Guide

1. Focus on ONE component at a time.
2. Reference component names and tokens directly (`{colors.primary}`, `{button-primary-pill}-pressed`, `{rounded.pill}`).
3. Run `npx @google/design.md lint DESIGN.md` after edits.
4. Add new variants as separate entries.
5. Default body to `{typography.body-md}`; reserve `{typography.body-lg}` for marketing leads.
6. Keep aubergine scarce — one filled aubergine button per viewport.
7. Pair every hero band with the pastel-mesh gradient backdrop; bare-canvas heroes read as off-brand.


---

## Brand: `superhuman`

---
version: alpha
name: Superhumon-Inspired-design-analysis
description: An inspired interpretation of Superhumon's design language — a fast-email productivity brand split between an editorial dark hero (deep indigo navy with violet-sky atmospheric backdrop and a portrait subject) and a quiet white content body with off-warm-grey ink. The system uses a single proprietary variable display sans, heavy weight 460–540 with tight tracking, and a deep-teal closing CTA band that breaks the indigo/white rhythm with a warm dark interlude. Buttons are tight rounded rectangles, pricing is sober and dense, and the brand reads more like a high-end newsletter than a SaaS app.

colors:
  primary: "#1b1938"
  primary-deep: "#0e0c1f"
  on-primary: "#ffffff"
  ink: "#292827"
  ink-mute: "#73706d"
  ink-faint: "#9a9794"
  canvas: "#ffffff"
  canvas-soft: "#fafaf8"
  surface-violet-soft: "#c9b4fa"
  surface-teal-deep: "#0e3030"
  surface-teal-mid: "#155555"
  hairline: "#e8e4dd"
  hairline-dark: "#3f3a52"
  on-dark-mute: "#bcbac9"
  on-dark-faint: "#5a5772"

typography:
  display-xxl:
    fontFamily: "'Super Sans VF', system-ui, -apple-system, 'Segoe UI', Roboto, sans-serif"
    fontSize: 64px
    fontWeight: 540
    lineHeight: 0.96
    letterSpacing: 0
  display-xl:
    fontFamily: "'Super Sans VF', system-ui, -apple-system, 'Segoe UI', Roboto, sans-serif"
    fontSize: 48px
    fontWeight: 460
    lineHeight: 0.96
    letterSpacing: -1.32px
  display-lg:
    fontFamily: "'Super Sans VF', system-ui, -apple-system, 'Segoe UI', Roboto, sans-serif"
    fontSize: 28px
    fontWeight: 540
    lineHeight: 1.14
    letterSpacing: -0.63px
  display-md:
    fontFamily: "'Super Sans VF', system-ui, -apple-system, 'Segoe UI', Roboto, sans-serif"
    fontSize: 22px
    fontWeight: 460
    lineHeight: 1.1
    letterSpacing: -0.315px
  heading-lg:
    fontFamily: "'Super Sans VF', system-ui, -apple-system, 'Segoe UI', Roboto, sans-serif"
    fontSize: 20px
    fontWeight: 460
    lineHeight: 1.2
    letterSpacing: -0.4px
  body-lg:
    fontFamily: "'Super Sans VF', system-ui, -apple-system, 'Segoe UI', Roboto, sans-serif"
    fontSize: 18px
    fontWeight: 540
    lineHeight: 1.5
    letterSpacing: -0.135px
  body-md:
    fontFamily: "'Super Sans VF', system-ui, -apple-system, 'Segoe UI', Roboto, sans-serif"
    fontSize: 16px
    fontWeight: 460
    lineHeight: 1.5
    letterSpacing: 0
  body-strong:
    fontFamily: "'Super Sans VF', system-ui, -apple-system, 'Segoe UI', Roboto, sans-serif"
    fontSize: 18.72px
    fontWeight: 700
    lineHeight: 1.5
    letterSpacing: 0
  button-md:
    fontFamily: "'Super Sans VF', system-ui, -apple-system, 'Segoe UI', Roboto, sans-serif"
    fontSize: 16px
    fontWeight: 700
    lineHeight: 1.0
    letterSpacing: 0
  button-cap:
    fontFamily: "'Super Sans VF', system-ui, -apple-system, 'Segoe UI', Roboto, sans-serif"
    fontSize: 14px
    fontWeight: 600
    lineHeight: 1.0
    letterSpacing: 0
  caption:
    fontFamily: "'Super Sans VF', system-ui, -apple-system, 'Segoe UI', Roboto, sans-serif"
    fontSize: 14px
    fontWeight: 460
    lineHeight: 1.4
    letterSpacing: 0
  micro:
    fontFamily: "'Super Sans VF', system-ui, -apple-system, 'Segoe UI', Roboto, sans-serif"
    fontSize: 12px
    fontWeight: 540
    lineHeight: 1.4
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
  button-primary-dark:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button-md}"
    rounded: "{rounded.md}"
    padding: 12px 20px
  button-primary-dark-pressed:
    backgroundColor: "{colors.primary-deep}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button-md}"
    rounded: "{rounded.md}"
    padding: 12px 20px
  button-on-dark-pill:
    backgroundColor: "{colors.surface-violet-soft}"
    textColor: "{colors.primary}"
    typography: "{typography.button-md}"
    rounded: "{rounded.full}"
    padding: 12px 20px
  button-secondary-outline:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.button-md}"
    rounded: "{rounded.md}"
    padding: 12px 20px
  button-on-teal:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.surface-teal-deep}"
    typography: "{typography.button-md}"
    rounded: "{rounded.md}"
    padding: 12px 20px
  text-input:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.sm}"
    padding: 10px 12px
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
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.body-md}"
    rounded: "{rounded.lg}"
    padding: 32px
  card-teal-band:
    backgroundColor: "{colors.surface-teal-deep}"
    textColor: "{colors.on-primary}"
    typography: "{typography.body-lg}"
    rounded: "{rounded.lg}"
    padding: 64px
  card-feature-row:
    backgroundColor: "{colors.canvas-soft}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.md}"
    padding: 24px
  pill-tab-light:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.button-cap}"
    rounded: "{rounded.full}"
    padding: 8px 16px
  nav-bar-dark:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.body-md}"
    rounded: "{rounded.xs}"
    padding: 16px 24px
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

Superhumon's marketing pages open in an editorial dark register: a deep indigo navy `{colors.primary}` (`#1b1938`) canvas overlaid with a soft violet-and-sky atmospheric backdrop and a half-bleed portrait subject (often a person looking off-frame, photographed at twilight). Headlines render in `{typography.display-xxl}` (Super Sans VF at 64px / weight 540) with negative tracking, set in white over the indigo. A single rounded-rectangle CTA button anchors each band — never two, never three.

The body of every page flips to white. `{colors.canvas}` (`#ffffff`) takes over below the hero, with body type in `{colors.ink}` (`#292827` — a slightly warm dark grey, never pure black) and feature rows alternating between white and `{colors.canvas-soft}` (a barely-tinted off-white). Pricing tiers sit on this white surface; the featured tier inverts to the indigo navy, completing the brand's binary polarity.

Every page closes with a **deep-teal CTA band** (`{colors.surface-teal-deep}` — `#0e3030`). The teal is a single chromatic interlude: rich, almost-black green-blue, that breaks up what would otherwise be an indigo/white-only page. The teal band always contains the closing CTA in `{typography.display-lg}` paired with a single white-pill button.

Typography runs **Super Sans VF** — a proprietary variable display sans — at unusual mid-weights (460, 540, 600). The variable axes let the brand pick precise sub-default weights that read as warmer and more human than typical 400/500/700 SaaS scales. Display sizes use negative letter-spacing of -1.32px to -0.315px depending on size; line-heights are unusually tight (0.96 on 48px display).

**Key Characteristics:**
- Three-canvas system: indigo navy (`{colors.primary}`) for hero, white (`{colors.canvas}`) for body, deep teal (`{colors.surface-teal-deep}`) for closing CTA.
- Half-bleed portrait subject in the hero with violet-sky atmospheric backdrop — the brand uses a person looking off-frame as a recurring visual.
- Single CTA per band; the marketing pages never crowd actions.
- Super Sans VF at sub-default weights (460, 540, 600) — the brand's typographic warmth signature.
- Tight line-heights (0.96) on display sizes — vertical compression as editorial density.
- Off-warm-grey body ink (`#292827`) — never pure black; the brand's quiet warmth.
- Pill-shaped on-hero CTA in pale violet (`{colors.surface-violet-soft}`); rounded-rectangle CTAs everywhere else.

## Colors

> **Source pages:** home (`/`), `/products/go-ai-assistant`, `/contact-sales`, `/plans`.

### Brand & Accent
- **Primary Indigo Navy** (`{colors.primary}` — `#1b1938`): The brand's primary surface and CTA color. Hero canvas, filled rounded-rectangle button, featured pricing tier.
- **Indigo Deep** (`{colors.primary-deep}` — `#0e0c1f`): Pressed-state lift / deeper navy used in hero gradient stops.
- **Surface Violet Soft** (`{colors.surface-violet-soft}` — `#c9b4fa`): The hero pill-button fill — pale violet over the indigo canvas. Also appears in atmospheric backdrops.
- **Surface Teal Deep** (`{colors.surface-teal-deep}` — `#0e3030`): The signature closing-CTA band color. Rich green-blue, almost black.
- **Surface Teal Mid** (`{colors.surface-teal-mid}` — `#155555`): Slightly lifted teal for nested chrome inside the band.

### Surface
- **Canvas** (`{colors.canvas}` — `#ffffff`): Default body background.
- **Canvas Soft** (`{colors.canvas-soft}` — `#fafaf8`): Barely-warm off-white for alternating feature-row bands.
- **Hairline** (`{colors.hairline}` — `#e8e4dd`): 1px borders, slightly warm grey.
- **Hairline Dark** (`{colors.hairline-dark}` — `#3f3a52`): 1px borders on dark surfaces.

### Text
- **Ink** (`{colors.ink}` — `#292827`): Default body text. Warm dark grey, never pure black.
- **Ink Mute** (`{colors.ink-mute}` — `#73706d`): Secondary text, captions.
- **Ink Faint** (`{colors.ink-faint}` — `#9a9794`): Tertiary / disabled text.
- **On Primary** (`{colors.on-primary}` — `#ffffff`): Text on dark navy / teal surfaces.
- **On Dark Mute** (`{colors.on-dark-mute}` — translucent white): Secondary text on dark.
- **On Dark Faint** (`{colors.on-dark-faint}` — translucent white): Tertiary text on dark.

## Typography

### Font Family

The display and UI tier is **Super Sans VF** — a proprietary variable sans (variable axes for weight, with the brand using sub-default 460 / 540 / 600 weights). Fallback chain is the system font stack.

For substitution use **Inter Variable** (open-source) at weight 460 / 540 / 600 — Inter's variable axes match Super Sans VF's behavior closely. Avoid fixed-weight Inter at 400 / 500 / 600 — the brand specifically picks the in-between weights.

### Hierarchy

| Token | Size | Weight | Line Height | Letter Spacing | Use |
|---|---|---|---|---|---|
| `{typography.display-xxl}` | 64px | 540 | 0.96 | 0 | Hero headline |
| `{typography.display-xl}` | 48px | 460 | 0.96 | -1.32px | Section opener on light surfaces |
| `{typography.display-lg}` | 28px | 540 | 1.14 | -0.63px | Sub-section / feature title |
| `{typography.display-md}` | 22px | 460 | 1.1 | -0.315px | Card title |
| `{typography.heading-lg}` | 20px | 460 | 1.2 | -0.4px | Compact card title |
| `{typography.body-lg}` | 18px | 540 | 1.5 | -0.135px | Marketing body lead |
| `{typography.body-md}` | 16px | 460 | 1.5 | 0 | Default UI body |
| `{typography.body-strong}` | 18.72px | 700 | 1.5 | 0 | Emphasized body |
| `{typography.button-md}` | 16px | 700 | 1.0 | 0 | Rounded-rectangle button label |
| `{typography.button-cap}` | 14px | 600 | 1.0 | 0 | Compact button label |
| `{typography.caption}` | 14px | 460 | 1.4 | 0 | Helper, footnote |
| `{typography.micro}` | 12px | 540 | 1.4 | 0 | Pill label, fine print |

### Principles
- **Sub-default weights.** The brand picks 460 / 540 / 600 instead of 400 / 500 / 700 — a quiet warmth in the typography that distinguishes it from default SaaS systems.
- **Tight display leading.** 0.96 on 48–64px display — the type stacks unusually compact.
- **Negative tracking on display sizes.** -1.32px at 48px scaling proportionally — tightens the variable letterforms into editorial density.

### Note on Font Substitutes
**Inter Variable** (open-source via Google Fonts) is the recommended substitute. Set `font-variation-settings: "wght" 540` for display, 460 for body — Inter's variable axes match. Avoid fixed-weight Inter; the in-between weights are the brand's signature.

## Layout

### Spacing System
- **Base unit**: 8px (with 2 / 4 / 12 sub-tokens for fine work).
- **Tokens**: `{spacing.xxs}` 2px · `{spacing.xs}` 4px · `{spacing.sm}` 8px · `{spacing.md}` 12px · `{spacing.lg}` 16px · `{spacing.xl}` 24px · `{spacing.xxl}` 32px · `{spacing.huge}` 64px.
- **Section padding**: 64–96px on most sections; closing teal band uses 96–128px for editorial weight.
- **Card internal padding**: 32px on pricing cards; 24px on alternating feature rows.

### Grid & Container
- Hero spans full viewport width with the violet-sky backdrop edge-to-edge; content centers in a ~960px column.
- Body content centers in ~960–1100px.
- Pricing collapses 3-up → 2-up → 1-up at 1024 / 768 breakpoints.

### Whitespace Philosophy
The brand uses generous editorial whitespace on both polarities — dark hero and white body. Section gaps tend toward 96px; the teal closing band gets up to 128px of vertical air. The whitespace itself is part of the brand's "considered, slow-tempo" feel.

## Elevation & Depth

| Level | Treatment | Use |
|---|---|---|
| 0 | Flat | Default surface |
| 1 | `box-shadow: 0 1px 3px rgba(0,0,0,0.08)` | Subtle card lift |
| 2 | `box-shadow: 0 8px 24px rgba(0,0,0,0.12)` | Floating panels, modals |
| 3 | Atmospheric backdrop (violet-sky over indigo) | The hero's depth medium |

### Decorative Depth
The hero's depth is the **violet-sky atmospheric backdrop** — a soft indigo-to-violet-to-sky-blue radial wash that sits behind the portrait subject. Implemented as a CSS radial gradient or large background image. Below the hero, depth is minimal — the white canvas is flat.

## Shapes

### Border Radius Scale

| Token | Value | Use |
|---|---|---|
| `{rounded.xs}` | 4px | Hairline tags |
| `{rounded.sm}` | 6px | Form inputs |
| `{rounded.md}` | 8px | Buttons (the brand's signature button shape — rounded rectangle, never pill) |
| `{rounded.lg}` | 12px | Pricing cards, feature cards |
| `{rounded.xl}` | 16px | Modal dialogs, large feature cards |
| `{rounded.full}` | 9999px | Pill tabs in feature row, hero CTA |

### Photography Geometry
The hero uses **half-bleed portrait subjects** — a person photographed at twilight, looking off-frame, occupying the right half of the hero. The portrait extends edge-to-edge vertically and stops mid-canvas horizontally; type sits on the left side. Other photography is rare; product UI mockups handle most other illustrative needs.

## Components

### Buttons

**`button-primary-dark`** — the dominant rounded-rectangle CTA on white surfaces.
- Background `{colors.primary}`, text `{colors.on-primary}`, type `{typography.button-md}`, padding `{spacing.md} {spacing.xl}` (12px 20px), rounded `{rounded.md}` 8px.
- Pressed state `button-primary-dark-pressed` shifts to `{colors.primary-deep}`.

**`button-on-dark-pill`** — the hero CTA in pale violet pill shape.
- Background `{colors.surface-violet-soft}`, text `{colors.primary}`, same typography, padding 12px 20px, rounded `{rounded.full}`. The pill shape only appears on the hero — body CTAs use the rounded rectangle.

**`button-secondary-outline`** — outline alternative on white.
- Background `{colors.canvas}`, text `{colors.ink}`, 1px solid `{colors.hairline-dark}` border, same shape as `button-primary-dark`.

**`button-on-teal`** — CTA inside the closing teal band.
- Background `{colors.canvas}`, text `{colors.surface-teal-deep}`, rounded-rectangle, same typography.

### Cards & Containers

**`card-feature-light`** — feature card on white.
- Background `{colors.canvas}`, padding `{spacing.xxl}`, rounded `{rounded.lg}`, 1px `{colors.hairline}` border.

**`card-pricing`** — standard pricing tier card.
- Background `{colors.canvas}`, padding `{spacing.xxl}`, rounded `{rounded.lg}`, 1px `{colors.hairline}` border.

**`card-pricing-featured`** — inverted indigo featured tier.
- Background `{colors.primary}`, text `{colors.on-primary}`, otherwise identical to `card-pricing`.

**`card-teal-band`** — the closing CTA band on every page.
- Background `{colors.surface-teal-deep}`, text `{colors.on-primary}`, padding `{spacing.huge}` 64px, rounded `{rounded.lg}` 12px (often radius-less in practice when full-bleed). Holds a single closing headline in `{typography.display-lg}` and a `button-on-teal`.

**`card-feature-row`** — alternating feature-row card on the body.
- Background `{colors.canvas-soft}`, text `{colors.ink}`, padding `{spacing.xl}` 24px, rounded `{rounded.md}` 8px. Used in pairs/triplets to explain features below the hero.

### Inputs & Forms

**`text-input`** — standard form input.
- Background `{colors.canvas}`, text `{colors.ink}`, type `{typography.body-md}`, padding `{spacing.sm}+ {spacing.md}` (10px 12px), rounded `{rounded.sm}` 6px, 1px `{colors.hairline}` border.

### Navigation

**`nav-bar-dark`** — top nav over the indigo hero.
- Background `{colors.primary}`, text `{colors.on-primary}`, padding `{spacing.lg} {spacing.xl}`. Logo on the left, nav center, "Get Started" `button-on-dark-pill` on the right.

**`nav-bar-light`** — top nav on body / pricing pages.
- Background `{colors.canvas}`, text `{colors.ink}`, otherwise same structure with `button-primary-dark` on the right.

### Pills, Tags, and Chips

**`pill-tab-light`** — feature-row tab selector.
- Background `{colors.canvas}`, text `{colors.ink}`, type `{typography.button-cap}`, padding `{spacing.sm} {spacing.lg}`, rounded `{rounded.full}`. Used in the feature category picker (Mail / Channels / Code / AI / Calendar etc.) below the hero.

### Signature Components

**Half-Bleed Portrait Hero** — a person photographed at twilight, occupying the right half of the indigo hero with violet-sky atmospheric backdrop behind. Type and CTA sit on the left side. The portrait is the brand's recurring visual signature.

**Closing Teal Band** — every page closes with a `card-teal-band` containing a `{typography.display-lg}` closing headline and a single `button-on-teal`. The teal is the page's resolving chord.

**`link-on-light`** — inline links on body.
- Text `{colors.ink}` rendered in `{typography.body-md}` with persistent underline.

**`footer-light`** — site-wide footer.
- Background `{colors.canvas}`, text `{colors.ink-mute}`, type `{typography.caption}`, padding `{spacing.huge} {spacing.xl}` (64px 24px). Holds 4 columns of link groups, social icons, and a small legal/copyright row.

## Do's and Don'ts

### Do
- Pair every hero with the violet-sky atmospheric backdrop and a half-bleed portrait subject when possible.
- Render display tiers at sub-default weights (460 / 540) — the warmth is the typographic signature.
- Use rounded-rectangle CTAs at 8px radius everywhere except the hero (where pill-shaped is the rule).
- Close every marketing page with a deep-teal CTA band.
- Use warm dark grey `{colors.ink}` for body text — never pure black.
- Apply tight 0.96 line-height on display sizes; the editorial compression is the brand.

### Don't
- Don't use pill-shaped buttons in the body of the page; the pill is hero-only.
- Don't bump display weight above 540 unless using `body-strong` (700) for emphasized inline body.
- Don't render body text in pure black — the warm grey `#292827` is part of the brand.
- Don't omit the closing teal band — every marketing page closes with it.
- Don't introduce additional accent colors beyond indigo, violet-soft, teal, and the off-warm-greys.

## Responsive Behavior

### Breakpoints

| Name | Width | Key Changes |
|---|---|---|
| Wide | ≥ 1440px | Half-bleed portrait at full scale; teal band 128px tall |
| Desktop | 1024–1440px | Default content max-width; pricing 3-up |
| Tablet | 768–1023px | Pricing 2-up; portrait crops tighter |
| Mobile | < 768px | Pricing 1-up; hamburger nav; display drops 64 → 36px |

### Touch Targets
- Buttons hit ≥ 44×44px on mobile via 12px vertical padding × 16px line-height. WCAG AAA.
- Form fields stay at the 44px minimum height.

### Collapsing Strategy
- Display tiers stair-step 64 → 48 → 36 → 28 → 22px.
- Half-bleed portrait crops to head-and-shoulders on mobile; atmospheric backdrop simplifies.
- Pricing tiers stair-step 3-up → 2-up → 1-up.
- Top nav collapses to hamburger below 768px.
- Closing teal band reduces vertical padding from 128 → 64px on mobile.

### Image Behavior
Hero portrait uses `srcset` with desktop / mobile crops — desktop favors the full half-bleed composition; mobile crops to head-and-shoulders.

## Iteration Guide

1. Focus on ONE component at a time.
2. Reference component names and tokens directly.
3. Run `npx @google/design.md lint DESIGN.md` after edits.
4. Default body to `{typography.body-md}`; reserve `{typography.body-lg}` for marketing leads.
5. Keep the three-canvas rhythm (indigo / white / teal) — adding a fourth canvas color breaks the system.
6. The closing teal band is non-negotiable — every marketing page resolves there.


---

## Brand: `zapier`

---
version: alpha
name: Zapier-Inspired-design-analysis
description: An inspired interpretation of Zapier's design language — a workflow-automation platform whose surface combines warm-cream neutrals (`#fffefb` canvas, `#f8f4f0` soft cream) with deep coffee ink (`#201515`) and a single saturated orange CTA accent (`#ff4f00`); typography pairs the proprietary Degular Display family at hero scale with Inter for sub-displays and body, giving the brand a confident-warm rather than cool-tech voice.

colors:
  primary: "#ff4f00"
  on-primary: "#fffefb"
  ink: "#201515"
  ink-soft: "#2f2a26"
  ink-mid: "#36342e"
  body: "#605d52"
  body-mid: "#939084"
  mute: "#c5c0b1"
  canvas: "#fffefb"
  canvas-soft: "#f8f4f0"

typography:
  display-xl:
    fontFamily: Degular Display, Inter, system-ui, -apple-system, sans-serif
    fontSize: 56px
    fontWeight: 500
    lineHeight: 56px
  display-lg:
    fontFamily: Degular Display, Inter, system-ui, sans-serif
    fontSize: 48px
    fontWeight: 500
    lineHeight: 48px
  display-md:
    fontFamily: Degular Display, Inter, system-ui, sans-serif
    fontSize: 32px
    fontWeight: 500
    lineHeight: 36px
    letterSpacing: 1px
  display-sub-lg:
    fontFamily: Inter, system-ui, sans-serif
    fontSize: 48px
    fontWeight: 500
    lineHeight: 49.92px
  display-sub-md:
    fontFamily: Inter, system-ui, sans-serif
    fontSize: 32px
    fontWeight: 400
    lineHeight: 40px
  display-sub-sm:
    fontFamily: Inter, system-ui, sans-serif
    fontSize: 24px
    fontWeight: 600
    lineHeight: 30px
    letterSpacing: -0.6px
  display-xs:
    fontFamily: Inter, system-ui, sans-serif
    fontSize: 20px
    fontWeight: 700
    lineHeight: 25px
    letterSpacing: -0.5px
  body-lg:
    fontFamily: Inter, system-ui, sans-serif
    fontSize: 20px
    fontWeight: 400
    lineHeight: 30px
    letterSpacing: -0.2px
  body-md:
    fontFamily: Inter, system-ui, sans-serif
    fontSize: 18px
    fontWeight: 400
    lineHeight: 27px
  body-md-strong:
    fontFamily: Inter, system-ui, sans-serif
    fontSize: 18px
    fontWeight: 600
    lineHeight: 27px
  body-sm:
    fontFamily: Inter, system-ui, sans-serif
    fontSize: 16px
    fontWeight: 400
    lineHeight: 24px
  body-sm-strong:
    fontFamily: Inter, system-ui, sans-serif
    fontSize: 16px
    fontWeight: 600
    lineHeight: 24px
  caption:
    fontFamily: Inter, system-ui, sans-serif
    fontSize: 14px
    fontWeight: 400
    lineHeight: 21px
  eyebrow-uppercase:
    fontFamily: Degular Display, Inter, system-ui, sans-serif
    fontSize: 14px
    fontWeight: 500
    lineHeight: 14px
    letterSpacing: 1px
  button-md:
    fontFamily: Inter, system-ui, sans-serif
    fontSize: 18px
    fontWeight: 600
    lineHeight: 27px
  button-sm:
    fontFamily: Inter, system-ui, sans-serif
    fontSize: 14.4px
    fontWeight: 700
    lineHeight: 14.4px
    letterSpacing: 0.144px

rounded:
  none: 0px
  sm: 6px
  md: 12px
  pill: 9999px
  full: 9999px

spacing:
  xxs: 2px
  xs: 4px
  sm: 8px
  md: 12px
  lg: 16px
  xl: 24px
  2xl: 32px
  3xl: 48px
  4xl: 64px

components:
  nav-bar:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-sm}"
    padding: "{spacing.md} {spacing.xl}"
  nav-link:
    textColor: "{colors.ink}"
    typography: "{typography.body-sm}"
  button-primary:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button-md}"
    rounded: "{rounded.md}"
    padding: "{spacing.md} {spacing.xl}"
  button-secondary:
    backgroundColor: "{colors.ink}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button-md}"
    rounded: "{rounded.md}"
    padding: "{spacing.md} {spacing.xl}"
  button-tertiary:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    borderColor: "{colors.ink}"
    typography: "{typography.button-md}"
    rounded: "{rounded.md}"
    padding: "{spacing.md} {spacing.xl}"
  button-text:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.button-sm}"
    rounded: "{rounded.md}"
    padding: "{spacing.sm} {spacing.lg}"
  text-input:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    borderColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.sm}"
    padding: "{spacing.md} {spacing.lg}"
  card-content:
    backgroundColor: "{colors.canvas-soft}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.md}"
    padding: "{spacing.xl}"
  card-feature-cream:
    backgroundColor: "{colors.canvas-soft}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.md}"
    padding: "{spacing.xl}"
  card-feature-dark:
    backgroundColor: "{colors.ink}"
    textColor: "{colors.on-primary}"
    typography: "{typography.body-md}"
    rounded: "{rounded.md}"
    padding: "{spacing.xl}"
  pricing-card:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    borderColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.md}"
    padding: "{spacing.xl}"
  pricing-card-featured:
    backgroundColor: "{colors.ink}"
    textColor: "{colors.on-primary}"
    typography: "{typography.body-md}"
    rounded: "{rounded.md}"
    padding: "{spacing.xl}"
  hero-band:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.display-xl}"
    padding: "{spacing.4xl} {spacing.xl}"
  hero-band-dark:
    backgroundColor: "{colors.ink}"
    textColor: "{colors.on-primary}"
    typography: "{typography.display-xl}"
    padding: "{spacing.4xl} {spacing.xl}"
  content-band-cream:
    backgroundColor: "{colors.canvas-soft}"
    textColor: "{colors.ink}"
    typography: "{typography.display-lg}"
    padding: "{spacing.4xl} {spacing.xl}"
  content-band-light:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.display-lg}"
    padding: "{spacing.4xl} {spacing.xl}"
  eyebrow-uppercase:
    textColor: "{colors.ink}"
    typography: "{typography.eyebrow-uppercase}"
  badge-pill:
    backgroundColor: "{colors.canvas-soft}"
    textColor: "{colors.ink}"
    typography: "{typography.body-sm}"
    rounded: "{rounded.pill}"
    padding: "{spacing.xs} {spacing.md}"
  footer:
    backgroundColor: "{colors.ink}"
    textColor: "{colors.canvas-soft}"
    typography: "{typography.body-sm}"
    padding: "{spacing.3xl} {spacing.xl}"

  # ─── Examples (illustrative) — auto-derived; resolve any TO_FILL markers below ───
  ex-pricing-tier:
    description: "Default Pricing tier card. Re-uses feature-card chrome with brand canvas-soft surface."
    backgroundColor: "{colors.canvas-soft}"
    textColor: "{colors.ink}"
    borderColor: "{colors.mute}"
    rounded: "{rounded.md}"
    padding: "{spacing.xl}"
  ex-pricing-tier-featured:
    description: "Featured/highlighted tier — polarity-flipped surface (dark fill + light text in light mode, light fill + dark text in dark mode)."
    backgroundColor: "{colors.ink}"
    textColor: "{colors.on-primary}"
    rounded: "{rounded.md}"
    padding: "{spacing.xl}"
  ex-product-selector:
    description: "What's Included summary card — re-purposed for SaaS / B2B verticals (NOT a literal product gallery)."
    backgroundColor: "{colors.canvas-soft}"
    rounded: "{rounded.md}"
    padding: "{spacing.xl}"
  ex-cart-drawer:
    description: "Subscription summary — re-purposed for SaaS / B2B (line items per add-on, not literal cart)."
    backgroundColor: "{colors.canvas}"
    rounded: "{rounded.md}"
    padding: "{spacing.xl}"
    item-divider: "{colors.mute}"
  ex-app-shell-row:
    description: "Sidebar nav row inside the App Shell example. Active state uses brand primary as the indicator."
    backgroundColor: "{colors.canvas}"
    activeIndicator: "{colors.primary}"
    rounded: "{rounded.sm}"
    padding: "{spacing.md} {spacing.lg}"
  ex-data-table-cell:
    description: "Default data-table th + td chrome. Header uses mono-caps eyebrow typography; body uses body-sm."
    headerBackground: "{colors.canvas-soft}"
    headerTypography: "{typography.caption}"
    bodyTypography: "{typography.body-sm}"
    cellPadding: "{spacing.md} {spacing.lg}"
    rowBorder: "{colors.mute}"
  ex-auth-form-card:
    description: "Sign-in / sign-up card. Re-uses feature-card chrome with text-input primitives inside."
    backgroundColor: "{colors.canvas-soft}"
    rounded: "{rounded.md}"
    padding: "{spacing.xl}"
  ex-modal-card:
    description: "Modal dialog surface — same chrome as feature-card with elevated shadow."
    backgroundColor: "{colors.canvas}"
    rounded: "{rounded.md}"
    padding: "{spacing.xl}"
  ex-empty-state-card:
    description: "Empty-state illustration frame."
    backgroundColor: "{colors.canvas-soft}"
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

Zapier is the original "connect your apps" workflow automation platform — and the marketing surface today reads as confidently-mature. The brand pairs a warm-cream canvas `{colors.canvas}` (`#fffefb`) with a deep coffee-ink `{colors.ink}` (`#201515`) and a single saturated orange `{colors.primary}` (`#ff4f00`) CTA. The warmth in the neutrals — slightly cream rather than pure white — is the brand's defining temperature signal.

Type carries the second voice. The proprietary `Degular Display` family carries hero displays at weight 500. The brand uses `Inter` for everything else — sub-displays, body, button, eyebrow. The two-face pairing reads as "the brand has its own typeface for the loud moments and uses the workhorse for the rest" — modest and unflashy.

Cards are universally `{rounded.md}` 12 px. Buttons share the same 12 px radius — not pills, not square. The brand sits between the friendly-rounded and the technical-square camps with a deliberate middle position.

**Key Characteristics:**
- A single primary CTA color `{colors.primary}` (`#ff4f00`) — saturated orange. The brand's conversion signature.
- Warm-cream canvas `{colors.canvas}` (`#fffefb`) — not pure white. The temperature IS the brand voice.
- Deep coffee ink `{colors.ink}` (`#201515`) — not pure black. Warmth carries through to text.
- Proprietary Degular Display for hero-scale, Inter for everything else. Two-face system.
- `{rounded.md}` 12 px for buttons and cards — the brand's middle-radius signature.
- A muted cream / coffee neutral ladder — `{colors.canvas-soft}` (`#f8f4f0`), `{colors.mute}` (`#c5c0b1`), `{colors.body-mid}` (`#939084`), `{colors.body}` (`#605d52`) — every neutral carries warmth, none are cool grey.

## Colors

### Brand & Accent
- **Zapier Orange** (`{colors.primary}` — `#ff4f00`): The single brand accent. Every primary CTA pill, every conversion target. The saturated orange IS the brand.

### Surface
- **Canvas** (`{colors.canvas}` — `#fffefb`): Warm off-white page background.
- **Canvas Soft** (`{colors.canvas-soft}` — `#f8f4f0`): Cream-tinted soft surface for cards / inset regions.

### Text
- **Ink** (`{colors.ink}` — `#201515`): Deep coffee — every heading and primary text.
- **Ink Soft** (`{colors.ink-soft}` — `#2f2a26`): Near-black with brown warmth.
- **Ink Mid** (`{colors.ink-mid}` — `#36342e`): Mid-emphasis text.
- **Body** (`{colors.body}` — `#605d52`): Default body text color.
- **Body Mid** (`{colors.body-mid}` — `#939084`): Secondary body / metadata.
- **Mute** (`{colors.mute}` — `#c5c0b1`): Lowest-priority text — fine print, low-emphasis captions.

### Semantic
The brand doesn't surface a separate semantic palette on its marketing pages. Status / validation cues borrow from the ink + orange hierarchy.

## Typography

### Font Family
Two faces ladder the system:
1. **Degular Display** — proprietary geometric display sans used for hero headlines at weight 500. The brand's typographic signature.
2. **Inter** — used for sub-displays, body, links, buttons, and eyebrows. Weights 400 / 500 / 600 / 700 are present.

### Hierarchy

| Token | Size | Weight | Line Height | Letter Spacing | Use |
|---|---|---|---|---|---|
| `{typography.display-xl}` | 56px | 500 | 56px | 0 | Hero headline (Degular Display). |
| `{typography.display-lg}` | 48px | 500 | 48px | 0 | Sub-hero displays (Degular Display). |
| `{typography.display-md}` | 32px | 500 | 36px | 1px | Section displays (Degular Display, positive tracking). |
| `{typography.display-sub-lg}` | 48px | 500 | 49.92px | 0 | Inter-rendered sub-display. |
| `{typography.display-sub-md}` | 32px | 400 | 40px | 0 | Inter sub-display. |
| `{typography.display-sub-sm}` | 24px | 600 | 30px | -0.6px | Card titles (Inter, semibold). |
| `{typography.display-xs}` | 20px | 700 | 25px | -0.5px | Inline display micro-headings. |
| `{typography.body-lg}` | 20px | 400 | 30px | -0.2px | Lead paragraphs. |
| `{typography.body-md}` | 18px | 400 | 27px | 0 | Default body. |
| `{typography.body-md-strong}` | 18px | 600 | 27px | 0 | Bolded inline body. |
| `{typography.body-sm}` | 16px | 400 | 24px | 0 | Secondary body. |
| `{typography.body-sm-strong}` | 16px | 600 | 24px | 0 | Bold caption. |
| `{typography.caption}` | 14px | 400 | 21px | 0 | Fine print. |
| `{typography.eyebrow-uppercase}` | 14px | 500 | 14px | 1px | UPPERCASE eyebrow (Degular Display, positive tracking). |
| `{typography.button-md}` | 18px | 600 | 27px | 0 | Primary button label. |
| `{typography.button-sm}` | 14.4px | 700 | 14.4px | 0.144px | Small button label. |

### Principles
- **Degular Display 500 for hero, Inter for everything else.** Strict role separation.
- **Positive tracking on the Degular eyebrow** — `1 px` at 14 px is the brand's signature label style.
- **Sentence-case headlines.** The brand never uppercases display sizes.

### Note on Font Substitutes
Degular Display is proprietary. Open-source substitutes:
- **Display** — *Inter* weight 500 at hero scale comes closest. *Mona Sans* weight 500 is a softer alternative.
- **Sub-display + body** — *Inter* is the brand's actual second face.

## Layout

### Spacing System
- **Base unit**: 4 px.
- **Tokens**: `{spacing.xxs}` 2 px · `{spacing.xs}` 4 px · `{spacing.sm}` 8 px · `{spacing.md}` 12 px · `{spacing.lg}` 16 px · `{spacing.xl}` 24 px · `{spacing.2xl}` 32 px · `{spacing.3xl}` 48 px · `{spacing.4xl}` 64 px.
- **Section padding**: bands use `{spacing.4xl}` 64 px top/bottom.
- **Card interior**: cards at `{spacing.xl}` 24 px.

### Grid & Container
- Marketing container ~1280 px wide; centred with gutters.
- Hero: split at desktop (headline left, illustration right); stacked at mobile.
- Pricing tier grid: 3 / 4-up at desktop.

### Responsive Strategy

#### Breakpoints

| Name | Width | Key Changes |
|---|---|---|
| Mobile | < 768px | Hero stacks; grids 1-up; hamburger nav. |
| Tablet | 768–1023px | 2-up grids. |
| Desktop | ≥ 1024px | Full grids; hero split. |

#### Touch Targets
Buttons render ~48 px tall (12 vertical padding + 27 line). WCAG AAA met.

#### Image Behavior
The brand uses illustrative SVGs of zaps / workflows + product screenshots inside `{rounded.md}` framed cards. Photography is rare.

## Elevation & Depth

| Level | Treatment | Use |
|---|---|---|
| Level 0 — Flat | No shadow, no border. | Default for hero. |
| Level 1 — Hairline | 1 px solid `{colors.ink}` border. | Pricing-tier card chrome, outline buttons. |
| Level 2 — Soft Card | `{colors.canvas-soft}` cream fill against `{colors.canvas}` page. | Default content cards — surface contrast carries elevation. |

## Shapes

### Border Radius Scale

| Token | Value | Use |
|---|---|---|
| `{rounded.none}` | 0px | Full-bleed bands. |
| `{rounded.sm}` | 6px | Inline pills, form inputs. |
| `{rounded.md}` | 12px | The brand's canonical button + card radius. |
| `{rounded.pill}` | 9999px | Status pills, badges. |
| `{rounded.full}` | 9999px | Circular icon containers. |

## Components

### Buttons

**`button-primary`** — the orange CTA.
- Background `{colors.primary}`, text `{colors.on-primary}` (warm white), label `{typography.button-md}`, padding `{spacing.md} {spacing.xl}`, shape `{rounded.md}` 12 px.

**`button-secondary`** — the dark coffee-ink CTA.
- Background `{colors.ink}`, text `{colors.on-primary}`, same typography / padding / shape.

**`button-tertiary`** — the outline CTA.
- Background `{colors.canvas}`, text `{colors.ink}`, 1 px solid `{colors.ink}` border, same typography / padding / shape.

**`button-text`** — text-only CTA used inside cards / nav.
- Background `{colors.canvas}`, text `{colors.ink}`, body in `{typography.button-sm}`, padding `{spacing.sm} {spacing.lg}`, shape `{rounded.md}`.

### Cards & Containers

**`card-content`** — the default cream content card.
- Background `{colors.canvas-soft}`, text `{colors.ink}`, padding `{spacing.xl}`, shape `{rounded.md}`.

**`card-feature-cream`** — the cream feature card.
- Same chrome as `card-content`. Hosts headline + body + illustration.

**`card-feature-dark`** — the polarity-flipped dark coffee card.
- Background `{colors.ink}`, text `{colors.on-primary}`, padding `{spacing.xl}`, shape `{rounded.md}`.

**`pricing-card`** — the default pricing tier card.
- Background `{colors.canvas}`, text `{colors.ink}`, 1 px solid `{colors.ink}` border, padding `{spacing.xl}`, shape `{rounded.md}`.

**`pricing-card-featured`** — the polarity-flipped featured pricing tier.
- Background `{colors.ink}`, text `{colors.on-primary}`, same shape / padding.

### Inputs & Forms

**`text-input`** — the canonical text input.
- Background `{colors.canvas}`, text `{colors.ink}`, 1 px solid `{colors.ink}` border, body in `{typography.body-md}`, padding `{spacing.md} {spacing.lg}`, shape `{rounded.sm}` 6 px.

### Navigation

**`nav-bar`** — the sticky top nav.
- Background `{colors.canvas}`, text `{colors.ink}`, padding `{spacing.md} {spacing.xl}`.

**`nav-link`** — link items inside nav.
- Text `{colors.ink}`, set in `{typography.body-sm}`.

**`footer`** — the dark coffee footer.
- Background `{colors.ink}`, text `{colors.canvas-soft}`, padding `{spacing.3xl} {spacing.xl}`. Body in `{typography.body-sm}`.

### Signature Components

**`hero-band`** — the cream hero band.
- Background `{colors.canvas}`, text `{colors.ink}`, padding `{spacing.4xl} {spacing.xl}`. Headline in `{typography.display-xl}` (Degular Display 56 px / 500).

**`hero-band-dark`** — the polarity-flipped dark coffee hero.
- Background `{colors.ink}`, text `{colors.on-primary}`, same scale.

**`content-band-cream`** — the cream content band that follows hero.
- Background `{colors.canvas-soft}`, text `{colors.ink}`, padding `{spacing.4xl} {spacing.xl}`. Section headline in `{typography.display-lg}`.

**`content-band-light`** — the white content band.
- Background `{colors.canvas}`, text `{colors.ink}`, same padding / scale.

**`eyebrow-uppercase`** — the small UPPERCASE Degular eyebrow above section headlines.
- Text `{colors.ink}`, set in `{typography.eyebrow-uppercase}` (14 px / 500 / `1 px` tracking).

**`badge-pill`** — the inline pill for metadata / tag.
- Background `{colors.canvas-soft}`, text `{colors.ink}`, body in `{typography.body-sm}`, padding `{spacing.xs} {spacing.md}`, shape `{rounded.pill}`.

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
- Reserve `{colors.primary}` Zapier orange for every primary CTA. The saturated orange IS the conversion signature.
- Keep canvas WARM — `{colors.canvas}` `#fffefb` cream, not pure white. The temperature is the brand voice.
- Set hero headlines in `{typography.display-xl}` Degular Display weight 500. Sentence-case, no uppercase.
- Pair Degular Display (hero, eyebrow) with Inter (everything else). Two faces, two roles.
- Use `{rounded.md}` 12 px for buttons + cards. The middle radius is the brand's signature.
- Pair orange CTA with ink-dark text on cream backgrounds — the three-token rhythm is the brand's whole conversion story.

### Don't
- Don't replace cream canvas with pure white. The warmth is the brand.
- Don't use pure black ink. The coffee-warmth in `#201515` carries through every text color.
- Don't render CTAs as pills. The brand's button is 12 px rounded rectangle.
- Don't introduce a second chromatic accent. Orange + cream + coffee is the entire palette.
- Don't substitute Degular Display with a cool geometric sans (e.g., generic Helvetica) — the brand's display face has warm proportions that the substitute doesn't capture.


---

