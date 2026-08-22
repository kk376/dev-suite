# Automotive, Aerospace, Telemetry & Nostalgic Tech

> Aerospace HUDs, telemetry dials, race-grade carbon & scarlet themes, luxury metallic minimalism, and retro 90s/2000s skeuomorphism.

## Brands in this Archetype

- [`bmw`](#bmw)
- [`bmw-m`](#bmw-m)
- [`bugatti`](#bugatti)
- [`dell-1996`](#dell-1996)
- [`ferrari`](#ferrari)
- [`lamborghini`](#lamborghini)
- [`nintendo-2001`](#nintendo-2001)
- [`playstation`](#playstation)
- [`renault`](#renault)
- [`spacex`](#spacex)
- [`tesla`](#tesla)

---

## Brand: `bmw`

---
version: alpha
name: BMW-design-analysis
description: BMW's corporate site — distinct from BMW M's motorsport-bombastic variant, this is a measured and settled corporate-automotive interface. On a light (cream-tinted white) canvas, BMW corporate blue (#1c69d4) carries every primary CTA; dark navy hero bands frame model photography. BMW Type Next Latin sets the entire hierarchy on two weights — heavy 700 display and Light 300 body. Configuration and reservation flows ride a card-based 4-up grid, where each card holds a model render, a name, and a "Learn More" link.

colors:
  primary: "#1c69d4"
  primary-active: "#0653b6"
  primary-disabled: "#d6d6d6"
  ink: "#262626"
  body: "#3c3c3c"
  body-strong: "#1a1a1a"
  muted: "#6b6b6b"
  muted-soft: "#9a9a9a"
  hairline: "#e6e6e6"
  hairline-strong: "#cccccc"
  canvas: "#ffffff"
  surface-soft: "#f7f7f7"
  surface-card: "#fafafa"
  surface-strong: "#ebebeb"
  surface-dark: "#1a2129"
  surface-dark-elevated: "#262e38"
  on-primary: "#ffffff"
  on-dark: "#ffffff"
  on-dark-soft: "#bbbbbb"
  m-blue-light: "#0066b1"
  m-blue-dark: "#1c69d4"
  m-red: "#e22718"
  success: "#22c55e"
  warning: "#f59e0b"
  error: "#dc2626"

typography:
  display-xl:
    fontFamily: "'BMW Type Next Latin', system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif"
    fontSize: 64px
    fontWeight: 700
    lineHeight: 1.05
    letterSpacing: 0
  display-lg:
    fontFamily: "'BMW Type Next Latin', sans-serif"
    fontSize: 48px
    fontWeight: 700
    lineHeight: 1.1
    letterSpacing: 0
  display-md:
    fontFamily: "'BMW Type Next Latin', sans-serif"
    fontSize: 32px
    fontWeight: 700
    lineHeight: 1.15
    letterSpacing: 0
  display-sm:
    fontFamily: "'BMW Type Next Latin', sans-serif"
    fontSize: 24px
    fontWeight: 700
    lineHeight: 1.25
    letterSpacing: 0
  title-lg:
    fontFamily: "'BMW Type Next Latin', sans-serif"
    fontSize: 20px
    fontWeight: 700
    lineHeight: 1.3
    letterSpacing: 0
  title-md:
    fontFamily: "'BMW Type Next Latin', sans-serif"
    fontSize: 18px
    fontWeight: 700
    lineHeight: 1.4
    letterSpacing: 0
  title-sm:
    fontFamily: "'BMW Type Next Latin', sans-serif"
    fontSize: 16px
    fontWeight: 700
    lineHeight: 1.4
    letterSpacing: 0
  body-md:
    fontFamily: "'BMW Type Next Latin', sans-serif"
    fontSize: 16px
    fontWeight: 300
    lineHeight: 1.55
    letterSpacing: 0
  body-sm:
    fontFamily: "'BMW Type Next Latin', sans-serif"
    fontSize: 14px
    fontWeight: 300
    lineHeight: 1.55
    letterSpacing: 0
  caption:
    fontFamily: "'BMW Type Next Latin', sans-serif"
    fontSize: 12px
    fontWeight: 400
    lineHeight: 1.4
    letterSpacing: 0.5px
  label-uppercase:
    fontFamily: "'BMW Type Next Latin', sans-serif"
    fontSize: 13px
    fontWeight: 700
    lineHeight: 1.3
    letterSpacing: 1.5px
    textTransform: uppercase
  button:
    fontFamily: "'BMW Type Next Latin', sans-serif"
    fontSize: 14px
    fontWeight: 700
    lineHeight: 1.0
    letterSpacing: 0.5px
  nav-link:
    fontFamily: "'BMW Type Next Latin', sans-serif"
    fontSize: 14px
    fontWeight: 400
    lineHeight: 1.4
    letterSpacing: 0.3px

rounded:
  none: 0px
  xs: 2px
  sm: 4px
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
  section: 80px

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
    rounded: "{rounded.none}"
    padding: 14px 32px
    height: 48px
  button-primary-active:
    backgroundColor: "{colors.primary-active}"
    textColor: "{colors.on-primary}"
    rounded: "{rounded.none}"
  button-primary-disabled:
    backgroundColor: "{colors.primary-disabled}"
    textColor: "{colors.muted}"
    rounded: "{rounded.none}"
  button-secondary:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.button}"
    rounded: "{rounded.none}"
    padding: 13px 31px
    height: 48px
  button-secondary-on-dark:
    backgroundColor: transparent
    textColor: "{colors.on-dark}"
    typography: "{typography.button}"
    rounded: "{rounded.none}"
    padding: 13px 31px
  button-text-link:
    backgroundColor: transparent
    textColor: "{colors.ink}"
    typography: "{typography.label-uppercase}"
  text-link:
    backgroundColor: transparent
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
  hero-band-dark:
    backgroundColor: "{colors.surface-dark}"
    textColor: "{colors.on-dark}"
    typography: "{typography.display-xl}"
    padding: 80px
  hero-photo-band:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.display-lg}"
    padding: 80px
  model-card:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.title-md}"
    rounded: "{rounded.none}"
    padding: 24px
  model-card-photo:
    backgroundColor: "{colors.surface-card}"
    rounded: "{rounded.none}"
  feature-photo-card:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.title-md}"
    rounded: "{rounded.none}"
    padding: 24px
  spec-cell:
    backgroundColor: transparent
    textColor: "{colors.ink}"
    typography: "{typography.display-sm}"
    rounded: "{rounded.none}"
    padding: 24px
  inventory-card:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.title-sm}"
    rounded: "{rounded.none}"
    padding: 16px
  filter-chip:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.caption}"
    rounded: "{rounded.none}"
    padding: 8px 14px
  filter-chip-active:
    backgroundColor: "{colors.ink}"
    textColor: "{colors.on-dark}"
    rounded: "{rounded.none}"
  configurator-option-tile:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.none}"
    padding: 16px 24px
  configurator-option-tile-selected:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    rounded: "{rounded.none}"
    padding: 15px 23px
  text-input:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.none}"
    padding: 14px 16px
    height: 48px
  cookie-consent-card:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.body}"
    typography: "{typography.body-sm}"
    rounded: "{rounded.none}"
    padding: 24px
  category-tab:
    backgroundColor: transparent
    textColor: "{colors.muted}"
    typography: "{typography.label-uppercase}"
    rounded: "{rounded.none}"
  category-tab-active:
    backgroundColor: transparent
    textColor: "{colors.ink}"
    typography: "{typography.label-uppercase}"
    rounded: "{rounded.none}"
  m-stripe-divider:
    backgroundColor: transparent
    rounded: "{rounded.none}"
  cta-band-photo:
    backgroundColor: "{colors.surface-dark}"
    textColor: "{colors.on-dark}"
    typography: "{typography.display-md}"
    padding: 80px
  footer:
    backgroundColor: "{colors.surface-soft}"
    textColor: "{colors.body}"
    typography: "{typography.body-sm}"
    padding: 64px
---

## Overview

BMW's corporate site carries a far more **measured, corporate-automotive** interface than its motorsport-bombastic cousin BMW M. The atmosphere is light: `{colors.canvas}` (#ffffff) is the base surface, `{colors.surface-card}` (#fafafa) carries the soft-grey card plates, and dark navy `{colors.surface-dark}` (#1a2129) appears only inside hero bands — one per page, framing the lead model render.

Type runs BMW's licensed **BMW Type Next Latin** at two weights: heavy 700 (display + button + nav) and Light 300 (body + secondary copy). That contrast — heavy display next to thin paragraph — is the editorial signature, channeling the brand's "European-engineered" voice. Weight 500 is deliberately absent; weight 400 only appears on caption and nav-link in neutral utility contexts.

The brand action color, **BMW corporate blue** (`{colors.primary}` — #1c69d4), works alone across every primary CTA — buttons are **rectangular, 0px corner**, with white type. The site rotates a blue-button + dark-navy-hero combination across page rhythm. The M tricolor stripe (`{colors.m-blue-light}` → `{colors.m-blue-dark}` → `{colors.m-red}`) only appears in motorsport contexts and as M-model badges/dividers — never in the corporate site's main language.

The configuration and reservation flows add a dealer-side inventory UI on top of the same system — filter chips, model cards, price tables — but typography and color stay identical; only density goes up.

**Key Characteristics:**
- Light `{colors.canvas}` is the base surface; dark navy `{colors.surface-dark}` appears only inside hero bands — page rhythm relies on contrast.
- BMW corporate blue (`{colors.primary}` — #1c69d4) acts as the single primary action color.
- BMW Type Next Latin: weight 700 display against weight 300 body is the signature.
- Buttons are **rectangular, 0px radius** — corporate dialect, distinct from M's sportier radii.
- Model cards run as 4-up or 5-up grids with no hairline border or only minimal border — just white plate + photo + title.
- Photography (model renders) sits in environment, no shadow — depth comes entirely from color-block contrast.
- M tricolor stripe appears only in M-model contexts — not part of the corporate language.
- Section rhythm holds at `{spacing.section}` (80px) for every major band.

## Colors

### Brand & Accent
- **BMW Blue (Primary)** (`{colors.primary}` — #1c69d4): The single brand action color. All primary CTAs, "Learn More" link prefixes (blue text), nav-link active state. Press shifts to `{colors.primary-active}` (#0653b6).
- **M Blue Light** (`{colors.m-blue-light}` — #0066b1) + **M Blue Dark** (`{colors.m-blue-dark}` — #1c69d4) + **M Red** (`{colors.m-red}` — #e22718): The M tricolor stripe — appears on the corporate site only on M-model pages and the "M" badge. Never as CTA colors.

### Surface
- **Canvas** (`{colors.canvas}` — #ffffff): The default page surface.
- **Surface Soft** (`{colors.surface-soft}` — #f7f7f7): Soft grey for the footer and sub-navigation bands.
- **Surface Card** (`{colors.surface-card}` — #fafafa): The light plate behind a model card's photo block.
- **Surface Strong** (`{colors.surface-strong}` — #ebebeb): A slightly heavier grey used as a section divider.
- **Surface Dark** (`{colors.surface-dark}` — #1a2129): Dark navy for hero bands and large dark CTAs. Not pure black — carries a warm undertone.
- **Surface Dark Elevated** (`{colors.surface-dark-elevated}` — #262e38): One step lighter, used for nested cards on top of the dark hero.

### Hairlines
- **Hairline** (`{colors.hairline}` — #e6e6e6): The 1px divider — input outline, configurator card outline, table separator.
- **Hairline Strong** (`{colors.hairline-strong}` — #cccccc): A more visible 1px outline — disabled secondary buttons, emphasized table border.

### Text
- **Ink** (`{colors.ink}` — #262626): All display and primary text. Not pure black — soft against photography.
- **Body** (`{colors.body}` — #3c3c3c): Default running text.
- **Body Strong** (`{colors.body-strong}` — #1a1a1a): Emphasized paragraphs and lead text.
- **Muted** (`{colors.muted}` — #6b6b6b): Footer links, breadcrumbs, captions.
- **Muted Soft** (`{colors.muted-soft}` — #9a9a9a): Disabled text, fine-print legal.
- **On Primary** (`{colors.on-primary}` — #ffffff): White text on a blue button.
- **On Dark** (`{colors.on-dark}` — #ffffff): White text on a dark hero band.
- **On Dark Soft** (`{colors.on-dark-soft}` — #bbbbbb): A slightly muted white for secondary text on dark bands.

### Semantic
- **Success** (`{colors.success}` — #22c55e): Confirmation messages and "available" indicators.
- **Warning** (`{colors.warning}` — #f59e0b): Warning callouts.
- **Error** (`{colors.error}` — #dc2626): Validation errors.

## Typography

### Font Family
The system runs **BMW Type Next Latin** in two cuts: regular (display + UI labels) and **BMW Type Next Latin Light** (body + secondary copy). Fallback stack: `system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif`.

The display/body split is functional:
- BMW Type Next Latin (700) → display headlines, button labels, nav links
- BMW Type Next Latin Light (300) → paragraphs, descriptive copy
- BMW Type Next Latin (400) → caption, neutral nav-link contexts

This three-way split mirrors BMW M's — corporate and the M sub-brand share the same typographic DNA; only the weight/size ratios differ.

### Hierarchy

| Token | Size | Weight | Line Height | Letter Spacing | Use |
|---|---|---|---|---|---|
| `{typography.display-xl}` | 64px | 700 | 1.05 | 0 | Hero h1 ("iX3", model name) |
| `{typography.display-lg}` | 48px | 700 | 1.1 | 0 | Section heads |
| `{typography.display-md}` | 32px | 700 | 1.15 | 0 | Sub-section heads |
| `{typography.display-sm}` | 24px | 700 | 1.25 | 0 | CTA-band headlines |
| `{typography.title-lg}` | 20px | 700 | 1.3 | 0 | Card group titles |
| `{typography.title-md}` | 18px | 700 | 1.4 | 0 | Model card title, intro paragraphs |
| `{typography.title-sm}` | 16px | 700 | 1.4 | 0 | Inventory card title, list label |
| `{typography.body-md}` | 16px | 300 (Light) | 1.55 | 0 | Default body — BMW Type Next Latin Light |
| `{typography.body-sm}` | 14px | 300 (Light) | 1.55 | 0 | Footer body, fine-print |
| `{typography.caption}` | 12px | 400 | 1.4 | 0.5px | Photo captions, meta |
| `{typography.label-uppercase}` | 13px | 700 | 1.3 | 1.5px | "LEARN MORE" inline links, category tabs |
| `{typography.button}` | 14px | 700 | 1.0 | 0.5px | Standard CTA button label |
| `{typography.nav-link}` | 14px | 400 | 1.4 | 0.3px | Top-nav menu items |

### Principles
- The **700/300 contrast** is the editorial signature. Weight 500 is absent from the system.
- **No negative letter-spacing** — BMW Type Next Latin works on a wide body, so tracking stays at default. Apple/Cal.com-style tightening reads off-brand here.
- **UPPERCASE inline links** — "LEARN MORE"-style CTAs run uppercase with 1.5px tracking. The "machined precision" voice.
- **Weight 400 lives in a narrow lane** — only caption and nav-link, both neutral utility roles.

### Note on Font Substitutes
BMW Type Next Latin is a licensed BMW typeface. Open-source alternatives:
- **Inter** (variable) — close match at weight 700/300. Leave letter-spacing at 0.0em.
- **Saira Condensed** — for a slightly more compressed BMW Type feel.

## Layout

### Spacing System
- **Base unit:** 8px.
- **Tokens:** `{spacing.xxs}` 4px · `{spacing.xs}` 8px · `{spacing.sm}` 12px · `{spacing.md}` 16px · `{spacing.lg}` 24px · `{spacing.xl}` 32px · `{spacing.xxl}` 48px · `{spacing.section}` 80px.
- **Section padding:** `{spacing.section}` (80px) for every major editorial band.
- **Card internal padding:** `{spacing.lg}` (24px) for model and feature cards.

### Grid & Container
- **Max content width:** ~1440px center-aligned.
- **Editorial body:** A single 12-column grid.
- **Model card grids:** 4-up or 5-up at desktop, 2-up at tablet, 1-up on mobile.
- **Configurator inventory grids:** 3-up filter row + 4-up vehicle cards, dense layout.

### Whitespace Philosophy
BMW's whitespace strategy is tighter than BMW M's motorsport-aerated grenadier — the corporate side is more utility-driven. Section rhythm is 80px (not M's 96px). Card padding is 24px (not M's 32px). The page is denser, more dealership-functional.

## Elevation & Depth

| Level | Treatment | Use |
|---|---|---|
| Flat | No shadow, no border | Body, top nav, footer, hero bands |
| Soft hairline | 1px `{colors.hairline}` border | Configurator option tile, table divider |
| Card surface | `{colors.surface-card}` background — no shadow | Model card photo plate |
| Photographic | Edge-to-edge photography | Hero band, model renders |

The system never uses a drop shadow. Depth comes entirely from (a) color-block contrast (light canvas vs dark hero) and (b) photographic subject + lighting.

### Decorative Depth
- **`m-stripe-divider`** — a 4px-tall horizontal tricolor stripe (`{colors.m-blue-light}` → `{colors.m-blue-dark}` → `{colors.m-red}`). Only in M-model contexts, motorsport badges, or as an M-related section divider. Not part of the main corporate flow.
- **Photographic depth** — full-bleed vehicle photography (lighting + subject) does the work chrome would otherwise do.

## Shapes

### Border Radius Scale

| Token | Value | Use |
|---|---|---|
| `{rounded.none}` | 0px | Every button, card, input, configurator chip — the dominant radius |
| `{rounded.xs}` | 2px | Very small badges, very rare |
| `{rounded.sm}` | 4px | Small inline button (rare) |
| `{rounded.md}` | 8px | Mobile-only collapse cards (rare) |
| `{rounded.lg}` | 12px | Very rare — modal/dialog corners |
| `{rounded.pill}` | 9999px | Filter chips in some contexts (rare) |
| `{rounded.full}` | 9999px / 50% | Avatar, circular icon button |

The radius hierarchy is binary: **rectangular for everything, circular only for icon buttons.** A clear departure from the soft-cornered SaaS dialect of Apple or Cal.com — closer to BMW corporate-automotive's "engineered precision" voice.

### Photography Geometry
- Hero photography is full-bleed at 16:9 or 21:9 cinematic ratio.
- Model card photos sit at 16:10, edge-to-edge with `{rounded.none}` corners.
- Configurator vehicle renders sit on a white studio background, full silhouette visible.

## Components

### Top Navigation

**`top-nav`** — A white sticky nav bar pinned to the top of the page. 64px tall, `{colors.canvas}` background. Left: BMW circular badge logo; center: primary horizontal menu (Models, Next Generation, Pre-Owned, Dealers, Test Drive); right: cart icon, language picker, profile. Menu items render in `{typography.nav-link}` (14px / 400 / 0.3px tracking).

### Buttons

**`button-primary`** — The signature primary CTA. Background `{colors.primary}` (BMW Blue #1c69d4), text `{colors.on-primary}`, type `{typography.button}` (BMW Type Next Latin 14px / 700 / 0.5px tracking), padding 14px × 32px, height 48px, rounded `{rounded.none}` (0px — rectangular). Press state: `button-primary-active` shifts to `{colors.primary-active}`.

**`button-secondary`** — A white button with a hairline outline. Background `{colors.canvas}`, text `{colors.ink}`, 1px `{colors.hairline-strong}` border, same padding + height + radius.

**`button-secondary-on-dark`** — Used over a dark hero band. Background transparent, text `{colors.on-dark}`, 1px `{colors.on-dark}` border, same rectangular shape.

**`button-text-link`** — An inline UPPERCASE letter-spaced link. No background, text `{colors.ink}`, type `{typography.label-uppercase}` (13px / 700 / 1.5px tracking). Reads as "LEARN MORE", terminated by a `›` chevron.

**`text-link`** — An inline link inside body copy. `{colors.ink}` text, no underline by default; underlines per context.

### Cards & Containers

**`hero-band-dark`** — Full-width dark navy hero. Background `{colors.surface-dark}`, text `{colors.on-dark}`, vertical padding `{spacing.section}` (80px). Centered: model name in `{typography.display-xl}` (64px / 700) + sub-headline + vehicle render (right-aligned or below). A single `{component.button-primary}` (blue) or `{component.button-secondary-on-dark}`.

**`hero-photo-band`** — A light-canvas model showcase band. Background `{colors.canvas}`, text `{colors.ink}`. The vehicle render takes the wide area; right or below, a headline + two link CTAs + sub-tagline.

**`model-card`** — Used in 4-up or 5-up model card grids on the homepage ("BMW iX3", "BMW iX", "BMW 5 Series"). Background `{colors.canvas}`, rounded `{rounded.none}`, padding `{spacing.lg}` (24px). Contents: model render at the top (`{component.model-card-photo}` on `{colors.surface-card}`), model name in `{typography.title-md}` (18px / 700) below, a one-line tagline in `{typography.body-sm}` (14px / 300), and a `{component.button-text-link}` ("LEARN MORE ›").

**`model-card-photo`** — The card's photo plate. Background `{colors.surface-card}` (#fafafa — soft grey), rounded `{rounded.none}`, vehicle render in full silhouette. Zero padding — the photo runs edge-to-edge.

**`feature-photo-card`** — A feature/lifestyle card. Background `{colors.canvas}`, padding `{spacing.lg}`. 16:9 photo at the top, `{typography.title-md}` headline + body excerpt below.

**`spec-cell`** — A technical spec cell (model detail page). Transparent background, separated by hairline dividers. Value on top (`{typography.display-sm}` 24px / 700), label below (`{typography.label-uppercase}`).

### Inventory & Configurator

**`inventory-card`** — One card per vehicle on the dealer inventory page. Background `{colors.canvas}`, padding `{spacing.md}` (16px), rounded `{rounded.none}`. Vehicle photo on top, model + variant name + price + "View" link below.

**`filter-chip`** + **`filter-chip-active`** — Inventory filter chips (model, year, price range). Inactive: background `{colors.canvas}`, 1px `{colors.hairline-strong}` border, text `{colors.ink}`, type `{typography.caption}`. Active: background `{colors.ink}`, text `{colors.on-dark}`. Padding 8px × 14px, radius `{rounded.none}`.

**`configurator-option-tile`** + **`configurator-option-tile-selected`** — Configurator selection cell (color, wheels, upholstery). Inactive: background `{colors.canvas}`, 1px hairline. Selected: 2px `{colors.primary}` border. Padding 16px × 24px, radius `{rounded.none}`.

### Inputs & Forms

**`text-input`** — Standard text input. Background `{colors.canvas}`, text `{colors.ink}`, type `{typography.body-md}`, rounded `{rounded.none}` (0px), padding 14px × 16px, height 48px, 1px hairline border. On focus, the border thickens to ink.

**`cookie-consent-card`** — Cookie banner. Background `{colors.canvas}`, 1px hairline, padding `{spacing.lg}` (24px), `{typography.body-sm}` (14px / 300 — Light even in legal copy).

### Tabs / Tags

**`category-tab`** + **`category-tab-active`** — Category sub-nav. Inactive: transparent + `{colors.muted}` UPPERCASE label. Active: transparent + `{colors.ink}` UPPERCASE label + 2px ink underline. 12px vertical padding, no horizontal radius.

### Brand Signature

**`m-stripe-divider`** — A 4px-tall horizontal tricolor stripe (`{colors.m-blue-light}` → `{colors.m-blue-dark}` → `{colors.m-red}`). Only in M-model contexts, motorsport badges, or as an M-related section divider. Absent from the corporate main flow; on M-model detail pages and the M Performance badge it plays an inline divider role.

### CTA / Footer

**`cta-band-photo`** — A pre-footer "Discover the New iX3"-style band. Background `{colors.surface-dark}` with a full-bleed vehicle photo. Centered headline in `{typography.display-md}` (32px / 700) + a single `{component.button-secondary-on-dark}`. 80px padding.

**`footer`** — The closing soft-grey footer. Background `{colors.surface-soft}` (#f7f7f7 — not pure white — soft grey), text `{colors.body}`. A 4-column link list: Models / Services / Dealers / About. Vertical padding 64px. Below, a copyright line in `{typography.body-sm}` with `{colors.muted}`.

## Do's and Don'ts

### Do
- Sit every page on `{colors.canvas}` (pure white); reserve `{colors.surface-dark}` for hero bands only.
- Pair primary CTAs with `{colors.primary}` (BMW Blue) + `{colors.on-primary}` white text + `{rounded.none}` 0px corners — the corporate signature.
- Set display headlines in BMW Type Next Latin 700 and body in Light 300. The contrast is non-negotiable.
- Use UPPERCASE letter-spaced links like "LEARN MORE" as inline CTAs.
- Place the model card photo on `{colors.surface-card}` with the title beneath — the standard BMW corporate pattern.
- Hold section rhythm at `{spacing.section}` (80px) — tighter than BMW M's 96px.
- Reserve the M tricolor stripe for M-model contexts and motorsport dividers.

### Don't
- Don't add a brand color other than blue — BMW Blue is the only primary action color.
- Don't use pill or rounded buttons — `{rounded.none}` (0px) rectangular IS the brand button.
- Don't drop display weight to 500 — the system uses 700 / 400 / 300; 500 is absent.
- Don't bold body type — Light 300 is the BMW corporate editorial voice.
- Don't add drop shadows to cards — depth comes from photo + color-block contrast.
- Don't repeat the same surface mode across two consecutive bands — light → dark hero → light → light feature → dark CTA → light footer rotation is required.
- Don't use the M tricolor stripe as a CTA fill — divider/accent role only.
- Don't mix languages in a single page — UI language must stay consistent.

## Responsive Behavior

### Breakpoints

| Name | Width | Key Changes |
|---|---|---|
| Mobile | < 768px | Hamburger nav; hero h1 64→40px; model card grid 1-up; configurator filter chips 2-up; footer 4 col → 1 col |
| Tablet | 768–1024px | Top nav narrows, secondary menu hides under "More"; model card 2-up; inventory 2-up |
| Desktop | 1024–1440px | Full top-nav; 4-up or 5-up model card grid; inventory 3-up; full configurator UI |
| Wide | > 1440px | Same as desktop, content fixed at 1440px; gutters absorb the rest |

### Touch Targets
- `{component.button-primary}` minimum 48 × 48px — above WCAG AAA (44 × 44).
- `{component.text-input}` height 48px.
- Category tabs run with 12px vertical padding, giving an effective tap area > 44px.

### Collapsing Strategy
- The top nav collapses to a hamburger below 768px; the menu opens as a full-screen sheet.
- The hero band's internal layout drops to a single column.
- Model card grid 4-up/5-up → 2-up → 1-up.
- The configurator filter chip row scrolls horizontally on mobile.
- The M tricolor stripe stays at 4px height across every breakpoint.

### Image Behavior
- Model renders scale at every breakpoint while preserving native aspect ratios.
- Hero photography may shift to a more vertical crop on mobile (art direction).
- Inventory vehicle photos may move from 16:9 to 4:3 on mobile.

## Iteration Guide

1. Focus on a single component. Reference its YAML key directly (`{component.model-card}`, `{component.button-primary}`).
2. New components default to `{rounded.none}` (0px). Use `{rounded.full}` only for circular icon buttons.
3. Variants (`-active`, `-disabled`, `-selected`) live as separate entries inside the `components:` block.
4. `{token.refs}` everywhere — never inline hex.
5. Hover state is never documented. Only Default and Active/Pressed states.
6. Display headlines stay BMW Type Next Latin 700; body stays Light 300; the trio is fixed.
7. Keep UI strings in a single language — match the locale of the page.

## Known Gaps

- BMW Type Next Latin is licensed to BMW and not published as a public web font; Inter at weights 700/300 is documented as the substitute.
- Animation and transition timings (configurator color swap, model card hover-reveal) are out of scope here.
- Form validation states beyond `{component.text-input}` focus were not extracted — error/success states would need a dedicated form page.
- The dealer inventory sub-domain shares typography and color with the main corporate site; only UI density rises (filters, tables, prices).
- A cookie consent overlay can occlude part of the hero — the lead hero band content may not be fully captured.
- The M tricolor stripe appears infrequently on this corporate site; full motorsport context lives on the BMW M site.


---

## Brand: `bmw-m`

---
version: alpha
name: BMW-M-design-analysis
description: A motorsport-engineering interface anchored on a near-black canvas with white BMW Type Next Latin display headlines in confident UPPERCASE. The brand carries no decorative voltage — its energy comes from full-bleed automotive photography (cars on tracks, driver-cockpit shots, carbon-fiber detail) and the iconic M tricolor stripe (light blue → dark blue → red) used sparingly as a brand signature on logos, dividers, and motorsport chrome. Type stays light to medium weight to feel European-engineered, never American-bombastic.

colors:
  primary: "#ffffff"
  ink: "#ffffff"
  body: "#bbbbbb"
  body-strong: "#e6e6e6"
  muted: "#7e7e7e"
  hairline: "#3c3c3c"
  hairline-strong: "#262626"
  canvas: "#000000"
  surface-card: "#1a1a1a"
  surface-elevated: "#262626"
  surface-soft: "#0d0d0d"
  on-primary: "#000000"
  on-dark: "#ffffff"
  m-blue-light: "#0066b1"
  m-blue-dark: "#1c69d4"
  m-red: "#e22718"
  bmw-blue: "#1c69d4"
  electric-blue: "#0653b6"
  carbon-gray: "#2b2b2b"
  warning: "#f4b400"
  success: "#0fa336"

typography:
  display-xl:
    fontFamily: "BMWTypeNextLatin, sans-serif"
    fontSize: 80px
    fontWeight: 700
    lineHeight: 1
    letterSpacing: 0
  display-lg:
    fontFamily: "BMWTypeNextLatin, sans-serif"
    fontSize: 56px
    fontWeight: 700
    lineHeight: 1.05
    letterSpacing: 0
  display-md:
    fontFamily: "BMWTypeNextLatin, sans-serif"
    fontSize: 40px
    fontWeight: 700
    lineHeight: 1.1
    letterSpacing: 0
  display-sm:
    fontFamily: "BMWTypeNextLatin, sans-serif"
    fontSize: 32px
    fontWeight: 700
    lineHeight: 1.15
    letterSpacing: 0
  title-lg:
    fontFamily: "BMWTypeNextLatin, sans-serif"
    fontSize: 24px
    fontWeight: 700
    lineHeight: 1.3
    letterSpacing: 0
  title-md:
    fontFamily: "BMWTypeNextLatin, sans-serif"
    fontSize: 20px
    fontWeight: 400
    lineHeight: 1.4
    letterSpacing: 0
  title-sm:
    fontFamily: "BMWTypeNextLatin, sans-serif"
    fontSize: 18px
    fontWeight: 400
    lineHeight: 1.4
    letterSpacing: 0
  label-uppercase:
    fontFamily: "BMWTypeNextLatin, sans-serif"
    fontSize: 14px
    fontWeight: 700
    lineHeight: 1.3
    letterSpacing: 1.5px
  body-md:
    fontFamily: "BMWTypeNextLatin Light, BMWTypeNextLatin, sans-serif"
    fontSize: 16px
    fontWeight: 300
    lineHeight: 1.5
    letterSpacing: 0
  body-sm:
    fontFamily: "BMWTypeNextLatin Light, sans-serif"
    fontSize: 14px
    fontWeight: 300
    lineHeight: 1.5
    letterSpacing: 0
  caption:
    fontFamily: "BMWTypeNextLatin, sans-serif"
    fontSize: 12px
    fontWeight: 400
    lineHeight: 1.4
    letterSpacing: 0.5px
  button:
    fontFamily: "BMWTypeNextLatin, sans-serif"
    fontSize: 14px
    fontWeight: 700
    lineHeight: 1
    letterSpacing: 1.5px
  nav-link:
    fontFamily: "BMWTypeNextLatin, sans-serif"
    fontSize: 14px
    fontWeight: 400
    lineHeight: 1.4
    letterSpacing: 0.5px

rounded:
  none: 0px
  xs: 2px
  sm: 4px
  md: 6px
  full: 9999px

spacing:
  xxs: 4px
  xs: 8px
  sm: 12px
  md: 16px
  lg: 24px
  xl: 40px
  xxl: 64px
  section: 96px

components:
  button-primary:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.on-dark}"
    typography: "{typography.button}"
    rounded: "{rounded.none}"
    padding: 16px 32px
    height: 48px
  button-primary-outline:
    backgroundColor: transparent
    textColor: "{colors.on-dark}"
    typography: "{typography.button}"
    rounded: "{rounded.none}"
    padding: 16px 32px
    height: 48px
  button-on-light:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.on-dark}"
    typography: "{typography.button}"
    rounded: "{rounded.none}"
    padding: 16px 32px
  button-icon:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.on-dark}"
    rounded: "{rounded.full}"
    size: 48px
  text-link:
    backgroundColor: transparent
    textColor: "{colors.on-dark}"
    typography: "{typography.label-uppercase}"
  top-nav:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.on-dark}"
    typography: "{typography.nav-link}"
    height: 64px
  hero-photo-band:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.on-dark}"
    typography: "{typography.display-xl}"
    padding: 96px
  m-stripe-divider:
    backgroundColor: transparent
    textColor: "{colors.on-dark}"
    height: 4px
  feature-photo-card:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.on-dark}"
    typography: "{typography.title-md}"
    rounded: "{rounded.none}"
    padding: 24px
  model-card:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.on-dark}"
    typography: "{typography.title-lg}"
    rounded: "{rounded.none}"
    padding: 24px
  magazine-article-card:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.on-dark}"
    typography: "{typography.title-md}"
    rounded: "{rounded.none}"
    padding: 24px
  spec-cell:
    backgroundColor: "{colors.surface-soft}"
    textColor: "{colors.on-dark}"
    typography: "{typography.body-md}"
    rounded: "{rounded.none}"
    padding: 24px
  cookie-consent-card:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.on-dark}"
    typography: "{typography.body-sm}"
    rounded: "{rounded.none}"
    padding: 24px
  category-tab:
    backgroundColor: transparent
    textColor: "{colors.body}"
    typography: "{typography.label-uppercase}"
    padding: 12px 0
  category-tab-active:
    backgroundColor: transparent
    textColor: "{colors.on-dark}"
    typography: "{typography.label-uppercase}"
    padding: 12px 0
  text-input:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.on-dark}"
    typography: "{typography.body-md}"
    rounded: "{rounded.none}"
    padding: 12px 16px
    height: 48px
  chatbot-launcher:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.on-dark}"
    typography: "{typography.title-md}"
    rounded: "{rounded.none}"
    padding: 24px
  cta-band-photo:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.on-dark}"
    typography: "{typography.display-md}"
    padding: 80px
  motorsport-photo-card:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.on-dark}"
    typography: "{typography.title-md}"
    rounded: "{rounded.none}"
  carousel-arrow:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.on-dark}"
    rounded: "{rounded.full}"
    size: 48px
  footer:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.body}"
    typography: "{typography.body-sm}"
    padding: 64px
---

## Overview

BMW M's marketing surface is a near-pure black canvas (`{colors.canvas}` — #000) holding white BMW Type Next Latin headlines in **confident UPPERCASE**. The system has no decorative voltage of its own; brand energy comes from **full-bleed automotive photography** — cars cornering at speed, carbon-fiber wheel detail, driver cockpit shots, motorsport pit lanes — placed as edge-to-edge content that fills entire bands. UI chrome around the photography stays minimal: thin sans-serif copy, dividers as 1px hairlines (`{colors.hairline}`), all-caps button labels with no fill until hovered.

The **M tricolor stripe** — `{colors.m-blue-light}` (#0066b1) → `{colors.m-blue-dark}` (#1c69d4) → `{colors.m-red}` (#e22718) — appears sparingly as the brand's signature accent, used on the M wordmark, motorsport chrome, vehicle-tech callouts, and model badges. It is never a CTA color and never used as a background fill — the tricolor is exclusively a brand-identity marker.

Type voice runs **BMW Type Next Latin** in two cuts: regular for display + nav labels and Light for body + secondary copy. Display sizes use weight 700 (BMW's signature heavy-but-tight setting), while body type drops to weight 300 (Light). The contrast between heavy display and light body is the system's editorial signature.

**Key Characteristics:**
- Near-pure black canvas (`{colors.canvas}` — #000) with white type. The system inverts almost nothing — there is no light-mode marketing surface.
- Display headlines in UPPERCASE BMW Type Next Latin at weight 700. Sub-heads stay sentence-case at lighter weight.
- M tricolor (`{colors.m-blue-light}` / `{colors.m-blue-dark}` / `{colors.m-red}`) used as 4px brand-stripe dividers, M-wordmark accents, and motorsport chrome — never as buttons or fills.
- Photography fills entire bands edge-to-edge. Cars are always the visual subject; UI chrome backs off to small white labels overlaid on photography.
- Buttons are flat with `{rounded.none}` (0px) corners and uppercase letterspaced labels. The "industrial precision" rectangular silhouette IS the brand.
- Border radius is mostly zero across the system. The few exceptions: `{rounded.full}` on circular icon buttons (carousel arrows, chatbot launcher) and `{rounded.sm}` on a handful of small toggle pills.
- Spacing is generous and grid-aligned: `{spacing.section}` (96px) between major bands; `{spacing.xxl}` (64px) inside hero photo bands; `{spacing.xl}` (40px) inside content cards.

## Colors

### Brand & Accent
- **Primary** (`{colors.primary}` — #ffffff): The system's primary type and CTA color. Used for h1/h2/h3 display, body text on dark, and primary button labels (the buttons themselves are transparent or canvas-colored — the white text + outline IS the button).
- **M Blue Light** (`{colors.m-blue-light}` — #0066b1): The first stop in the M tricolor stripe. Used on M-badge accents and motorsport chrome.
- **M Blue Dark** (`{colors.m-blue-dark}` — #1c69d4): The middle stop. The same hex as `{colors.bmw-blue}` — BMW's heritage corporate blue, repurposed as the middle band of the M stripe.
- **M Red** (`{colors.m-red}` — #e22718): The third stop. The signature M-power red, used in the stripe and on motorsport-pace callouts.
- **Electric Blue** (`{colors.electric-blue}` — #0653b6): A separate electric-vehicle accent used on M xDrive electric model pages. Distinct from the heritage blue — feels colder, more digital.

### Surface
- **Canvas** (`{colors.canvas}` — #000000): The default page floor across every marketing surface. True black.
- **Surface Soft** (`{colors.surface-soft}` — #0d0d0d): A barely-different-from-black used for spec table cells and footer-adjacent strips.
- **Surface Card** (`{colors.surface-card}` — #1a1a1a): Cards, secondary buttons, icon-button backgrounds.
- **Surface Elevated** (`{colors.surface-elevated}` — #262626): One step lighter, used for nested cards inside dark bands.
- **Carbon Gray** (`{colors.carbon-gray}` — #2b2b2b): Carbon-fiber-inspired surface tone used on technical-spec cards.

### Hairlines & Borders
- **Hairline** (`{colors.hairline}` — #3c3c3c): The 1px divider tone on dark surfaces. Used between body sections, between table rows, around card outlines.
- **Hairline Strong** (`{colors.hairline-strong}` — #262626): Same hex as `{colors.surface-elevated}` — borders feel like one-step elevations rather than ink lines.

### Text
- **Ink / On Dark** (`{colors.on-dark}` — #ffffff): All headline and primary text on dark canvas.
- **Body** (`{colors.body}` — #bbbbbb): Default running-text color (slightly cooler than pure white). Used for body paragraphs and secondary metadata.
- **Body Strong** (`{colors.body-strong}` — #e6e6e6): Emphasized body / lead paragraph.
- **Muted** (`{colors.muted}` — #7e7e7e): Footer links, breadcrumbs, captions.

### Semantic
- **Warning** (`{colors.warning}` — #f4b400): Used very sparingly on technical-warning callouts.
- **Success** (`{colors.success}` — #0fa336): Order-confirmation states (rare on marketing surfaces).

## Typography

### Font Family
**BMW Type Next Latin** is BMW's licensed display + body typeface. The system uses two cuts: regular and Light. The fallback stack walks `-apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif`.

The split is a deliberate weight-pair:
- Display (700) for headlines, navigation labels, button text, and category labels — the "stamped" voice
- Light (300) for body paragraphs, descriptive copy, and secondary metadata — the "engineered" voice

The contrast between heavy display and light body is BMW's editorial signature — never blur it by using regular (400) display or medium (500) body.

### Hierarchy

| Token | Size | Weight | Line Height | Letter Spacing | Use |
|---|---|---|---|---|---|
| `{typography.display-xl}` | 80px | 700 | 1.0 | 0 | Hero h1 ("THE ULTIMATE", "MORE BMW M.") |
| `{typography.display-lg}` | 56px | 700 | 1.05 | 0 | Section heads ("MORE FROM BMW M MAGAZINE.") |
| `{typography.display-md}` | 40px | 700 | 1.1 | 0 | Sub-section heads, model names |
| `{typography.display-sm}` | 32px | 700 | 1.15 | 0 | CTA-band heads, category page titles |
| `{typography.title-lg}` | 24px | 700 | 1.3 | 0 | Card titles in 3-up grids |
| `{typography.title-md}` | 20px | 400 | 1.4 | 0 | Card sub-titles, lead paragraphs |
| `{typography.title-sm}` | 18px | 400 | 1.4 | 0 | Spec callouts, intro paragraphs |
| `{typography.label-uppercase}` | 14px | 700 | 1.3 | 1.5px | Category tabs, "VIEW MORE" inline labels |
| `{typography.body-md}` | 16px | 300 (Light) | 1.5 | 0 | Default body — BMW Type Next Latin Light |
| `{typography.body-sm}` | 14px | 300 (Light) | 1.5 | 0 | Footer body, cookie consent, fine print |
| `{typography.caption}` | 12px | 400 | 1.4 | 0.5px | Photo captions, image-credit lines |
| `{typography.button}` | 14px | 700 | 1.0 | 1.5px | All button labels — uppercase, letterspaced |
| `{typography.nav-link}` | 14px | 400 | 1.4 | 0.5px | Top-nav menu items |

### Principles
The system contrasts heavy headlines (700) against very light body (300) at all times — the gap is the editorial signature. Letter-spacing is non-trivial: button labels and category labels carry 1.5px tracking that makes them feel "machined" rather than "typed." Display headlines stay at 0 letter-spacing — BMW Type's natural cap-height handles spacing on large sizes.

UPPERCASE display is the default voice for h1/h2 — sentence case appears on body and intro paragraphs but rarely on headlines. The all-caps treatment is a brand-voice signal, not a stylistic choice.

### Note on Font Substitutes
If BMW Type Next Latin is unavailable, **Inter** (variable) at 700/300 is the closest open-source substitute. Adjust display headline tracking to -0.5px to match BMW Type's tighter spacing at large sizes. **Saira Condensed** is an alternative for headlines if a slightly more compressed feel is desired.

## Layout

### Spacing System
- **Base unit:** 4px.
- **Tokens:** `{spacing.xxs}` 4px · `{spacing.xs}` 8px · `{spacing.sm}` 12px · `{spacing.md}` 16px · `{spacing.lg}` 24px · `{spacing.xl}` 40px · `{spacing.xxl}` 64px · `{spacing.section}` 96px.
- **Section padding (vertical):** `{spacing.section}` (96px) between major editorial bands.
- **Hero photo bands:** `{spacing.xxl}` (64px) internal vertical padding around the hero h1 + sub-headline pair.
- **Card internal padding:** `{spacing.lg}` (24px) for content and model cards; `{spacing.xl}` (40px) for spec-cell tables.
- **Gutters:** `{spacing.lg}` (24px) between cards in 3-up grids; `{spacing.md}` (16px) inside footer columns.

### Grid & Container
- **Max content width:** ~1440px centered on marketing pages — wider than typical SaaS to give photography breathing room.
- **Editorial body:** Single 12-column grid; photo bands bleed full-bleed (no max-width).
- **Card grids:** 3-up at desktop, 2-up at tablet, 1-up at mobile.
- **Footer:** 4-column link list at desktop, 2-up at tablet, 1-up at mobile.

### Whitespace Philosophy
BMW M trusts photography to do the visual work. Whitespace around photography is restrained — the cars fill the frame, and copy sits below or beside them in tightly-aligned columns. Where whitespace appears (between body sections, around CTAs), it's always uniform `{spacing.section}` (96px). The system never adds atmospheric backdrops, gradients, or decoration — empty space stays as empty black canvas.

## Elevation & Depth

| Level | Treatment | Use |
|---|---|---|
| Flat | No shadow, no border | Body sections, top nav, footer, photo bands |
| Soft hairline | 1px `{colors.hairline}` border | Section dividers, card outlines, table rows |
| Card surface | `{colors.surface-card}` background over canvas — no shadow | Feature photo cards, magazine cards, chatbot launcher |
| Photographic depth | Full-bleed photography with edge-to-edge crop | Hero bands, motorsport features — depth via subject matter, not chrome |

The system uses no drop shadows and no layered chrome. Depth comes entirely from photography (subject + lens + lighting) and the contrast between black canvas and slightly-elevated `{colors.surface-card}`.

### Decorative Depth
- **M Stripe Divider** (`{component.m-stripe-divider}`): A 4px-tall horizontal divider carrying the M tricolor (`{colors.m-blue-light}` → `{colors.m-blue-dark}` → `{colors.m-red}`). Used on motorsport chrome, model-detail headers, and brand-identity moments. The stripe is the system's only true "decorative" element — used sparingly to mark significance.
- **Carbon-fiber surfaces**: The technical-spec page uses `{colors.carbon-gray}` (#2b2b2b) cells with subtle texture overlay. This is a single-page treatment, not a system-wide pattern.
- **Photographic depth**: Full-bleed cars are the depth. Lighting in the photography (track lights, sunset rim-light) does the elevation work that drop shadows would do in a SaaS system.

## Shapes

### Border Radius Scale

| Token | Value | Use |
|---|---|---|
| `{rounded.none}` | 0px | All buttons, cards, photo containers, spec cells, inputs — the dominant radius |
| `{rounded.xs}` | 2px | Almost no use — reserved for legal CTAs |
| `{rounded.sm}` | 4px | Small toggle pills on configurator surfaces |
| `{rounded.md}` | 6px | Rare — small dropdown menu items |
| `{rounded.full}` | 9999px / 50% | Circular icon buttons, carousel arrows, chatbot launcher |

The radius hierarchy is "almost always 0, sometimes circular." This binary radius decision is a deliberate brand-language choice — sharp rectangles read as engineered precision; circles read as functional controls. Nothing in between.

### Photography Geometry
Hero photography fills full-width with no rounding. Photo cards inside grids retain `{rounded.none}` corners, edge-to-edge images. Carbon-wheel detail shots and motorsport-pit photos use 16:9 or 21:9 cinema-aspect ratios. Driver portraits in racing-team grids use 4:5 portrait crops, also with sharp corners.

## Components

### Top Navigation

**`top-nav`** — Black nav bar pinned to the top of every page. 64px tall, `{colors.canvas}` background. Carries the BMW M logo at left (M tricolor + BMW roundel + "M" wordmark), primary horizontal menu (Models, Topics, Magazine, Configurator, Fastlane), right-side cluster with language selector, search icon, account icon. Menu items render in `{typography.nav-link}` with sentence-case labels.

### Buttons

**`button-primary`** — The signature primary CTA. Background `{colors.canvas}` (or transparent over photography), text `{colors.on-dark}` (white), 1px white border outline, rounded `{rounded.none}` (0px), padding 16px × 32px, height 48px. Type `{typography.button}` — uppercase 14px / 700 / 1.5px tracking. The rectangular silhouette and uppercase letterspaced label IS the brand button.

**`button-primary-outline`** — Same shape as primary but with transparent background and white outline only. Used over photography where a filled button would clash with the image.

**`button-on-light`** — Used on rare light-surface contexts (configurator, account dialogs). Background `{colors.canvas}`, text `{colors.on-dark}` — black button with white text, inverted from the dark-canvas default.

**`button-icon`** — Circular icon buttons (carousel controls, share, favorite). 48 × 48px, background `{colors.surface-card}`, white icon centered, rounded `{rounded.full}`. The only non-rectangular button shape in the system.

**`carousel-arrow`** — Specific 48 × 48 circular arrow used in photo carousels. Same shape as `{component.button-icon}` with chevron glyph.

**`text-link`** — Inline uppercase letterspaced links ("VIEW ALL MODELS", "READ MORE"). `{typography.label-uppercase}`, white on dark, no underline. The chevron arrow → glyph appears next to most link labels.

### Cards & Containers

**`hero-photo-band`** — Full-width black band with full-bleed automotive photography filling most of the frame. The h1 uses `{typography.display-xl}` (80px / 700) and sits left-aligned over the photo, often with a small subtitle in `{typography.body-md}` below. Vertical padding `{spacing.xxl}` (64px). No card frame — the photo IS the band.

**`feature-photo-card`** — Used in 3-up grids for "MORE FROM BMW M MAGAZINE" and similar editorial sections. Background `{colors.surface-card}`, rounded `{rounded.none}`, internal padding `{spacing.lg}` (24px). Top half of the card is a 16:9 photo (full-bleed within the card); below the photo, a category tag in `{typography.label-uppercase}`, a `{typography.title-lg}` title, and a short body description.

**`model-card`** — Used in the "MORE NEW M MODELS" 3-up grid. Background `{colors.canvas}` (no card surface — just photo on black), rounded `{rounded.none}`. Top: 16:10 hero shot of the model. Below: model name in `{typography.display-md}` (40px / 700), short specs line in `{typography.body-sm}`, a `{component.text-link}` ("EXPLORE THIS MODEL").

**`magazine-article-card`** — A more text-forward card variant used on the magazine overview page. Background `{colors.canvas}` with hairline border, rounded `{rounded.none}`. Carries a small thumbnail at top, a category label in `{typography.label-uppercase}`, headline in `{typography.title-lg}`, and a body excerpt.

**`spec-cell`** — Technical specification cells used on model-detail pages (engine specs, weight, top speed, 0-100 time). Background `{colors.surface-soft}` (#0d0d0d), rounded `{rounded.none}`, padding `{spacing.lg}` (24px). Each cell holds a value in `{typography.display-sm}` (32px / 700) at top and a label in `{typography.label-uppercase}` below.

**`motorsport-photo-card`** — Edge-to-edge photo cards used in the racing-team / motorsport sections. No card surface — just a full-bleed photograph with a small overlay caption in white text at the bottom-left. The photography IS the brand here.

**`chatbot-launcher`** — A right-side card-style entry point ("BMW M CHATBOT") on the homepage. Background `{colors.surface-card}`, rounded `{rounded.none}`, padding `{spacing.lg}` (24px). Carries an h3 title, a short prompt, and a `{component.button-primary}` to launch.

**`category-tab`** + **`category-tab-active`** — The category selector tabs used on the magazine and topics pages (e.g., "ALL · MAGAZINE · MODELS · LIFESTYLE · MOTORSPORT"). Tabs render as text-only labels in `{typography.label-uppercase}`. Active state changes text color from `{colors.body}` to `{colors.on-dark}` and adds a 2px white underline below the label. No background fill, no rounded corners.

### Inputs & Forms

**`text-input`** — Standard text input on dark surfaces. Background `{colors.surface-card}`, text `{colors.on-dark}`, type `{typography.body-md}`, rounded `{rounded.none}` (0px), padding 12px × 16px, height 48px. 1px hairline border. Focus state thickens the border to white.

**`cookie-consent-card`** — A right-side cookie-banner card visible on the homepage. Background `{colors.canvas}` with 1px hairline, rounded `{rounded.none}`, padding `{spacing.lg}` (24px). Body text in `{typography.body-sm}` (14px / 300) — Light weight even for legal text. Two buttons stacked at bottom: primary outline + text-link.

### Signature Components

**`m-stripe-divider`** — The 4px horizontal stripe carrying the M tricolor (`{colors.m-blue-light}` → `{colors.m-blue-dark}` → `{colors.m-red}`). Used as a divider on motorsport chrome, between brand-identity sections, and as a hover-state indicator on category tabs. The most distinctive non-typographic element in the system.

**`cta-band-photo`** — A pre-footer "Drive an M" CTA band carrying full-bleed photography of a car cornering on a track, with a centered headline in `{typography.display-md}` and a `{component.button-primary-outline}` below. Vertical padding 80px. The CTA inherits the editorial gravity of the rest of the page through full-bleed photography rather than chrome.

### Footer

**`footer`** — Black footer that closes every page. Background `{colors.canvas}`, text `{colors.body}`. 4-column link list at desktop covering BMW M Models / BMW M Lifestyle / Owners / Company. Vertical padding 64px. Bottom row carries the BMW corporate disclaimer in `{typography.caption}` and language selector. The footer never inverts — it stays black even when the body might transition.

## Do's and Don'ts

### Do
- Anchor every page with full-bleed automotive photography. The cars are the brand voltage; chrome backs off.
- Use UPPERCASE display headlines in `{typography.display-xl}` or `{typography.display-lg}`. Sentence-case display reads as off-brand.
- Pair heavy display (700) with light body (300). The weight contrast is the editorial signature.
- Reserve the M tricolor stripe for brand-identity moments — wordmark accents, motorsport chrome, model badges. Never as a button fill or surface.
- Use `{rounded.none}` (0px) by default. Reserve `{rounded.full}` for circular icon buttons only.
- Letter-space all-caps labels at 1.5px. The "machined" feel is non-negotiable.
- Use `{spacing.section}` (96px) between major editorial bands for grid-aligned vertical rhythm.

### Don't
- Don't introduce a brand color outside the M tricolor (`{colors.m-blue-light}` / `{colors.m-blue-dark}` / `{colors.m-red}`) and the heritage `{colors.bmw-blue}`.
- Don't bold body type. Body stays at 300 (Light) — bumping to 400 or 500 makes the page feel marketing-bombastic instead of European-engineered.
- Don't use rounded buttons. The rectangular silhouette IS the brand. Rounded corners read as consumer-tech, not motorsport.
- Don't put gradient backdrops behind hero type. The hero IS the photography — the page floor stays pure black, and the photo provides the depth.
- Don't repeat the same surface mode in two consecutive bands. Rhythm: photo band → spec table → photo band → magazine grid → photo band. Two text-only bands in a row read as a corporate site.
- Don't use the M stripe as a button fill. The stripe is a divider / accent — never an action surface.
- Don't bold uppercase tracking under 1.5px on button labels — the spacing is what makes them feel "machined."

## Responsive Behavior

### Breakpoints

| Name | Width | Key Changes |
|---|---|---|
| Mobile | < 768px | Hamburger nav; hero h1 scales 80→48px; demo grid 1-up; photo cards stack full-width; footer 4 cols → 1 |
| Tablet | 768–1024px | Top nav stays horizontal but tightens; 2-up card grids; spec tables 2-up |
| Desktop | 1024–1440px | Full top-nav; 3-up card grids; spec tables 4-up |
| Wide | > 1440px | Same as desktop with more breathing room; max content 1440px |

### Touch Targets
- `{component.button-primary}` renders at 48 × 48px minimum — meets WCAG AAA.
- `{component.button-icon}` and `{component.carousel-arrow}` are exactly 48 × 48 — comfortably above the 44 × 44 minimum.
- `{component.text-input}` height is 48px.
- Category tabs render as text-only labels with 12px vertical padding; effective tap area meets 44px with surrounding spacing.

### Collapsing Strategy
- Top nav collapses to a hamburger sheet at < 768px; the menu opens as a full-screen black overlay with the M tricolor stripe at the top.
- Photography stays full-bleed at every breakpoint — never collapses to a margin'd container.
- Card grids reduce columns rather than scaling cards down; photography retains its native aspect ratio.
- Spec tables collapse from 4-up to 2-up to 1-up; spec values stay at `{typography.display-sm}` regardless of column count.
- The M-stripe divider stays at 4px height across all breakpoints.

### Image Behavior
- Hero photography crops responsively — wider crops at desktop, vertical crops on mobile.
- Lifestyle and motorsport photos retain native aspect ratios; the system never letterboxes or pillarboxes.
- The M wordmark + tricolor logo scales proportionally with viewport width.

## Iteration Guide

1. Focus on ONE component at a time. Reference its YAML key (`{component.hero-photo-band}`, `{component.spec-cell}`).
2. New components default to `{rounded.none}` (0px). Only use `{rounded.full}` if it's a circular icon button.
3. Variants (`-active`, `-disabled`) live as separate entries in `components:`.
4. Use `{token.refs}` everywhere — never inline hex.
5. Never document hover states. Default and Active/Pressed only.
6. Display headlines stay UPPERCASE 700; body stays sentence-case 300. Never blur the contrast.
7. The M tricolor is brand-identity-only — never extend it to system tokens for "primary action."
8. When in doubt about emphasis: bigger photography before bigger type.

## Known Gaps

- The dembrandt frequency analyzer captured the white text (count 955) as the highest-frequency token. The black canvas was inferred from screenshot — dembrandt's body-background sampling didn't surface it as a top palette entry, but the page is unambiguously black-on-white-text.
- The exact M tricolor stops are documented from public BMW brand guidelines; the screenshots show the stripe as a small element but pixel-sampling at this resolution doesn't reliably distinguish #0066b1 from #1c69d4. Treat the documented stops as canonical based on BMW Design Works' published brand spec.
- BMW Type Next Latin weight axis values beyond Light (300) and regular (700) are not documented — only the static weights observed in screenshots.
- Animation and transition timings (photo carousel transitions, hover-reveal effects, configurator interactions) are not in scope.
- Form validation states beyond `{component.text-input}` defaults are not extracted — error / success input variants would need a configurator or order flow to confirm.
- The configurator surface (vehicle build pages with color / wheel / interior pickers) was not in the analyzed URL set; its swatch grid, comparison panels, and price-summary card are not documented here.
- The cookie consent overlay obscured part of the homepage hero in the captured screenshot; secondary hero treatments (different car models cycling through the hero band) may carry variations not captured.


---

## Brand: `bugatti`

---
version: alpha
name: Bugatti-design-analysis
description: An austere luxury-automotive interface that uses near-pure black canvas, white uppercase letterspaced display, and full-bleed automotive photography as the only voltage. The system runs three custom Bugatti typefaces — Bugatti Display, Bugatti Text Regular, and Bugatti Monospace — and combines them at modest weights with wide tracking to feel European-engineered, hyper-minimal, and quietly expensive. There is no accent color, no decorative element, no chrome — only photography, typography, and the brand wordmark.

colors:
  primary: "#ffffff"
  ink: "#ffffff"
  body: "#cccccc"
  body-strong: "#e6e6e6"
  muted: "#999999"
  muted-soft: "#666666"
  hairline: "#262626"
  hairline-strong: "#3a3a3a"
  canvas: "#000000"
  surface-soft: "#0d0d0d"
  surface-card: "#141414"
  surface-elevated: "#1f1f1f"
  on-primary: "#000000"
  on-dark: "#ffffff"
  on-photo: "#ffffff"
  link: "#c3d9f3"
  warning: "#d4a017"
  success: "#5fa657"

typography:
  display-xl:
    fontFamily: "Bugatti Display, sans-serif"
    fontSize: 64px
    fontWeight: 400
    lineHeight: 1.1
    letterSpacing: 4px
  display-lg:
    fontFamily: "Bugatti Display, sans-serif"
    fontSize: 48px
    fontWeight: 400
    lineHeight: 1.15
    letterSpacing: 3px
  display-md:
    fontFamily: "Bugatti Display, sans-serif"
    fontSize: 32px
    fontWeight: 400
    lineHeight: 1.2
    letterSpacing: 2px
  display-sm:
    fontFamily: "Bugatti Display, sans-serif"
    fontSize: 24px
    fontWeight: 400
    lineHeight: 1.3
    letterSpacing: 1.5px
  wordmark:
    fontFamily: "Bugatti Display, serif"
    fontSize: 14px
    fontWeight: 400
    lineHeight: 1
    letterSpacing: 6px
  title-md:
    fontFamily: "Bugatti Display, sans-serif"
    fontSize: 20px
    fontWeight: 400
    lineHeight: 1.3
    letterSpacing: 1px
  title-sm:
    fontFamily: "Bugatti Display, sans-serif"
    fontSize: 16px
    fontWeight: 400
    lineHeight: 1.3
    letterSpacing: 1.5px
  caption-uppercase:
    fontFamily: "Bugatti Monospace, ui-monospace, monospace"
    fontSize: 11px
    fontWeight: 400
    lineHeight: 1.4
    letterSpacing: 2px
  body-md:
    fontFamily: "Bugatti Text Regular, serif"
    fontSize: 16px
    fontWeight: 400
    lineHeight: 1.5
    letterSpacing: 0
  body-sm:
    fontFamily: "Bugatti Text Regular, serif"
    fontSize: 14px
    fontWeight: 400
    lineHeight: 1.5
    letterSpacing: 0
  button:
    fontFamily: "Bugatti Monospace, ui-monospace, monospace"
    fontSize: 14px
    fontWeight: 400
    lineHeight: 1
    letterSpacing: 2.5px
  nav-link:
    fontFamily: "Bugatti Monospace, ui-monospace, monospace"
    fontSize: 12px
    fontWeight: 400
    lineHeight: 1.4
    letterSpacing: 2px

rounded:
  none: 0px
  pill: 9999px
  full: 9999px

spacing:
  xxs: 4px
  xs: 8px
  sm: 12px
  md: 16px
  lg: 24px
  xl: 40px
  xxl: 64px
  section: 120px

components:
  button-primary:
    backgroundColor: transparent
    textColor: "{colors.on-dark}"
    typography: "{typography.button}"
    rounded: "{rounded.pill}"
    padding: 14px 32px
    height: 44px
  button-icon:
    backgroundColor: transparent
    textColor: "{colors.on-dark}"
    rounded: "{rounded.full}"
    size: 40px
  text-link:
    backgroundColor: transparent
    textColor: "{colors.link}"
    typography: "{typography.button}"
  top-nav:
    backgroundColor: transparent
    textColor: "{colors.on-dark}"
    typography: "{typography.nav-link}"
    height: 56px
  wordmark-display:
    backgroundColor: transparent
    textColor: "{colors.on-dark}"
    typography: "{typography.wordmark}"
  hero-photo-band:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.on-dark}"
    typography: "{typography.display-xl}"
    padding: 96px
  caption-overlay:
    backgroundColor: transparent
    textColor: "{colors.on-dark}"
    typography: "{typography.caption-uppercase}"
  career-callout-card:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.on-dark}"
    typography: "{typography.body-sm}"
    rounded: "{rounded.none}"
    padding: 16px
    width: 320px
  model-photo-card:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.on-dark}"
    typography: "{typography.display-md}"
    rounded: "{rounded.none}"
  newsroom-article-card:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.on-dark}"
    typography: "{typography.title-md}"
    rounded: "{rounded.none}"
    padding: 24px
  career-listing-row:
    backgroundColor: transparent
    textColor: "{colors.on-dark}"
    typography: "{typography.title-md}"
    padding: 24px 0
  text-input:
    backgroundColor: transparent
    textColor: "{colors.on-dark}"
    typography: "{typography.body-md}"
    rounded: "{rounded.none}"
    padding: 12px 0
    height: 44px
  spec-cell:
    backgroundColor: transparent
    textColor: "{colors.on-dark}"
    typography: "{typography.title-md}"
    padding: 24px 0
  date-pill:
    backgroundColor: transparent
    textColor: "{colors.muted}"
    typography: "{typography.caption-uppercase}"
  category-tag:
    backgroundColor: transparent
    textColor: "{colors.muted}"
    typography: "{typography.caption-uppercase}"
  cta-band-photo:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.on-dark}"
    typography: "{typography.display-md}"
    padding: 80px
  footer:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.muted}"
    typography: "{typography.body-sm}"
    padding: 64px
---

## Overview

Bugatti's marketing surface is the most austere interface in luxury automotive: a near-pure black canvas (`{colors.canvas}` — #000000) holding white uppercase **letterspaced** display type and full-bleed automotive photography. The system has no accent color, no surface card decoration, no shadows, no gradients, no chrome — only **photography, typography, and the brand wordmark**. Every other luxury auto site in this category (BMW M, Aston Martin, Lamborghini) uses some form of accent color or signature element; Bugatti uses nothing. The empty space, the photograph, and the precisely-tracked Bugatti Display headline ARE the brand.

The system runs **three custom Bugatti typefaces**: **Bugatti Display** (display headlines, the "BUGATTI" wordmark, all caps with wide tracking), **Bugatti Text Regular** (body paragraphs, a serif text face), and **Bugatti Monospace** (button labels, navigation, captions, dates — anywhere precision and machined feel matters). The split is deliberate and unbreakable: never use Bugatti Text in a button, never use Bugatti Monospace in a paragraph.

Display sizes use weight 400 (regular) — never bold. Visual emphasis comes from **size and tracking**, not weight. Letter-spacing on the wordmark is 6px; on display headlines 2-4px; on uppercase labels 2-2.5px. Tight tracking is a brand violation. The wide spacing creates the "engineered precision" feel that no other luxury maker matches.

**Key Characteristics:**
- Pure black canvas (`{colors.canvas}` — #000000) with white type. The system does not have a light mode.
- Three custom Bugatti typefaces: **Display** (uppercase headlines + wordmark), **Text Regular** (body serif), **Monospace** (buttons, captions, nav).
- All display headlines are UPPERCASE with wide letter-spacing (2-4px). Body copy stays sentence-case at standard tracking.
- No accent color. The only non-monochrome color anywhere on the site is `{colors.link}` (#c3d9f3) — a desaturated ice-blue used on inline anchor links, and even that appears rarely.
- Buttons are pill-shaped (`{rounded.pill}`) with **transparent background** and a 1px white outline. Bugatti is the only luxury-auto brand whose primary CTA is fully transparent.
- Photography is the only depth element. No drop shadows. No gradients. No card surfaces. Surface cards are `{colors.surface-card}` (#141414) at most — a barely-different-from-black tone.
- Section rhythm is generous — `{spacing.section}` (120px) between major bands, longer than most marketing sites because Bugatti's pages are mostly photography with minimal text density.

## Colors

### Brand & Accent
- **Primary** (`{colors.primary}` — #ffffff): The single brand color. White type and white CTA outlines on the black canvas.
- **Link** (`{colors.link}` — #c3d9f3): The only non-monochrome color in the system — a desaturated ice-blue used on inline anchor links and rarely on focus states. Bugatti's brand discipline is so tight that this single token is essentially the entire chromatic vocabulary outside black-and-white.

### Surface
- **Canvas** (`{colors.canvas}` — #000000): The default page floor across every surface. Pure black.
- **Surface Soft** (`{colors.surface-soft}` — #0d0d0d): A barely-different-from-black tone used for spec table rows and dense data sections.
- **Surface Card** (`{colors.surface-card}` — #141414): Cards (career callout, newsroom article container, occasional content cards). Even card surfaces stay nearly-black — no contrast jump.
- **Surface Elevated** (`{colors.surface-elevated}` — #1f1f1f): One step further from black, used for nested cards on rare dense pages.
- **Hairline** (`{colors.hairline}` — #262626): The 1px divider tone. Visible but quiet. Used on table rows, between body sections, around card outlines.
- **Hairline Strong** (`{colors.hairline-strong}` — #3a3a3a): A heavier divider used on the underside of input fields (input fields have no border — only an underline hairline).

### Text
- **Ink / On Dark** (`{colors.on-dark}` — #ffffff): All headline and primary text on dark canvas.
- **Body** (`{colors.body}` — #cccccc): Default running-text color (slightly cooler than pure white). Used in body paragraphs.
- **Body Strong** (`{colors.body-strong}` — #e6e6e6): Emphasized body / lead paragraph.
- **Muted** (`{colors.muted}` — #999999): Footer links, dates, captions, secondary metadata. Dembrandt's frequency analysis confirms this as palette-2 (count 6, medium confidence).
- **Muted Soft** (`{colors.muted-soft}` — #666666): A second-tier muted for very-secondary text (legal disclaimer, copyright line).

### Semantic
- **Warning** (`{colors.warning}` — #d4a017): Reserved for technical-warning callouts (specifications, recall notices). Almost never appears on marketing surfaces.
- **Success** (`{colors.success}` — #5fa657): Order confirmation states (rare on marketing pages).

## Typography

### Font Family
The system runs **three custom Bugatti typefaces** as a rigid trinity:
1. **Bugatti Display** — All display headlines (h1, h2, h3), the "BUGATTI" wordmark, model name plates. Uppercase, wide-tracked. The default for any visual emphasis.
2. **Bugatti Text Regular** — A serif text face used exclusively for running body copy, lead paragraphs, model descriptions. Standard sentence-case, no letter-spacing.
3. **Bugatti Monospace** — Button labels, navigation, captions, dates, monospace-precision contexts. Always uppercase with 2-2.5px tracking.

The split is functional and absolute. Bugatti Display in a button breaks the "machined precision" voice; Bugatti Monospace in a paragraph breaks the "engineered elegance" voice; Bugatti Text in a button is unthinkable.

The fallback stack walks `-apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif` for Bugatti Display, `Garamond, "Times New Roman", serif` for Bugatti Text Regular, and `ui-monospace, "SF Mono", "Cascadia Mono", monospace` for Bugatti Monospace.

### Hierarchy

| Token | Size | Weight | Line Height | Letter Spacing | Use |
|---|---|---|---|---|---|
| `{typography.display-xl}` | 64px | 400 | 1.1 | 4px | Hero h1 ("THE BUGATTI F.K.P. HOMMAGE", "TOURBILLON") — Bugatti Display, uppercase, wide-tracked |
| `{typography.display-lg}` | 48px | 400 | 1.15 | 3px | Section heads — Bugatti Display, uppercase |
| `{typography.display-md}` | 32px | 400 | 1.2 | 2px | Sub-section heads, model names — Bugatti Display |
| `{typography.display-sm}` | 24px | 400 | 1.3 | 1.5px | Card titles — Bugatti Display |
| `{typography.wordmark}` | 14px | 400 | 1.0 | 6px | The "BUGATTI" brand wordmark in the top nav — Bugatti Display, the widest tracking in the system |
| `{typography.title-md}` | 20px | 400 | 1.3 | 1px | Career listing titles, intro paragraphs — Bugatti Display |
| `{typography.title-sm}` | 16px | 400 | 1.3 | 1.5px | Mid-tier headlines, callout cards |
| `{typography.caption-uppercase}` | 11px | 400 | 1.4 | 2px | Photo captions, metadata, "EXPLORE OUR OPPORTUNITIES" — Bugatti Monospace, uppercase |
| `{typography.body-md}` | 16px | 400 | 1.5 | 0 | Default body — Bugatti Text Regular (a serif face), sentence case, no tracking |
| `{typography.body-sm}` | 14px | 400 | 1.5 | 0 | Footer body, fine-print legal — Bugatti Text Regular |
| `{typography.button}` | 14px | 400 | 1.0 | 2.5px | All button labels — Bugatti Monospace, uppercase, 2.5px tracking |
| `{typography.nav-link}` | 12px | 400 | 1.4 | 2px | Top-nav menu items ("MENU", "STORE") — Bugatti Monospace |

### Principles
The system NEVER uses bold weight. Every Bugatti typeface is set at weight 400 (regular). Visual emphasis comes from:
1. **Size** — 64px hero vs 16px body is a 4× hierarchy
2. **Letter-spacing** — 6px wordmark vs 0px body
3. **Case** — Uppercase display vs sentence-case body
4. **Family contrast** — Display vs Text Regular vs Monospace

Going to weight 700 anywhere would break the "modest engineering" feel and make Bugatti read like a generic luxury template.

The serif Bugatti Text Regular sets the brand apart from the all-sans luxury crowd (BMW, Aston Martin, Lamborghini all use sans-serif body type). Bugatti's serif body voice signals literary, considered, slow-reading prose — which is the brand's editorial philosophy.

### Note on Font Substitutes
If Bugatti Display, Bugatti Text Regular, and Bugatti Monospace are unavailable, the closest open-source substitutes are:
- **Bugatti Display** → **Saira Condensed** (variable, weight 400) at +0.05em letter-spacing
- **Bugatti Text Regular** → **Cormorant Garamond** (regular) or **EB Garamond**
- **Bugatti Monospace** → **JetBrains Mono** or **IBM Plex Mono** (regular weight)

The substitution preserves the three-family split, which is more important than exact typeface match.

## Layout

### Spacing System
- **Base unit:** 4px.
- **Tokens:** `{spacing.xxs}` 4px · `{spacing.xs}` 8px · `{spacing.sm}` 12px · `{spacing.md}` 16px · `{spacing.lg}` 24px · `{spacing.xl}` 40px · `{spacing.xxl}` 64px · `{spacing.section}` 120px.
- **Section padding:** `{spacing.section}` (120px) — longer than most marketing sites because Bugatti's bands are mostly photography with minimal text. The empty space frames the cars.
- **Card internal padding:** `{spacing.lg}` (24px) for newsroom and content cards; `{spacing.md}` (16px) for the career callout card; `{spacing.xxl}` (64px) inside hero photo bands.
- **Gutters:** `{spacing.xl}` (40px) between cards in 2-up grids — wider than typical because Bugatti's grids are sparse.

### Grid & Container
- **Max content width:** ~1280px centered. Hero photo bands bleed full-width with no max.
- **Editorial body:** Single 12-column grid; photo bands are full-bleed.
- **Newsroom layout:** 2-up article grid at desktop, 1-up at tablet+mobile.
- **Career listings:** Single column with 80px row spacing.

### Whitespace Philosophy
Bugatti uses whitespace more aggressively than any luxury-auto competitor. The homepage hero is mostly photography + huge whitespace + a single sentence + a single button. The empty black space below the photograph is intentional — it lets the car breathe. Compressing the whitespace to "fit more content" breaks the brand's fundamental contract: that less is more.

## Elevation & Depth

| Level | Treatment | Use |
|---|---|---|
| Flat | No shadow, no border | Body, top nav, footer, photo bands |
| Soft hairline | 1px `{colors.hairline}` border | Section dividers, table rows |
| Card surface | `{colors.surface-card}` background — no shadow | Career callout, newsroom article container |
| Photographic depth | Full-bleed photography with edge-to-edge crop | Hero bands, model showcases — depth via subject + lens, not chrome |

The system uses no shadows, no glassmorphism, no gradients. Depth comes entirely from photography (lighting, lens, subject framing) and from the contrast between black canvas and minimally-elevated `{colors.surface-card}`.

### Decorative Depth
- None. Bugatti is the only luxury-auto brand without a single decorative element. There is no stripe, no badge, no heritage emblem on the marketing site outside the wordmark itself.

## Shapes

### Border Radius Scale

| Token | Value | Use |
|---|---|---|
| `{rounded.none}` | 0px | All cards, photo containers, inputs, spec cells — the dominant radius |
| `{rounded.pill}` | 9999px | All buttons (the only rounded element in the system) |
| `{rounded.full}` | 9999px / 50% | Circular icon buttons, avatar surfaces |

The radius hierarchy is binary: rectangular for everything except buttons, which are pills. No 4px, no 8px, no 12px in between — those would feel "designed" rather than "engineered."

### Photography Geometry
Hero photography fills full-width with no rounding. Photo cards inside grids retain `{rounded.none}` (0px) corners, edge-to-edge images. Model detail shots use 16:9 or wider cinema-aspect ratios. Newsroom thumbnails use 16:9 with 0px corners. There are no avatars or rounded photo crops anywhere on the marketing site.

## Components

### Top Navigation

**`top-nav`** — A 56px-tall transparent nav bar overlaid on the hero photo at the top of every page. No fill, no border. Carries "MENU" at left, the centered **wordmark-display** ("BUGATTI" in 14px Bugatti Display with 6px tracking), and "STORE" at right with a small bag icon. All labels in `{typography.nav-link}` (Bugatti Monospace, 12px, 2px tracking, uppercase).

**`wordmark-display`** — The "BUGATTI" wordmark itself. Bugatti Display at 14px, weight 400, 6px letter-spacing. The widest tracking in the system. Centered in the nav bar at every breakpoint.

### Buttons

**`button-primary`** — The signature primary CTA. Background **transparent**, text `{colors.on-dark}` (white), 1px white outline, rounded `{rounded.pill}` (9999px), padding 14px × 32px, height 44px. Type `{typography.button}` — Bugatti Monospace, uppercase, 14px, 2.5px tracking. The transparent fill is unique to Bugatti — every other luxury-auto brand uses a filled or outlined-with-text-shift button. Bugatti's transparent pill IS the button.

**`button-icon`** — Circular icon buttons (carousel arrows, share, language switcher). 40 × 40px, transparent background, white outline 1px, rounded `{rounded.full}`. Same outline-only treatment as the primary button.

**`text-link`** — Inline body links in `{colors.link}` (#c3d9f3, the only non-monochrome color in the system). Underlined by default. Type inherits `{typography.body-md}` (Bugatti Text Regular, serif).

### Cards & Containers

**`hero-photo-band`** — Full-width black band with full-bleed automotive photography. The h1 in `{typography.display-xl}` sits center-aligned over the photo near the top, often paired with a small Bugatti Monospace caption (`{typography.caption-uppercase}`) below the headline and a single `{component.button-primary}` further down. Vertical padding 96px-200px depending on photo height.

**`career-callout-card`** — A small right-aligned card that floats over the hero photo on the homepage with a recruiting prompt ("Are you ready for a new adventure?"). Background `{colors.surface-card}`, rounded `{rounded.none}` (0px), padding `{spacing.md}` (16px), width 320px. Carries a small thumbnail at top, body line, and a `{typography.caption-uppercase}` link ("EXPLORE OUR OPPORTUNITIES").

**`model-photo-card`** — Used in model showcases (Tourbillon page, model lineup grid). Background `{colors.canvas}` (no card surface — just photo on black), rounded `{rounded.none}`. Top: 16:9 or 21:9 hero shot of the model. Below: model name in `{typography.display-md}` (32px Bugatti Display, 2px tracking), short specs line in `{typography.caption-uppercase}` (11px Bugatti Monospace), a `{component.text-link}` ("DISCOVER").

**`newsroom-article-card`** — Used on the newsroom page (newsroom.bugatti.com). Background `{colors.canvas}` with hairline border, rounded `{rounded.none}`, padding `{spacing.lg}` (24px). Carries a 16:9 thumbnail, a `{component.date-pill}` ("12. NOVEMBER 2025"), a `{typography.title-md}` headline, and a body excerpt in `{typography.body-md}` (Bugatti Text Regular serif).

**`career-listing-row`** — Each row of the careers page job listing. Transparent background, padding 24px vertical, hairline divider between rows. Job title in `{typography.title-md}` (Bugatti Display 20px) at left; location + department in `{typography.caption-uppercase}` at right; chevron arrow (→) at far right.

**`spec-cell`** — Vehicle technical-spec display on model-detail pages (Tourbillon engine specs). Transparent background with hairline dividers between cells (not between cells inside a card). Each spec shows a value in `{typography.title-md}` at top and a label in `{typography.caption-uppercase}` below. Padding 24px vertical.

### Inputs & Forms

**`text-input`** — Standard text input on dark canvas. Background **transparent**, text `{colors.on-dark}`, 1px hairline-strong bottom border only (no top, left, right border), padding 12px × 0px, height 44px. Type `{typography.body-md}` (Bugatti Text Regular). Placeholder in `{colors.muted}`. Focus thickens the bottom border to white.

### Tags & Captions

**`caption-overlay`** — Photo-overlay caption (e.g., "HONORING THE OEYRON AND ITS VISIONARY CREATOR"). Centered or left-aligned over photography in `{typography.caption-uppercase}` (Bugatti Monospace, 11px, 2px tracking, white).

**`category-tag`** + **`date-pill`** — Both render as transparent inline labels in `{typography.caption-uppercase}`, color `{colors.muted}`. No background fill, no border. The "tag" is the type itself.

### CTA / Footer

**`cta-band-photo`** — A pre-footer "Discover Bugatti" band with full-bleed photography of a Bugatti car at speed and a centered headline in `{typography.display-md}` + a `{component.button-primary}` below. Vertical padding 80px. Inherits the editorial gravity of the hero through full-bleed photography.

**`footer`** — Black footer that closes every page. Background `{colors.canvas}`, text `{colors.muted}`. 4-column link list at desktop covering Bugatti / Models / Heritage / Connect. Vertical padding 64px. Bottom row carries the copyright line in `{typography.body-sm}` (Bugatti Text Regular). The wordmark sits center-aligned at the very bottom. The footer never inverts.

## Do's and Don'ts

### Do
- Anchor every page with full-bleed automotive photography. The cars are the brand voltage; chrome backs off entirely.
- Keep all display headlines in UPPERCASE Bugatti Display with 2-4px letter-spacing. The wordmark gets 6px.
- Use Bugatti Display for headlines, Bugatti Text Regular (serif!) for body, Bugatti Monospace for buttons + captions + nav. The trinity is unbreakable.
- Keep `{component.button-primary}` transparent with a 1px white outline. The transparent pill IS the brand button.
- Use weight 400 everywhere. Bold breaks the brand voice — the system has no bold weight role.
- Use `{spacing.section}` (120px) between major editorial bands. The whitespace is part of the brand.
- Reserve `{colors.link}` (#c3d9f3) for inline anchor links only. It's the system's only non-monochrome color.

### Don't
- Don't introduce any accent color outside `{colors.link}`. Bugatti's brand discipline is total monochrome + photography. Adding a brand-blue or brand-red breaks the contract.
- Don't bold any type. The system has no bold weight — every typeface stays at 400.
- Don't fill primary buttons. Transparent + outline only. A solid white button reads as off-brand.
- Don't compress whitespace between sections. The 120px rhythm is part of the editorial pacing.
- Don't use rounded corners outside buttons. Cards, photos, inputs all stay at 0px. Rounded cards read as consumer-tech, not luxury-engineered.
- Don't tighten letter-spacing on display headlines. 2-4px tracking on Bugatti Display is non-negotiable.
- Don't use Bugatti Display in a button (use Bugatti Monospace) or Bugatti Monospace in a paragraph (use Bugatti Text Regular). The trinity split is the brand voice.

## Responsive Behavior

### Breakpoints

| Name | Width | Key Changes |
|---|---|---|
| Mobile | < 768px | Hamburger nav; hero h1 64→32px; career callout card hides; photo bands stay full-bleed; footer 4 cols → 1 |
| Tablet | 768–1024px | Top nav stays minimal (MENU + wordmark + STORE); 2-up newsroom grid; career rows full-width |
| Desktop | 1024–1440px | Full minimal top-nav; 2-up newsroom grid; spec tables 4-up |
| Wide | > 1440px | Same as desktop with more breathing room; max content 1280px |

### Touch Targets
- `{component.button-primary}` renders at minimum 44 × 44px (matches WCAG AAA).
- `{component.button-icon}` is exactly 40 × 40px.
- `{component.text-input}` height is 44px.
- Career listing rows have 24px vertical padding; effective tap area meets 44px+ with surrounding spacing.

### Collapsing Strategy
- Top nav stays minimal at all breakpoints (MENU label + wordmark + STORE label). On mobile the labels hide behind a hamburger but the wordmark stays centered.
- Hero photography stays full-bleed at every breakpoint. Photo crops adjust — wider crops at desktop, vertical crops on mobile.
- The career callout card on the homepage hides at < 768px (it's a desktop-only floating element).
- 2-up newsroom grid collapses to 1-up at < 768px.
- Spec cells reflow from 4-up to 2-up to 1-up; values stay at the same display size regardless of column count.

### Image Behavior
- Hero photography crops responsively — wider crops at desktop, vertical crops on mobile. Bugatti cars are always shown in motion or at-angle (never flat profiles).
- Newsroom thumbnails retain 16:9 ratio and 0px corners.

## Iteration Guide

1. Focus on ONE component at a time. Reference its YAML key (`{component.hero-photo-band}`, `{component.career-callout-card}`).
2. New components default to `{rounded.none}` (0px). Only `{component.button-primary}` and `{component.button-icon}` use pill / full radius.
3. Variants live as separate entries in `components:`.
4. Use `{token.refs}` everywhere — never inline hex.
5. Never document hover. Default and Active/Pressed states only.
6. Display headlines stay UPPERCASE Bugatti Display 400 with 2-4px tracking. Body stays sentence-case Bugatti Text Regular (serif). Button labels stay Bugatti Monospace 2.5px tracking. The trinity does not blur.
7. When in doubt about emphasis: bigger photography before bigger type.

## Known Gaps

- The dembrandt frequency analyzer captured only 3 colors at root level (`#000000`, `#999999`, `#c3d9f3`). The white text (#ffffff) and dark surface tones (`#0d0d0d`, `#141414`, `#1f1f1f`) were inferred from screenshot — Bugatti's pages are so monochrome that the frequency-based analyzer didn't surface body text or surface tones as distinct palette entries.
- The three Bugatti typefaces (Display, Text Regular, Monospace) are licensed to Bugatti and not available as web fonts publicly. Substitutes are documented in the typography section.
- Animation and transition timings (photo carousel transitions, hover-reveal of menu, configurator animations) are not in scope.
- Form validation states beyond the underline-only `{component.text-input}` are not extracted — error / success states are inferred from general standards, not from the analyzed surfaces.
- The configurator surface (vehicle build pages with custom paint / interior pickers) was not in the analyzed URL set; its swatch grid, customization controls, and price-summary card are not documented here.
- The German-language newsroom (newsroom.bugatti.com/de) shares the system with the English Bugatti.com surfaces — no design-system-level differences observed, only language localization.
- The actual Tourbillon page rendered as a sparse minimal page in the captured screenshot, suggesting either lazy-loaded content or an interactive configurator-style UI that doesn't render fully in static screenshots; engine-spec layout is documented from general luxury-auto patterns informed by the captured spec cell tokens.


---

## Brand: `dell-1996`

---
version: alpha
name: Dell 1996 Inspired
description: An inspired interpretation of Dell.com's 1996 design language — a catalog-era enterprise web design built around a literal black page frame, vivid flat color-block "ribbon cards" tinted in sage, salmon, periwinkle, sky, peach and lime, chunky Helvetica-Black display titles, Times Roman body copy, and an entire visual vocabulary of pre-Photoshop hand-cut GIF stickers (NEW! bursts, award seals, beveled product photos).

colors:
  primary: "#e91d2a"
  on-primary: "#ffffff"
  canvas: "#ffffff"
  surface: "#ffffff"
  ink: "#000000"
  frame-ink: "#000000"
  yellow-sticker: "#fcc20f"
  purple-stripe: "#6a26a4"
  link: "#0000ee"

  # Ribbon-card tint family (one per product line)
  tint-olive: "#8e8a25"
  tint-sage: "#b3bd95"
  tint-salmon: "#d77a7a"
  tint-peach: "#e6915d"
  tint-lime: "#c0d4a7"
  tint-sky: "#9ab6c8"
  tint-steel: "#a5b8c0"
  tint-periwinkle: "#8c9ae0"

typography:
  display:
    fontFamily: Arial Black
    fontSize: 36px
    fontWeight: 900
    lineHeight: 1.0
    letterSpacing: 0
  heading-1:
    fontFamily: Arial Black
    fontSize: 24px
    fontWeight: 900
    lineHeight: 1.05
    letterSpacing: 0
  heading-2:
    fontFamily: Helvetica
    fontSize: 16px
    fontWeight: 700
    lineHeight: 1.2
    letterSpacing: 0
  heading-3:
    fontFamily: Helvetica
    fontSize: 14px
    fontWeight: 700
    lineHeight: 1.2
    letterSpacing: 0
  body:
    fontFamily: Times New Roman
    fontSize: 14px
    fontWeight: 400
    lineHeight: 1.4
    letterSpacing: 0
  body-sm:
    fontFamily: Times New Roman
    fontSize: 12px
    fontWeight: 400
    lineHeight: 1.4
    letterSpacing: 0
  caption:
    fontFamily: Times New Roman
    fontSize: 11px
    fontWeight: 400
    lineHeight: 1.35
    letterSpacing: 0
  button:
    fontFamily: Helvetica
    fontSize: 12px
    fontWeight: 700
    lineHeight: 1.0
    letterSpacing: 0
  link:
    fontFamily: Times New Roman
    fontSize: 14px
    fontWeight: 400
    lineHeight: 1.4
    letterSpacing: 0
  ui-label:
    fontFamily: Helvetica
    fontSize: 12px
    fontWeight: 700
    lineHeight: 1.0
    letterSpacing: 0

rounded:
  none: 0px
  full: 9999px

spacing:
  xxs: 2px
  xs: 4px
  s: 6px
  sm: 8px
  m: 10px
  md: 12px
  lg: 16px
  xl: 20px
  xxl: 24px
  section-sm: 32px
  section: 40px
  section-lg: 48px

components:
  # ─── Brand-native components ───
  page-frame:
    backgroundColor: "{colors.frame-ink}"
    textColor: "{colors.canvas}"
    rounded: "{rounded.none}"
    padding: 8px

  top-banner:
    backgroundColor: "{colors.frame-ink}"
    textColor: "{colors.canvas}"
    typography: "{typography.heading-2}"
    rounded: "{rounded.none}"
    padding: 12px 16px

  section-eyebrow-olive:
    backgroundColor: "{colors.tint-olive}"
    textColor: "{colors.ink}"
    typography: "{typography.display}"
    rounded: "{rounded.none}"
    padding: 24px 16px

  section-eyebrow-salmon:
    backgroundColor: "{colors.tint-salmon}"
    textColor: "{colors.ink}"
    typography: "{typography.display}"
    rounded: "{rounded.none}"
    padding: 24px 16px

  ribbon-card-title:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    borderColor: "{colors.frame-ink}"
    typography: "{typography.heading-3}"
    rounded: "{rounded.none}"
    padding: 6px 12px

  ribbon-card-body-sage:
    backgroundColor: "{colors.tint-sage}"
    textColor: "{colors.ink}"
    borderColor: "{colors.frame-ink}"
    typography: "{typography.body}"
    rounded: "{rounded.none}"
    padding: 12px 16px

  ribbon-card-body-salmon:
    backgroundColor: "{colors.tint-salmon}"
    textColor: "{colors.ink}"
    borderColor: "{colors.frame-ink}"
    typography: "{typography.body}"
    rounded: "{rounded.none}"
    padding: 12px 16px

  ribbon-card-body-peach:
    backgroundColor: "{colors.tint-peach}"
    textColor: "{colors.ink}"
    borderColor: "{colors.frame-ink}"
    typography: "{typography.body}"
    rounded: "{rounded.none}"
    padding: 12px 16px

  ribbon-card-body-lime:
    backgroundColor: "{colors.tint-lime}"
    textColor: "{colors.ink}"
    borderColor: "{colors.frame-ink}"
    typography: "{typography.body}"
    rounded: "{rounded.none}"
    padding: 12px 16px

  ribbon-card-body-sky:
    backgroundColor: "{colors.tint-sky}"
    textColor: "{colors.ink}"
    borderColor: "{colors.frame-ink}"
    typography: "{typography.body}"
    rounded: "{rounded.none}"
    padding: 12px 16px

  ribbon-card-body-steel:
    backgroundColor: "{colors.tint-steel}"
    textColor: "{colors.ink}"
    borderColor: "{colors.frame-ink}"
    typography: "{typography.body}"
    rounded: "{rounded.none}"
    padding: 12px 16px

  ribbon-card-body-periwinkle:
    backgroundColor: "{colors.tint-periwinkle}"
    textColor: "{colors.ink}"
    borderColor: "{colors.frame-ink}"
    typography: "{typography.body}"
    rounded: "{rounded.none}"
    padding: 12px 16px

  cta-block-red:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    borderColor: "{colors.frame-ink}"
    typography: "{typography.body}"
    rounded: "{rounded.none}"
    padding: 16px

  phone-callout:
    backgroundColor: "{colors.frame-ink}"
    textColor: "{colors.primary}"
    typography: "{typography.heading-2}"
    rounded: "{rounded.none}"
    padding: 4px 8px

  buy-a-dell-sticker:
    backgroundColor: "{colors.yellow-sticker}"
    textColor: "{colors.ink}"
    borderColor: "{colors.frame-ink}"
    typography: "{typography.button}"
    rounded: "{rounded.none}"
    padding: 4px 8px

  new-burst-sticker:
    backgroundColor: "{colors.yellow-sticker}"
    textColor: "{colors.ink}"
    typography: "{typography.button}"
    rounded: "{rounded.none}"
    padding: 4px 8px

  cert-seal:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.canvas}"
    typography: "{typography.button}"
    rounded: "{rounded.full}"
    size: 64px

  icon-label-nav:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.ui-label}"
    rounded: "{rounded.none}"
    padding: 8px

  text-input:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    borderColor: "{colors.frame-ink}"
    typography: "{typography.body}"
    rounded: "{rounded.none}"
    padding: 4px 6px

  button-primary:
    backgroundColor: "{colors.frame-ink}"
    textColor: "{colors.on-primary}"
    borderColor: "{colors.frame-ink}"
    typography: "{typography.button}"
    rounded: "{rounded.none}"
    padding: 6px 16px

  button-secondary:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    borderColor: "{colors.frame-ink}"
    typography: "{typography.button}"
    rounded: "{rounded.none}"
    padding: 6px 16px

  button-text-link:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.link}"
    typography: "{typography.link}"
    rounded: "{rounded.none}"

  footer-band:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    borderColor: "{colors.frame-ink}"
    typography: "{typography.body-sm}"
    padding: 16px

  # ─── Examples (illustrative, kit-mirror) — injected by derive-examples-block.mjs ───

  # ─── Examples (illustrative) — auto-derived; resolve any TO_FILL markers below ───
  ex-pricing-tier:
    description: "Default Pricing tier card. Re-uses feature-card chrome with the base white surface."
    backgroundColor: "{colors.surface}"
    textColor: "{colors.ink}"
    borderColor: "{colors.frame-ink}"
    rounded: "{rounded.none}"
    padding: "{spacing.lg}"
  ex-pricing-tier-featured:
    description: "Featured/highlighted tier — polarity-flipped surface (dark fill + light text in light mode, light fill + dark text in dark mode)."
    backgroundColor: "{colors.ink}"
    textColor: "{colors.on-primary}"
    rounded: "{rounded.none}"
    padding: "{spacing.lg}"
  ex-product-selector:
    description: "What's Included summary card — re-purposed for SaaS / B2B verticals (NOT a literal product gallery)."
    backgroundColor: "{colors.surface}"
    rounded: "{rounded.none}"
    padding: "{spacing.lg}"
  ex-cart-drawer:
    description: "Subscription summary — re-purposed for SaaS / B2B (line items per add-on, not literal cart)."
    backgroundColor: "{colors.surface}"
    rounded: "{rounded.none}"
    padding: "{spacing.lg}"
    item-divider: "{colors.frame-ink}"
  ex-app-shell-row:
    description: "Sidebar nav row inside the App Shell example. Active state uses brand primary as the indicator."
    backgroundColor: "{colors.canvas}"
    activeIndicator: "{colors.primary}"
    rounded: "{rounded.none}"
    padding: "{spacing.sm} {spacing.md}"
  ex-data-table-cell:
    description: "Default data-table th + td chrome. Header uses mono-caps eyebrow typography; body uses body-sm."
    headerBackground: "{colors.surface}"
    headerTypography: "{typography.caption}"
    bodyTypography: "{typography.body-sm}"
    cellPadding: "{spacing.s} {spacing.md}"
    rowBorder: "{colors.frame-ink}"
  ex-auth-form-card:
    description: "Sign-in / sign-up card. Re-uses feature-card chrome with text-input primitives inside."
    backgroundColor: "{colors.surface}"
    rounded: "{rounded.none}"
    padding: "{spacing.lg}"
  ex-modal-card:
    description: "Modal dialog surface — same chrome as feature-card with elevated shadow."
    backgroundColor: "{colors.surface}"
    rounded: "{rounded.none}"
    padding: "{spacing.lg}"
  ex-empty-state-card:
    description: "Empty-state illustration frame."
    backgroundColor: "{colors.surface}"
    rounded: "{rounded.none}"
    padding: "{spacing.xl}"
    captionTypography: "{typography.body}"
  ex-toast:
    description: "Toast notification surface — feature-card shape + medium shadow."
    backgroundColor: "{colors.surface}"
    rounded: "{rounded.none}"
    padding: "{spacing.md} {spacing.lg}"
    typography: "{typography.body-sm}"

---


## Overview

Dell's December 1996 home page is a perfectly preserved fossil of catalog-era enterprise web design — the moment when a Fortune-100 brand decided the web was *important enough* to invest in, but two years before CSS would be widely adopted and three years before "design system" was a phrase anyone used. Every visual choice on the page is a downstream consequence of that constraint: layout via HTML tables, type via the browser's built-in font stack (Arial Black / Helvetica / Times Roman), color via 8-bit-safe flat fills, and decoration via hand-cut GIF "stickers" (the NEW! burst, the round PC Magazine Readers' Choice seal, the beveled "BUY a DELL" yellow tab). The page is bordered — literally bordered, in a 1-cell-wide black HTML table — and inside that frame, every product line gets a "ribbon card": a white title bar with a sharp black underline, a tinted body block in one of eight catalog colors (sage, salmon, peach, lime, sky, steel, periwinkle, olive), and a beveled product photograph notched into the right edge of the card.

The brand voice carries through in two anchors: a vivid Dell-red CTA panel on the left of the homepage (cream-yellow Times Roman copy on a `{colors.primary}` fill, set inside the black frame) and a screaming red phone number — `1-800-213-DELL` — pinned to the top-right of every page, because in 1996 the website was a brochure that ended with a phone call. The footer is a row of four hand-drawn icon-labels (FIND / HOME / ONLINE STORE / SERVICE & SUPPORT) linked by a thin green horizontal rule, and a single classic-Mosaic-blue underlined "Copyright" link sitting above the legal small print in Times Roman.

**Key Characteristics:**
- Literal page frame: every page sits inside a `{colors.frame-ink}` (black) outer border ~8 px thick — the design treats the browser window as a printed picture frame
- Flat color-block "ribbon cards" tint each product family with a dedicated catalog color (`{colors.tint-sage}` Latitude, `{colors.tint-salmon}` OptiPlex GX, `{colors.tint-periwinkle}` PowerEdge, `{colors.tint-sky}` Dellware, etc.) — no gradients, no shadows, no opacity
- Chunky display typography in `{typography.display}` (Arial Black 36 / weight 900) for section title blocks; `{typography.heading-2}` (Helvetica Bold 16) for product row titles; `{typography.body}` Times Roman 14 for everything else
- Hand-cut GIF "stickers" overlay the layout: yellow "BUY a DELL" tab in the top right, angled "NEW!" bursts on new product rows, round red PC Magazine Readers' Choice seals
- `{colors.primary}` (Dell red) reserved for two things only: the homepage CTA panel and the top-right phone number — never decorative
- Footer icon-nav with classic-blue (`{colors.link}` #0000ee) anchor underlines — the unmistakable Netscape 3.x link colour

## Colors

### Brand & Accent
- **Dell Red** (`{colors.primary}` — #e91d2a): The brand's signature red. Reserved for the homepage CTA panel ("At Dell.com, we'll help you find the right system…"), the top-right phone number, and the PC Magazine Readers' Choice seal ring. Never used as a card body fill.
- **Dell Yellow** (`{colors.yellow-sticker}` — #fcc20f): Sticker yellow — the "BUY a DELL" tab in the top banner, and the angled "NEW!" bursts overlapping new product rows.
- **Dell Purple** (`{colors.purple-stripe}` — #6a26a4): The accent stripe behind the lowercase ".com" / "DELL" wordmark text — appears inside the "BUY a DELL" sticker chrome only.

### Surface
- **Frame Ink** (`{colors.frame-ink}` — #000000): Pure black. The page frame, the top banner background, button fills, and all 1 px ribbon-card hairlines.
- **Canvas** (`{colors.canvas}` — #ffffff): True white inside the frame. The page surface, the ribbon-card title-bar fill, and the icon-label nav backdrop.

### Text
- **Ink** (`{colors.ink}` — #000000): Body text, headings, link copy before visit. Pure black; no warm-near-black softening in 1996.
- **Link** (`{colors.link}` — #0000ee): Classic Mosaic / Netscape 3.x default link blue. Underlined inline anchors ("Copyright", "(Terms of Use)", inline "from Dell's award-winning service and support teams").

### Ribbon-Card Tint Family
Eight catalog colors, one per product line — these are the page's chromatic personality:
- **Olive** (`{colors.tint-olive}` — #8e8a25): "DIMENSION DESKTOPS" eyebrow block
- **Sage** (`{colors.tint-sage}` — #b3bd95): Latitude Notebooks ribbon body
- **Salmon** (`{colors.tint-salmon}` — #d77a7a): "OPTIPLEX DESKTOP SYSTEMS" eyebrow + GX Series body
- **Peach** (`{colors.tint-peach}` — #e6915d): Dimension card body + OptiPlex Gs body
- **Lime** (`{colors.tint-lime}` — #c0d4a7): OptiPlex G Series body
- **Sky** (`{colors.tint-sky}` — #9ab6c8): Dellware ribbon body
- **Steel** (`{colors.tint-steel}` — #a5b8c0): Dimension XPS Pro ribbon body
- **Periwinkle** (`{colors.tint-periwinkle}` — #8c9ae0): PowerEdge ribbon body

The tints are saturated but not vivid — they sit just below true neutral chroma, the signature of GIF-era web-safe-palette quantization.

## Typography

### Font Family

Three system-stack families, no webfonts (webfonts didn't exist yet):

- **Arial Black** (fallback: Helvetica, system-ui sans) — display headings only. The chunky stenciled section eyebrows ("DIMENSION DESKTOPS", "OPTIPLEX DESKTOP SYSTEMS") are Arial Black at weight 900, set in all-caps with normal tracking.
- **Helvetica** (fallback: Arial, system-ui sans) — product-row titles, button labels, the top banner's "BUILD YOUR OWN COMPUTER. ONLINE." headline. Always bold (700), always all-caps.
- **Times New Roman** (fallback: Times, serif) — body copy. Every paragraph, every caption, every inline anchor sits in default-rendered Times Roman. The serifs date the design instantly — body text on the modern web is almost never serif.

### Hierarchy

| Token | Size | Weight | Line Height | Use |
|---|---|---|---|---|
| `{typography.display}` | 36px | 900 | 1.0 | Section eyebrow titles ("DIMENSION DESKTOPS", "OPTIPLEX DESKTOP SYSTEMS") |
| `{typography.heading-1}` | 24px | 900 | 1.05 | Sub-page hero headlines |
| `{typography.heading-2}` | 16px | 700 | 1.2 | Top banner copy, product-line H1 ("Reliable PC's for High-Performance Computing.") |
| `{typography.heading-3}` | 14px | 700 | 1.2 | Ribbon-card title bar ("OPTIPLEX GX PRO", "DIMENSION XPS") |
| `{typography.body}` | 14px | 400 | 1.4 | Default paragraph copy, ribbon-card body, CTA-panel copy |
| `{typography.body-sm}` | 12px | 400 | 1.4 | "This site is best viewed with browser versions 3.0 and higher." |
| `{typography.caption}` | 11px | 400 | 1.35 | Footer copyright text |
| `{typography.button}` | 12px | 700 | 1.0 | Button labels, "NEW!" sticker, BUY-a-DELL sticker |
| `{typography.ui-label}` | 12px | 700 | 1.0 | Icon-label nav uppercase labels ("FIND", "HOME", "ONLINE STORE", "SERVICE & SUPPORT") |

### Principles
- Sans for UI, serif for body — the inverse of the modern convention, and a dead giveaway of mid-90s typography.
- Display weights are extreme (900 / Black) and never softer. The "Dimension" / "OptiPlex" eyebrow blocks lean on the heaviest weight the font ships.
- No letter-spacing tracking adjustments — pixel-fonts in 1996 didn't reward it. Everything is set at the browser's default kern.
- Line-height is tight on display (1.0) and conventional on body (1.4) — a holdover from print-magazine catalog layout.

### Note on Font Substitutes
All three families are operating-system defaults on every consumer OS shipped in 1996 (Windows 95: Arial / Times New Roman; Mac OS 7.5+: Helvetica / Times). The brand had no fallback strategy because no fallback was needed — the fonts were always present. Modern reproductions can stay on this exact stack (Arial Black / Helvetica / Times New Roman) for authenticity.

## Layout

### Spacing System

- **Base unit**: 4 px (with 2 / 6 / 10 intermediates). 1996 page layout was driven by HTML table cell padding (`cellpadding="4"` / `cellspacing="0"`) rather than a designed scale.
- **Tokens**: `{spacing.xxs}` 2px · `{spacing.xs}` 4px · `{spacing.s}` 6px · `{spacing.sm}` 8px · `{spacing.m}` 10px · `{spacing.md}` 12px · `{spacing.lg}` 16px · `{spacing.xl}` 20px · `{spacing.xxl}` 24px · `{spacing.section-sm}` 32px · `{spacing.section}` 40px · `{spacing.section-lg}` 48px.
- **Card interior padding**: `{spacing.md}` 12 px vertical / `{spacing.lg}` 16 px horizontal on ribbon-card bodies.
- **Section vertical rhythm**: `{spacing.section}` 40 px between product-ribbon stacks; `{spacing.section-sm}` 32 px between the eyebrow color block and its first ribbon-card.

### Grid & Container
- Fixed-width table layout pinned around 760 px wide — the de facto 1996 standard targeting 800×600 monitors with a small scrollbar gutter.
- Two-column outer structure: left rail (~28 %) carries the homepage icon-link grid + CTA red panel; right column (~72 %) carries the product ribbon stack.
- No grid system in the modern sense — every section is its own `<table>` declaration with hard-coded column widths.

### Whitespace Philosophy
Tight by modern standards. Catalog density wins over editorial breath — every pixel inside the black frame is doing work (illustration, color block, headline, body). The compensating decompression happens *inside* each ribbon card: white title bar + tinted body block + product photo notch creates internal breathing room without enlarging the overall page.

### Responsive Strategy

#### Breakpoints
| Name | Width | Key Changes |
|---|---|---|
| Period default | 800 × 600 | Fixed 760 px layout, designed for the era's standard monitor |
| Modern desktop | 1280+ px | Layout sits centered with generous side gutters — emulates "magazine spread in the middle of the screen" |
| Tablet | 768 px | Black frame compresses to 4 px; ribbon-cards stack at full width inside |
| Mobile | < 480 px | Black frame to 2 px; two-column structure collapses to single column; left rail icon grid stacks above the right-column product stack |

#### Touch Targets
1996 had no notion of touch — the original designs assume mouse-only. Modern reproductions need to widen the icon-label nav targets to 44 × 44 px minimum at mobile (the 1996 icons sat at ~24 × 24 with 8 px label below, well under modern guidelines).

#### Collapsing Strategy
- At ≤ 768 px, the homepage's left-rail icon-link grid (Online Store / Service / Why Dell? / Government / Worldwide / Order Status / Company Info / U.S. Careers) collapses from a 2 × 4 grid to a single-column stack
- Ribbon-card right-edge product photo notch becomes a top-aligned full-width image at mobile
- The top banner's tagline ("BUILD YOUR OWN COMPUTER. ONLINE.") shrinks one type tier; the phone number wraps below the BUY-a-DELL sticker
- Footer icon-label nav stays 4-up at all widths — the icons are small enough to survive

#### Image Behavior
Product photos are bitmap GIFs with hand-applied bevel shadows — they were authored at fixed pixel widths (typically 80–120 px wide). The right-edge notch effect was achieved by table-cell negative spacing. Modern reproductions should keep the bevel shadow effect (it's signature) but use SVG drop-shadow or CSS `filter: drop-shadow(2px 2px 0 #000)` to recreate it crisply at high-DPI.

## Elevation & Depth

| Level | Treatment | Use |
|---|---|---|
| 0 — Flush | No shadow, no border | Body text, copyright row, footer band background |
| 1 — Hairline | `1px solid {colors.frame-ink}` | Ribbon-card outer edge, table-cell dividers |
| 2 — Frame | `8px solid {colors.frame-ink}` | The page-frame border around the entire viewport |
| 3 — Bevel | Hard-edge 1 px highlight + 1 px shadow on GIF stickers and product photos | "BUY a DELL" yellow sticker, NEW! bursts, award seals, product photographs |

There are **no soft shadows** in the 1996 design — every depth cue is either a hard 1 px border or a hand-painted bevel inside a GIF. Modern reproductions that need to feel period-accurate must resist the urge to add Material-style elevation or atmospheric drop shadows.

### Decorative Depth
Bevels and frames carry the entire depth vocabulary:
- The **page frame** is the strongest depth cue — it tells the viewer "this is a contained document, not a continuous canvas."
- **Bevels on stickers** (BUY a DELL, NEW!, PC Magazine Readers' Choice) push them forward off the page surface as if pinned on with thumbtacks.
- **Product photographs** carry their own hand-painted bevel + drop-shadow, baked into the GIF itself.

## Shapes

### Border Radius Scale

| Token | Value | Use |
|---|---|---|
| `{rounded.none}` | 0px | Universal default — buttons, cards, inputs, banners, page frame, ribbon-card bodies, eyebrow blocks |
| `{rounded.full}` | 9999px | Circular award seals (PC Magazine Readers' Choice), the round "h" sticker on the HOME icon |

The 1996 design has effectively **two** radius modes: square (everything) and round (decorative seal stickers). No 4 / 8 / 12 px subtle radius tier — that vocabulary belongs to the post-Bootstrap web.

### Photography Geometry
Product photos are rectangular GIFs with their own internal beveled "monitor" framing — they sit at native pixel dimensions, never scaled. Aspect ratios cluster around 4:3 (the era's standard CRT shape). Avatars don't exist on this site — staff photography was reserved for "About Dell" pages not captured in these snapshots.

## Components

> **No hover states documented.** Per the global no-hover policy, every component below documents Default state only.

### Frame & Banner

**`page-frame`** — the literal black border around the entire viewport.
- Background `{colors.frame-ink}`, padding `{spacing.sm}` 8 px on every side, no radius.
- The page sits *inside* this border. Treat it as a non-negotiable container chrome; collapsing it on mobile is acceptable (to ~4 px), but removing it entirely loses the brand.

**`top-banner`** — pure-black strip running across the top with white "BUILD YOUR OWN COMPUTER. ONLINE." headline + sub-tagline, the yellow "BUY a DELL" sticker pinned at right, and the red "1-800-213-DELL" phone number.
- Background `{colors.frame-ink}`, text `{colors.canvas}`, type `{typography.heading-2}`, padding 12 px vertical / 16 px horizontal, no radius.

### Section Eyebrow Blocks

**`section-eyebrow-olive`** — large tinted color block holding the chunky stenciled section title ("DIMENSION DESKTOPS"). Used at the top of the Dimension product page.
- Background `{colors.tint-olive}`, text `{colors.ink}`, type `{typography.display}` (Arial Black 36 / 900), padding 24 × 16, no radius.

**`section-eyebrow-salmon`** — same chrome with the OptiPlex line's salmon-pink fill ("OPTIPLEX DESKTOP SYSTEMS").
- Background `{colors.tint-salmon}`, otherwise identical to the olive variant.

### Ribbon Cards

The brand's signature component. Each product-row "card" is a stack of three pieces:
1. **`ribbon-card-title`** — white horizontal title bar with the product variant name in Helvetica Bold all-caps (e.g. "OPTIPLEX GX PRO", "DIMENSION XPS", "POWEREDGE SERVERS"). 1 px bottom border in `{colors.frame-ink}`.
   - Background `{colors.canvas}`, text `{colors.ink}`, type `{typography.heading-3}`, padding 6 × 12, no radius.
2. **`ribbon-card-body-<tint>`** — color-block body in one of eight tints, holding the short marketing pitch in `{typography.body}` (Times Roman 14). Padding 12 × 16. The product photograph notches into the right edge with a transparent GIF cutout.
3. **Photo notch** — the GIF sits in the rightmost ~25 % of the row, hanging slightly above and below the body bar like a card pinned to a corkboard.

Each tint variant is its own component entry. Pick the one that matches the product family:

- **`ribbon-card-body-sage`** — `{colors.tint-sage}` fill, used for Latitude Notebooks rows
- **`ribbon-card-body-salmon`** — `{colors.tint-salmon}` fill, used for OptiPlex GX Series rows
- **`ribbon-card-body-peach`** — `{colors.tint-peach}` fill, used for Dimension rows and OptiPlex Gs
- **`ribbon-card-body-lime`** — `{colors.tint-lime}` fill, used for OptiPlex G Series rows
- **`ribbon-card-body-sky`** — `{colors.tint-sky}` fill, used for Dellware rows
- **`ribbon-card-body-steel`** — `{colors.tint-steel}` fill, used for Dimension XPS Pro rows
- **`ribbon-card-body-periwinkle`** — `{colors.tint-periwinkle}` fill, used for PowerEdge Server rows

All seven share identical chrome: 1 px solid `{colors.frame-ink}` border, `{spacing.md}` × `{spacing.lg}` (12 × 16) padding, `{rounded.none}` (sharp corners), `{typography.body}` Times Roman 14 inside. Only the fill color changes per product family.

### Call-to-Action

**`cta-block-red`** — the homepage's vivid Dell-red panel ("At Dell.com, we'll help you find the right system, configure it, price it, and order it…").
- Background `{colors.primary}`, text `{colors.on-primary}` (white), 1 px solid frame-ink border, type `{typography.body}` (Times Roman 14), padding 16 px, no radius.
- One per page maximum. The brand's most aggressive attention-grab — never use it for anything except a top-tier sales message.

**`phone-callout`** — top-right phone number ("1-800-213-DELL") rendered as red on the black banner.
- Background `{colors.frame-ink}`, text `{colors.primary}`, type `{typography.heading-2}` Helvetica Bold 16, padding 4 × 8, no radius. Pinned to the right of the top banner on every page.

### Stickers (GIF-style overlays)

**`buy-a-dell-sticker`** — yellow rectangular sticker with "BUY a DELL" in Helvetica Bold, the "a" set in a small purple stripe, the "DELL" wordmark in black. Pinned to the top-right of every page.
- Background `{colors.yellow-sticker}`, text `{colors.ink}`, 1 px black border, type `{typography.button}`, padding 4 × 8, no radius.

**`new-burst-sticker`** — angled yellow burst with "NEW!" in Helvetica Bold black, overlapping the right side of new product ribbon-cards. Slight rotation (~15°) gives it the pinned-on-with-tape feel.
- Background `{colors.yellow-sticker}`, text `{colors.ink}`, type `{typography.button}`, padding 4 × 8, no radius (rotation applied separately).

**`cert-seal`** — round red award seal: center reads "PC MAGAZINE", ringed by "SERVICE · RELIABILITY · READERS' CHOICE", with an inner white field and red bordered ring. Sits on the right rail of product pages.
- Background `{colors.primary}`, text `{colors.canvas}`, type `{typography.button}`, rounded `{rounded.full}`, 64 px size.

### Navigation

**`icon-label-nav`** — bottom-of-page navigation row: four hand-drawn icons (eyeglasses-FIND / house-HOME / yellow-sticker-ONLINE STORE / wrench-SERVICE & SUPPORT) connected by a thin green horizontal rule, each with an uppercase Helvetica label beneath.
- Background `{colors.canvas}`, text `{colors.ink}`, type `{typography.ui-label}`, padding 8 px around each icon-label pair, no radius.
- The connecting green rule is part of the GIF imagery, not a CSS border.

### Inputs & Buttons

**`text-input`** — bordered HTML input. White fill, 1 px solid black border, Times Roman 14 inside.
- Background `{colors.canvas}`, text `{colors.ink}`, 1 px solid frame-ink, type `{typography.body}`, padding 4 × 6, no radius.
- Used on the Search and "Configure & Buy" forms (not visible in these three captures but consistent with the era's HTML 3.2 form widgets).

**`button-primary`** — black filled button with white Helvetica Bold uppercase label.
- Background `{colors.frame-ink}`, text `{colors.on-primary}`, 1 px solid frame-ink, type `{typography.button}`, padding 6 × 16, no radius.

**`button-secondary`** — white filled outlined button. Same chrome with inverted colours.
- Background `{colors.canvas}`, text `{colors.ink}`, 1 px solid frame-ink, type `{typography.button}`, padding 6 × 16, no radius.

**`button-text-link`** — bare underlined anchor in classic-Mosaic blue.
- Text `{colors.link}` #0000ee, type `{typography.link}` Times Roman 14, underline on default. No padding, no radius.

### Footer

**`footer-band`** — the bottom of every page: icon-label nav row, classic-blue Copyright link, "(Terms of Use)" parenthetical, browser-compatibility small print, and the Microsoft BackOffice / Internet Explorer logo banners.
- Background `{colors.canvas}`, text `{colors.ink}`, 1 px top border in frame-ink, type `{typography.body-sm}`, padding 16 px.

### Examples (illustrative)

> Auto-derived kit-mirror demonstration surfaces (`scripts/derive-examples-block.mjs`). Each `ex-*` entry references brand-native primitives so downstream consumers (`/preview-design`, `/generate-kit`) re-skin the same 10 surfaces consistently. `TO_FILL` markers indicate missing primitives — resolve in the LLM judgment pass.

**`ex-pricing-tier`** — Default Pricing tier card. Re-uses feature-card chrome with the base white surface.
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
- Keep the literal `{components.page-frame}` black border on every page — this is the brand's single most identifiable container chrome.
- Reserve `{colors.primary}` (Dell red) for the `{components.cta-block-red}` panel and the `{components.phone-callout}` only. Every other use dilutes the urgency signal.
- Use the eight ribbon-card tint colors (`{colors.tint-olive}` / sage / salmon / peach / lime / sky / steel / periwinkle) as a *family* — pick one per product line and stay with it across the line's marketing surfaces.
- Set every display headline in `{typography.display}` (Arial Black 36 / weight 900). The brand's typographic register depends on extreme weight against flat color.
- Keep body copy in `{typography.body}` Times Roman 14 — substituting a modern sans loses the catalog feel entirely.
- Render every CTA / button at `{rounded.none}` (0 px). Modern soft-radius buttons betray the era.
- Use hand-painted bevels / hard-edge GIF shadows on stickers and product photos. Never substitute a soft CSS shadow.

### Don't
- Don't introduce a chromatic accent outside the eight catalog tints + Dell red + Dell yellow + classic link blue. The palette is closed by design.
- Don't soften any corner. `{rounded.none}` is the universal modifier; only award seals get `{rounded.full}`.
- Don't replace Times Roman body with Arial / Helvetica / Inter / a webfont — the serif body is the era's signature.
- Don't add soft drop-shadows or atmospheric gradients. The brand has hard borders and flat fills; everything else reads as anachronism.
- Don't crop or "tuck" product photos with `border-radius` or `clip-path`. The notch into the ribbon-card right edge is the framing — the photo itself stays a hard rectangle.
- Don't pair two `{components.cta-block-red}` panels on the same page. The red fill is meant to be the singular attention pole.
- Don't strip the `{components.phone-callout}` from the top banner. In 1996 the website existed to drive phone-call orders; the phone number IS the navigation.


---

## Brand: `ferrari`

---
version: alpha
name: Ferrari-design-analysis
description: A luxury-automotive brand whose marketing surfaces read as cinematic editorial. The base canvas is **near-black** (`#181818`) holding pure white display type; white-canvas bands appear only inside specific editorial contexts (preowned listings, pricing tables). The single brand voltage is **Rosso Corsa** (`#da291c`) — the iconic Ferrari racing red — used scarcely on primary CTAs, the Cavallino mark, and Formula 1 race-position highlights. Type runs **FerrariSans** at modest weights (display 500, body 400) — never bombastic. Spacing follows an explicit 8px token ladder (`xxxs` 4px through `super` 128px); generous editorial pacing throughout. The brand's strongest visual signature is the **full-bleed cinematic hero photograph** that fills the viewport top with car photography, model details, or trackside livery — followed by a tighter editorial body layout below.

colors:
  primary: "#da291c"
  primary-active: "#b01e0a"
  primary-hover: "#9d2211"
  ink: "#ffffff"
  body: "#969696"
  body-strong: "#ffffff"
  body-on-light: "#181818"
  muted: "#666666"
  muted-soft: "#8f8f8f"
  hairline: "#303030"
  hairline-on-light: "#d2d2d2"
  hairline-soft: "#ebebeb"
  canvas: "#181818"
  canvas-elevated: "#303030"
  canvas-light: "#ffffff"
  surface-card: "#303030"
  surface-soft-light: "#f7f7f7"
  surface-strong-light: "#ebebeb"
  on-primary: "#ffffff"
  on-dark: "#ffffff"
  on-light: "#181818"
  accent-yellow-hypersail: "#fff200"
  accent-yellow: "#f6e500"
  semantic-info: "#4c98b9"
  semantic-success: "#03904a"
  semantic-warning: "#f13a2c"

typography:
  display-mega:
    fontFamily: "'FerrariSans', -apple-system, system-ui, sans-serif"
    fontSize: 80px
    fontWeight: 500
    lineHeight: 1.05
    letterSpacing: -1.6px
  display-xl:
    fontFamily: "'FerrariSans', sans-serif"
    fontSize: 56px
    fontWeight: 500
    lineHeight: 1.1
    letterSpacing: -1.12px
  display-lg:
    fontFamily: "'FerrariSans', sans-serif"
    fontSize: 36px
    fontWeight: 500
    lineHeight: 1.2
    letterSpacing: -0.36px
  display-md:
    fontFamily: "'FerrariSans', sans-serif"
    fontSize: 26px
    fontWeight: 500
    lineHeight: 1.5
    letterSpacing: 0.195px
  title-md:
    fontFamily: "'FerrariSans', sans-serif"
    fontSize: 18px
    fontWeight: 700
    lineHeight: 1.2
    letterSpacing: 0
  title-sm:
    fontFamily: "'FerrariSans', sans-serif"
    fontSize: 16px
    fontWeight: 500
    lineHeight: 1.4
    letterSpacing: 0.08px
  body-md:
    fontFamily: "'FerrariSans', sans-serif"
    fontSize: 14px
    fontWeight: 400
    lineHeight: 1.5
    letterSpacing: 0
  body-sm:
    fontFamily: "'FerrariSans', sans-serif"
    fontSize: 13px
    fontWeight: 400
    lineHeight: 1.5
    letterSpacing: 0
  caption:
    fontFamily: "'FerrariSans', sans-serif"
    fontSize: 12px
    fontWeight: 400
    lineHeight: 1.4
    letterSpacing: 0
  caption-uppercase:
    fontFamily: "'FerrariSans', sans-serif"
    fontSize: 11px
    fontWeight: 600
    lineHeight: 1.4
    letterSpacing: 1.1px
    textTransform: uppercase
  button:
    fontFamily: "'FerrariSans', sans-serif"
    fontSize: 14px
    fontWeight: 700
    lineHeight: 1.0
    letterSpacing: 1.4px
    textTransform: uppercase
  nav-link:
    fontFamily: "'FerrariSans', sans-serif"
    fontSize: 13px
    fontWeight: 600
    lineHeight: 1.4
    letterSpacing: 0.65px
    textTransform: uppercase
  number-display:
    fontFamily: "'FerrariSans', sans-serif"
    fontSize: 80px
    fontWeight: 700
    lineHeight: 1.0
    letterSpacing: -1.6px

rounded:
  none: 0px
  xs: 2px
  sm: 4px
  md: 6px
  lg: 8px
  xl: 12px
  full: 9999px

spacing:
  xxxs: 4px
  xxs: 8px
  xs: 16px
  sm: 24px
  md: 32px
  lg: 48px
  xl: 64px
  xxl: 96px
  super: 128px

components:
  top-nav-on-dark:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.nav-link}"
    height: 64px
  top-nav-on-light:
    backgroundColor: "{colors.canvas-light}"
    textColor: "{colors.body-on-light}"
    typography: "{typography.nav-link}"
    height: 64px
  button-primary:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button}"
    rounded: "{rounded.none}"
    padding: 14px 32px
    height: 48px
  button-primary-active:
    backgroundColor: "{colors.primary-active}"
    textColor: "{colors.on-primary}"
    rounded: "{rounded.none}"
  button-outline-on-dark:
    backgroundColor: transparent
    textColor: "{colors.ink}"
    typography: "{typography.button}"
    rounded: "{rounded.none}"
    padding: 13px 31px
    height: 48px
  button-outline-on-light:
    backgroundColor: transparent
    textColor: "{colors.body-on-light}"
    typography: "{typography.button}"
    rounded: "{rounded.none}"
    padding: 13px 31px
    height: 48px
  button-tertiary-text:
    backgroundColor: transparent
    textColor: "{colors.ink}"
    typography: "{typography.button}"
  hero-band-cinema:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.display-mega}"
    padding: 0
  hero-band-light:
    backgroundColor: "{colors.canvas-light}"
    textColor: "{colors.body-on-light}"
    typography: "{typography.display-xl}"
    padding: 96px
  feature-card-photo:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.title-md}"
    rounded: "{rounded.none}"
    padding: 0
  feature-card-light:
    backgroundColor: "{colors.canvas-light}"
    textColor: "{colors.body-on-light}"
    typography: "{typography.title-md}"
    rounded: "{rounded.none}"
    padding: 32px
  livery-band:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.ink}"
    typography: "{typography.display-lg}"
    padding: 96px
  preowned-listing-card:
    backgroundColor: "{colors.canvas-light}"
    textColor: "{colors.body-on-light}"
    typography: "{typography.body-md}"
    rounded: "{rounded.none}"
    padding: 24px
  spec-cell:
    backgroundColor: transparent
    textColor: "{colors.ink}"
    typography: "{typography.number-display}"
    padding: 24px 0
  race-position-cell:
    backgroundColor: transparent
    textColor: "{colors.primary}"
    typography: "{typography.number-display}"
  race-calendar-row:
    backgroundColor: transparent
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    padding: 16px 0
  driver-card:
    backgroundColor: "{colors.canvas-elevated}"
    textColor: "{colors.ink}"
    typography: "{typography.title-md}"
    rounded: "{rounded.none}"
    padding: 24px
  text-input-on-dark:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.sm}"
    padding: 14px 16px
    height: 48px
  text-input-on-light:
    backgroundColor: "{colors.canvas-light}"
    textColor: "{colors.body-on-light}"
    typography: "{typography.body-md}"
    rounded: "{rounded.sm}"
    padding: 14px 16px
    height: 48px
  badge-pill:
    backgroundColor: "{colors.canvas-elevated}"
    textColor: "{colors.ink}"
    typography: "{typography.caption-uppercase}"
    rounded: "{rounded.full}"
    padding: 4px 12px
  cta-band-dark:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.display-lg}"
    padding: 96px
  newsletter-input-band:
    backgroundColor: "{colors.canvas-elevated}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.sm}"
    padding: 32px
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

Ferrari's marketing site reads as cinematic editorial — closer to a luxury-magazine spread than a typical car-OEM site. The base canvas is **near-black** (`{colors.canvas}` — #181818) holding pure white display type; white-canvas bands appear only inside specific editorial contexts (preowned listings, pricing tables, dealer surfaces). The single brand voltage is **Rosso Corsa** (`{colors.primary}` — #da291c), the iconic Ferrari racing red, used scarcely on primary CTAs, the Cavallino mark, and Formula 1 race-position highlights.

Type runs **FerrariSans** as the single sans family at modest weights — display 500, body 400. CTA labels render in uppercase with generous tracking (1.1-1.4px). The brand never uses bold display copy.

The brand's strongest visual signature is the **full-bleed cinematic hero photograph** — top-of-page imagery shows car photography, model details, or trackside livery without any chrome competing with it. Headlines float over the bottom of the photo or sit in a tight band beneath. Spacing follows the explicit 8px token ladder: `xxxs` 4 / `xxs` 8 / `xs` 16 / `sm` 24 / `md` 32 / `lg` 48 / `xl` 64 / `xxl` 96 / `super` 128.

**Key Characteristics:**
- Single accent: `{colors.primary}` (Rosso Corsa #da291c) for primary CTAs, the Cavallino, F1 race-position highlights. Used scarcely.
- Near-black canvas (#181818) — never pure black. White-canvas bands only inside editorial contexts.
- Single sans family: FerrariSans across every text role.
- Display weight stays at 500 — never bold.
- CTA labels render uppercase with 1.4px tracking.
- Sharp `{rounded.none}` (0px) corners on every CTA, card, and band — luxury-automotive precision.
- Full-bleed cinematic hero photography is the page chrome.
- Explicit 8px spacing token ladder with named scale (xxxs through super).
- Hairlines + photographic depth — no drop shadow tiers.

## Colors

### Brand & Accent
- **Rosso Corsa** (`{colors.primary}` — #da291c): The iconic Ferrari racing red. Primary CTA fill, Cavallino mark, F1 driver-position highlights. Used scarcely.
- **Rosso Corsa Active** (`{colors.primary-active}` — #b01e0a): Press state.
- **Rosso Corsa Hover-darker** (`{colors.primary-hover}` — #9d2211): Documented for completeness; per the no-hover policy this is not used in preview HTML.
- **Hypersail Yellow** (`{colors.accent-yellow-hypersail}` — #fff200) + **Yellow** (`{colors.accent-yellow}` — #f6e500): Sub-brand accents reserved for the Hypersail sailing program and the global focus-ring color. Not part of the main automotive palette.

### Surface
- **Canvas** (`{colors.canvas}` — #181818): Near-black page floor — never pure black, slight warmth.
- **Canvas Elevated** (`{colors.canvas-elevated}` — #303030): Cards and panels on dark canvas.
- **Canvas Light** (`{colors.canvas-light}` — #ffffff): White editorial bands (preowned listings, pricing).
- **Surface Card** (`{colors.surface-card}` — #303030): Same as canvas-elevated — driver cards, livery photo plates.
- **Surface Soft Light** (`{colors.surface-soft-light}` — #f7f7f7): Light editorial alternating band.
- **Surface Strong Light** (`{colors.surface-strong-light}` — #ebebeb): Light-canvas dividers, badges.

### Hairlines
- **Hairline** (`{colors.hairline}` — #303030): 1px divider on dark — same hex as `{colors.canvas-elevated}`.
- **Hairline On Light** (`{colors.hairline-on-light}` — #d2d2d2): 1px divider on light bands.
- **Hairline Soft** (`{colors.hairline-soft}` — #ebebeb): Lighter divider.

### Text
- **Ink** (`{colors.ink}` — #ffffff): Display, body emphasis on dark.
- **Body** (`{colors.body}` — #969696): Default running-text on dark.
- **Body Strong** (`{colors.body-strong}` — #ffffff): Same as ink.
- **Body On Light** (`{colors.body-on-light}` — #181818): Default text on light bands.
- **Muted** (`{colors.muted}` — #666666): Sub-titles, captions on dark.
- **Muted Soft** (`{colors.muted-soft}` — #8f8f8f): Disabled link text.
- **On Primary** (`{colors.on-primary}` — #ffffff): White text on Rosso Corsa.

### Semantic
- **Info** (`{colors.semantic-info}` — #4c98b9): Info badges, callout backgrounds.
- **Success** (`{colors.semantic-success}` — #03904a): Confirmation.
- **Warning** (`{colors.semantic-warning}` — #f13a2c): Validation warnings.

## Typography

### Font Family
**FerrariSans** is the licensed single sans family across every text role. Fallback: `-apple-system, system-ui, sans-serif`. No display/body family split.

### Hierarchy

| Token | Size | Weight | Line Height | Letter Spacing | Use |
|---|---|---|---|---|---|
| `{typography.display-mega}` | 80px | 500 | 1.05 | -1.6px | Homepage hero h1 |
| `{typography.display-xl}` | 56px | 500 | 1.1 | -1.12px | Subsidiary heroes |
| `{typography.display-lg}` | 36px | 500 | 1.2 | -0.36px | Section heads, livery band |
| `{typography.display-md}` | 26px | 500 | 1.5 | 0.195px | Sub-section heads |
| `{typography.title-md}` | 18px | 700 | 1.2 | 0 | Component titles |
| `{typography.title-sm}` | 16px | 500 | 1.4 | 0.08px | List labels |
| `{typography.body-md}` | 14px | 400 | 1.5 | 0 | Default body |
| `{typography.body-sm}` | 13px | 400 | 1.5 | 0 | Footer body |
| `{typography.caption}` | 12px | 400 | 1.4 | 0 | Photo captions |
| `{typography.caption-uppercase}` | 11px | 600 | 1.4 | 1.1px | Section labels, badges |
| `{typography.button}` | 14px | 700 | 1.0 | 1.4px (uppercase) | CTA pill labels |
| `{typography.nav-link}` | 13px | 600 | 1.4 | 0.65px (uppercase) | Top-nav menu items |
| `{typography.number-display}` | 80px | 700 | 1.0 | -1.6px | Race position highlights, spec values |

### Principles
- **Display weight stays at 500.** Editorial confidence, not bombastic. The cinematic photography is doing the visual heavy-lifting — type doesn't need to compete.
- **CTA labels are uppercase with 1.4px tracking.** Luxury-precision feel.
- **Nav labels are uppercase with 0.65px tracking.** Consistent with CTA voice.
- **Negative letter-spacing on display only.** -0.36px to -1.6px on display sizes; body stays at 0.

### Note on Font Substitutes
FerrariSans is licensed. Open-source substitute: **Inter** at weight 500 with letter-spacing -1%, or **Söhne** for closer humanist proportions.

## Layout

### Spacing System
- **Base unit:** 4px.
- **Tokens:** `{spacing.xxxs}` 4px · `{spacing.xxs}` 8px · `{spacing.xs}` 16px · `{spacing.sm}` 24px · `{spacing.md}` 32px · `{spacing.lg}` 48px · `{spacing.xl}` 64px · `{spacing.xxl}` 96px · `{spacing.super}` 128px.
- **Section padding:** `{spacing.xxl}` (96px) for major bands; `{spacing.super}` (128px) reserved for hero band depth.

### Grid & Container
- Max content width: ~1280px on editorial bands. Hero photography goes full-bleed.
- Editorial body: 12-column grid.
- Feature card grids: 2-up at desktop for hero splits, 3-up for benefit grids, 4-up for preowned listing tiles.
- Footer: 5-column at desktop.

### Whitespace Philosophy
Generous editorial pacing. Cinematic hero photography occupies generous viewport real-estate; body sections sit in tighter editorial layouts beneath. The canvas-light editorial bands (preowned, pricing) carry tighter density than the dark cinema bands.

## Elevation & Depth

The system uses **photographic depth + brightness-step** elevation. No drop shadows except a single soft-small `{shadow.small}` documented in extracted tokens.

| Level | Treatment | Use |
|---|---|---|
| Flat (canvas) | `{colors.canvas}` (#181818) | Body bands, footer |
| Card | `{colors.canvas-elevated}` (#303030) | Driver cards, livery plates |
| Light band | `{colors.canvas-light}` (#ffffff) | Preowned listings, pricing |
| Hairline border | 1px `{colors.hairline}` or `{colors.hairline-on-light}` | Card outlines, dividers |
| Soft drop | `0 4px 8px rgba(0,0,0,0.1)` | Hovered cards (single shadow tier) |
| Photographic | Full-bleed cinema imagery | Hero band, livery photographs |

### Decorative Depth
- **Full-bleed cinema photography** is the brand's primary depth treatment.
- **Brand red gradient** (`linear-gradient(180deg, #a00c01, #da291c 64%)`): The Rosso Corsa gradient used inside accent bands and CTA hover states.
- **Dark grey gradient** (`linear-gradient(180deg, #3c3c3c, #030303 64%)`): Atmospheric darken used at section transitions.

## Shapes

### Border Radius Scale

| Token | Value | Use |
|---|---|---|
| `{rounded.none}` | 0px | Every CTA, card, band — dominant radius |
| `{rounded.xs}` | 2px | Tight badges (rare) |
| `{rounded.sm}` | 4px | Form inputs |
| `{rounded.md}` | 6px | Compact cards (rare) |
| `{rounded.lg}` | 8px | Mobile-only collapse cards |
| `{rounded.xl}` | 12px | Modal/dialog corners (rare) |
| `{rounded.full}` | 9999px | Avatar plates, badge pills |

The radius vocabulary is **sharp by default**. Sharp 0px corners are the brand button shape — never rounded pills. Pill geometry is reserved for badge labels only.

## Components

### Top Navigation

**`top-nav-on-dark`** — Default top nav on dark hero pages. Background `{colors.canvas}`, text `{colors.ink}`, height 64px. Layout: Cavallino mark left, primary horizontal menu (Models / F1 / Lifestyle / Owners / Preowned), language picker + utilities right. Menu items render uppercase with 0.65px tracking.

**`top-nav-on-light`** — White-canvas variant for editorial light bands.

### Buttons

**`button-primary`** — The signature Rosso Corsa CTA. Background `{colors.primary}`, text `{colors.on-primary}`, type `{typography.button}` (14px / 700 / 1.4px tracking, uppercase), padding 14px × 32px, height 48px, **rounded `{rounded.none}` (0px — sharp corners)**.

**`button-primary-active`** — Press state. Background `{colors.primary-active}`.

**`button-outline-on-dark`** — Transparent with 1px white border. Background transparent, text `{colors.ink}`, 1px white border, same sharp 0px corners.

**`button-outline-on-light`** — Transparent with 1px ink border on light bands.

**`button-tertiary-text`** — Inline text link, uppercase tracking.

### Hero Bands

**`hero-band-cinema`** — Full-bleed cinematic photograph. Background `{colors.canvas}` underneath, but the photo fills the viewport. Display headline floats over the bottom of the photo or sits in a tight band beneath, in `{typography.display-mega}` (80px / 500 / -1.6px). One primary CTA + one outline CTA. Zero padding — the photo fills edge-to-edge.

**`hero-band-light`** — White-canvas variant for editorial bands. Background `{colors.canvas-light}`, text `{colors.body-on-light}`, padding 96px.

### Cards

**`feature-card-photo`** — Image-first card. Background `{colors.canvas}`, text `{colors.ink}`, rounded `{rounded.none}`. Image fills the top edge-to-edge; title + body sit beneath in tight typography.

**`feature-card-light`** — White-canvas variant. Background `{colors.canvas-light}`, text `{colors.body-on-light}`, rounded `{rounded.none}`, padding 32px.

**`driver-card`** — F1 driver portrait card. Background `{colors.canvas-elevated}`, text `{colors.ink}`, rounded `{rounded.none}`, padding 24px. Layout: driver portrait + name + race number + team badge.

### Editorial Surfaces

**`livery-band`** — A full-width Rosso Corsa accent band. Background `{colors.primary}`, text `{colors.ink}`, type `{typography.display-lg}`, 96px padding. Used as a standout livery callout between dark editorial bands.

**`preowned-listing-card`** — Used in the preowned Ferrari listing grid. Background `{colors.canvas-light}`, text `{colors.body-on-light}`, rounded `{rounded.none}`, padding 24px. Layout: car photo top + model name + year/mileage + price.

### Spec & Race Surfaces

**`spec-cell`** — Technical spec callout. Transparent background, value in `{typography.number-display}` (80px / 700 / -1.6px white), label below in `{typography.caption-uppercase}`.

**`race-position-cell`** — F1 driver finishing position. Same number-display geometry but text in `{colors.primary}` Rosso Corsa for the brand's racing identity.

**`race-calendar-row`** — Hairline-divided row in the F1 race calendar. Layout: date column left, race name + circuit middle, results column right.

### Forms & Tags

**`text-input-on-dark`** — Background `{colors.canvas}`, text `{colors.ink}`, rounded `{rounded.sm}` (4px), padding 14px × 16px, height 48px, 1px `{colors.hairline}` border.

**`text-input-on-light`** — White-canvas variant.

**`badge-pill`** — Small uppercase pill. Background `{colors.canvas-elevated}`, text `{colors.ink}`, type `{typography.caption-uppercase}` (11px / 600 / 1.1px tracking, uppercase), rounded `{rounded.full}` (9999px), padding 4px × 12px. The only place pill geometry is used.

### Newsletter / CTA / Footer

**`newsletter-input-band`** — Newsletter signup band. Background `{colors.canvas-elevated}`, padding 32px, rounded `{rounded.sm}`. Holds an inline email input + primary CTA.

**`cta-band-dark`** — Pre-footer band. Background `{colors.canvas}`, centered display headline in `{typography.display-lg}`, single Rosso Corsa CTA. 96px padding.

**`footer-dark`** — Closing dark footer. Background `{colors.canvas}`, text `{colors.body}`. 5-column link list. 64×48px padding.

**`footer-link`** — Background transparent, text `{colors.body}`, type `{typography.body-sm}`.

## Do's and Don'ts

### Do
- Reserve `{colors.primary}` (Rosso Corsa) for primary CTAs, the Cavallino mark, and F1 race-position highlights.
- Set every CTA at `{rounded.none}` (0px sharp corners) — the brand's signature precision.
- Render CTA labels in uppercase with 1.4px tracking via `{typography.button}`.
- Pair every hero with a full-bleed cinematic photograph — the photograph IS the depth.
- Use the explicit 8px spacing ladder (`xxxs` through `super`) rather than ad-hoc px values.
- Keep display weight at 500 — never bold.

### Don't
- Don't introduce a saturated brand color other than Rosso Corsa.
- Don't use rounded or pill CTAs — sharp 0px corners are the brand button.
- Don't bold display copy. The cinematic photography does the visual heavy-lifting.
- Don't use Hypersail yellow outside the Hypersail sailing program context.
- Don't use pure black canvas. The brand canvas is `{colors.canvas}` (#181818) — slightly warm.
- Don't add drop shadow tiers. Photography + brightness-step elevation carry the depth.
- Don't extract a CTA color from a third-party widget (cookie consent, OneTrust). The brand's CTA color is what appears on actual product CTAs, not on injected modals.

## Responsive Behavior

### Breakpoints

| Name | Width | Key Changes |
|---|---|---|
| Mobile | < 640px | Hero photograph crops vertically; hero h1 80→32px; feature card grid 1-up; nav hamburger; preowned listing 1-up. |
| Tablet | 640–1024px | Hero h1 56px; feature card grid 2-up; preowned listing 2-up. |
| Desktop | 1024–1280px | Full hero h1 80px; feature card grid 3-up; preowned listing 4-up. |
| Wide | > 1280px | Editorial body content caps at 1280px; hero photography continues full-bleed. |

### Touch Targets
- Primary CTA at 48px height — at WCAG AAA (44 × 44).
- Nav items render uppercase with 0.65px tracking, padded for an effective 48px tap area.

### Collapsing Strategy
- Top nav switches to hamburger below 768px.
- Hero photograph reframes per breakpoint via art direction — desktop carries wide cinematic; mobile crops tighter or shifts to vertical.
- Feature card grid: 4-up → 3-up → 2-up → 1-up.
- F1 driver cards: 2-up at desktop, 1-up at mobile.

## Iteration Guide

1. Focus on a single component at a time.
2. CTAs default to `{rounded.none}` (0px sharp). Cards use `{rounded.none}` too. Pill is reserved for badges.
3. Variants live as separate entries inside `components:`.
4. Use `{token.refs}` everywhere — never inline hex.
5. Hover state never documented.
6. FerrariSans 500 for display, 400/700 for body. Uppercase + tracking on CTAs and nav.
7. Rosso Corsa stays scarce — primary CTAs, Cavallino, race-position highlights only.
8. Use the explicit 8px named spacing ladder.

## Known Gaps

- FerrariSans is a licensed typeface; Inter at weight 500 is the documented substitute.
- Animation timings (hero parallax, livery band entrance, race position counter) out of scope.
- In-product surfaces (preowned configurator, F1 telemetry overlays) only partially captured via marketing surfaces.
- Form validation states beyond focus not visible on captured surfaces.
- Hypersail yellow tokens are extracted but only appear in the Hypersail sailing program context — documented as scoped accents.


---

## Brand: `lamborghini`

# Design System Inspired by Lamborghini

## 1. Visual Theme & Atmosphere

Lamborghini's website is a cathedral of darkness — a digital stage where jet-black surfaces stretch infinitely and every element emerges from the void like a machine under a spotlight. The page is almost entirely black. Not dark gray, not near-black — true, uncompromising black (`#000000`) that saturates the viewport and refuses to yield. Into this abyss, white type and Lamborghini Gold (`#FFC000`) are deployed with surgical precision, creating a visual language that feels like walking through a nighttime motorsport event where every surface absorbs light except the things that matter.

The hero is a full-viewport video — dark, cinematic, immersive — showing event footage or vehicle reveals with the Lamborghini bull logo floating ethereally above. The navigation is minimal: a centered bull logo, a "MENU" hamburger on the left, and search/bookmark icons on the right, all rendered in white against the black canvas. There are no borders, no visible nav containers, no background color on the header — just white marks floating in darkness. The overall mood is nocturnal luxury: exclusive, theatrical, and deliberately intimidating. Each section transition is a scroll through darkness into the next revelation.

Typography is the voice of this darkness. LamboType — a custom Neo-Grotesk typeface created by Character Type and design agency Strichpunkt — is used for everything from 120px uppercase display headlines to 10px micro labels. Its distinctive 12° angled terminals are inspired by the aerodynamic lines of Lamborghini's super sports cars, and its proportions range from Normal to Ultracompressed width. Headlines SHOUT in uppercase at enormous scales with tight line-heights (0.92 at 120px), creating dense blocks of text that feel stamped from steel. The typeface carries hexagonal geometric DNA — constructed from hexagons, three-armed stars, and circles — that echoes throughout the interface in the hexagonal pause button and UI icons. Built on Bootstrap grid with 68 Element Plus/UI components, the technical infrastructure is substantial beneath the theatrical surface.

**Key Characteristics:**
- True black (`#000000`) dominant surfaces with white and gold as the only relief colors
- LamboType custom Neo-Grotesk font with 12° angled terminals inspired by aerodynamic car lines
- Lamborghini Gold (`#FFC000`) as the sole accent color — used exclusively for primary CTA buttons
- All-uppercase display typography at extreme scales (120px, 80px, 54px) with tight line-heights
- Full-viewport video heroes with cinematic event/vehicle content
- Zero border-radius on buttons — sharp, angular, uncompromising rectangles
- Hexagonal motifs in UI elements (pause button, icon system) echoing brand geometry
- Bootstrap grid system + Element Plus/UI 68 components underneath
- Transparent ghost buttons with white borders at 50% opacity as the secondary CTA pattern

## 2. Color Palette & Roles

### Primary
- **Lamborghini Gold** (`#FFC000`): The signature accent color — a warm, saturated amber-gold (rgb 255, 192, 0) used exclusively for primary action buttons ("Discover More", "Tickets", "Start Configuration"). The only chromatic color in the entire interface, it ignites against the black canvas like a headlight cutting through night
- **Pure White** (`#FFFFFF`): Primary text color on dark surfaces, logo rendering, nav elements, and light-mode button fills — the voice that speaks from the darkness

### Secondary & Accent
- **Dark Gold** (`#917300`): Hover/pressed state for gold buttons — a deep amber (rgb 145, 115, 0) that darkens the gold to signal interaction
- **Gold Text** (`#FFCE3E`): Slightly lighter gold variant (rgb 255, 206, 62) used for inline text accents and highlighted labels
- **Cyan Pulse** (`#29ABE2`): Electric blue-cyan (rgb 41, 171, 226) appearing as an informational accent and interactive element highlight
- **Link Blue** (`#3860BE`): Medium blue (rgb 56, 96, 190) used universally for link hover states across all text colors

### Surface & Background
- **Absolute Black** (`#000000`): The dominant surface color — used for page background, hero sections, header, footer, and most containers
- **Charcoal** (`#202020`): Elevated dark surface (rgb 32, 32, 32) — the primary "dark gray" for cards, panels, and text containers sitting above the black canvas
- **Dark Iron** (`#181818`): Subtle surface variant (rgb 24, 24, 24) — barely distinguishable from black, used for footer and deep sections
- **Overlay Black** (`rgba(0,0,0,0.7)`): Semi-transparent overlay for modals and video dimming
- **Near White** (`#F8F8F8`): Rare light surface (rgb 248, 248, 248) for content blocks in white-mode sections
- **Mist** (`#E6E6E6`): Light gray surface for secondary light-mode containers

### Neutrals & Text
- **Pure White** (`#FFFFFF`): Primary text on dark backgrounds — headlines, body, nav labels
- **Smoke** (`#F5F5F5`): Secondary text on dark surfaces — slightly softer than pure white
- **Graphite** (`#494949`): Dark gray text on light surfaces (rgb 73, 73, 73)
- **Ash** (`#7D7D7D`): Mid-range gray for muted text, timestamps, and metadata (rgb 125, 125, 125)
- **Steel** (`#969696`): Lighter gray for disabled text and subtle labels (rgb 150, 150, 150)
- **Slate** (`#666666`): Alternative mid-gray for secondary content
- **Iron** (`#555555`): Dark mid-gray for body text variants
- **Shadow** (`#313131`): Very dark gray for text on dark surfaces where white is too strong

### Semantic & Accent
- **Cyan Pulse** (`#29ABE2`): Used for informational highlights and interactive feedback
- **Link Blue** (`#3860BE`): Universal hover state for all hyperlinks
- **Teal Action** (`#1EAEDB`): Button hover background for transparent/ghost variants (rgb 30, 174, 219)

### Gradient System
- No explicit gradients in the color palette — the dark-to-light progression is achieved through surface layering: `#000000` → `#181818` → `#202020` → `#494949` → `#7D7D7D`
- Video heroes use natural atmospheric gradients from the content itself
- Top-of-page gradient: subtle dark-to-darker fade at the edges of full-bleed imagery

## 3. Typography Rules

### Font Family
- **Display & UI**: `LamboType`, Roboto, Helvetica Neue, Arial — custom Neo-Grotesk typeface by Character Type for Lamborghini's 2024 brand refresh. Available in widths from Normal to Ultracompressed and weights from Light (300) to Black. Features 12° angled terminals inspired by aerodynamic car geometry, hexagonal construction logic, and support for 200+ languages including Latin, Cyrillic, and Greek
- **Fallback/UI**: `Open Sans` — used for some button/form contexts as system fallback
- **No italic variants** observed on the marketing site — the brand voice is always upright

### Hierarchy

| Role | Size | Weight | Line Height | Letter Spacing | Notes |
|------|------|--------|-------------|----------------|-------|
| Hero Display | 120px (7.50rem) | 400 | 0.92 | normal | LamboType, uppercase, maximum impact |
| Display 2 | 80px (5.00rem) | 400 | 1.13 | normal | LamboType, uppercase, major section titles |
| Section Title | 54px (3.38rem) | 400 | 1.19 | normal | LamboType, uppercase |
| Sub-section | 40px (2.50rem) | 400 | 1.15 | normal | LamboType, uppercase |
| Feature Heading | 27px (1.69rem) | 400 | 1.37 | normal | LamboType, uppercase |
| Card Title | 24px (1.50rem) | 400 | — | normal | LamboType |
| Body Large | 18px (1.13rem) | 400 | 1.56 | normal | LamboType, mixed case and uppercase variants |
| Body / UI | 16px (1.00rem) | 400/700 | 1.50 | normal/0.16px | LamboType, primary body text |
| Button Large | 16px (1.00rem) | 400 | 1.50 | normal | Gold CTA buttons |
| Button Standard | 14.4px (0.90rem) | 300/700 | 1.00 | 0.14–0.2px | LamboType, uppercase, ghost buttons |
| Button Small | 13px (0.81rem) | 300/500 | 1.20 | 0.13–0.2px | LamboType, compact button variant |
| Caption | 14px (0.88rem) | 600/700 | 1.14–1.50 | -0.42px | LamboType, uppercase, negative tracking |
| Label | 12px (0.75rem) | 400/500 | 1.83 | 0.96px | LamboType, uppercase badges and micro labels |
| Micro | 10px (0.63rem) | 400 | 1.00–2.00 | 0.225px | LamboType, uppercase, smallest text |

### Principles
- **ALL-CAPS is the default voice**: Display and feature headings are universally uppercase. This creates a shouting, commanding tone that matches the brand's aggression
- **Extreme scale range**: From 120px heroes to 10px micro labels — a 12:1 ratio that creates dramatic visual hierarchy
- **Tight line-heights at scale**: Display sizes use 0.92-1.19 line-height, creating dense, compressed blocks of type that feel stamped rather than typeset
- **Weight 400 dominates**: Unlike many design systems that use bold for emphasis, Lamborghini's regular weight carries the headlines — the typeface itself is so distinctive it doesn't need weight variation
- **Negative tracking on captions**: -0.42px letter-spacing on 14px captions creates a compressed, technical aesthetic
- **Positive tracking on micro text**: +0.225px at 10px ensures legibility at the smallest sizes
- **Single typeface discipline**: LamboType handles everything — the 12° angled terminals and hexagonal geometry provide visual coherence across all sizes

## 4. Component Stylings

### Buttons
All buttons use **zero border-radius** — sharp, angular rectangles that echo the aggressive lines of Lamborghini vehicles.

**Gold Accent CTA** — The primary action:
- Default: bg `#FFC000` (Lamborghini Gold), text `#000000`, padding 24px, fontSize 16px, fontWeight 400, borderRadius 0px, no border
- Hover: bg `#917300` (Dark Gold), darkens significantly
- Class: `btn-accent btn-large`
- Used for: "Discover More", "Tickets", "Start Configuration"

**Transparent Ghost** — The secondary action on dark backgrounds:
- Default: bg transparent, text `#FFFFFF`, border 1px solid `#FFFFFF`, padding 16px, opacity 0.5
- Hover: bg `#1EAEDB` (Teal Action), text white, opacity 0.7
- Focus: bg `#1EAEDB`, border 1px solid `#000000`, outline 2px solid `#000000`
- Used for: secondary CTAs on hero sections and dark panels

**White Filled** — Light-mode primary:
- Default: bg `#FFFFFF`, text `#202020`, no border
- Used for: CTAs on dark sections where gold isn't appropriate

**Black Filled** — Dark filled variant:
- Default: bg `#000000`, text `#202020`
- Used for: Inverted CTA on light sections

**Gray Neutral** — Subtle action:
- Default: bg `#969696`, text `#202020`
- Used for: secondary/tertiary actions, badge-like buttons

### Cards & Containers
- Background: `#202020` (Charcoal) on black canvas, or `#000000` on lighter sections
- Border: `0px 1px solid #202020` bottom borders for section dividers
- Border-radius: 0px (completely sharp corners)
- Shadow: minimal, uses overlay opacity for depth
- Content: full-bleed photography + overlaid text in white

### Inputs & Forms
- Minimal form presence on the marketing site
- Switch elements: border-radius 20px (the only rounded element), border 1px solid `#DDDDDD`
- Cookie banner input style: white text on black with `#7D7D7D` borders

### Navigation
- **Desktop**: Centered bull logo, "MENU" hamburger with icon on left, search icon + bookmarks icon on right
- **Background**: Transparent (inherits black page background)
- **Sticky**: Fixed to top, floats above content
- **No visible borders or shadows** — elements float in the darkness
- **"MENU" label**: White text at 14px weight 400, uppercase, accompanies hamburger icon
- **Hexagonal motifs**: Pause button on hero sections uses hexagonal outline shape

### Image Treatment
- **Hero**: Full-viewport video sections (100vh) with cinematic event/vehicle footage
- **Event photography**: Full-bleed aerial shots of Lamborghini Arena events
- **Vehicle imagery**: High-contrast studio shots on dark backgrounds, full-width
- **Aspect ratios**: Predominantly 16:9 and wider for cinematic feel
- **Dark gradient overlays**: Subtle darkening at top/bottom edges of video to ensure text legibility

### Distinctive Components
- **Hexagonal Pause Button**: Video control uses a hexagonal outline (matching the brand's geometric DNA from the typeface), positioned bottom-right of hero sections
- **Progress Bar**: Thin white line at bottom of hero sections indicating video/slide progress
- **Badge/Tag**: bg `#969696`, text white, padding 8px, fontSize 10px, borderRadius 2px — tiny metallic pills

## 5. Layout Principles

### Spacing System
- **Base unit**: 8px
- **Full scale**: 2px, 4px, 5px, 8px, 10px, 12px, 15px, 16px, 20px, 24px, 32px, 40px, 48px, 56px
- **Button padding**: 16px (ghost), 24px (gold accent)
- **Section padding**: 48–56px vertical, 40px horizontal
- **Small spacing**: 2–5px for fine adjustments (badge padding, border spacing)

### Grid & Container
- **Framework**: Bootstrap grid system (container + row + col)
- **Max width**: 1440px (largest breakpoint)
- **Columns**: Standard 12-column Bootstrap grid
- **Full-bleed**: Hero sections break out of grid to fill viewport edge-to-edge
- **Content areas**: Centered within 1200px max-width containers

### Whitespace Philosophy
Lamborghini uses darkness as whitespace. The generous black expanses between content blocks serve the same function as white space in a light design — creating breathing room that elevates each element to the status of exhibit. A model name floating in the middle of a black viewport has the same visual weight as a gallery piece on a white wall. The absence of color IS the design.

### Border Radius Scale
| Value | Context |
|-------|---------|
| 0px | Default for everything — buttons, cards, containers, images |
| 1px | Subtle span elements |
| 2px | Badges, close buttons, cookie elements — barely perceptible |
| 20px | Toggle switches only — the sole rounded element |

## 6. Depth & Elevation

| Level | Treatment | Use |
|-------|-----------|-----|
| Level 0 (Abyss) | `#000000` flat | Page background, deepest layer |
| Level 1 (Surface) | `#181818` or `#202020` | Cards, content panels, elevated sections |
| Level 2 (Overlay) | `rgba(0,0,0,0.7)` | Modal backdrops, video dimming |
| Level 3 (Fog) | `rgba(0,0,0,0.5)` | Lighter overlays, hover states |
| Level 4 (Mist) | `rgba(0,0,0,0.25)` | Subtle depth hints |

### Shadow Philosophy
Lamborghini achieves depth through surface color layering rather than shadows. On a black canvas, traditional drop shadows are invisible — instead, the system creates elevation by shifting from absolute black to progressively lighter dark grays: `#000000` → `#181818` → `#202020` → `#494949`. This "darkness gradient" approach means that elevated elements are literally lighter than their surroundings, inverting the traditional shadow model.

### Decorative Depth
- Full-bleed video provides atmospheric depth through cinematic lighting
- The hexagonal pause button floats with a thin white outline stroke
- Progress bars at hero section bottoms create a subtle horizon line
- No gradients, glows, or blur effects on UI elements — the photography provides all visual richness

## 7. Do's and Don'ts

### Do
- Use absolute black (`#000000`) as the primary background — never dark gray as a substitute
- Apply Lamborghini Gold (`#FFC000`) exclusively for primary CTA buttons — never for decorative purposes
- Set all display headings in uppercase with LamboType — the brand voice is always SHOUTING
- Use zero border-radius on buttons and cards — sharp angles are non-negotiable
- Maintain tight line-heights (0.92–1.19) on display type to create dense, architectural text blocks
- Use the transparent ghost button (white border, 50% opacity) as the secondary CTA on dark backgrounds
- Let full-viewport video/photography carry emotional weight — UI is infrastructure, not decoration
- Reserve hexagonal geometry for UI icons and the video control button
- Use weight 400 (regular) for headlines — the typeface is distinctive enough without bold emphasis
- Keep the gray palette achromatic — all neutrals are pure gray without color tinting

### Don't
- Introduce additional accent colors beyond gold — the monochrome-plus-gold system is sacred
- Apply border-radius to buttons or cards — curved edges contradict the angular vehicle aesthetic
- Use LamboType in italic or decorative styles — the brand is always upright and direct
- Add gradients to buttons or surfaces — depth comes from surface layering, not blending
- Use light backgrounds as the primary canvas — darkness is the default state, light is the exception
- Mix lowercase into display headings — the uppercase convention communicates authority and power
- Add hover animations with scale or translate — interactions should be color-only (background/opacity shifts)
- Use Open Sans for display text — LamboType must handle all visible typography
- Create busy layouts with many small elements — Lamborghini's design is about singular, bold statements
- Apply shadows to elements — on a black canvas, shadows are meaningless; use surface color shifts instead

## 8. Responsive Behavior

### Breakpoints
| Name | Width | Key Changes |
|------|-------|-------------|
| Mobile Small | <425px | Single column, reduced type scale, stacked buttons |
| Mobile | 425-576px | Single column, hamburger nav, hero text ~40px |
| Tablet Small | 576-768px | 2-column grid begins, padding adjusts |
| Tablet | 768-1024px | 2-column layout, expanded hero, vehicle cards side-by-side |
| Desktop | 1024-1280px | Full navigation, 3+ column grids, display text at 80px |
| Desktop Large | 1280-1440px | Full layout, hero at 120px display, max-width containers |
| Wide | >1440px | Content centered, margins expand, hero fills viewport |

### Touch Targets
- Gold CTA buttons: 48px+ minimum height with 24px padding (exceeds WCAG 44×44px)
- Ghost buttons: 48px+ with 16px padding
- Hamburger menu: large touch target (~48px square)
- Hexagonal pause button: approximately 48px diameter

### Collapsing Strategy
- **Navigation**: Always hamburger-based ("MENU" + icon) — no horizontal nav expansion on any breakpoint
- **Hero video**: Maintains full-viewport height across all breakpoints, adjusting object-fit
- **Display type**: Scales from 120px (desktop) → 80px (tablet) → 54px/40px (mobile)
- **Button layout**: Side-by-side on desktop, stacks vertically on mobile
- **Grid columns**: 3-column → 2-column → 1-column progression
- **Section spacing**: Reduces from 56px → 40px → 24px vertical padding

### Image Behavior
- Hero videos use `object-fit: cover` to maintain cinematic framing at all sizes
- Vehicle images scale within their containers with maintained aspect ratios
- Event photography crops to viewport width on narrow screens
- Background images darken at edges to maintain text contrast on all viewports

## 9. Agent Prompt Guide

### Quick Color Reference
- Primary CTA: "Lamborghini Gold (#FFC000)"
- Background: "Absolute Black (#000000)"
- Surface: "Charcoal (#202020)"
- Heading text: "Pure White (#FFFFFF)"
- Body text: "Ash (#7D7D7D)"
- Link hover: "Link Blue (#3860BE)"
- Accent: "Cyan Pulse (#29ABE2)"
- Border: "Pure White (#FFFFFF) at 50% opacity"

### Example Component Prompts
- "Create a hero section with a full-viewport black background, the model name 'TEMERARIO' in LamboType at 120px uppercase weight 400 white text with 0.92 line-height, centered vertically, with a Lamborghini Gold (#FFC000) 'Discover More' button below — sharp corners, 0px radius, 24px padding, black text"
- "Design a transparent ghost button with 1px solid white border at 50% opacity, white text at 14.4px uppercase with 0.2px letter-spacing, padding 16px, on a black background — hover state changes to Teal Action (#1EAEDB) background with 70% opacity"
- "Build a navigation bar with zero visible background on absolute black, a centered bull logo, 'MENU' text label with hamburger icon on the left, and search + bookmark icons on the right — all in white, sticky position"
- "Create a news card grid on charcoal (#202020) background with white headlines at 27px uppercase, body text in #7D7D7D at 16px, and a white underlined 'Read More' link that turns #3860BE on hover"
- "Design a section divider using a 1px solid bottom border in #202020 on a black canvas — the elevation difference is purely through surface color shift, not shadow"

### Iteration Guide
When refining existing screens generated with this design system:
1. Focus on ONE component at a time — Lamborghini's system is extreme and every element must feel aggressive
2. Reference specific color names and hex codes from this document — the palette has only about 5 active colors
3. Use natural language descriptions, not CSS values — "sharp-cut golden rectangle" not "border-radius: 0px; background: #FFC000"
4. Describe the desired "feel" alongside specific measurements — "floating in total darkness" communicates the black canvas better than "background: #000000"
5. Remember that UPPERCASE IS THE DEFAULT — if text isn't uppercase at display sizes, it probably should be


---

## Brand: `nintendo-2001`

---
version: alpha
name: Nintendo.com (2001) Analysis
description: An analysis of Nintendo.com's 2001 design language — a brushed-periwinkle "console chrome" interface where every panel is a beveled metal plate, navigation glows amber over a halftone-dotted carbon bar, and bold outlined display type sits on circuit-board hero fields. A Y2K hardware aesthetic that treats the web page like the faceplate of a game system.

colors:
  primary: "#e60012"          # Nintendo Red — racetrack logo, alert
  signal: "#f68d1f"           # Signal Orange — forward cues, submit, "Play It On"
  amber: "#ecab37"            # Amber — utility buttons, info-box tabs, badges
  nav-gold: "#e48600"         # Nav Gold — top-nav menu links
  canvas: "#7a8aba"           # Periwinkle metallic — primary interface body
  canvas-soft: "#9fbee7"      # Pale Sky — secondary-nav strip, light inset panels
  sky: "#9fbee7"              # Pale Sky alias
  lavender: "#acace7"         # Pale Lavender — home hero field
  ice: "#c0d5e6"              # Pale Ice — news hero field
  periwinkle: "#8ba1d4"       # Light Periwinkle — raised mid panels
  chrome-indigo: "#3d4f97"    # Chrome Indigo — beveled borders, tab edges
  muted-indigo: "#60619c"     # Muted Indigo — inactive tabs, secondary chrome
  platinum: "#dedede"         # Platinum Gray — list-row / inset content surface
  surface: "#ffffff"          # White — content cards, list-row highlight
  carbon: "#21242e"           # Carbon Navy — nav bar, dark buttons, footer, ink
  hairline: "#5a5f8c"         # blended bevel divider
  ink: "#21242e"              # primary text on light
  ink-soft: "#3d4f97"         # secondary text / chrome labels
  on-primary: "#ffffff"       # text on dark/red/orange chrome
  systems-teal: "#206479"     # Systems hero circuit-board cyan
  games-red: "#a7282b"        # Games F-1 racing hero
  error: "#e60012"            # validation / destructive (shares brand red)

typography:
  nav-link:
    fontFamily: Arial
    fontSize: 13px
    fontWeight: 700
    lineHeight: 1
    letterSpacing: 0.5px
  ui-label:
    fontFamily: Arial
    fontSize: 11px
    fontWeight: 700
    lineHeight: 1.1
    letterSpacing: 0.5px
  display:
    fontFamily: Arial Black
    fontSize: 44px
    fontWeight: 900
    lineHeight: 1
    letterSpacing: 0
  hero-tagline:
    fontFamily: Arial
    fontSize: 15px
    fontWeight: 700
    lineHeight: 1.3
    letterSpacing: 0
  body:
    fontFamily: Arial
    fontSize: 12px
    fontWeight: 400
    lineHeight: 1.4
    letterSpacing: 0
  link:
    fontFamily: Arial
    fontSize: 12px
    fontWeight: 700
    lineHeight: 1.4
    letterSpacing: 0
  micro:
    fontFamily: Arial
    fontSize: 10px
    fontWeight: 400
    lineHeight: 1.3
    letterSpacing: 0

rounded:
  none: 0px
  xs: 2px
  sm: 4px
  md: 6px
  lg: 10px
  full: 9999px

spacing:
  xxs: 2px
  xs: 4px
  sm: 8px
  md: 12px
  lg: 16px
  xl: 24px
  xxl: 32px
  section: 48px

components:
  nav-bar:
    backgroundColor: "{colors.carbon}"
    textColor: "{colors.nav-gold}"
    typography: "{typography.nav-link}"
    rounded: "{rounded.none}"
    padding: "{spacing.sm}"
    height: 28px
  subnav-strip:
    backgroundColor: "{colors.canvas-soft}"
    textColor: "{colors.ink}"
    typography: "{typography.ui-label}"
    rounded: "{rounded.none}"
    padding: "{spacing.xs}"
  logo-pill:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.primary}"
    typography: "{typography.display}"
    rounded: "{rounded.full}"
    padding: "{spacing.xs}"
  button-primary:
    backgroundColor: "{colors.amber}"
    textColor: "{colors.carbon}"
    typography: "{typography.ui-label}"
    rounded: "{rounded.xs}"
    padding: "{spacing.md}"
  button-primary-pressed:
    backgroundColor: "{colors.nav-gold}"
    textColor: "{colors.carbon}"
    typography: "{typography.ui-label}"
    rounded: "{rounded.xs}"
    padding: "{spacing.md}"
  button-submit:
    backgroundColor: "{colors.signal}"
    textColor: "{colors.on-primary}"
    typography: "{typography.ui-label}"
    rounded: "{rounded.xs}"
    padding: "{spacing.lg}"
  button-secondary:
    backgroundColor: "{colors.carbon}"
    textColor: "{colors.on-primary}"
    typography: "{typography.ui-label}"
    rounded: "{rounded.none}"
    padding: "{spacing.md}"
  button-icon-arrow:
    backgroundColor: "{colors.signal}"
    textColor: "{colors.on-primary}"
    rounded: "{rounded.full}"
    size: 22px
  button-arrow-chip:
    backgroundColor: "{colors.signal}"
    textColor: "{colors.on-primary}"
    rounded: "{rounded.xs}"
    padding: "{spacing.xs}"
    size: 18px
  search-field:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.ink}"
    typography: "{typography.body}"
    rounded: "{rounded.xs}"
    padding: "{spacing.xs}"
    height: 20px
  text-input:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.ink}"
    typography: "{typography.body}"
    rounded: "{rounded.xs}"
    padding: "{spacing.xs}"
    height: 20px
  select-dropdown:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.ink}"
    typography: "{typography.body}"
    rounded: "{rounded.xs}"
    padding: "{spacing.xs}"
    height: 24px
  field-label:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.ink}"
    typography: "{typography.link}"
    rounded: "{rounded.none}"
    padding: "{spacing.xxs}"
  form-panel:
    backgroundColor: "{colors.platinum}"
    textColor: "{colors.ink}"
    typography: "{typography.body}"
    rounded: "{rounded.md}"
    padding: "{spacing.lg}"
  dotted-divider:
    backgroundColor: "{colors.muted-indigo}"
    textColor: "{colors.muted-indigo}"
    rounded: "{rounded.none}"
    height: 1px
  hero-panel:
    backgroundColor: "{colors.lavender}"
    textColor: "{colors.surface}"
    typography: "{typography.display}"
    rounded: "{rounded.md}"
    padding: "{spacing.lg}"
  section-label-bar:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.ui-label}"
    rounded: "{rounded.none}"
    padding: "{spacing.sm}"
  news-row:
    backgroundColor: "{colors.platinum}"
    textColor: "{colors.ink-soft}"
    typography: "{typography.link}"
    rounded: "{rounded.sm}"
    padding: "{spacing.sm}"
  featured-tile:
    backgroundColor: "{colors.carbon}"
    textColor: "{colors.on-primary}"
    typography: "{typography.micro}"
    rounded: "{rounded.sm}"
    padding: "{spacing.xxs}"
  poll-panel:
    backgroundColor: "{colors.periwinkle}"
    textColor: "{colors.ink}"
    typography: "{typography.body}"
    rounded: "{rounded.md}"
    padding: "{spacing.md}"
  radio-option:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.ink}"
    typography: "{typography.body}"
    rounded: "{rounded.full}"
    size: 12px
  info-box:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.ink}"
    typography: "{typography.body}"
    rounded: "{rounded.sm}"
    padding: "{spacing.md}"
  promo-card:
    backgroundColor: "{colors.lavender}"
    textColor: "{colors.ink}"
    typography: "{typography.display}"
    rounded: "{rounded.sm}"
    padding: "{spacing.md}"
  system-tile:
    backgroundColor: "{colors.periwinkle}"
    textColor: "{colors.ink}"
    typography: "{typography.ui-label}"
    rounded: "{rounded.sm}"
    padding: "{spacing.sm}"
  link-row-card:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.ink}"
    typography: "{typography.body}"
    rounded: "{rounded.sm}"
    padding: "{spacing.sm}"
  calendar-widget:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.ink}"
    typography: "{typography.micro}"
    rounded: "{rounded.sm}"
    padding: "{spacing.sm}"
  left-rail-tab:
    backgroundColor: "{colors.carbon}"
    textColor: "{colors.canvas-soft}"
    typography: "{typography.ui-label}"
    rounded: "{rounded.none}"
    padding: "{spacing.xs}"
  footer-bar:
    backgroundColor: "{colors.carbon}"
    textColor: "{colors.canvas-soft}"
    typography: "{typography.micro}"
    rounded: "{rounded.none}"
    padding: "{spacing.lg}"
  esrb-badge:
    backgroundColor: "{colors.amber}"
    textColor: "{colors.carbon}"
    typography: "{typography.micro}"
    rounded: "{rounded.xs}"
    padding: "{spacing.xxs}"
  esrb-rating-square:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.carbon}"
    typography: "{typography.ui-label}"
    rounded: "{rounded.xs}"
    size: 20px
  mascot-bubble:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.carbon}"
    typography: "{typography.micro}"
    rounded: "{rounded.lg}"
    padding: "{spacing.sm}"

  # ─── Examples (illustrative) — kit-mirror demonstration surfaces ───
  ex-pricing-tier:
    description: "Default Pricing tier card. Re-uses feature-card chrome with brand canvas-soft surface."
    backgroundColor: "{colors.canvas-soft}"
    textColor: "{colors.ink}"
    borderColor: "{colors.hairline}"
    rounded: "{rounded.lg}"
    padding: "{spacing.md}"
  ex-pricing-tier-featured:
    description: "Featured/highlighted tier — polarity-flipped surface (dark fill + light text in light mode, light fill + dark text in dark mode)."
    backgroundColor: "{colors.ink}"
    textColor: "{colors.on-primary}"
    rounded: "{rounded.lg}"
    padding: "{spacing.md}"
  ex-product-selector:
    description: "What's Included summary card — re-purposed for SaaS / B2B verticals (NOT a literal product gallery)."
    backgroundColor: "{colors.surface}"
    rounded: "{rounded.lg}"
    padding: "{spacing.md}"
  ex-cart-drawer:
    description: "Subscription summary — re-purposed for SaaS / B2B (line items per add-on, not literal cart)."
    backgroundColor: "{colors.surface}"
    rounded: "{rounded.lg}"
    padding: "{spacing.md}"
    item-divider: "{colors.hairline}"
  ex-app-shell-row:
    description: "Sidebar nav row inside the App Shell example. Active state uses brand primary as the indicator."
    backgroundColor: "{colors.canvas}"
    activeIndicator: "{colors.primary}"
    rounded: "{rounded.sm}"
    padding: "{spacing.sm} {spacing.md}"
  ex-data-table-cell:
    description: "Default data-table th + td chrome. Header uses mono-caps eyebrow typography; body uses body-sm."
    headerBackground: "{colors.canvas-soft}"
    headerTypography: "{typography.ui-label}"
    bodyTypography: "{typography.body}"
    cellPadding: "{spacing.xs} {spacing.sm}"
    rowBorder: "{colors.hairline}"
  ex-auth-form-card:
    description: "Sign-in / sign-up card. Re-uses feature-card chrome with text-input primitives inside."
    backgroundColor: "{colors.surface}"
    rounded: "{rounded.lg}"
    padding: "{spacing.md}"
  ex-modal-card:
    description: "Modal dialog surface — same chrome as feature-card with elevated shadow."
    backgroundColor: "{colors.surface}"
    rounded: "{rounded.lg}"
    padding: "{spacing.md}"
  ex-empty-state-card:
    description: "Empty-state illustration frame."
    backgroundColor: "{colors.canvas-soft}"
    rounded: "{rounded.lg}"
    padding: "{spacing.xl}"
    captionTypography: "{typography.body}"
  ex-toast:
    description: "Toast notification surface — feature-card shape + medium shadow."
    backgroundColor: "{colors.surface}"
    rounded: "{rounded.md}"
    padding: "{spacing.sm} {spacing.md}"
    typography: "{typography.body}"

---


## Overview

Nintendo.com circa 2001 is the web rendered as **console hardware**. Where most sites of the era reached for either grunge texture or corporate gradients, this interface builds itself out of **brushed-periwinkle metal plates** — every region is a discrete beveled panel, edge-lit with a brighter highlight on top and a `{colors.chrome-indigo}` shadow line beneath, as if stamped from the same injection-molded plastic as a Game Boy. The whole page reads as one machine faceplate: a body of `{colors.canvas}` periwinkle chrome carrying inset modules, with the corners of the largest panels physically **chamfered** (cut at 45°) rather than rounded, reinforcing the manufactured-object feeling.

The system runs on a tight three-voice contrast. The structural voice is the cool periwinkle-to-indigo chrome (`{colors.canvas}`, `{colors.periwinkle}`, `{colors.chrome-indigo}`). The authority voice is `{colors.carbon}` carbon-navy — the top navigation bar, the right-rail action buttons, and the footer, all near-black slabs printed with a faint **halftone dot-matrix texture** that evokes a speaker grille. The energy voice is warm and reserved for one job only: telling you where to go. `{colors.nav-gold}` lights the primary menu words, `{colors.amber}` fills the utility chips and badges, and `{colors.signal}` orange marks every "forward" cue — the round arrow buttons, the chevron chips beside each headline, the Submit button. Warmth in this system always means *action*; the cool chrome never carries it.

Atmosphere comes from the **hero fields**, which break the periwinkle calm with full-bleed product photography over textured backdrops — a circuit-board cyan on Systems, a motion-blurred racetrack red on Games, a soft lavender wash on Home — each topped with chunky `{typography.display}` wordmarks rendered in white with a heavy outline and hard drop shadow, the visual signature of game-box cover type. A pixel-eared Mario leans in from the masthead with a "Welcome to Nintendo.com!" speech bubble, anchoring the entire machine to the brand's playful character voice.

**Key Characteristics:**
- Every UI region is a **beveled metal plate** in `{colors.canvas}` periwinkle, edge-lit on top and shadow-lined with `{colors.chrome-indigo}` below — the page is assembled, not laid out.
- **Chamfered (cut-corner) panel geometry** on the largest modules; most chrome is sharp-edged (`{rounded.none}`), with rounding reserved for the logo pill, radio dots, and circle-arrow badges (`{rounded.full}`).
- A **carbon-navy command layer** (`{colors.carbon}`) with halftone-dot texture carries the top nav, right-rail buttons, and footer.
- Warmth is rationed as **directional signal only**: `{colors.nav-gold}` for menu words, `{colors.amber}` for utility chips/badges, `{colors.signal}` for every forward/Submit cue.
- **Photographic hero fields** cycle a page-specific accent tint (`{colors.lavender}` home → `{colors.systems-teal}` systems → `{colors.games-red}` games) under outlined `{typography.display}` box-art wordmarks.
- A dense, **modular grid** — masthead, dual nav bars, hero, then a two-thirds content column of stacked list/feature panels beside a one-third right action rail — packed with minimal whitespace.
- **Character-led**: the Mario mascot speech-bubble masthead and ESRB badge frame the chrome with brand personality and regulatory trust marks.

## Colors

The palette is a **cool metallic chassis with rationed warm signal**. Read it as three layers: the periwinkle chrome that everything is built from, the carbon command slabs, and the warm wayfinding accents that are the only saturated color in the steady-state interface.

### Brand & Accent
- **Nintendo Red** (`{colors.primary}` — #e60012): The racetrack logo wordmark and the brand's anchor hue. Used sparingly as pure brand identity and doubled as the validation/alert color. Never a surface fill outside the logo plate.
- **Signal Orange** (`{colors.signal}` — #f68d1f): The "go forward" color. Fills every round arrow button, every chevron chip beside a headline, the Submit button, and the "Play It On" platform badges. If something advances you, it is orange.
- **Amber** (`{colors.amber}` — #ecab37): Utility energy. Fills the Code Bank / Game Finder / Go chips, the info-box header tabs, the sweepstakes stars, and the ESRB Privacy-Certified badge. Distinguished from Signal Orange by being more golden and reserved for *tools and marks* rather than *forward motion*.
- **Nav Gold** (`{colors.nav-gold}` — #e48600): The deeper orange-gold reserved exclusively for the primary navigation words (Games, Systems, News, Nsider, Downloads) glowing on the carbon bar.

### Surface
- **Periwinkle Metallic** (`{colors.canvas}` — #7a8aba): The primary interface body — the brushed-metal chrome that every module is inset into.
- **Light Periwinkle** (`{colors.periwinkle}` — #8ba1d4): Raised mid panels (poll panel, system tiles) — one step brighter than canvas for elevation.
- **Pale Sky** (`{colors.sky}` / `{colors.canvas-soft}` — #9fbee7): The secondary-nav strip and light inset panel fills.
- **Pale Lavender** (`{colors.lavender}` — #acace7): The home hero field and side promo cards.
- **Pale Ice** (`{colors.ice}` — #c0d5e6): The News hero panel field.
- **Chrome Indigo** (`{colors.chrome-indigo}` — #3d4f97): The beveled border / shadow line under every plate, and the leading angled edge of nav tabs.
- **Muted Indigo** (`{colors.muted-indigo}` — #60619c): Inactive tabs and recessed chrome.
- **Platinum Gray** (`{colors.platinum}` — #dedede): The list-row and inset content surface — news headlines and archive rows sit on this cool platinum.
- **White** (`{colors.surface}` — #ffffff): Content cards, form fields, the logo pill, and list-row highlight.

### Text
- **Carbon Navy** (`{colors.ink}` — #21242e): Primary text on light chrome, and the fill of the dark command layer (nav bar, rail buttons, footer).
- **Chrome Indigo** (`{colors.ink-soft}` — #3d4f97): Secondary text and small-caps chrome labels.
- **White** (`{colors.on-primary}` — #ffffff): Text on carbon, red, and orange chrome.

### Semantic
- **Error / Alert** (`{colors.error}` — #e60012): Validation and destructive states reuse the brand red.
- **Systems Teal** (`{colors.systems-teal}` — #206479): Page-accent tint — the Systems hero's circuit-board cyan field.
- **Games Red** (`{colors.games-red}` — #a7282b): Page-accent tint — the Games hero's motion-blurred racetrack field.

## Typography

### Font Family
The era's web-safe reality is **Arial / Helvetica** throughout — there are no webfonts. The system gets its character not from typeface choice but from *treatment*: tight uppercase tracking on every chrome label, and a heavy outlined-and-shadowed display style for hero wordmarks that mimics console box-art logotype. Body copy is plain small Arial; links are the same family at bold weight in `{colors.ink-soft}`.

The micro-labels (vertical left-rail tabs, footer fine print) render with the soft pixelation characteristic of small bitmap-rendered Arial of the period — for a faithful reproduction, pair Arial with a pixel face such as **Silkscreen** or **VT323** at the 10–11px label sizes.

### Hierarchy

| Token | Size | Weight | Line Height | Letter Spacing | Use |
|---|---|---|---|---|---|
| `{typography.display}` | 44px | 900 | 1 | 0 | Hero box-art wordmarks (white, heavy outline + hard drop shadow) |
| `{typography.hero-tagline}` | 15px | 700 | 1.3 | 0 | Hero supporting line ("Gorgeous graphics, great sound…") |
| `{typography.nav-link}` | 13px | 700 | 1 | 0.5px | Primary nav menu words, uppercase |
| `{typography.ui-label}` | 11px | 700 | 1.1 | 0.5px | Section header labels, panel titles, button text — uppercase |
| `{typography.link}` | 12px | 700 | 1.4 | 0 | News headline links, "Read More" |
| `{typography.body}` | 12px | 400 | 1.4 | 0 | Descriptions, poll text, info-box copy |
| `{typography.micro}` | 10px | 400 | 1.3 | 0 | Footer copyright, calendar cells, fine print |

### Principles
- **Uppercase + tracking is the chrome voice.** Every structural label — nav words, panel headers ("Official News", "Featured Sites", "Player's Poll"), button text — is uppercase Arial Bold with a half-pixel of tracking. It reads like silkscreened legends on a controller.
- **Display type is outlined, never flat.** Hero wordmarks always carry a thick contrasting outline and a hard offset shadow so they pop off the photographic field — the box-art convention.
- **Body stays small and quiet.** At 12px, descriptive copy never competes with the chrome; the hierarchy is carried entirely by the labels and the photography.

### Note on Font Substitutes
Arial is freely available system-wide and needs no substitute. To recreate the period bitmap rendering of micro-labels, layer a pixel font (**Silkscreen**, **VT323**, or **Press Start 2P** for the chunkiest legends) at 10–11px and disable anti-aliasing. The display wordmarks are bespoke logotypes; the closest open substitute is **Archivo Black** (italicized) or **Arial Black** with a CSS text-stroke outline and `text-shadow` offset.

## Layout

### Spacing System
- **Base unit**: 8px (`{spacing.sm}`) — the gutter rhythm between list rows and grid cells.
- **Tokens**: `{spacing.xxs}` 2px · `{spacing.xs}` 4px · `{spacing.sm}` 8px · `{spacing.md}` 12px · `{spacing.lg}` 16px · `{spacing.xl}` 24px · `{spacing.xxl}` 32px · `{spacing.section}` 48px
- Panels carry **12px interior padding** (`{spacing.md}`); larger content modules use **16px** (`{spacing.lg}`). Inter-module gaps run 16–24px. The layout is deliberately dense — whitespace is a structural seam between plates, not a luxury.

### Grid & Container
- **Fixed-width canvas** ~780–830px wide (a desktop-era fixed table layout, centered). No fluid scaling — the interface is sized to a single target window like an application.
- **Masthead row**: Mario mascot + speech bubble (left) and search module (right) float above the chrome.
- **Dual nav bars**: a carbon primary bar (logo + 5 section words + Code Bank / Game Finder utility chips) stacked over a periwinkle secondary strip (Parents, Customer Service, Corporate, Global, Privacy, Store, Contact).
- **Body**: a full-width hero panel, then a **two-column split** — a ~two-thirds content column of stacked panels (Official News list, Featured Sites 2×2 grid, etc.) beside a ~one-third **right action rail** (Login / Subscribe / Newsletter / Help buttons, an info box, a side promo card).
- **Left rail**: a thin vertical strip of rotated tabs (Top Ten, Top Rentals, Player's Choice, ESRB Ratings) clipped to the chrome edge.

### Whitespace Philosophy
Empty space is **engineered seam**, not breathing room. Modules butt against each other separated by thin `{colors.chrome-indigo}` bevel lines and a few pixels of canvas, so the eye reads grouped plates. The density is intentional: it makes the page feel like a packed control panel where everything is one click away.

### Responsive Strategy

#### Breakpoints
| Name | Width | Key Changes |
|---|---|---|
| Desktop (only) | ~780–830px fixed | The native, sole target — a fixed-width application-style layout |
| Narrow window | < 780px | Horizontal scroll (no reflow); the table layout does not collapse |

This is a **pre-responsive, fixed-canvas** design. It was authored for a single desktop window size and does not reflow. A faithful *modern* re-implementation would preserve the fixed chrome metaphor on desktop and, below ~720px, stack the right action rail beneath the content column and collapse the dual nav bars into a single carbon bar with a disclosure toggle.

#### Touch Targets
Not a consideration in the original (mouse-only era); buttons and chips are 18–28px tall. A modern port must enlarge the `{components.button-primary}`, `{components.button-icon-arrow}`, and `{components.radio-option}` hit areas to a 44×44px minimum.

#### Collapsing Strategy
On a modern narrow viewport: dual nav bars → single carbon bar + menu disclosure; two-column body → single stacked column with the right rail moving below content; the left rotated-tab strip → a horizontal scroll chip row or removed; fixed hero → fluid full-bleed hero retaining the outlined wordmark.

#### Image Behavior
Hero fields are **full-bleed photographic plates** clipped to the panel's beveled rectangle; featured-site and game tiles are fixed-pixel thumbnails (~95×60px) in a tight grid. No lazy loading (era predates it). Product renders sit on textured backdrops rather than transparent cutouts.

## Elevation & Depth

Depth in this system is **physical bevel simulation**, not soft shadow. There is no blurred drop-shadow vocabulary; instead every plate is given the illusion of being a raised piece of molded plastic.

| Level | Treatment | Use |
|---|---|---|
| 0 — Inset | Recessed into canvas; darker `{colors.chrome-indigo}` top edge, lighter bottom edge | List rows, form fields, the canvas body itself |
| 1 — Plate | Flush panel; lighter top highlight, `{colors.chrome-indigo}` shadow line beneath | Content panels, system tiles, info box |
| 2 — Raised chip | Beveled button with bright top edge + hard bottom shadow | Utility chips, Go/Submit buttons, nav tabs |
| 3 — Command slab | `{colors.carbon}` near-black with halftone texture, sits "above" the chrome | Top nav bar, right-rail buttons, footer |

### Decorative Depth
Depth is also carried by **texture and photography**: the halftone dot-matrix on carbon slabs reads as a recessed speaker grille; hero fields use motion-blur, circuit-board patterns, and product renders with their own cast shadows to create literal pictorial depth; chamfered corners on the outer chrome suggest a machined faceplate edge. The left-rail rotated tabs appear to tuck *behind* the main chrome, a small but effective layered cue.

## Shapes

### Border Radius Scale

| Token | Value | Use |
|---|---|---|
| `{rounded.none}` | 0px | The default — nav bar, footer, most chrome plates (sharp / chamfered, not rounded) |
| `{rounded.xs}` | 2px | Utility buttons, form fields, badges |
| `{rounded.sm}` | 4px | Small panels, featured tiles, list rows |
| `{rounded.md}` | 6px | Content panels, hero panel |
| `{rounded.lg}` | 10px | Outer section panels, mascot bubble |
| `{rounded.full}` | 9999px | Logo racetrack pill, radio dots, circle-arrow badges |

The signature is **sharpness with rationed roundness**. The chrome is hard-edged and frequently *chamfered* (corners cut at 45° rather than curved) — this is the manufactured-faceplate look. Roundness appears only where it signals a physical control: the fully-pill logo, the round radio buttons, and the round Signal-Orange arrow badges. A modern reproduction should resist the urge to soften every corner; the tension between sharp plates and the few pill elements is the whole character.

### Photography Geometry
Hero photography fills beveled rectangles at roughly 4:1 (banner) and 16:9 proportions, full-bleed within the panel. Featured-site and game thumbnails are near-4:3 fixed tiles (~95×60px) framed by a 1–2px `{colors.chrome-indigo}` edge with `{rounded.sm}` corners. The mascot is a transparent cutout overlapping the masthead, breaking the rectangular grid for personality.

## Components

> No hover states are documented. Each spec below covers Default and (where extracted) Pressed/Active. Variants live as separate `components:` entries.

### Navigation

**`nav-bar`** — Primary top navigation
- `{colors.carbon}` slab with a faint halftone-dot texture, ~28px tall, carrying the `{components.logo-pill}` at left, the five `{colors.nav-gold}` section words in `{typography.nav-link}` uppercase, and the amber Code Bank / Game Finder utility chips at right. Sharp corners (`{rounded.none}`), `{spacing.sm}` padding.

**`subnav-strip`** — Secondary navigation
- A `{colors.canvas-soft}` pale-sky strip directly beneath the nav bar, carrying utility links (Parents, Customer Service, Corporate, Global, Privacy, Store, Contact) in `{typography.ui-label}` `{colors.ink}`, separated by thin dividers. Sharp, `{spacing.xs}` padding.

**`left-rail-tab`** — Rotated section tabs
- A thin vertical strip of `{colors.carbon}` tabs (Top Ten, Top Rentals, Player's Choice, ESRB Ratings) with vertically-rotated `{typography.ui-label}` text in `{colors.canvas-soft}`, clipped to the left chrome edge. Sharp corners, `{spacing.xs}` padding.

### Brand & Masthead

**`logo-pill`** — Nintendo racetrack logo
- The wordmark in `{colors.primary}` red set inside a white `{rounded.full}` racetrack pill, outlined. Sits at the left of the nav bar. `{spacing.xs}` padding.

**`mascot-bubble`** — Mario welcome speech bubble
- A white `{rounded.lg}` rounded-rectangle speech bubble with a tail, carrying "Welcome to Nintendo.com!" in `{typography.micro}` `{colors.carbon}`, paired with the Mario cutout in the masthead. `{spacing.sm}` padding.

### Buttons

**`button-primary`** — Amber utility / Go chip
- `{colors.amber}` fill, `{colors.carbon}` text in `{typography.ui-label}`, `{rounded.xs}` corners, `{spacing.md}` padding, with a beveled top highlight. The everyday tool button (Code Bank, Game Finder, Go).
- Pressed state in **`button-primary-pressed`** — fill deepens to `{colors.nav-gold}`.

**`button-submit`** — Forward / Submit
- `{colors.signal}` orange fill, `{colors.on-primary}` white text in `{typography.ui-label}`, `{rounded.xs}`, `{spacing.lg}` padding. The "commit" action (poll Submit, Go on archives).

**`button-secondary`** — Right-rail action button
- `{colors.carbon}` near-black slab, `{colors.on-primary}` white text in `{typography.ui-label}`, sharp `{rounded.none}` corners, `{spacing.md}` padding, with a small leading icon. Used for Login / Subscribe / Newsletter / Help in the right rail.

**`button-icon-arrow`** — Round forward arrow
- A 22px `{colors.signal}` orange `{rounded.full}` disc with a white chevron — the primary "go" affordance on hero panels and section links.

**`button-arrow-chip`** — Headline chevron chip
- An 18px `{colors.signal}` orange `{rounded.xs}` chip with a white forward chevron, sitting at the right end of each `{components.news-row}` to advance to the article.

### Inputs & Forms

**`search-field`** — Masthead search input
- White `{colors.surface}` field, `{colors.ink}` text in `{typography.body}`, `{rounded.xs}` corners, 1px `{colors.hairline}` border, ~20px tall, paired with an "All" category dropdown and an amber Go chip.

**`text-input`** — Generic text field
- Same chassis as `search-field`: white fill, `{colors.ink}` text, `{rounded.xs}`, `{colors.hairline}` 1px border, `{spacing.xs}` padding. Used in the Login form (Username / Password / E-mail), news-archive keyword, and date fields.

**`select-dropdown`** — Native select ("Click to choose")
- A white `{colors.surface}` field with `{colors.ink}` text in `{typography.body}`, `{rounded.xs}` corners, and a hard 1px `{colors.carbon}` border (sharper than the inputs) closing on a beveled native dropdown-chevron button at the right edge. ~24px tall, `{spacing.xs}` padding. Used for the Register form's Month / Year pickers.

**`field-label`** — Inline form label
- A bold `{colors.ink}` label in `{typography.link}` (Arial Bold 12px) sitting left of its input (Username, Password, E-mail, Month, Year). `{rounded.none}`, `{spacing.xxs}` padding.

**`radio-option`** — Poll radio button
- A 12px white `{rounded.full}` radio dot with a `{colors.hairline}` ring, paired with `{typography.body}` option text. Used in the Player's Poll.

**`form-panel`** — Form container (Login / Register)
- A `{colors.platinum}` light-gray `{rounded.md}` panel holding a form, capped by a `{components.section-label-bar}` header (≡ LOG IN / ≡ REGISTER). `{spacing.lg}` interior. The Login page pairs two side by side.

**`dotted-divider`** — Dotted hairline rule
- A 1px dotted `{colors.muted-indigo}` separator rule used between form sub-sections (the "Note:" line, "Forgot Your Password?"). A recurring Y2K-chrome detail — dotted rather than solid.

### Cards & Panels

**`hero-panel`** — Photographic hero plate
- A `{rounded.md}` beveled rectangle filled with full-bleed product photography over a page-tinted field (`{colors.lavender}` / `{colors.systems-teal}` / `{colors.games-red}`), topped with an outlined `{typography.display}` wordmark and a `{components.button-icon-arrow}` call-to-action. `{spacing.lg}` interior.

**`section-label-bar`** — Panel header
- A `{colors.canvas}` header strip with a small grid/list glyph and an uppercase `{typography.ui-label}` title ("Official News", "Featured Sites", "Player's Poll"). Sharp corners, `{spacing.sm}` padding. Caps every content module.

**`news-row`** — Headline list row
- A `{colors.platinum}` `{rounded.sm}` row with a small category icon, a `{typography.link}` headline in `{colors.ink-soft}`, and a trailing `{components.button-arrow-chip}`. `{spacing.sm}` padding. Stacked into the Official News / Other Headlines lists.

**`featured-tile`** — Featured-site thumbnail
- A `{colors.carbon}`-framed `{rounded.sm}` tile (~95×60px) holding a screenshot thumbnail with a `{typography.micro}` URL caption (e.g. www.pokemon.com). Tight `{spacing.xxs}` padding, arranged in a 2×2 grid.

**`poll-panel`** — Player's Poll module
- A `{colors.periwinkle}` raised `{rounded.md}` panel posing a question, listing `{components.radio-option}` choices, and closing with a `{components.button-submit}`. `{spacing.md}` interior.

**`info-box`** — "What Is" explainer card
- A white `{colors.surface}` `{rounded.sm}` card with an amber header tab ("What Is — Game Finder") and `{typography.body}` explanatory copy. `{spacing.md}` padding. Sits in the right rail.

**`promo-card`** — Side product promo
- A `{colors.lavender}` `{rounded.sm}` card carrying an outlined product wordmark (e.g. Game Boy Advance) over a small product render, in the right rail. `{spacing.md}` padding.

**`system-tile`** — Hardware grid tile (Systems page)
- A `{colors.periwinkle}` `{rounded.sm}` tile holding a console render over a circuit-board backdrop with an outlined system name (Nintendo 64, Super Nintendo, Game Boy). `{spacing.sm}` padding, arranged in a 2×3 grid.

**`link-row-card`** — Utility link card (Systems page)
- A white `{rounded.sm}` card with an amber label tab (Technical Help, Store Locator, Online Store), a character icon, and a one-line `{typography.body}` description. `{spacing.sm}` padding.

**`calendar-widget`** — Month calendar (News page)
- A white `{rounded.sm}` grid calendar in `{typography.micro}`, with a `{colors.carbon}` caption header (e.g. "June 01"), highlighted event dates, and a month-select dropdown. `{spacing.sm}` padding.

### Badges & Footer

**`esrb-badge`** — ESRB Privacy-Certified mark
- A small `{colors.amber}` `{rounded.xs}` badge reading "ESRB — Privacy Certified" in `{typography.micro}` `{colors.carbon}`, pinned in the footer.

**`esrb-rating-square`** — Game content-rating square
- A 20px white `{rounded.xs}` square stamping the content-rating letter (E, T) in `{typography.ui-label}` `{colors.carbon}`, on each game card.

**`footer-bar`** — Page footer
- A `{colors.carbon}` chamfered slab with the "©1997–2001 Nintendo…" copyright in `{typography.micro}` `{colors.canvas-soft}`, the ESRB badge, and a privacy link. Sharp corners, `{spacing.lg}` padding.

### Examples (illustrative)

> Kit-mirror demonstration surfaces. Each `ex-*` entry references brand-native primitives so downstream consumers (`/preview-design`, `/generate-kit`) re-skin the same 10 surfaces consistently.

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
- Build every region as a **beveled plate**: a `{colors.canvas}` body with a brighter top edge and a `{colors.chrome-indigo}` shadow line beneath. The "assembled machine" feel depends on it.
- Reserve warm color for **wayfinding only** — `{colors.nav-gold}` for nav words, `{colors.amber}` for utility/badges, `{colors.signal}` for forward/Submit. Cool chrome never carries action color.
- Keep structural labels **uppercase Arial Bold with 0.5px tracking** (`{typography.ui-label}`) — it is the silkscreen-legend voice of the whole system.
- Render hero wordmarks as **outlined + drop-shadowed `{typography.display}`** over full-bleed photographic fields tinted per page.
- Use `{colors.carbon}` with halftone texture for the **command layer** (nav, right rail, footer) to separate "system controls" from "content."
- Let panels **butt together** with thin bevel seams; density is the intended texture.
- Default corners to **sharp/chamfered** (`{rounded.none}`); spend roundness only on the logo pill, radio dots, and circle-arrow badges.

### Don't
- Don't soften every corner — turning the sharp chrome into a uniformly rounded card system erases the manufactured-faceplate identity.
- Don't introduce a **soft blurred drop-shadow** elevation language; depth here is hard bevels and pictorial photography, not Material elevation.
- Don't let `{colors.signal}` and `{colors.amber}` bleed into decorative use — warm color must always mean "act here."
- Don't add accent colors outside the page-tint heroes (`{colors.systems-teal}`, `{colors.games-red}`); the steady-state chrome is strictly cool periwinkle + carbon.
- Don't widen body copy or whitespace into an airy modern layout; the packed, fixed-canvas density is the brand.
- Don't flatten the dual-nav structure (gold primary words over the pale secondary strip) into one bar — the layered command hierarchy is signature.
- Don't render hero or system wordmarks as flat text; without the outline + shadow they lose the box-art reference entirely.


---

## Brand: `playstation`

---
version: alpha
name: PlayStation-design-analysis
description: |
  A three-surface marketing system organized around alternating black, white, and PlayStation Blue chapters that scroll past the viewer like a console launch trailer. Each section has a single editorial purpose — hero photography, console product render, PS Plus tier callout, news strip — and each owns one of three full-bleed canvas modes. The chrome is unusually quiet for a gaming brand: bright PlayStation Blue (`#0070d1`) carries every primary CTA as a fully-rounded pill, the proprietary SST face renders display copy at a signature weight 300 (light) for an airy, premium feel, and a crisp 8px-radius secondary card system carries product info on either canvas mode. The system never decorates — no gradient backgrounds on chrome, no atmospheric mesh, no drop shadows beyond a faint section-divide. Imagery does all the heavy lifting: console glamour shots, game key art, and PS Plus tier illustrations occupy 60-90% of every section, with copy compressed into a small editorial slot.

colors:
  primary: "#0070d1"
  primary-pressed: "#0064b7"
  primary-active: "#004d8d"
  on-primary: "#ffffff"
  link-light: "#0064b7"
  link-dark: "#53b1ff"
  commerce: "#d53b00"
  commerce-pressed: "#aa2f00"
  commerce-link-base: "#d63d00"
  on-commerce: "#ffffff"
  ink: "#000000"
  ink-deep: "#121314"
  ink-elevated: "#181818"
  charcoal: "#1f2024"
  body-light: "rgba(0,0,0,0.6)"
  mute-light: "#6b6b6b"
  ash-light: "#cccccc"
  body-dark: "rgba(255,255,255,0.7)"
  mute-dark: "rgba(229,229,229,0.55)"
  ash-dark: "rgba(229,229,229,0.2)"
  canvas-light: "#ffffff"
  surface-soft: "#f3f3f3"
  surface-card: "#f5f7fa"
  surface-filter: "rgba(245,247,250,0.3)"
  canvas-dark: "#000000"
  surface-dark-elevated: "#121314"
  surface-dark-card: "#181818"
  hairline-light: "#f3f3f3"
  hairline-dark: "rgba(229,229,229,0.2)"
  on-dark: "#ffffff"
  on-dark-mute: "#cccccc"
  warning: "#c81b3a"
  ps-plus-gold-start: "#ffce21"
  ps-plus-gold-mid: "#f5a623"
  ps-plus-gold-end: "#ee8e00"
  marathon-yellow: "#deff20"

typography:
  display-xl:
    fontFamily: PlayStation SST
    fontSize: 54px
    fontWeight: 300
    lineHeight: 1.25
    letterSpacing: -0.1px
  display-lg:
    fontFamily: PlayStation SST
    fontSize: 44px
    fontWeight: 300
    lineHeight: 1.25
    letterSpacing: 0.1px
  display-md:
    fontFamily: PlayStation SST
    fontSize: 35px
    fontWeight: 300
    lineHeight: 1.25
    letterSpacing: 0
  heading-xl:
    fontFamily: PlayStation SST
    fontSize: 28px
    fontWeight: 300
    lineHeight: 1.25
    letterSpacing: 0.1px
  heading-lg:
    fontFamily: PlayStation SST
    fontSize: 22px
    fontWeight: 300
    lineHeight: 1.25
    letterSpacing: 0.1px
  heading-md:
    fontFamily: PlayStation SST
    fontSize: 18px
    fontWeight: 600
    lineHeight: 1
    letterSpacing: 0
  body-md:
    fontFamily: PlayStation SST
    fontSize: 18px
    fontWeight: 400
    lineHeight: 1.5
    letterSpacing: 0.1px
  body-strong:
    fontFamily: PlayStation SST
    fontSize: 18px
    fontWeight: 500
    lineHeight: 1.25
    letterSpacing: 0.4px
  body-sm:
    fontFamily: PlayStation SST
    fontSize: 16px
    fontWeight: 400
    lineHeight: 1.5
    letterSpacing: 0
  caption-md:
    fontFamily: PlayStation SST
    fontSize: 14px
    fontWeight: 400
    lineHeight: 1.5
    letterSpacing: 0
  caption-sm:
    fontFamily: PlayStation SST
    fontSize: 12px
    fontWeight: 500
    lineHeight: 1.5
    letterSpacing: 0
  link-md:
    fontFamily: PlayStation SST
    fontSize: 18px
    fontWeight: 400
    lineHeight: 1.5
    letterSpacing: 0
  button-lg:
    fontFamily: PlayStation SST
    fontSize: 18px
    fontWeight: 700
    lineHeight: 1.25
    letterSpacing: 0.45px
  button-md:
    fontFamily: PlayStation SST
    fontSize: 14px
    fontWeight: 700
    lineHeight: 1.25
    letterSpacing: 0.324px

rounded:
  none: 0px
  sm: 4px
  md: 8px
  lg: 16px
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
    typography: "{typography.button-lg}"
    rounded: "{rounded.full}"
    padding: 12px 28px
    height: 48px
  button-primary-pressed:
    backgroundColor: "{colors.primary-pressed}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button-lg}"
    rounded: "{rounded.full}"
  button-commerce:
    backgroundColor: "{colors.commerce}"
    textColor: "{colors.on-commerce}"
    typography: "{typography.button-lg}"
    rounded: "{rounded.full}"
    padding: 12px 28px
    height: 48px
  button-commerce-pressed:
    backgroundColor: "{colors.commerce-pressed}"
    textColor: "{colors.on-commerce}"
    typography: "{typography.button-lg}"
    rounded: "{rounded.full}"
  button-secondary-light:
    backgroundColor: "transparent"
    textColor: "{colors.ink}"
    typography: "{typography.button-lg}"
    rounded: "{rounded.full}"
    padding: 12px 28px
    height: 48px
  button-secondary-dark:
    backgroundColor: "transparent"
    textColor: "{colors.on-dark}"
    typography: "{typography.button-lg}"
    rounded: "{rounded.full}"
    padding: 12px 28px
    height: 48px
  button-disabled:
    backgroundColor: "{colors.surface-soft}"
    textColor: "{colors.ash-light}"
    rounded: "{rounded.full}"
  text-input:
    backgroundColor: "{colors.canvas-light}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.sm}"
    padding: 12px 16px
    height: 48px
  text-input-focused:
    backgroundColor: "{colors.canvas-light}"
    textColor: "{colors.ink}"
    rounded: "{rounded.sm}"
  filter-pill:
    backgroundColor: "{colors.surface-filter}"
    textColor: "{colors.ink}"
    typography: "{typography.button-md}"
    rounded: "{rounded.full}"
    padding: 8px 16px
  filter-pill-active:
    backgroundColor: "{colors.canvas-light}"
    textColor: "{colors.ink}"
    typography: "{typography.button-md}"
    rounded: "{rounded.full}"
  product-card:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.md}"
    padding: 24px
  product-card-dark:
    backgroundColor: "{colors.surface-dark-card}"
    textColor: "{colors.on-dark}"
    typography: "{typography.body-md}"
    rounded: "{rounded.md}"
    padding: 24px
  game-tile:
    backgroundColor: "{colors.surface-dark-elevated}"
    textColor: "{colors.on-dark}"
    typography: "{typography.body-sm}"
    rounded: "{rounded.md}"
    padding: 0px
  feature-card:
    backgroundColor: "{colors.canvas-light}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.md}"
    padding: 32px
  hero-band-blue:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.display-md}"
    rounded: "{rounded.none}"
    padding: 96px 48px
  hero-band-dark:
    backgroundColor: "{colors.canvas-dark}"
    textColor: "{colors.on-dark}"
    typography: "{typography.display-xl}"
    rounded: "{rounded.none}"
    padding: 96px 48px
  hero-band-light:
    backgroundColor: "{colors.canvas-light}"
    textColor: "{colors.ink}"
    typography: "{typography.display-xl}"
    rounded: "{rounded.none}"
    padding: 96px 48px
  ps-plus-banner:
    backgroundColor: "{colors.surface-dark-elevated}"
    textColor: "{colors.on-dark}"
    typography: "{typography.heading-xl}"
    rounded: "{rounded.md}"
    padding: 48px 32px
  carousel-paddle:
    backgroundColor: "rgba(255,255,255,0.16)"
    textColor: "{colors.on-dark}"
    rounded: "{rounded.full}"
    size: 48px
  pagination-dot:
    backgroundColor: "{colors.ash-dark}"
    rounded: "{rounded.full}"
    size: 8px
  pagination-dot-active:
    backgroundColor: "{colors.on-dark}"
    rounded: "{rounded.full}"
    size: 8px
  badge-info:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.caption-sm}"
    rounded: "{rounded.full}"
    padding: 4px 10px
  primary-nav:
    backgroundColor: "{colors.canvas-dark}"
    textColor: "{colors.on-dark}"
    typography: "{typography.body-strong}"
    rounded: "{rounded.none}"
    height: 48px
  sub-nav:
    backgroundColor: "{colors.canvas-dark}"
    textColor: "{colors.on-dark}"
    typography: "{typography.caption-md}"
    rounded: "{rounded.none}"
    height: 40px
  footer-section:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.caption-md}"
    rounded: "{rounded.none}"
    padding: 48px 32px
  support-search-bar:
    backgroundColor: "{colors.canvas-light}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.full}"
    padding: 12px 24px
    height: 56px
  support-row:
    backgroundColor: "{colors.canvas-light}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.none}"
    padding: 16px 0px
  link-inline:
    textColor: "{colors.link-light}"
    typography: "{typography.link-md}"
---

## Overview

PlayStation's marketing system reads like a console launch trailer scrolling past the viewer in chapters. Each section is a full-bleed band — pure black `{colors.canvas-dark}`, true white `{colors.canvas-light}`, or PlayStation Blue `{colors.primary}` — and each chapter owns one editorial moment: hero console photography, a games-coming-soon strip, the PlayStation Plus tier banner, the "30 Years of PlayStation" anniversary band, the news strip from the PlayStation Blog. There is no decorative chrome between chapters; the section background change IS the divider. Sections stack at `{spacing.section}` (96px) rhythm with the next band's color taking over the page edge-to-edge.

The system has two distinct surface modes that alternate down the page: a **dark canvas mode** for editorial product moments (hero, "ON PLAYSTATION" band, marathon game pages) and a **light canvas mode** for utility surfaces (PS5 games listing, support pages, news index). Both modes use the same chrome vocabulary — fully-rounded `{rounded.full}` pill buttons, 8px-radius `{rounded.md}` cards, the proprietary PlayStation SST face — only the surface and on-surface colors change. The third surface mode is the **PlayStation Blue band** (`{colors.primary}` — `#0070d1`) reserved for the highest-priority moments: the Marathon launch CTA strip, the footer, and any "Action Required" banner.

The typography is the system's most distinctive choice. PlayStation SST renders display headlines at **weight 300** (light) — unusual for a gaming brand that could easily reach for bold geometric display faces. The light weight gives the chrome an airy, almost editorial quality that lets the imagery speak; copy is information rather than decoration. Heading sizes drop in tight increments (54 → 44 → 35 → 28 → 22 → 18) and body settles at 18px with 1.5 line-height for comfortable long-form reading on support and games pages.

**Key Characteristics:**
- Three-canvas chapter system: `{colors.canvas-dark}` (black), `{colors.canvas-light}` (white), `{colors.primary}` (PlayStation Blue) alternating down the page
- PlayStation Blue (`{colors.primary}` — `#0070d1`) is the universal primary CTA — fully-rounded pill at `{rounded.full}` (9999px)
- Commerce orange (`{colors.commerce}` — `#d53b00`) is the secondary CTA reserved for "Buy now" / "Pre-order" / store actions
- PlayStation SST display tier renders at **weight 300** with -0.1px to +0.4px tracking — the brand's signature airy editorial voice
- 8px-radius (`{rounded.md}`) for product cards and feature panels; 4px-radius (`{rounded.sm}`) for inputs; pills (`{rounded.full}`) for every CTA
- Game tiles, console renders, and PS Plus tier illustrations occupy 60-90% of each section — imagery does the storytelling
- Color-block page rhythm (one observed band sequence): dark hero → light console showcase → dark "Great PS4 & PS5 games" rail → light "Discover PlayStation Plus" tier band → light "30 years of PlayStation" callout → dark "ON PLAYSTATION" band → light news strip → blue footer

## Colors

> **Source pages:** `/en-tr/` (home), `/en-tr/ps5/games/` (PS5 games listing), `/en-tr/games/marathon/` (single game page), `/tr-tr/support/account/` (support center). The chrome palette is identical across all four pages; the support page uses the light-canvas mode exclusively while marketing pages alternate.

### Brand & Accent
- **PlayStation Blue** (`{colors.primary}` — `#0070d1`): the brand's universal primary. Every primary CTA pill, the active filter chip, the footer surface, badge fills, and inline link color on dark surfaces.
- **PlayStation Blue Pressed** (`{colors.primary-pressed}` — `#0064b7`): pressed state for the primary pill — also doubles as the inline link color on light surfaces.
- **PlayStation Blue Active** (`{colors.primary-active}` — `#004d8d`): deeply-pressed state for the primary button.
- **Commerce Orange** (`{colors.commerce}` — `#d53b00`): the secondary CTA reserved for store/buy/pre-order actions. The only warm color in the system.
- **Commerce Orange Pressed** (`{colors.commerce-pressed}` — `#aa2f00`): pressed state for commerce buttons.
- **Marathon Yellow** (`{colors.marathon-yellow}` — `#deff20`): a single high-saturation game-page accent extracted from Marathon's product palette — used only inside the dedicated `/marathon/` game page chrome and not part of the system's general accent vocabulary.

### Surface
- **Canvas Dark** (`{colors.canvas-dark}` — `#000000`): pure black hero band, primary nav background, footer base. The dominant surface for editorial product moments.
- **Surface Dark Elevated** (`{colors.surface-dark-elevated}` — `#121314`): inset dark panels, PS Plus tier banner background, "ON PLAYSTATION" gradient end.
- **Surface Dark Card** (`{colors.surface-dark-card}` — `#181818`): game tile fill, dark product card background.
- **Canvas Light** (`{colors.canvas-light}` — `#ffffff`): true white console-showcase band, support page body, news strip background.
- **Soft Surface** (`{colors.surface-soft}` — `#f3f3f3`): hairline-soft band fill on light pages, divider rule on light surfaces.
- **Surface Card** (`{colors.surface-card}` — `#f5f7fa`): cool-blue-tinted product card and tier-card background on light canvas.
- **Surface Filter** (`{colors.surface-filter}` — `rgba(245,247,250,0.3)`): translucent fill for filter-pill default state on light canvas.
- **Hairline Light** (`{colors.hairline-light}` — `#f3f3f3`): 1px divider rule on light pages.
- **Hairline Dark** (`{colors.hairline-dark}` — `rgba(229,229,229,0.2)`): translucent 1px divider on dark canvas.

### Text
- **Ink** (`{colors.ink}` — `#000000`): primary text on `{colors.canvas-light}`. Headlines, button text, support body.
- **Ink Deep** (`{colors.ink-deep}` — `#121314`): warmer near-black for in-card titles on dark surfaces and deep-shadow gradients.
- **Ink Elevated** (`{colors.ink-elevated}` — `#181818`): the lightest of the dark-canvas inks, used for elevated card backgrounds.
- **Body Light** (`{colors.body-light}` — `rgba(0,0,0,0.6)`): translucent body text on light canvas — the system's default paragraph color.
- **Mute Light** (`{colors.mute-light}` — `#6b6b6b`): metadata text and footer link captions on light canvas.
- **Ash Light** (`{colors.ash-light}` — `#cccccc`): disabled-state text and lowest-emphasis utility on light surfaces.
- **On Dark** (`{colors.on-dark}` — `#ffffff`): primary text on `{colors.canvas-dark}` — headlines, button text on dark hero bands.
- **Body Dark** (`{colors.body-dark}` — `rgba(255,255,255,0.7)`): translucent body text on dark canvas.
- **On Dark Mute** (`{colors.on-dark-mute}` — `#cccccc`): secondary text and disabled state on dark surfaces.
- **Mute Dark** (`{colors.mute-dark}` — `rgba(229,229,229,0.55)`): captions and metadata on dark canvas.

### Semantic
- **Warning** (`{colors.warning}` — `#c81b3a`): validation errors and destructive confirmation copy.
- **Link Light** (`{colors.link-light}` — `#0064b7`): inline body-prose anchor link on light canvas — same hex as `{colors.primary-pressed}`.
- **Link Dark** (`{colors.link-dark}` — `#53b1ff`): inline body-prose anchor link on dark canvas — a brightened blue for dark-mode legibility.

### Brand Gradient
- **PlayStation Plus Gold Gradient** — a horizontal three-stop gold gradient `{colors.ps-plus-gold-start}` (`#ffce21`) → `{colors.ps-plus-gold-mid}` (`#f5a623`) → `{colors.ps-plus-gold-end}` (`#ee8e00`) that anchors the PS Plus banner on the home page. The only gradient in the system; reserved exclusively for PS Plus chrome.

## Typography

### Font Family
- **PlayStation SST** is the proprietary brand sans-serif used across every text role on the site. It carries weights 300 (light), 400 (regular), 500 (medium), 600 (semibold), and 700 (bold), and falls back through `sst` → `Arial` → `Helvetica`. The brand's distinctive choice is using **weight 300 (light) for display headlines** — unusual for a gaming brand and the source of the system's editorial, airy character.
- **SST** appears as a secondary cut for in-product surfaces, falling back to Helvetica → Arial.

### Hierarchy

| Token | Size | Weight | Line Height | Letter Spacing | Use |
|---|---|---|---|---|---|
| `{typography.display-xl}` | 54px | 300 | 1.25 | -0.1px | Hero headline ("Discover all PS5 consoles and accessories") |
| `{typography.display-lg}` | 44px | 300 | 1.25 | 0.1px | Section headline ("Great PS4 & PS5 games out now or coming soon") |
| `{typography.display-md}` | 35px | 300 | 1.25 | 0 | Mid-section headline, game-page sub-hero |
| `{typography.heading-xl}` | 28px | 300 | 1.25 | 0.1px | "30 Years of PlayStation" callout, in-band sub-heading |
| `{typography.heading-lg}` | 22px | 300 | 1.25 | 0.1px | News card title, support category title |
| `{typography.heading-md}` | 18px | 600 | 1 | 0 | Card label, navigation menu heading, in-product strong title |
| `{typography.body-md}` | 18px | 400 | 1.5 | 0.1px | Body copy, paragraph text, support article body |
| `{typography.body-strong}` | 18px | 500 | 1.25 | 0.4px | Inline emphasis, primary nav link, button label (large) |
| `{typography.body-sm}` | 16px | 400 | 1.5 | 0 | Card description, secondary body |
| `{typography.caption-md}` | 14px | 400 | 1.5 | 0 | Footer link, metadata, sub-nav text |
| `{typography.caption-sm}` | 12px | 500 | 1.5 | 0 | Smallest utility text, badge label |
| `{typography.link-md}` | 18px | 400 | 1.5 | 0 | Inline body-prose anchor link |
| `{typography.button-lg}` | 18px | 700 | 1.25 | 0.45px | Primary CTA pill |
| `{typography.button-md}` | 14px | 700 | 1.25 | 0.324px | Compact pill, filter chip, secondary CTA |

### Principles
The hierarchy works on a 1.25-line-height ladder almost exclusively — even body sits at 1.5 instead of the typical 1.6 — which keeps long-form support pages tight and console showcases efficient. The weight contrast between display (300) and button (700) is dramatic: a single 18px chrome line might host a heavyweight CTA next to a feather-light 22px headline, giving the system its editorial gaming-magazine feel.

### Note on Font Substitutes
PlayStation SST is proprietary. The closest open-source substitutes:
- **Roboto Light (300)** for the display tier — its slightly looser letter-spacing matches SST's display optical fit.
- **Inter** at weights 400/500/600 for body and chrome — the closest geometric sans match for SST's body cut.
- **Source Sans Pro Light (300)** as an alternative for the display tier when Roboto reads too utilitarian.

When substituting, preserve the +0.1px to +0.45px tracking on display and button tiers — the spacing is part of what makes PlayStation SST feel premium at the light weight.

## Layout

### Spacing System
- **Base unit:** 8px (with finer 4/12px steps for tight inline gaps).
- **Tokens (front matter):** `{spacing.xxs}` (4px) · `{spacing.xs}` (8px) · `{spacing.sm}` (12px) · `{spacing.md}` (16px) · `{spacing.lg}` (24px) · `{spacing.xl}` (32px) · `{spacing.xxl}` (48px) · `{spacing.section}` (96px).
- **Universal section rhythm:** every page in the set uses `{spacing.section}` (96px) as the vertical gap between major content blocks. Card grids use `{spacing.lg}` (24px) gutters; in-card padding sits at `{spacing.lg}` to `{spacing.xl}` depending on density.
- **Hero band padding:** 96px vertical / 48px horizontal — the largest spacing in the system, reserved for full-bleed surface chapters.

### Grid & Container
- **Max width:** ~1280px content area for body text on desktop with 24px gutters that expand to ~48px at ultrawide. Hero bands and game-tile rails go full-bleed with no max-width constraint on imagery.
- **Game tile carousel:** 4-up at desktop with horizontal scroll on the same row, collapsing to 3-up at 1024px and 2-up at 768px. Each tile uses 16:9 cover art at `{rounded.md}`.
- **Console showcase grid:** desktop 5-column thumbnail strip below the main hero render, collapsing to 3-up + horizontal scroll at tablet.
- **Support page:** desktop 2-column 30/70 split (sidebar nav + article body), collapsing to single-column with the sidebar promoted to a top accordion at mobile.
- **News strip:** 3-up card grid at desktop, 2-up at tablet, 1-up at mobile.

### Whitespace Philosophy
Whitespace is structural and band-defined. The 96px `{spacing.section}` between chapters reads as silence between trailer cuts — there's no decorative wash, no gradient transition, no mid-section divider. Inside a section, content is left-aligned in a tight column with the imagery breathing in the right 60-70% of the band. Paragraph text is comfortable at 1.5 line-height but column widths stay narrow (~520px at desktop) to keep long-form copy readable.

## Elevation & Depth

| Level | Treatment | Use |
|---|---|---|
| 0 — Flat | No border, no shadow | Default for hero bands, footer, full-bleed sections — the dominant treatment |
| 1 — Hairline divider | 1px solid `{colors.hairline-light}` or `{colors.hairline-dark}` | Card borders, support row dividers, footer column rules |
| 2 — Soft active shadow | `0 4px 12px rgba(0,0,0,0.16)` | Active/pressed CTAs, lifted product card |
| 3 — Section gradient | Soft top-to-bottom darkening from `{colors.surface-dark-elevated}` to `{colors.canvas-dark}` | "ON PLAYSTATION" band — only place a gradient appears on chrome |

The system has effectively no resting shadow on cards; depth is built from surface-color contrast across band chapters. Cards lift only on press.

### Decorative Depth
Depth comes from the alternating-band rhythm and from the imagery itself:
- **Console product photography** — DualSense controller and PS5 console renders shot on neutral white with crisp edge lighting, full-bleed inside the light-canvas band.
- **Game key art** — full-bleed cinematic stills (Marathon, the latest blockbuster releases) inside dark-canvas bands with title lockup overlaid in the lower-left.
- **PS Plus tier banner** — a subtle horizontal gold gradient (`{colors.ps-plus-gold-start}` → `{colors.ps-plus-gold-end}`) sits as the only chrome gradient in the system, anchoring the "Discover PlayStation Plus" CTA.
- **"ON PLAYSTATION" gradient band** — top-to-bottom deepening from `{colors.surface-dark-elevated}` (`#121314`) to `{colors.canvas-dark}` (`#000000`) creates a cinematic dimming effect under the anniversary callout.

## Shapes

### Border Radius Scale

| Token | Value | Use |
|---|---|---|
| `{rounded.none}` | 0px | Hero bands, primary nav, footer, sub-nav, support article body — every full-bleed structural surface |
| `{rounded.sm}` | 4px | Text inputs, support search field utilities |
| `{rounded.md}` | 8px | Game tiles, product cards, feature cards, PS Plus banner |
| `{rounded.lg}` | 16px | Rare large container with extra-soft corners (e.g., dialog cards) |
| `{rounded.full}` | 9999px | Every CTA pill (primary / commerce / secondary), filter chips, pagination dots, carousel paddles |

The radius vocabulary works on a 4 / 8 / pill rhythm for chrome with structural surfaces staying flat at 0px.

### Photography Geometry
- **Hero console render:** large centered console + DualSense composition on white, ~70% width of the band, with copy slot to the left.
- **Game tiles:** 16:9 key art at `{rounded.md}` (8px), 4-up rail at desktop with horizontal carousel.
- **Marathon game page hero:** full-bleed cinematic 16:9 still with the "MARATHON" wordmark in the lower-left at light weight, brand yellow `{colors.marathon-yellow}` accent on a few small UI tags.
- **News card thumbnails:** 16:9 imagery at `{rounded.md}` with a small text block below.
- **Avatar / brand icons:** 32–40px circles for sub-nav social row.

## Components

> **No hover states documented** per system policy. Each spec covers Default and Active/Pressed only.

### Buttons

**`button-primary`** — the universal PlayStation CTA
- Background `{colors.primary}` (PlayStation Blue), text `{colors.on-primary}`, type `{typography.button-lg}`, padding `12px 28px`, height ~48px, rounded `{rounded.full}`.
- Used for "Add to bag", "Sign up", "Learn more", "Subscribe" — every primary action across both light and dark canvases.
- Pressed state lives in `button-primary-pressed` — background drops to `{colors.primary-pressed}` (`#0064b7`).

**`button-commerce`** — orange store CTA
- Background `{colors.commerce}` (`#d53b00`), text `{colors.on-commerce}`, type `{typography.button-lg}`, padding `12px 28px`, height ~48px, rounded `{rounded.full}`.
- Reserved for "Buy now", "Pre-order", "Add to cart" — store actions only. The only warm color in the system.
- Pressed state lives in `button-commerce-pressed` — background drops to `{colors.commerce-pressed}`.

**`button-secondary-light`** — outline variant on light canvas
- Background transparent, text `{colors.ink}`, 1px solid `{colors.ash-light}` border, type `{typography.button-lg}`, padding `12px 28px`, height ~48px, rounded `{rounded.full}`.
- Lower-emphasis CTA on white surfaces ("Learn more →", "Watch trailer").

**`button-secondary-dark`** — outline variant on dark canvas
- Background transparent, text `{colors.on-dark}`, 1px solid `{colors.hairline-dark}`, type `{typography.button-lg}`, padding `12px 28px`, height ~48px, rounded `{rounded.full}`.
- Same role as the light variant but inverted for use on `{colors.canvas-dark}` hero bands.

**`button-disabled`**
- Background `{colors.surface-soft}`, text `{colors.ash-light}`, rounded `{rounded.full}` — flat soft gray.

### Filter & Tab Chips

**`filter-pill`** + **`filter-pill-active`**
- Default: background `{colors.surface-filter}` (translucent), text `{colors.ink}`, type `{typography.button-md}`, padding `8px 16px`, rounded `{rounded.full}`.
- Active: background flips to `{colors.canvas-light}` (opaque white) — the chip "lifts" from the translucent default.
- Used in the PS5 games filter strip ("All", "Coming Soon", "PlayStation VR2", "Recently Released").

### Inputs & Forms

**`text-input`** + **`text-input-focused`**
- Default: background `{colors.canvas-light}`, text `{colors.ink}`, 1px solid `{colors.ash-light}`, type `{typography.body-md}`, padding `12px 16px`, height ~48px, rounded `{rounded.sm}` (4px).
- Focused: 2px solid `{colors.primary}` border, no halo (relies on the border weight increase as the focus signal).

**`support-search-bar`** — the support-page signature search field
- Background `{colors.canvas-light}`, text `{colors.ink}`, type `{typography.body-md}`, padding `12px 24px`, height ~56px, rounded `{rounded.full}`.
- Sits at the top of the support page hero with a magnifier icon at the left edge and "Search the support center" placeholder.

### Cards & Containers

**`product-card`** — light-canvas product/feature card
- Container: background `{colors.surface-card}` (`#f5f7fa` cool-blue-tinted), 1px solid `{colors.hairline-light}` (rare; usually borderless), padding `{spacing.lg}` (24px), rounded `{rounded.md}` (8px).
- Used for the "PlayStation Store" sale callout, news cards, and PS Plus tier comparison cards on light canvas.

**`product-card-dark`** — dark-canvas product card
- Container: background `{colors.surface-dark-card}` (`#181818`), padding `{spacing.lg}`, rounded `{rounded.md}`.
- Used for game-detail cards and dark-canvas feature panels.

**`game-tile`** — game/console thumbnail tile
- Container: background `{colors.surface-dark-elevated}`, padding 0, rounded `{rounded.md}`.
- Layout: 16:9 cover art at full bleed inside the radius, with title + platform tag overlaid at the bottom-left in `{typography.body-sm}`.
- Used in the "Great PS4 & PS5 games" rail and the PS5 games listing grid.

**`feature-card`** — light-canvas marketing card
- Container: background `{colors.canvas-light}`, padding `{spacing.xl}` (32px), rounded `{rounded.md}`.
- Used for the "PlayStation Store" hero card and similar feature panels with a small product icon, title, body, and CTA.

**`hero-band-blue`** — the PlayStation Blue full-bleed band
- Background `{colors.primary}`, text `{colors.on-primary}` in `{typography.display-md}`, padding `96px 48px`, rounded `{rounded.none}`.
- The Marathon launch CTA strip and the footer surface use this band. The band's defining purpose is "this is the action moment of the page."

**`hero-band-dark`** — full-bleed dark hero
- Background `{colors.canvas-dark}` (with optional gradient end at `{colors.surface-dark-elevated}`), text `{colors.on-dark}` in `{typography.display-xl}`, padding `96px 48px`, rounded `{rounded.none}`.
- The home-page hero, the game-detail page hero, and the "ON PLAYSTATION" anniversary band.

**`hero-band-light`** — full-bleed white hero
- Background `{colors.canvas-light}`, text `{colors.ink}` in `{typography.display-xl}`, padding `96px 48px`, rounded `{rounded.none}`.
- The console showcase band ("Discover all PS5 consoles and accessories") and the support page top.

**`ps-plus-banner`** — PlayStation Plus tier callout
- Background `{colors.surface-dark-elevated}` with the `{colors.ps-plus-gold-start}` → `{colors.ps-plus-gold-end}` gold gradient as a horizontal accent bar across the top, text `{colors.on-dark}` in `{typography.heading-xl}`, padding `48px 32px`, rounded `{rounded.md}`.
- The "Discover PlayStation Plus" full-width banner on the home page.

**`carousel-paddle`** — circular carousel control
- Background `rgba(255,255,255,0.16)`, icon `{colors.on-dark}`, rounded `{rounded.full}`, size 48px.
- Anchored to the left/right edge of the game tile carousel.

**`pagination-dot`** + **`pagination-dot-active`**
- 8px circle at `{rounded.full}`. Default fill `{colors.ash-dark}`; active fill `{colors.on-dark}`.
- Carousel position indicator below the game tile rail.

### Inline

**`badge-info`** — small info tag
- Background `{colors.primary}`, text `{colors.on-primary}` in `{typography.caption-sm}`, padding `4px 10px`, rounded `{rounded.full}`.
- "New", "Pre-order", "Coming Soon" labels overlaid on game tiles.

**`link-inline`** — body-prose anchor link
- `{colors.link-light}` text on light canvas / `{colors.link-dark}` on dark canvas, no underline by default. Inline body links inside support article paragraphs.

### Navigation

**`primary-nav`**
- Background `{colors.canvas-dark}`, text `{colors.on-dark}`, height ~48px, type `{typography.body-strong}`, rounded `{rounded.none}`.
- Layout (desktop): PlayStation P-logo at far-left, centered nav row ("Games · PS5 · PS4 · PS VR2 · Subscriptions · Hardware · Mobile · News · Shop · Support"), right cluster (search-glyph + locale + cart icon + user-avatar circle).

**`sub-nav`** — secondary nav strip
- Background `{colors.canvas-dark}`, text `{colors.on-dark}` in `{typography.caption-md}`, height ~40px, rounded `{rounded.none}`.
- Sits directly below the primary nav on PS5 games / single game / PS Plus pages with section-specific anchor links.

**Top Nav (Mobile)**
- Hamburger menu icon at left, P-logo at center, search + cart icons at right. Primary nav collapses into a full-screen dark drawer that slides from the left.

### Footer

**`footer-section`**
- Background `{colors.primary}` (PlayStation Blue), text `{colors.on-primary}` in `{typography.caption-md}`, padding `{spacing.xxl}` (48px) vertical.
- Layout: large PlayStation wordmark at top-left, multi-column link grid (locale selector, store links, account, support, social), bottom row with terms / privacy fine-print in `{typography.caption-sm}`.
- The footer's blue surface is the system's "we're done — return to the brand" anchor.

### Support-page-specific

**`support-row`** — support article-list row
- Background `{colors.canvas-light}`, text `{colors.ink}` in `{typography.body-md}`, padding `16px 0`, with a 1px `{colors.hairline-light}` bottom rule.
- Used for FAQ / category-listing rows on the support page with a small chevron-right icon at the right edge.

## Do's and Don'ts

### Do
- Reserve `{colors.primary}` (PlayStation Blue) for primary CTAs and the footer surface only. The blue band is precious — at most one full-bleed blue band per page.
- Reserve `{colors.commerce}` (orange) for store/buy/pre-order CTAs only. It is never used on marketing chrome or hero pills.
- Use PlayStation SST at weight 300 for display headings (54 / 44 / 35 / 28 / 22). The light weight is the brand voice.
- Stack content sections at `{spacing.section}` (96px) rhythm with the next band's surface color taking over the page edge-to-edge — no decorative dividers between bands.
- Use `{rounded.full}` (9999px) on every CTA pill and `{rounded.md}` (8px) on every product card. The two-radius vocabulary is the entire shape system aside from inputs.
- Pair full-bleed game key art and console renders inside dark or light bands; let imagery occupy 60-90% of the band's vertical height.
- Use `{component.ps-plus-banner}` with the gold gradient exclusively for the PlayStation Plus tier callout — never decorate other components with the gold.

### Don't
- Don't introduce drop shadows on resting cards. The system is flat-on-canvas; cards lift only on press.
- Don't replace `{colors.primary}` with another shade of blue. The brand blue is precise — `#0070d1` for default and `#0064b7` for pressed.
- Don't use `{colors.commerce}` (orange) on marketing/hero CTAs. It's reserved exclusively for store actions.
- Don't introduce a sans-serif body font, italic, or monospace style. PlayStation SST carries every text role.
- Don't soften pill geometry. CTAs are always `{rounded.full}` — no medium-radius buttons.
- Don't use the gold PS Plus gradient on anything that isn't the PS Plus banner. It is a tier-specific brand asset.
- Don't put a gradient on chrome. The only allowed gradient is the gold PS Plus accent and the soft top-to-bottom darkening of the "ON PLAYSTATION" band.

## Responsive Behavior

### Breakpoints

| Name | Width | Key Changes |
|---|---|---|
| ultrawide | 1920px+ | Hero band stays at content max-width 1280px; outer gutters grow to ~80px |
| desktop-large | 1440px | Default desktop — 4-up game tile carousel, full primary nav |
| desktop | 1280px | Same layout with narrower outer gutters |
| desktop-small | 1024px | Game tile rail collapses to 3-up; sub-nav remains horizontal |
| tablet | 768px | Game tiles → 2-up; primary nav becomes hamburger drawer |
| mobile | 480px | Single-column everything; hero `{typography.display-xl}` scales 54px → ~32px |
| mobile-narrow | 320px | Section padding tightens to 32px; hero further scales to ~28px |

### Touch Targets
All interactive elements meet WCAG AAA (≥ 44×44px). `{component.button-primary}` and `{component.button-commerce}` sit at 48px height with 28px horizontal padding (effective ~48×100px tappable). `{component.text-input}` sits at 48px. `{component.support-search-bar}` sits at 56px. `{component.filter-pill}` is ~36–40px height with 16px padding extending to 44px tappable via inline padding. `{component.carousel-paddle}` is exactly 48×48 circular.

### Collapsing Strategy
- **Primary nav:** desktop horizontal cluster → tablet hamburger drawer at 768px. The right-cluster icons (search, cart, account) stay visible at every breakpoint.
- **Sub-nav:** desktop horizontal anchor row → tablet horizontal scroll → mobile select dropdown.
- **Game tile carousel:** 4-up → 3-up → 2-up at 1024 and 768px; carousel paddles stay visible at every desktop breakpoint, hide on mobile in favor of touch-swipe.
- **Hero bands:** stay full-bleed at every breakpoint; only the internal content column reflows from 2-column (text-left + image-right) to single-column (text above image).
- **Console showcase:** desktop 5-up thumbnail strip → tablet 3-up + horizontal scroll → mobile 1-up with paddle.
- **Support page:** desktop 30/70 split (sidebar + body) → tablet sidebar promoted to top accordion → mobile fully collapsed accordion.
- **Section padding:** `{spacing.section}` (96px) desktop → 64px tablet → 48px mobile.
- **Hero headline:** `{typography.display-xl}` (54px) at desktop, scaling 44px / 32px / 28px down the breakpoint stack.

### Image Behavior
- Hero imagery (console renders, game key art) uses art-direction crops on mobile so the central subject stays centered when the band collapses to single-column.
- Game tile cover art preserves 16:9 ratio at every breakpoint; only the column count changes.
- Console showcase thumbnails maintain their natural aspect (~1:1 product render) across breakpoints.
- All non-critical imagery is lazy-loaded as the user scrolls into the next chapter.

## Iteration Guide

1. Focus on ONE component at a time. Pull its YAML entry and verify every property resolves.
2. Reference component names and tokens directly (`{colors.primary}`, `{component.button-primary-pressed}`, `{rounded.full}`) — do not paraphrase.
3. Run `npx @google/design.md lint DESIGN.md` after edits — `broken-ref`, `contrast-ratio`, and `orphaned-tokens` warnings flag issues automatically.
4. Add new variants as separate component entries (`-pressed`, `-disabled`) — do not bury them inside prose.
5. Default body to `{typography.body-md}` (18px / 400 / 1.5); reach for `{typography.display-xl}` strictly for the page-top hero headline; use `{typography.body-strong}` for primary nav links.
6. Keep `{colors.primary}` scarce per viewport — at most one full-bleed PlayStation Blue band per page.
7. When introducing a new component, ask whether it can be expressed with the existing pill + 8px-radius card + full-bleed-band vocabulary before adding new tokens. The system's strength is that it almost never needs new ones.

## Known Gaps

- **Mobile screenshots not captured** — responsive behavior synthesizes PlayStation's known mobile pattern (hamburger drawer, single-column band reflow, hero downscale) from desktop evidence and the breakpoint stack.
- **Hover states not documented** by system policy.
- **Sign-in / authentication chrome** (login modal, account dashboard, profile pages) not in the captured pages.
- **PlayStation Store** in-store browsing surfaces (PDP / cart / checkout) are not in the captured set — those use a more dense data-table layout that this document does not describe.
- **Game-page-specific theming** — the `/marathon/` page uses `{colors.marathon-yellow}` as a chapter accent. Other game pages may pull in their own per-title brand colors that vary outside the documented system.
- **Form validation states** (success / error inline messages) not present in the captured surfaces beyond the `{colors.warning}` color token.


---

## Brand: `renault`

---
version: alpha
name: Renault-design-analysis
description: |
  Renault's web presence pairs the freshly-modernised Renault diamond
  (the 2021 flat-line rhombus mark) with a stark black-and-white canvas, a
  signature Sunlight Yellow accent, and the proprietary NouvelR display
  typeface. The system reads as confident, photography-first automotive — large
  hero cars on neutral or atmospheric backdrops, square-edged or barely-rounded
  containers, and a small disciplined palette where every coloured element is
  intentional. Tile grids, full-bleed banners, and a recurring "configurator"
  surface (white card, yellow accent dots, neutral product chrome) carry the
  mass-market dealership tone without crossing into luxury.

colors:
  primary: "#ffed00"
  primary-deep: "#e6d200"
  on-primary: "#000000"
  ink: "#000000"
  body: "#222222"
  charcoal: "#333333"
  mute: "#666666"
  ash: "#8a8a8a"
  stone: "#c4c4c4"
  on-dark: "#ffffff"
  on-dark-mute: "rgba(255,255,255,0.72)"
  canvas: "#ffffff"
  surface-soft: "#f7f7f7"
  surface-card: "#ffffff"
  surface-dark: "#000000"
  surface-deep: "#111111"
  hairline: "#f2f2f2"
  hairline-strong: "#000000"
  divider-dark: "rgba(255,255,255,0.16)"
  badge-new: "#ffed00"
  link: "#0000ee"
  error: "#be6464"
  warning: "#f0ad4e"
  success: "#8dc572"
  info: "#337ab7"

typography:
  display-xl:
    fontFamily: NouvelR
    fontSize: 56px
    fontWeight: 700
    lineHeight: 0.95
    letterSpacing: 0
  display-lg:
    fontFamily: NouvelR
    fontSize: 40px
    fontWeight: 700
    lineHeight: 0.95
    letterSpacing: 0
  display-md:
    fontFamily: NouvelR
    fontSize: 32px
    fontWeight: 700
    lineHeight: 0.95
    letterSpacing: 0
  heading-lg:
    fontFamily: NouvelR
    fontSize: 24px
    fontWeight: 700
    lineHeight: 0.95
    letterSpacing: 0
  heading-md:
    fontFamily: NouvelR
    fontSize: 20px
    fontWeight: 700
    lineHeight: 0.95
    letterSpacing: 0
  heading-sm:
    fontFamily: NouvelR
    fontSize: 18px
    fontWeight: 700
    lineHeight: 1.0
    letterSpacing: 0
  subtitle:
    fontFamily: NouvelR
    fontSize: 19.2px
    fontWeight: 600
    lineHeight: 1.3
    letterSpacing: 0
  body-lg:
    fontFamily: NouvelR
    fontSize: 18px
    fontWeight: 400
    lineHeight: 1.5
    letterSpacing: 0
  body-md:
    fontFamily: NouvelR
    fontSize: 16px
    fontWeight: 400
    lineHeight: 1.4
    letterSpacing: 0
  body-sm:
    fontFamily: NouvelR
    fontSize: 14px
    fontWeight: 400
    lineHeight: 1.57
    letterSpacing: 0
  button-lg:
    fontFamily: NouvelR
    fontSize: 16px
    fontWeight: 700
    lineHeight: 1.0
    letterSpacing: 0
  button-md:
    fontFamily: NouvelR
    fontSize: 14.4px
    fontWeight: 700
    lineHeight: 1.0
    letterSpacing: 0.144px
  button-sm:
    fontFamily: NouvelR
    fontSize: 13px
    fontWeight: 600
    lineHeight: 1.2
    letterSpacing: 0.13px
  caption:
    fontFamily: NouvelR
    fontSize: 12px
    fontWeight: 400
    lineHeight: 1.4
    letterSpacing: 0
  overline:
    fontFamily: NouvelR
    fontSize: 10px
    fontWeight: 700
    lineHeight: 1.45
    letterSpacing: 0

rounded:
  none: 0px
  xs: 2px
  sm: 3px
  md: 4px
  pill: 46px
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
  section: 80px

components:
  button-primary:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button-md}"
    rounded: "{rounded.xs}"
    padding: 14px 24px
    height: 48px
  button-primary-pressed:
    backgroundColor: "{colors.primary-deep}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button-md}"
    rounded: "{rounded.xs}"
  button-secondary-dark:
    backgroundColor: "{colors.surface-dark}"
    textColor: "{colors.on-dark}"
    typography: "{typography.button-md}"
    rounded: "{rounded.xs}"
    padding: 14px 24px
  button-outline-dark:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.button-md}"
    rounded: "{rounded.xs}"
    padding: 13px 23px
  button-outline-light:
    backgroundColor: "{colors.surface-dark}"
    textColor: "{colors.on-dark}"
    typography: "{typography.button-md}"
    rounded: "{rounded.xs}"
    padding: 13px 23px
  button-pill:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.button-sm}"
    rounded: "{rounded.pill}"
    padding: 8px 16px
    height: 36px
  button-icon-square:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    rounded: "{rounded.xs}"
    size: 40px
  text-input:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.none}"
    padding: 12px 16px
    height: 48px
  hero-banner:
    backgroundColor: "{colors.surface-dark}"
    textColor: "{colors.on-dark}"
    rounded: "{rounded.none}"
    padding: 0
  promo-tile-light:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.heading-lg}"
    rounded: "{rounded.none}"
    padding: 32px
  promo-tile-dark:
    backgroundColor: "{colors.surface-dark}"
    textColor: "{colors.on-dark}"
    typography: "{typography.heading-lg}"
    rounded: "{rounded.none}"
    padding: 32px
  promo-tile-yellow:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.heading-lg}"
    rounded: "{rounded.none}"
    padding: 32px
  vehicle-card:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    rounded: "{rounded.none}"
    padding: 0
  configurator-row:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.none}"
    padding: 24px 0
  configurator-swatch:
    backgroundColor: "{colors.surface-soft}"
    rounded: "{rounded.full}"
    size: 56px
  badge-new:
    backgroundColor: "{colors.badge-new}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button-md}"
    rounded: "{rounded.full}"
    padding: 6px 14px
  nav-bar:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.button-md}"
    rounded: "{rounded.none}"
    height: 60px
  sub-nav-pill:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.button-sm}"
    rounded: "{rounded.pill}"
    padding: 8px 16px
  footer:
    backgroundColor: "{colors.surface-dark}"
    textColor: "{colors.on-dark}"
    typography: "{typography.body-sm}"
    rounded: "{rounded.none}"
    padding: 64px 24px
---

## Overview

Renault's Turkish marketing surfaces are unapologetically high-contrast: a
white canvas for browsing, a black canvas for product storytelling, and a
single Sunlight Yellow accent (`{colors.primary}` — `#ffed00`) reserved for
the most consequential actions. The brand's modernised flat diamond logo sets
the tone — geometric, confident, slightly industrial — and the system follows
suit. Square corners dominate, hairline borders are rare, and elevation is
expressed through colour blocking rather than shadow.

The typography is monolithic. Every text on the site is set in **NouvelR**,
Renault's bespoke display family, with a strong preference for weight 700 at
display sizes (with a tight `lineHeight: 0.95`) and weight 400 for body. There
is no secondary serif, no decorative italic, no script — the discipline is
the signature.

Page rhythm cycles between three surface modes: a **white catalogue mode** for
listings and configurators (`{colors.canvas}` with hairline-thin
`{colors.hairline}` dividers), a **black storytelling mode** for hero
sections, lifestyle imagery, and the lower half of campaign pages, and brief
**yellow accent moments** (`{colors.primary}` tiles, "NEW" badges, R5-coded
yellow paint shots) that punctuate the otherwise neutral palette.

**Key Characteristics:**
- Two-tone canvas system — `{colors.canvas}` (white) for browsing, `{colors.surface-dark}` (black) for storytelling — switched in full-bleed bands rather than subtle gradations.
- A single brand accent — `{colors.primary}` Sunlight Yellow — used scarcely on primary CTAs, "NEW" badges, R5 hero photography, and configurator dot indicators.
- **NouvelR everywhere**, with `{typography.display-xl}` headlines at 56px / weight 700 / `lineHeight: 0.95` so condensed multi-line headlines stack cleanly.
- Square geometry: `{rounded.xs}` (2px) on buttons, `{rounded.none}` on tiles and product cards, `{rounded.pill}` reserved exclusively for sub-nav chips and decorative badges.
- Photography-first product tiles — vehicle photos full-bleed inside otherwise neutral cards, with copy stacked beneath rather than overlaid.
- Page-level rhythm cycles white → black → yellow accent → black, with the wordmark and footer always closing on `{colors.surface-dark}`.

## Colors

### Brand & Accent
- **Sunlight Yellow** (`{colors.primary}` — `#ffed00`): the brand accent. Reserved for primary CTAs, "NEW" / "yeni" badges, configurator dot indicators, and full-bleed promotional tiles. Never decorative.
- **Sunlight Yellow Pressed** (`{colors.primary-deep}` — `#e6d200`): the active/pressed state of `{colors.primary}` buttons and tiles.
- **On-Primary** (`{colors.on-primary}` — `#000000`): label colour on top of `{colors.primary}` surfaces. Yellow always pairs with black text — never white.

### Surface
- **Canvas** (`{colors.canvas}` — `#ffffff`): the default page background and card surface.
- **Surface Soft** (`{colors.surface-soft}` — `#f7f7f7`): subtle elevation step for grouped configurator rows and inactive form fields.
- **Surface Dark** (`{colors.surface-dark}` — `#000000`): the alternate canvas, used for hero bands, footer, and full-bleed storytelling sections.
- **Surface Deep** (`{colors.surface-deep}` — `#111111`): a one-step-up elevation inside `{colors.surface-dark}` regions for inset cards and form panels.
- **Hairline** (`{colors.hairline}` — `#f2f2f2`): the soft 1px divider between rows on white surfaces.
- **Hairline Strong** (`{colors.hairline-strong}` — `#000000`): full-strength dividers on white, plus all card / button outlines.
- **Divider Dark** (`{colors.divider-dark}` — `rgba(255,255,255,0.16)`): the corresponding low-contrast divider used inside `{colors.surface-dark}` regions.

### Text
- **Ink** (`{colors.ink}` — `#000000`): primary text colour on white surfaces. The same value also drives logos, icons, and outline borders — black is structural, not decorative.
- **Body** (`{colors.body}` — `#222222`): secondary body text where pure black would feel too heavy in long paragraphs.
- **Charcoal** (`{colors.charcoal}` — `#333333`): captions, metadata, and small labels.
- **Mute** (`{colors.mute}` — `#666666`): supporting text and inactive nav labels.
- **Ash** (`{colors.ash}` — `#8a8a8a`): placeholder text, disabled labels.
- **Stone** (`{colors.stone}` — `#c4c4c4`): disabled-state foreground.
- **On-Dark** (`{colors.on-dark}` — `#ffffff`): primary text on `{colors.surface-dark}` surfaces.
- **On-Dark Mute** (`{colors.on-dark-mute}` — `rgba(255,255,255,0.72)`): secondary text in dark regions; preserves the brand's high-contrast feel without resorting to mid-grey.

### Semantic
- **Error** (`{colors.error}` — `#be6464`): muted desaturated red used for inline form errors. Notably warmer than typical pure-red error states.
- **Warning** (`{colors.warning}` — `#f0ad4e`): amber alert.
- **Success** (`{colors.success}` — `#8dc572`): muted green confirmation.
- **Info** (`{colors.info}` — `#337ab7`): a desaturated mid-blue used in informational chips.
- **Link** (`{colors.link}` — `#0000ee`): the unstyled-anchor default kept for fallback inline text links — production links inherit `{colors.ink}` and rely on underline/weight rather than colour.

## Typography

### Font Family

The entire system is set in **NouvelR**, Renault's proprietary display
family, used across navigation, headlines, body, captions, and button
labels. The family carries a slightly geometric, semi-condensed personality
with tall x-heights and squared apexes that pair naturally with the diamond
logomark.

When NouvelR cannot be licensed, suitable open-source substitutes include
**Inter Tight**, **Manrope**, or **HK Grotesk Semi Condensed** — all share
the geometric-with-warmth feel and adapt cleanly to weights 400 / 600 / 700.
Tighten `lineHeight` on display sizes to ~0.95 to match the original; do not
relax it.

### Hierarchy

| Token | Size | Weight | Line Height | Letter Spacing | Use |
|---|---|---|---|---|---|
| `{typography.display-xl}` | 56px | 700 | 0.95 | 0 | Hero headlines, campaign titles ("E-TECH ELEKTRİKLİ", "REVOLUTION"). |
| `{typography.display-lg}` | 40px | 700 | 0.95 | 0 | Secondary section titles. |
| `{typography.display-md}` | 32px | 700 | 0.95 | 0 | Page-level H1 on sub-pages and configurator panels. |
| `{typography.heading-lg}` | 24px | 700 | 0.95 | 0 | Section headers, card titles. |
| `{typography.heading-md}` | 20px | 700 | 0.95 | 0 | Sub-section headers, prominent labels. |
| `{typography.heading-sm}` | 18px | 700 | 1.0 | 0 | Tile titles, list group headers. |
| `{typography.subtitle}` | 19.2px | 600 | 1.3 | 0 | Lead paragraphs, hero subtitles. |
| `{typography.body-lg}` | 18px | 400 | 1.5 | 0 | Long-form body. |
| `{typography.body-md}` | 16px | 400 | 1.4 | 0 | Default body and form fields. |
| `{typography.body-sm}` | 14px | 400 | 1.57 | 0 | Captions, metadata. |
| `{typography.button-lg}` | 16px | 700 | 1.0 | 0 | Large CTAs in hero bands. |
| `{typography.button-md}` | 14.4px | 700 | 1.0 | 0.144px | Default button label across the system. |
| `{typography.button-sm}` | 13px | 600 | 1.2 | 0.13px | Sub-nav pills, small in-card actions. |
| `{typography.caption}` | 12px | 400 | 1.4 | 0 | Footer disclosure, regulatory text. |
| `{typography.overline}` | 10px | 700 | 1.45 | 0 | Short uppercase labels above titles. |

### Principles
- Display sizes always weight 700, always at `lineHeight: 0.95`. The tightness is what makes the brand feel confident rather than corporate.
- Body copy stays at weight 400 — never 500. The contrast between body and display is part of the system.
- Button labels carry a tiny positive letter-spacing (`0.144px` on `{typography.button-md}`) — almost imperceptible, but it adds the small bit of mechanical precision the brand wants on CTAs.
- No italics, no script, no decorative ligatures.

### Note on Font Substitutes

NouvelR is licensed; substitutes (Inter Tight / Manrope / HK Grotesk Semi
Condensed) preserve the geometric character but typically render with
slightly looser line heights at display sizes — clamp display
`lineHeight` to 0.95 explicitly to match the source.

## Layout

### Spacing System
- **Base unit**: 4px, with the working scale built on multiples of 4 and 8.
- **Tokens**: `{spacing.xxs}` 4px · `{spacing.xs}` 8px · `{spacing.sm}` 12px · `{spacing.md}` 16px · `{spacing.lg}` 20px · `{spacing.xl}` 24px · `{spacing.xxl}` 32px · `{spacing.xxxl}` 40px · `{spacing.section}` 80px.
- Section padding (full-bleed band → next band): `{spacing.section}` (80px) on desktop, collapsing to `{spacing.xxxl}` (40px) on mobile.
- Promo-tile internal padding: `{spacing.xxl}` (32px) all sides on desktop.
- Configurator row vertical padding: `{spacing.xl}` (24px) top/bottom with hairline divider between rows.

### Grid & Container
- **Max content width** ≈ 1440px. Beyond that, content remains centred and the dark/light bands extend full-bleed.
- **Promo grid** on the homepage: a 2-column tile grid on desktop, dropping to 1-up on mobile. Each tile is square-cornered (`{rounded.none}`) with the photography or solid colour as the background.
- **Vehicle range grids**: 3 to 4 cars per row at desktop, collapsing 2-up at tablet and 1-up at small mobile.
- **Configurator** uses a fixed left visualisation pane (~60% width) with a right-hand scrolling option list (~40% width) on desktop.

### Whitespace Philosophy
- Whitespace is structural, not decorative. Sections are separated by colour-blocking (white → black) rather than soft padding ramps.
- Inside cards and configurator rows, padding is generous but never airy — the brand is mass-market, so density is acceptable.
- Hairline `{colors.hairline}` dividers on white surfaces create the sense of catalogue precision; on dark surfaces, `{colors.divider-dark}` carries the same role.

## Elevation & Depth

| Level | Treatment | Use |
|---|---|---|
| 0 — flat | No shadow, no border | Default page surface, full-bleed bands. |
| 1 — outline | 1px solid `{colors.hairline-strong}` or `{colors.hairline}` | Promo tiles on light, vehicle cards, configurator panels. |
| 2 — colour-blocked elevation | Surface colour shift (e.g. `{colors.canvas}` card sitting inside a `{colors.surface-soft}` band) | Configurator detail cards, related-content rows. |
| 3 — dark inversion | Card swaps to `{colors.surface-dark}` against a `{colors.canvas}` band | "Ticari araç" hero promo tiles, lifestyle storytelling cards. |

Drop shadows are extracted from the system but rarely visible on the marketing
surfaces. When they appear, they are very subtle (~10% opacity, 2–4px blur)
and used on floating elements like the configurator's sticky summary bar.

### Decorative Depth
- The R5 hero band uses an atmospheric mesh-gradient backdrop — purple-to-pink-to-yellow glow behind the car silhouette — that acts as the only true atmospheric depth in the system. Everywhere else, depth is structural (colour-blocking + outlines), not atmospheric.
- E-TECH electric powertrain pages use a luminous magenta-to-violet gradient behind cutaway diagrams, reserved for the electric sub-brand.

## Shapes

### Border Radius Scale

| Token | Value | Use |
|---|---|---|
| `{rounded.none}` | 0px | Tiles, vehicle cards, dividers, banner bands, full-bleed images. |
| `{rounded.xs}` | 2px | Default buttons (primary yellow, secondary black, outline). |
| `{rounded.sm}` | 3px | Tab panels, small chips. |
| `{rounded.md}` | 4px | Form labels, inline tags. |
| `{rounded.pill}` | 46px | Sub-nav pills, "yeni" / "NEW" badges, decorative carousel chips. |
| `{rounded.full}` | 9999px | Configurator colour swatches, avatar dots. |

### Photography Geometry
- Vehicle photography is **always square-cornered** (`{rounded.none}`). No rounded vehicle hero shots, no soft-edged car cards.
- Aspect ratios cluster around **16:9** (hero bands), **1:1** (square promo tiles), and **4:3** (vehicle range cards). Lifestyle imagery sometimes runs **2:1 wide** for full-bleed bands.
- Avatars and small profile cues — when present — use `{rounded.full}` circles to contrast with the otherwise square geometry.

## Components

### Buttons

**`button-primary`** — yellow CTA
- Background `{colors.primary}`, label `{colors.on-primary}`, type `{typography.button-md}`, padding `14px 24px`, `rounded: {rounded.xs}`.
- The single most important action on a page (e.g. "Hemen randevu al", "Hesapla", "Konfigüratörü başlat").
- Pressed state lives in `button-primary-pressed` (background `{colors.primary-deep}`).

**`button-secondary-dark`** — solid black CTA
- Background `{colors.surface-dark}`, label `{colors.on-dark}`, type `{typography.button-md}`, `rounded: {rounded.xs}`.
- Equal-weight secondary action paired with `{component.button-primary}`, or the primary action when used on a yellow tile background.

**`button-outline-dark`** — outlined CTA on light
- Background `{colors.canvas}`, label `{colors.ink}`, 1px solid `{colors.hairline-strong}`, type `{typography.button-md}`, `rounded: {rounded.xs}`.
- Tertiary action; appears alongside primary/secondary for "Detayları gör", "Modeller", etc.

**`button-outline-light`** — outlined CTA on dark
- Background `{colors.surface-dark}`, label `{colors.on-dark}`, 1px solid `{colors.on-dark}`, type `{typography.button-md}`, `rounded: {rounded.xs}`.
- The dark-canvas counterpart to `{component.button-outline-dark}`.

**`button-pill`** — sub-nav chip
- Background `{colors.canvas}`, label `{colors.ink}`, 1px solid `{colors.hairline-strong}`, type `{typography.button-sm}`, `rounded: {rounded.pill}`, height 36px.
- The only place the system uses a pill — for top-level filter chips ("Servis & randevu", "Sahiplik dönemi geçişi", "Kampanyalar") and configurator tab switches.

**`button-icon-square`** — small icon button
- Background `{colors.canvas}`, 1px solid `{colors.hairline-strong}`, `rounded: {rounded.xs}`, 40×40px square.
- Carousel arrows, share, language switcher.

### Cards & Containers

**`promo-tile-light`** — white promo tile
- Background `{colors.canvas}`, text `{colors.ink}`, type `{typography.heading-lg}`, padding `{spacing.xxl}`, `rounded: {rounded.none}`.
- Used in the homepage 2-up grid for "Hybrid araç modelleri", "binek araç satış kampanyaları" tiles.

**`promo-tile-dark`** — black promo tile
- Background `{colors.surface-dark}`, text `{colors.on-dark}`, type `{typography.heading-lg}`, padding `{spacing.xxl}`, `rounded: {rounded.none}`.
- Lifestyle / commercial-vehicle storytelling tiles ("ticari araç satış kampanyaları").

**`promo-tile-yellow`** — accent promo tile
- Background `{colors.primary}`, text `{colors.on-primary}`, type `{typography.heading-lg}`, padding `{spacing.xxl}`, `rounded: {rounded.none}`.
- The single "PARLAK SARI" / "Sunlight Yellow" attention tile that anchors a campaign band. Reserved — usually one per page maximum.

**`vehicle-card`** — car listing card
- Background `{colors.canvas}`, full-bleed product photography on top, text below, `rounded: {rounded.none}`, no outer border.
- Includes vehicle name (`{typography.heading-md}`), variant subtitle (`{typography.body-sm}`), and a single trailing arrow icon.

**`hero-banner`** — full-bleed hero
- Background `{colors.surface-dark}` with full-bleed photo or atmospheric gradient, content stacked left, type `{typography.display-xl}` for the title.
- "SCENIC E-TECH ELEKTRİKLİ" hero on the homepage.

### Inputs & Forms

**`text-input`** — default input
- Background `{colors.canvas}`, text `{colors.ink}`, type `{typography.body-md}`, 1px bottom border `{colors.hairline-strong}`, `rounded: {rounded.none}`, padding `{spacing.sm} {spacing.md}`, height 48px.
- Inputs intentionally minimal — borderless on top and sides, single hairline at the bottom — keeping the catalogue feel.

### Configurator

**`configurator-row`** — option list row
- Background `{colors.canvas}`, separator hairline `{colors.hairline}` between rows, padding `{spacing.xl}` top/bottom, type `{typography.body-md}`.
- Right-side scrolling list on the configurator: "kasa tipi", "motor seçimi", "versiyon seçimi", "renk seçenekleri", etc.

**`configurator-swatch`** — circular colour pick
- Background `{colors.surface-soft}` (or the actual car colour), `rounded: {rounded.full}`, 56×56px.
- Used for paint colour selection. Active state adds a 1px solid `{colors.hairline-strong}` ring.

### Navigation

**`nav-bar`** — top nav (desktop)
- Background `{colors.canvas}`, type `{typography.button-md}`, height 60px, hairline `{colors.hairline}` bottom border.
- Left: diamond logomark. Centre: top-level nav ("Modeller", "Hizmetler", "Renault Yaşamı", "MyRenault"). Right: language switcher + login icon.

**`nav-bar`** (mobile)
- Same height 60px, collapses centre nav into a hamburger icon. Logo stays left, login stays right.

**`sub-nav-pill`** — pill-style sub-nav
- Pill chips set in a horizontal scroll bar between hero and content body (e.g. "Servis & randevu", "Sahiplik dönemi geçişi", "Kampanyalar"), `{component.button-pill}` styling.

### Signature Components

**`badge-new`** — "yeni" badge
- Background `{colors.primary}`, label `{colors.on-primary}`, type `{typography.button-md}`, `rounded: {rounded.full}`, padding `6px 14px`.
- Anchored on the bottom-left of new vehicle cards.

**`footer`** — global footer
- Background `{colors.surface-dark}`, text `{colors.on-dark}`, type `{typography.body-sm}`, padding `64px 24px`.
- Three-column legal/quick-links/locale grid above a single-line copyright row separated by `{colors.divider-dark}`.

## Do's and Don'ts

### Do
- Reserve `{colors.primary}` exclusively for primary CTAs, "yeni"/"NEW" badges, and at most one accent promo tile per band — `{component.promo-tile-yellow}` is intentionally rare.
- Pair `{colors.primary}` only with `{colors.on-primary}` text. Yellow + white is forbidden.
- Set everything in **NouvelR** — no secondary serif, no script, no decorative italic.
- Hold display headlines at `{typography.display-xl}` weight 700 with `lineHeight: 0.95` so they stack tightly on multi-line wraps.
- Use `{rounded.xs}` (2px) on every standard button — the near-flat corner is part of the brand.
- Switch full bands between `{colors.canvas}` and `{colors.surface-dark}` for storytelling rhythm. Avoid mid-greys as section backgrounds.
- Show vehicle photography full-bleed inside `{component.vehicle-card}` with copy stacked beneath, never overlaid.
- Use `{component.sub-nav-pill}` (`{rounded.pill}`) only for sub-nav and small filter rows — never for primary CTAs.

### Don't
- Don't introduce a secondary accent colour. Yellow is the only brand accent; semantic colours (`{colors.error}`, `{colors.success}`, `{colors.warning}`) are functional, not decorative.
- Don't round vehicle cards or promo tiles. Square-cornered photography is core to the brand expression.
- Don't soften body weights to 500 or 600 — the system relies on the 400 / 700 contrast.
- Don't apply `{colors.primary}` to body text or large surfaces beyond the single accent tile per band.
- Don't add atmospheric gradient washes outside the dedicated R5 / E-TECH hero contexts.
- Don't pair light grey text on white. Body text steps through `{colors.body}`, `{colors.charcoal}`, `{colors.mute}` — `{colors.ash}` and `{colors.stone}` are reserved for placeholders and disabled states.
- Don't add drop shadows to vehicle cards or promo tiles — the system is shadow-free at the catalogue level.

## Responsive Behavior

### Breakpoints

| Name | Width | Key Changes |
|---|---|---|
| Desktop XL | ≥ 1440px | Full max-width container, 3–4 column vehicle grid, 2-up promo tile grid. |
| Desktop | 1280–1439px | Same layout, container shrinks to viewport with `{spacing.xl}` side padding. |
| Tablet Large | 1024–1279px | Vehicle grid drops to 3-up, configurator left/right panes resize to 55/45. |
| Tablet | 768–1023px | Promo tile grid collapses to 2-up, sub-nav pills become horizontal scroll. |
| Mobile Large | 426–767px | Vehicle grid 2-up, configurator switches to stacked panes (visualisation on top, options below), nav collapses to hamburger. |
| Mobile | ≤ 425px | All grids 1-up, hero `{typography.display-xl}` clamps to ~40px, section padding `{spacing.section}` collapses to `{spacing.xxxl}`. |

### Touch Targets
- All buttons ship at minimum 44×44px on mobile; default `{component.button-primary}` is 48px tall, comfortably exceeding WCAG AAA.
- `{component.sub-nav-pill}` (36px) is bumped to 40px tall on mobile via increased vertical padding.
- `{component.button-icon-square}` (40px) sits at the WCAG AA minimum and remains tappable, but should grow to 44px when used as a primary navigation control.

### Collapsing Strategy
- Top-level nav collapses to hamburger at < 1024px; the logo and login icon stay anchored.
- 2-up promo grid collapses to 1-up at < 768px; tile padding shrinks from `{spacing.xxl}` to `{spacing.lg}`.
- Configurator switches from side-by-side to stacked at < 1024px, with the visualisation pinned to the top of the viewport on scroll.
- Display headlines clamp: `{typography.display-xl}` 56px → 40px → 32px across the breakpoint ladder.
- Sub-nav pills convert from a wrap row to a horizontal scroll-rail at < 768px.

### Image Behavior
- Vehicle photography is served at 1.5× and 2× DPR; below 768px, the system swaps to a portrait-oriented composition where art direction allows.
- Hero atmospheric gradients (R5, E-TECH) load lazily after primary content; they are not blocking.
- Lifestyle / commercial photography in `{component.promo-tile-dark}` keeps the same 16:9 framing across breakpoints, cropping inward rather than letterboxing.

## Iteration Guide

1. Focus on ONE component at a time. Most components share `{rounded.xs}`, `{colors.canvas}` / `{colors.surface-dark}`, and NouvelR — only the role-specific tokens (`{colors.primary}`, `{component.promo-tile-yellow}`) shift between variants.
2. Reference component names and tokens directly (`{colors.primary}`, `{component.button-primary-pressed}`, `{rounded.pill}`) — do not paraphrase.
3. Run `npx @google/design.md lint DESIGN.md` after edits; the orphaned-tokens warning will catch unused entries before they ship.
4. Add new variants as separate entries (`-pressed`, `-disabled`, `-outline`) — do not bury them in prose.
5. Default body type to `{typography.body-md}`; reach for `{typography.subtitle}` only on hero subtitles and lead paragraphs.
6. Keep `{colors.primary}` scarce — if more than one yellow element appears per viewport, ask whether one of them should drop to `{colors.surface-dark}` or `{colors.canvas}` instead.

## Known Gaps

- Active/pressed visual states are not consistently observable in static surfaces; `button-primary-pressed` documents the extracted darkened-yellow value, but no other component has a pressed variant promoted to the YAML.
- Drop-shadow values exist in the extracted tokens but are rarely surfaced visually; only the configurator's sticky summary bar uses them on the captured pages.
- The MyRenault application surfaces (logged-in product) are out of scope for this extraction — only the public marketing canvas is documented.
- Form-field focus styling is not extracted; the system likely relies on a thicker bottom border at `{colors.ink}`, but this is not visually confirmed on the captured pages.


---

## Brand: `spacex`

---
version: alpha
name: Spacex-Inspired-design-analysis
description: An inspired interpretation of Spasex's design language — a mission-oriented aerospace brand built on pure black canvas, full-bleed photographic and video heroes of rockets and Mars landscapes, and uppercase D-DIN display type set in tight vertical leading. UI chrome is intentionally minimal a single ghost outlined pill button per band, all-caps eyebrow microtext, and a fixed top nav over photography. The system is unapologetically austere — black, white, and the imagery itself.

colors:
  primary: "#000000"
  ink: "#000000"
  on-primary: "#ffffff"
  on-primary-mute: "#f0f0fa"
  canvas-night: "#000000"
  canvas-night-soft: "#0a0a0a"
  canvas-light: "#ffffff"
  canvas-cool: "#f0f0fa"
  hairline-on-dark: "#3a3a3f"
  hairline-on-light: "#e0e0e8"
  link-on-dark: "#ffffff"
  link-blue-fallback: "#0000ee"
  ink-mute: "#5a5a5f"

typography:
  display-xxl:
    fontFamily: "D-DIN-Bold, Arial Narrow, Arial, Verdana, sans-serif"
    fontSize: 80px
    fontWeight: 700
    lineHeight: 0.95
    letterSpacing: 1.6px
  display-xl:
    fontFamily: "D-DIN-Bold, Arial Narrow, Arial, Verdana, sans-serif"
    fontSize: 60px
    fontWeight: 700
    lineHeight: 1.2
    letterSpacing: 1.2px
  display-lg:
    fontFamily: "D-DIN-Bold, Arial Narrow, Arial, Verdana, sans-serif"
    fontSize: 48px
    fontWeight: 700
    lineHeight: 1.25
    letterSpacing: 0.96px
  body-lg:
    fontFamily: "D-DIN, Arial, Verdana, sans-serif"
    fontSize: 16px
    fontWeight: 400
    lineHeight: 1.7
    letterSpacing: 0.32px
  body-md:
    fontFamily: "D-DIN, Arial, Verdana, sans-serif"
    fontSize: 16px
    fontWeight: 400
    lineHeight: 1.5
    letterSpacing: 0.32px
  button-cap:
    fontFamily: "D-DIN, Arial, Verdana, sans-serif"
    fontSize: 13.008px
    fontWeight: 700
    lineHeight: 0.94
    letterSpacing: 1.17px
  micro-cap:
    fontFamily: "D-DIN, Arial, Verdana, sans-serif"
    fontSize: 12px
    fontWeight: 400
    lineHeight: 2.0
    letterSpacing: 0.96px
  caption:
    fontFamily: "D-DIN, Arial, Verdana, sans-serif"
    fontSize: 13.008px
    fontWeight: 400
    lineHeight: 1.5
    letterSpacing: 0

rounded:
  xs: 4px
  sm: 8px
  md: 16px
  pill: 32px
  full: 9999px

spacing:
  xxs: 4px
  xs: 8px
  sm: 12px
  md: 16px
  lg: 18px
  xl: 24px
  xxl: 32px
  huge: 48px

components:
  button-ghost-on-dark:
    backgroundColor: "{colors.canvas-night}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button-cap}"
    rounded: "{rounded.pill}"
    padding: 18px 24px
  button-ghost-on-light:
    backgroundColor: "{colors.canvas-light}"
    textColor: "{colors.ink}"
    typography: "{typography.button-cap}"
    rounded: "{rounded.pill}"
    padding: 18px 24px
  button-filled-cool:
    backgroundColor: "{colors.canvas-cool}"
    textColor: "{colors.ink}"
    typography: "{typography.button-cap}"
    rounded: "{rounded.pill}"
    padding: 18px 24px
  text-input:
    backgroundColor: "{colors.canvas-light}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.xs}"
    padding: 12px 16px
  card-photo-band:
    backgroundColor: "{colors.canvas-night}"
    textColor: "{colors.on-primary}"
    typography: "{typography.body-md}"
    rounded: "{rounded.xs}"
    padding: 0px
  card-shop-product:
    backgroundColor: "{colors.canvas-light}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.sm}"
    padding: 16px
  nav-bar-overlay:
    backgroundColor: "{colors.canvas-night}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button-cap}"
    rounded: "{rounded.xs}"
    padding: 24px 32px
  link-on-dark:
    backgroundColor: "{colors.canvas-night}"
    textColor: "{colors.link-on-dark}"
    typography: "{typography.body-md}"
    rounded: "{rounded.xs}"
    padding: 0px
  link-on-light:
    backgroundColor: "{colors.canvas-light}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.xs}"
    padding: 0px
  footer-dark:
    backgroundColor: "{colors.canvas-night}"
    textColor: "{colors.on-primary}"
    typography: "{typography.caption}"
    rounded: "{rounded.xs}"
    padding: 32px 24px
---

## Overview

Spasex's design language is an exercise in negation: pure black canvas, white display type set in tight vertical leading and uppercase, full-bleed photography or autoplaying rocket-launch video as the only chrome. There is no brand color beyond black-and-white; there are no decorative shapes; there are no card grids or pricing tables on the marketing pages. Every band is a single full-viewport photograph or video paired with one all-caps headline at `{typography.display-xxl}` (80px D-DIN-Bold) and one ghost-outlined pill CTA. The composition is closer to a film title card than a SaaS landing page.

The brand's depth is photographic. Mars landscapes, rocket exhaust plumes, the F9 booster on a launchpad at sunset — these are the design system. Type sits over them at high opacity with no scrim, no gradient overlay; the photographs are graded so the type lands cleanly. When type does need a background, it sits on `{colors.canvas-night-soft}` (a barely-lifted near-black) with a 1px hairline in `{colors.hairline-on-dark}`.

Typography splits between **D-DIN-Bold** for display tiers (uppercase, tight tracking, condensed feel) and **D-DIN** regular for body and button labels. There is no third family — even pricing on the shop site uses the same two cuts. The display sizes are unusually tight in vertical leading (0.95–1.25) and unusually loose in horizontal tracking (1.6px positive at 80px) — the brand feels engineered rather than designed.

**Key Characteristics:**
- Single canvas: pure `{colors.canvas-night}` (`#000000`) for marketing; `{colors.canvas-light}` only on the shop site.
- Display tier in uppercase D-DIN-Bold with positive horizontal tracking (1.6px at 80px) — the brand's typographic signature.
- Full-bleed photography or autoplaying video as the dominant decorative element; type sits directly on imagery with no scrim.
- Single ghost-outlined pill CTA per band, at `{rounded.pill}` 32px radius — never filled, never accent-colored.
- All-caps eyebrow microtext (`{typography.micro-cap}` and `{typography.button-cap}`) with positive 0.96–1.17px tracking — every chrome element shouts in caps.
- Fixed top nav overlaid on photography — no opaque background, just white-on-image.
- Tight 0.95 line-height on the 80px display — vertical compression is the engineering aesthetic.

## Colors

> **Source pages:** home (`/`), `/shop`, `/vehicles/starship`, `/humanspaceflight/overview`, `/mission`.

### Brand & Accent
The brand has no accent colors. Black and white do all the chromatic work; photography supplies every other hue.

### Surface
- **Canvas Night** (`{colors.canvas-night}` — `#000000`): Default marketing canvas. Pure black, no tint.
- **Canvas Night Soft** (`{colors.canvas-night-soft}` — `#0a0a0a`): Barely-lifted near-black for content sections that need a subtle separation from the pure-black hero.
- **Canvas Light** (`{colors.canvas-light}` — `#ffffff`): The shop site's product surface.
- **Canvas Cool** (`{colors.canvas-cool}` — `#f0f0fa`): A pale cool-blue-white used as the secondary surface on the shop site and as the hover-canvas of certain ghost buttons.
- **Hairline on Dark** (`{colors.hairline-on-dark}` — `#3a3a3f`): 1px borders on dark surface chrome.
- **Hairline on Light** (`{colors.hairline-on-light}` — `#e0e0e8`): Borders on shop-site cards.

### Text
- **On Primary** (`{colors.on-primary}` — `#ffffff`): Default text on dark canvas; the dominant text color across the marketing site.
- **On Primary Mute** (`{colors.on-primary-mute}` — `#f0f0fa`): Slightly cooled-white used for secondary text on dark surfaces — barely distinguishable from `{colors.on-primary}` but enough to suggest a hierarchy.
- **Ink** (`{colors.ink}` — `#000000`): Default text on light surfaces (shop site).
- **Ink Mute** (`{colors.ink-mute}` — `#5a5a5f`): Secondary text on light surfaces.

### Link
- **Link on Dark** (`{colors.link-on-dark}` — `#ffffff`): Underlined inline link on dark canvas.
- **Link Blue Fallback** (`{colors.link-blue-fallback}` — `#0000ee`): The browser default that appears in unstyled fallback contexts — documented for completeness, not used as a brand color.

## Typography

### Font Family

The display tier is **D-DIN-Bold** — a condensed industrial sans inspired by the German DIN 1451 standard (used on autobahn road signage and engineering blueprints). When unavailable, fall back to **Arial Narrow**, then Arial, then Verdana — the fallback chain prioritizes width compression over ornament.

The UI tier is **D-DIN** (regular weight) — the same family at standard width — used for body, button labels, and captions.

D-DIN is freely available from the **DIN Type Foundry** (and a free version under the same name is widely distributed). For maximum brand fidelity, use D-DIN directly; as a substitute, **Inter** at heavy weights (700+) with letter-spacing of 1.6px positive tracking approximates the rhythm. Avoid serif or humanist sans alternatives.

### Hierarchy

| Token | Size | Weight | Line Height | Letter Spacing | Use |
|---|---|---|---|---|---|
| `{typography.display-xxl}` | 80px | 700 | 0.95 | 1.6px | Hero headline (uppercase) |
| `{typography.display-xl}` | 60px | 700 | 1.2 | 1.2px | Section opener (uppercase) |
| `{typography.display-lg}` | 48px | 700 | 1.25 | 0.96px | Sub-section heading (uppercase) |
| `{typography.body-lg}` | 16px | 400 | 1.7 | 0.32px | Marketing body lead |
| `{typography.body-md}` | 16px | 400 | 1.5 | 0.32px | Default UI body |
| `{typography.button-cap}` | 13.008px | 700 | 0.94 | 1.17px | All-caps button label |
| `{typography.micro-cap}` | 12px | 400 | 2.0 | 0.96px | All-caps eyebrow / nav item |
| `{typography.caption}` | 13.008px | 400 | 1.5 | 0 | Helper / footer text |

### Principles
- **Uppercase across display.** Every display tier renders in uppercase. The brand never uses sentence-case display headlines.
- **Tight vertical leading on display.** 0.95 at 80px and 1.2 at 60px — the type stacks engineer-tight.
- **Wide horizontal tracking.** Positive 0.96–1.6px tracking on display sizes; positive 0.96–1.17px on caps eyebrows. The wide tracking is the brand's signature optical air.
- **No mono.** Code blocks are not part of the brand's typographic system.

### Note on Font Substitutes
**D-DIN** is freely available (the original DIN-style face under that name is widely distributed). When unavailable, use **Inter** at 700 weight with `letter-spacing: 1.6px`, `text-transform: uppercase`, and `line-height: 0.95` for display sizes — this matches the rhythm. Avoid Helvetica or Arial at default weights — the brand needs the condensed industrial cut. Avoid serif fallbacks entirely.

## Layout

### Spacing System
- **Base unit**: 8px (with denser sub-units 4 / 12 / 16 / 18 / 24).
- **Tokens**: `{spacing.xxs}` 4px · `{spacing.xs}` 8px · `{spacing.sm}` 12px · `{spacing.md}` 16px · `{spacing.lg}` 18px · `{spacing.xl}` 24px · `{spacing.xxl}` 32px · `{spacing.huge}` 48px.
- **Section padding**: full-viewport bands on marketing — no internal padding above/below; the photograph IS the section. On the shop site, sections use 48–64px vertical padding.

### Grid & Container
- Marketing pages have no container — every band is full-viewport-width, full-viewport-height (or close to it) with photography filling the entire frame.
- Shop product grid: 4-up at desktop, 2-up at tablet, 1-up at mobile.
- Type sits inside an inner ~1200px reading column centered horizontally over the full-bleed photograph.

### Whitespace Philosophy
The marketing pages have minimal traditional whitespace — the photograph occupies all space. "Whitespace" here means the dark sky in a rocket photograph or the empty stretch of Martian terrain. Negative space is photographic, not a UI choice. On the shop site whitespace returns to standard 32px grid gutters.

## Elevation & Depth

| Level | Treatment | Use |
|---|---|---|
| 0 | Flat | Default — and the only level on marketing surfaces |
| 1 | Photographic — full-bleed image or video | The primary depth medium; photographs do all the lifting |

The brand does not use drop shadows, blurs, glows, or gradient overlays. Depth is photographic: a rocket launching at twilight has natural atmospheric depth that no CSS shadow could simulate. When type needs separation from imagery, the image is graded darker rather than scrimmed.

### Decorative Depth
Photography and autoplaying rocket-launch video are the only decorative depth. There are no illustrations, no icons beyond a few minimal SVG arrow chevrons in nav and CTA hover states.

## Shapes

### Border Radius Scale

| Token | Value | Use |
|---|---|---|
| `{rounded.xs}` | 4px | Form inputs (shop site) |
| `{rounded.sm}` | 8px | Shop product card chrome, video frames |
| `{rounded.md}` | 16px | Larger surface chrome |
| `{rounded.pill}` | 32px | Ghost outlined pill CTAs (the brand's signature button shape) |
| `{rounded.full}` | 9999px | Circular play-button overlays on video frames |

### Photography Geometry
Every photograph is full-viewport-bleed, edge-to-edge, never inset in a card on the marketing site. On the shop site, product photography sits inside `{rounded.sm}` 8px containers with no shadow. Aspect ratios on marketing photography vary with the source image — there is no enforced ratio; the photograph leads.

## Components

### Buttons

**`button-ghost-on-dark`** — the universal CTA on marketing surfaces.
- Background `{colors.canvas-night}` (transparent against the photographed canvas), 1px solid `{colors.on-primary}` border, text `{colors.on-primary}`, type `{typography.button-cap}` (uppercase, 13px / 700 / 1.17px tracking), padding `{spacing.lg} {spacing.xl}` (18px 24px), rounded `{rounded.pill}` 32px.

**`button-ghost-on-light`** — the same button on shop / light pages.
- Background `{colors.canvas-light}` (transparent against light canvas), 1px solid `{colors.ink}` border, text `{colors.ink}`, otherwise identical.

**`button-filled-cool`** — fill variant on shop product cards.
- Background `{colors.canvas-cool}`, text `{colors.ink}`, same pill geometry. Used as "Add to cart" or similar product CTAs.

### Cards & Containers

**`card-photo-band`** — full-bleed photographic band on marketing pages.
- Background `{colors.canvas-night}`, padding 0, rounded `{rounded.xs}`. The photograph fills the entire band; type and CTA sit overlaid.

**`card-shop-product`** — product card on the shop site.
- Background `{colors.canvas-light}`, padding `{spacing.md}` 16px, rounded `{rounded.sm}` 8px, 1px `{colors.hairline-on-light}` border. Product photo on top, name in `{typography.body-md}`, price in `{typography.body-md}` 700 weight, "Add to cart" button at the bottom.

### Inputs & Forms

**`text-input`** — form input on the shop site.
- Background `{colors.canvas-light}`, text `{colors.ink}`, type `{typography.body-md}`, padding `{spacing.sm} {spacing.md}` (12px 16px), rounded `{rounded.xs}` 4px, 1px `{colors.hairline-on-light}` border.

### Navigation

**`nav-bar-overlay`** — top nav across the marketing site.
- Background `{colors.canvas-night}` (transparent over the hero photo), text `{colors.on-primary}`, type `{typography.button-cap}` (uppercase). Logo wordmark on the left at ~147×19px, nav items horizontal in caps, padding `{spacing.xl} {spacing.xxl}` (24px 32px). The nav is fixed/sticky on scroll, retaining the overlay treatment.

### Signature Components

**Full-Bleed Photo / Video Hero** — every marketing band is a full-viewport photograph or autoplaying rocket-launch video. Type and CTA sit overlaid on the photograph at high opacity with no scrim. The photograph is graded so type lands cleanly without an overlay layer.

**Uppercase Display Headline** — the 80px D-DIN-Bold uppercase headline with 1.6px positive tracking is the brand's most recognizable typographic moment. Always uppercase, always bold-weight, always positively tracked.

**`link-on-dark`** — inline links on dark canvas.
- Text `{colors.link-on-dark}` (white) with persistent underline.

**`link-on-light`** — inline links on light canvas.
- Text `{colors.ink}` with persistent underline.

**`footer-dark`** — site-wide footer.
- Background `{colors.canvas-night}`, text `{colors.on-primary}`, type `{typography.caption}`, padding `{spacing.xxl} {spacing.xl}` (32px 24px). Holds nav columns in `{typography.micro-cap}` (uppercase), and a small legal/copyright row at the bottom.

## Do's and Don'ts

### Do
- Use full-bleed photography or autoplaying video as the dominant decorative element on every marketing band.
- Render display tiers in uppercase D-DIN-Bold with positive 0.96–1.6px letter-spacing — the wide tracking is the signature.
- Use a single `{button-ghost-on-dark}` per band — the brand does NOT show two CTAs side by side on marketing surfaces.
- Pair every photograph with type that respects the imagery — no scrims, no gradients, no overlays. Grade the photo, not the canvas.
- Keep nav overlay-style (transparent, white-on-image) on marketing pages.

### Don't
- Don't introduce brand accent colors — black, white, and photography are the entire palette.
- Don't use drop shadows or gradient overlays on dark canvas — they fight the photography.
- Don't render display tiers in sentence-case or title-case — uppercase is the brand.
- Don't put filled buttons on marketing surfaces — the ghost outlined pill is the only marketing CTA.
- Don't use serif or humanist sans alternatives — the condensed industrial DIN cut is non-negotiable.

## Responsive Behavior

### Breakpoints

| Name | Width | Key Changes |
|---|---|---|
| Wide | ≥ 1500px | Full hero photograph; max-content type column at 1200px |
| Desktop | 1280–1499px | Default desktop layout |
| Laptop | 961–1279px | Type column tightens; photo crops adjust |
| Tablet | 768–960px | Display drops 80 → 60px; nav compresses |
| Mobile | 600–767px | Display drops to 48px; ghost button retains pill shape |
| Small Mobile | < 600px | Display drops to 40px; nav becomes hamburger |

### Touch Targets
- Ghost pill buttons hit ≥ 50×50px due to the 18px vertical padding × 13px line-height. WCAG AAA compliant.
- Form fields stay at the 44px minimum height.

### Collapsing Strategy
- Display sizes stair-step 80 → 60 → 48 → 40px through the breakpoints.
- Photography re-crops to focal subject on smaller widths (rocket centered, Mars landscape centered).
- Top nav collapses to hamburger below 768px; menu retains the dark overlay treatment.
- Shop product grid stair-steps 4-up → 2-up → 1-up.

### Image Behavior
Marketing photography uses `srcset` for desktop / tablet / mobile with art-direction crops at major breakpoints. Mobile crops favor the central focal subject; wide crops favor environmental context (full launch pad, full Martian horizon).

## Iteration Guide

1. Focus on ONE component at a time.
2. Reference component names and tokens directly (`{colors.canvas-night}`, `{button-ghost-on-dark}`, `{rounded.pill}`).
3. Run `npx @google/design.md lint DESIGN.md` after edits.
4. Add new variants as separate entries.
5. Default body to `{typography.body-md}`; reserve `{typography.body-lg}` for marketing leads.
6. The black-and-white-only rule is load-bearing — adding a brand accent color breaks the system.
7. Ghost pill is the only marketing CTA; filled buttons live exclusively on the shop site.


---

## Brand: `tesla`

# Design System Inspired by Tesla

## 1. Visual Theme & Atmosphere

Tesla's website is an exercise in radical subtraction — a digital showroom where the product is everything and the interface is almost nothing. The page opens with a full-viewport hero that fills the entire screen with cinematic car photography: three vehicles arranged on polished concrete against a hazy cityscape sky, with a single model name floating above in translucent white type. There are no decorative borders, no gradients, no patterns, no shadows. The UI exists only to provide just enough navigational structure to get out of the way. Every pixel that isn't product imagery is white space, and that restraint is the design system's most powerful statement.

The color philosophy is almost ascetic: a single blue (`#3E6AE1`) for primary calls to action, three shades of dark gray for text hierarchy, and white for everything else. The entire emotional weight is carried by photography — sprawling landscape shots, studio-lit vehicle profiles, and atmospheric environmental compositions that stretch edge-to-edge across each viewport-height section. The UI chrome dissolves into the imagery. The navigation bar floats above the hero with no visible background, border, or shadow — the TESLA wordmark and five navigation labels simply exist in the space, trusting the content beneath them to provide sufficient contrast.

Typography recently transitioned from Gotham to Universal Sans — a custom family split into "Display" for headlines and "Text" for body/UI elements — unifying the website, mobile app, and in-car software into a single typographic voice. The Display variant renders hero titles at 40px weight 500, while the Text variant handles everything from navigation (14px/500) to body copy (14px/400). The font carries a geometric precision with slightly humanist terminals that feels engineered rather than designed — exactly matching Tesla's brand identity of technology that doesn't need to announce itself. There are no text shadows, no text gradients, no decorative type treatments. Every letterform earns its place through clarity alone.

**Key Characteristics:**
- Full-viewport hero sections (100vh) dominated by cinematic car photography with minimal overlay UI
- Near-zero UI decoration: no shadows, no gradients, no borders, no patterns anywhere on the page
- Single accent color — Electric Blue (`#3E6AE1`) — used exclusively for primary CTA buttons
- Universal Sans font family (Display + Text) unifying web, app, and in-car interfaces
- Photography-first presentation where product imagery carries all emotional weight
- Frosted-glass navigation concept with transparent/white nav that floats over hero content
- 0.33s cubic-bezier transitions as the universal timing for all interactive state changes
- Carousel-driven hero with dot indicators and edge arrow navigation for multiple vehicle showcases
- "Ask a Question" persistent chatbot bar anchored to the viewport bottom

## 2. Color Palette & Roles

### Primary
- **Electric Blue** (`#3E6AE1`): Primary CTA button background — a confident, mid-saturation blue (rgb 62, 106, 225) that stands alone as the only chromatic color in the entire interface. Used exclusively for "Order Now" and other primary action buttons
- **Pure White** (`#FFFFFF`): Dominant background color for all surfaces, panels, navigation, and secondary button fills — the canvas that lets photography breathe

### Secondary & Accent
- **Promo Blue** (`#3E6AE1`): Blue also serves for promotional text ("0% APR Available") displayed over hero imagery in the same hue as the CTA — creating a visual link between incentive messaging and action
- No secondary accent colors exist. Tesla deliberately avoids color variety to maintain extreme visual discipline

### Surface & Background
- **White Canvas** (`#FFFFFF`): Page background, navigation panel, dropdown menus, and all surface containers
- **Light Ash** (`#F4F4F4`): Subtle alternate surface for section differentiation — barely perceptible shift from pure white (rgb 244, 244, 244)
- **Carbon Dark** (`#171A20`): Dark surface color for hero text overlays and potential dark-mode contexts (rgb 23, 26, 32) — a warm near-black with a blue undertone
- **Frosted Glass** (`rgba(255, 255, 255, 0.75)`): Semi-transparent white for navigation backdrop-filter effects on scroll

### Neutrals & Text
- **Carbon Dark** (`#171A20`): Primary heading and navigation text — the darkest text value (rgb 23, 26, 32), used for model names, nav labels, and hero titles on light backgrounds
- **Graphite** (`#393C41`): Body text and secondary content (rgb 57, 60, 65) — the default paragraph color, slightly warmer than pure gray
- **Pewter** (`#5C5E62`): Tertiary text for sub-links, secondary navigation links like "Learn" and "Order" (rgb 92, 94, 98)
- **Silver Fog** (`#8E8E8E`): Placeholder text in input fields and disabled states (rgb 142, 142, 142)
- **Cloud Gray** (`#EEEEEE`): Light borders and divider lines (rgb 238, 238, 238)
- **Pale Silver** (`#D0D1D2`): Subtle UI borders and delineation (rgb 208, 209, 210)

### Semantic & Accent
- Tesla's marketing site avoids semantic color coding (no green/red/yellow status indicators). Error, success, and warning states follow standard browser defaults in form contexts
- The blue CTA (`#3E6AE1`) serves as the sole interactive color signal

### Gradient System
- No gradients are used anywhere in the interface
- Depth is achieved entirely through photography, whitespace, and the binary contrast between full-bleed imagery and clean white surfaces
- The navigation achieves layering through opacity (frosted glass effect) rather than gradient or shadow

## 3. Typography Rules

### Font Family
- **Display**: `Universal Sans Display`, -apple-system, Arial, sans-serif — used for hero titles and large model names. A geometric sans-serif with precisely engineered proportions, recently replacing Gotham to unify Tesla's digital ecosystem (website, mobile app, vehicle interface)
- **Text/UI**: `Universal Sans Text`, -apple-system, Arial, sans-serif — used for navigation, body copy, buttons, and all UI text. Optimized for legibility at smaller sizes with slightly wider proportions than the Display variant
- **No OpenType features** detected — typography is completely unembellished
- **No italic variants** observed on the marketing site

### Hierarchy

| Role | Size | Weight | Line Height | Letter Spacing | Notes |
|------|------|--------|-------------|----------------|-------|
| Hero Title | 40px (2.50rem) | 500 | 48px (1.20) | normal | Universal Sans Display, white on dark hero imagery |
| Product Name | 17px (1.06rem) | 500 | 20px (1.18) | normal | Universal Sans Text, model names in nav panel and cards |
| Nav Item | 14px (0.88rem) | 500 | 16.8px (1.20) | normal | Universal Sans Text, primary navigation labels |
| Body Text | 14px (0.88rem) | 400 | 20px (1.43) | normal | Universal Sans Text, paragraph and descriptive content |
| Button Label | 14px (0.88rem) | 500 | 16.8px (1.20) | normal | Universal Sans Text, CTA button text |
| Sub-link | 14px (0.88rem) | 400 | 20px (1.43) | normal | Tertiary links (Learn, Order, Experience) |
| Promo Text | 22px (1.38rem) | 400 | 20px (0.91) | normal | White promotional text on hero ("0% APR Available") |
| Category Label | 16px (est.) | 500 | — | normal | White text labels on category cards ("Sport Sedan") |

### Principles
- **"Normal" letter-spacing everywhere**: Unlike most modern tech brands that use negative tracking for headlines, Tesla uses default letter-spacing at every level. This reflects a philosophy that the typeface should speak for itself without manipulation
- **Weight restraint**: Only two weights appear — 500 (medium) for headings/UI and 400 (regular) for body. No bold (700), no light (300). The system avoids typographic drama
- **Unified font sizing**: Most UI text clusters at 14px with only hero titles (40px) and promo text (22px) breaking away. This extreme uniformity creates a sense of engineered consistency
- **Display vs Text split**: The two-variant system (Display for hero, Text for UI) creates subtle optical correction without visible stylistic difference — they appear as the same typeface at different sizes
- **No text transforms**: No uppercase text appears in the main navigation or CTAs — the lowercase approach reinforces Tesla's understated confidence

## 4. Component Stylings

### Buttons
All buttons use barely-rounded rectangles (4px border-radius) — creating a sharp, technical aesthetic that mirrors the precision of the vehicles.

**Primary CTA** — The main action button:
- Default: bg `#3E6AE1` (Electric Blue), text `#FFFFFF`, fontSize 14px, fontWeight 500, padding 4px with inner content centering, borderRadius 4px, minHeight 40px, width 200px
- Border: 3px solid transparent (reserves space for focus/active border animation)
- Box Shadow: `rgba(0,0,0,0) 0px 0px 0px 2px inset` (invisible at rest, animates to visible on focus)
- Transition: `border-color 0.33s, background-color 0.33s, color 0.33s, box-shadow 0.25s`
- Hover: subtle darkening of blue background
- Used for: "Order Now" calls to action

**Secondary CTA** — The alternative action button:
- Default: bg `#FFFFFF`, text `#393C41` (Graphite), same dimensions and border pattern as primary
- Transition: identical timing to primary (0.33s)
- Used for: "View Inventory" alongside primary CTA

**Nav Button** — Top navigation items:
- Default: bg transparent, text `#171A20` (Carbon Dark), fontSize 14px, fontWeight 500, borderRadius 4px, padding 4px 16px, minHeight 32px
- Transition: `color 0.33s, background-color 0.33s`
- Active/expanded: subtle background highlight
- Used for: "Vehicles", "Energy", "Charging", "Discover", "Shop"

**Text Link** — In-content actions:
- Default: text `#5C5E62` (Pewter), fontSize 14px, fontWeight 400, no background, no border
- Hover: underline decoration with box-shadow transition
- Transition: `box-shadow 0.33s cubic-bezier(0.5, 0, 0, 0.75), color 0.33s`
- Used for: "Learn", "Order", "Experience", "New", "Pre-Owned" links in dropdown panel

### Cards & Containers

**Vehicle Card** (Navigation panel):
- Background: transparent (inherits panel white)
- Border: none
- Shadow: none
- Content: vehicle image (transparent PNG) + model name centered below + two text links
- Layout: 3-column grid within the dropdown panel
- No hover animation on the card itself — interaction is via the text links beneath

**Category Card** (Homepage lower section):
- Background: full-bleed landscape photography
- Border radius: approximately 12px (subtly rounded)
- Overflow: hidden (clips image to rounded corners)
- Text: white label in top-left corner ("Sport Sedan", "Midsize SUV")
- Size: large format, approximately 2:1 aspect ratio
- No shadow, no border, no overlay gradient — text relies on image darkness for contrast

### Inputs & Forms
- Background: transparent
- Text color: `#171A20` (Carbon Dark)
- Placeholder color: `#8E8E8E` (Silver Fog)
- Border: minimal, inherits from browser defaults
- Font: Universal Sans Text, 14px
- The "Ask a Question" chatbot input bar sits at the viewport bottom with a clean white background and subtle border

### Navigation
- **Desktop**: Centered horizontal nav with TESLA wordmark (spaced uppercase letters) on the left, five category buttons center-aligned, and three icon buttons (help, globe/language, account) on the right
- **Background**: White (transitions from transparent over dark hero to opaque white on scroll via class toggle `tds-site-header--white-background`)
- **Dropdown panel**: Full-width white panel with 3-column vehicle grid + right sidebar text links, no shadow, no border — appears seamlessly below the nav
- **Sticky behavior**: `sticky-without-slide` class — stays at top without slide-in animation
- **Mobile**: Hamburger collapse pattern
- **No visible separator** between nav and content — the nav blends with the hero

### Image Treatment
- **Hero**: Full-viewport (100vh) sections with cinematic photography — edge-to-edge, no padding, no margin
- **Vehicle images**: Transparent PNG renders on white background in dropdown panel, studio-quality 3/4 angle shots
- **Category cards**: Landscape photography with approximately 2:1 ratio, rounded corners (12px)
- **Carousel**: Auto-advancing with dot indicators (3 dots) and left/right arrow navigation on edges
- **Lazy loading**: Below-fold sections use lazy loading, rendering as blank white until scrolled into view

### Persistent Chat Bar
- Anchored to viewport bottom, visible across all sections
- White background with subtle border
- Contains: chat icon + "Ask a Question" label + placeholder text ("What's Dog Mode?") + send icon + "Schedule a Drive Today" secondary CTA
- Schedule CTA has a teal/blue icon accent

## 5. Layout Principles

### Spacing System
- **Base unit**: 8px
- **Common values**: 8px (0.5rem), 16px (1rem), 21.44px (1.34rem)
- **Button padding**: 4px (minimal outer) with content centering via flexbox, 4px 16px for nav items
- **Section padding**: Full-viewport sections with content centered vertically
- **Card gap**: approximately 16px between category cards

### Grid & Container
- **Max width**: approximately 1383px (full viewport width used for most content)
- **Hero**: Full-bleed, edge-to-edge, 100vh sections
- **Navigation panel**: 3-column grid for vehicle cards with right-aligned text sidebar (~70/30 split)
- **Category cards**: 2-up horizontal layout (large left card + smaller right card)

### Whitespace Philosophy
Tesla uses whitespace as a luxury signal. The generous vertical spacing between sections (each section is a full viewport height) means you can only see one "message" at a time — one car, one model name, one CTA pair. This creates a gallery-like browsing experience where each scroll is a deliberate transition, not a continuous feed. White space is not empty — it's the frame that elevates each vehicle to the status of art piece.

### Border Radius Scale
| Value | Context |
|-------|---------|
| 0px | Most elements — sharp edges are the default |
| 4px | Buttons (primary, secondary, nav items) — barely perceptible rounding |
| ~12px | Category cards — noticeable but restrained rounding on larger surfaces |
| 50% | Carousel dot indicators — perfect circles |

## 6. Depth & Elevation

| Level | Treatment | Use |
|-------|-----------|-----|
| Level 0 (Flat) | No shadow, no border | Default state for all elements — cards, panels, buttons at rest |
| Level 1 (Frost) | `rgba(255,255,255,0.75)` backdrop | Navigation bar on scroll — frosted glass transparency |
| Level 2 (Overlay) | `rgba(128,128,128,0.65)` | Modal overlays and region/cookie popups |
| Level 3 (Subtle) | `rgba(0,0,0,0.05)` | Minimal shadow hints on rare hover states |

### Shadow Philosophy
Tesla's approach to elevation is essentially "none." The site avoids box-shadows entirely in its primary interface. Depth is communicated through three alternative strategies:
1. **Z-index layering**: The sticky navigation sits above hero content through positioning, not shadow
2. **Opacity-based transparency**: The frosted glass nav and overlay modals use background-color opacity rather than shadow to indicate layering
3. **Photography-as-depth**: The full-bleed images create their own visual depth through perspective, lighting, and composition — making UI shadows redundant

### Decorative Depth
- No gradients, glows, or atmospheric effects on UI elements
- The hero imagery itself provides all visual richness — sunset skies, reflected light on car surfaces, ground shadows from studio lighting
- The carousel arrow buttons use a semi-transparent white background to float above the hero imagery without disrupting it

## 7. Do's and Don'ts

### Do
- Let photography dominate every screen — the product IS the design
- Use Electric Blue (`#3E6AE1`) exclusively for primary CTAs — never for decorative purposes
- Maintain viewport-height sections for major content blocks — one message per screen
- Keep typography at weight 400-500 only — no bold, no light, no extremes
- Use 4px border-radius for all interactive elements — precision over playfulness
- Trust whitespace as a luxury signal — never fill available space just because it's empty
- Keep all transitions at 0.33s — consistency in motion is as important as consistency in color
- Use transparent PNG vehicle imagery on white backgrounds for product showcases
- Center CTAs horizontally below model names — the vertical rhythm is model → subtitle → buttons
- Maintain the Display/Text font split — Display for hero-scale text only, Text for everything else

### Don't
- Add shadows to any element — elevation through shadow contradicts the flat, gallery aesthetic
- Use more than one chromatic color besides the blue CTA — the palette is intentionally monochrome-plus-one
- Apply gradients, patterns, or decorative backgrounds to surfaces — white and photography are the only backgrounds
- Use text larger than 40px on the web — the typography is deliberately restrained even at hero scale
- Add borders to cards or containers — separation is achieved through spacing, not lines
- Use uppercase text transforms — Tesla's confidence is expressed through lowercase calm
- Introduce rounded-pill buttons or large border-radii — the 4px radius is deliberate and precise
- Override the Universal Sans family with other typefaces — cross-platform consistency is a core brand value
- Add hover animations with scale/translate transforms — Tesla's interactions are color-only (background and border transitions)
- Clutter the viewport with multiple CTAs — every screen should have at most two action buttons

## 8. Responsive Behavior

### Breakpoints
| Name | Width | Key Changes |
|------|-------|-------------|
| Mobile | <768px | Single-column layout, hamburger nav replaces horizontal labels, hero text scales to ~28px, CTA buttons stack vertically, category cards become full-width |
| Tablet | 768-1024px | 2-column nav panel, hero maintains full-viewport height, CTAs remain side-by-side, reduced horizontal padding |
| Desktop | 1024-1440px | Full horizontal nav, 3-column vehicle grid in dropdown, hero at 40px, side-by-side CTAs at 200px/160px width |
| Large Desktop | >1440px | Content remains centered, hero photography scales to fill wider viewports, max-width container for nav panel content |

### Touch Targets
- Primary CTA buttons: 200px × 40px minimum (well above 44×44px WCAG requirement)
- Nav buttons: minimum 32px height with 4px 16px padding — adequate touch targets
- Carousel arrows: ~44px square white semi-transparent buttons at viewport edges
- Text links ("Learn", "Order"): 14px text with adequate line-height spacing for touch

### Collapsing Strategy
- **Navigation**: Horizontal category buttons (Vehicles, Energy, Charging, Discover, Shop) collapse to a hamburger/drawer menu on mobile
- **Hero CTA pair**: Side-by-side buttons on desktop stack vertically on mobile
- **Category cards**: 2-up horizontal layout collapses to single-column full-width on mobile
- **Vehicle grid**: 3-column grid in desktop nav panel becomes 2-column on tablet, single-column on mobile
- **Spacing**: Section vertical padding remains generous (viewport-height sections) but horizontal padding reduces

### Image Behavior
- Hero images are fully responsive and fill the entire viewport at every breakpoint
- Vehicle carousel images use `object-fit: cover` to maintain cinematic composition across widths
- Transparent PNG vehicle images in the nav panel scale proportionally within their grid cells
- Category card images maintain their landscape ratio and clip via `overflow: hidden` with border-radius

## 9. Agent Prompt Guide

### Quick Color Reference
- Primary CTA: "Electric Blue (#3E6AE1)"
- Background: "Pure White (#FFFFFF)"
- Heading text: "Carbon Dark (#171A20)"
- Body text: "Graphite (#393C41)"
- Tertiary text: "Pewter (#5C5E62)"
- Placeholder: "Silver Fog (#8E8E8E)"
- Alternate surface: "Light Ash (#F4F4F4)"
- Dark surface: "Carbon Dark (#171A20)"

### Example Component Prompts
- "Create a hero section with a full-viewport background image, centered 'Model Y' title in Universal Sans Display at 40px weight 500 in white, a subtitle line below, and two buttons side by side: a primary Electric Blue (#3E6AE1) 'Order Now' button and a secondary white 'View Inventory' button, both with 4px border-radius and 40px height"
- "Design a navigation bar with a spaced-letter wordmark on the left, five text buttons (14px, weight 500, Carbon Dark #171A20) centered, and three icon buttons on the right, all on a white background with no shadow or border"
- "Build a vehicle card grid with 3 columns, each card showing a transparent-background car image above a model name (17px, weight 500, Carbon Dark) and two text links (14px, weight 400, Pewter #5C5E62) labeled 'Learn' and 'Order', on a pure white surface with no borders or shadows"
- "Create a category card with full-bleed landscape photography, 12px border-radius, overflow hidden, and a white text label ('Sport Sedan') positioned in the top-left corner with no overlay gradient"
- "Design a persistent bottom bar with a chat input ('Ask a Question' placeholder), a send icon, and a secondary CTA ('Schedule a Drive Today') with a teal icon, anchored to the viewport bottom on a white background"

### Iteration Guide
When refining existing screens generated with this design system:
1. Focus on ONE component at a time — Tesla's system is so minimal that each element must be pixel-perfect
2. Reference specific color names and hex codes from this document — there are only 6-7 colors in the entire system
3. Use natural language descriptions, not CSS values — "barely rounded corners" not "border-radius: 4px"
4. Describe the desired "feel" alongside specific measurements — "gallery-like silence between sections" communicates the whitespace philosophy better than "margin-bottom: 100vh"
5. Always verify that photography is doing the emotional heavy-lifting — if the UI itself feels "designed," it's too much


---

