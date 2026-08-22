# Media, Journalism, Audio & Creative Platforms

> Bold editorial serif/sans pairings, high-contrast imagery, dark immersive media canvases, audio waveforms.

## Brands in this Archetype

- [`elevenlabs`](#elevenlabs)
- [`pinterest`](#pinterest)
- [`runwayml`](#runwayml)
- [`spotify`](#spotify)
- [`theverge`](#theverge)
- [`wired`](#wired)

---

## Brand: `elevenlabs`

---
version: alpha
name: ElevenLabs-design-analysis
description: A voice-AI brand whose marketing surfaces read like a quietly editorial print magazine. The base canvas is off-white (`#f5f5f5`) holding warm near-black ink (`#292524`); the brand voltage is photographic, not chromatic — soft pastel atmospheric gradient orbs (mint → peach → lavender → sky) drift through the page as the only "color" moments. Display runs Waldenburg Light at weight 300 — the editorial signature. Inter carries body, navigation, captions. CTAs are subtle: a near-black ink pill is the primary, a transparent outline is the secondary. The brand trusts atmospheric photography and modest type weights to do all of the brand work; there is no neon accent, no saturated CTA color, no developer-tools dark canvas.

colors:
  primary: "#292524"
  primary-active: "#0c0a09"
  ink: "#0c0a09"
  body: "#4e4e4e"
  body-strong: "#292524"
  muted: "#777169"
  muted-soft: "#a8a29e"
  hairline: "#e7e5e4"
  hairline-soft: "#f0efed"
  hairline-strong: "#d6d3d1"
  canvas: "#f5f5f5"
  canvas-soft: "#fafafa"
  canvas-deep: "#0c0a09"
  surface-card: "#ffffff"
  surface-strong: "#f0efed"
  surface-dark: "#0c0a09"
  surface-dark-elevated: "#1c1917"
  on-primary: "#ffffff"
  on-dark: "#ffffff"
  on-dark-soft: "#a8a29e"
  gradient-mint: "#a7e5d3"
  gradient-peach: "#f4c5a8"
  gradient-lavender: "#c8b8e0"
  gradient-sky: "#a8c8e8"
  gradient-rose: "#e8b8c4"
  semantic-error: "#dc2626"
  semantic-success: "#16a34a"

typography:
  display-mega:
    fontFamily: "'Waldenburg', 'Times New Roman', serif"
    fontSize: 64px
    fontWeight: 300
    lineHeight: 1.05
    letterSpacing: -1.92px
  display-xl:
    fontFamily: "'Waldenburg', serif"
    fontSize: 48px
    fontWeight: 300
    lineHeight: 1.08
    letterSpacing: -0.96px
  display-lg:
    fontFamily: "'Waldenburg', serif"
    fontSize: 36px
    fontWeight: 300
    lineHeight: 1.17
    letterSpacing: -0.36px
  display-md:
    fontFamily: "'Waldenburg', serif"
    fontSize: 32px
    fontWeight: 300
    lineHeight: 1.13
    letterSpacing: -0.32px
  display-sm:
    fontFamily: "'Waldenburg', serif"
    fontSize: 24px
    fontWeight: 300
    lineHeight: 1.2
    letterSpacing: 0
  title-md:
    fontFamily: "'Inter', sans-serif"
    fontSize: 20px
    fontWeight: 500
    lineHeight: 1.35
    letterSpacing: 0
  title-sm:
    fontFamily: "'Inter', sans-serif"
    fontSize: 18px
    fontWeight: 500
    lineHeight: 1.44
    letterSpacing: 0.18px
  body-md:
    fontFamily: "'Inter', sans-serif"
    fontSize: 16px
    fontWeight: 400
    lineHeight: 1.5
    letterSpacing: 0.16px
  body-strong:
    fontFamily: "'Inter', sans-serif"
    fontSize: 16px
    fontWeight: 500
    lineHeight: 1.5
    letterSpacing: 0.16px
  body-sm:
    fontFamily: "'Inter', sans-serif"
    fontSize: 15px
    fontWeight: 400
    lineHeight: 1.47
    letterSpacing: 0.15px
  caption:
    fontFamily: "'Inter', sans-serif"
    fontSize: 14px
    fontWeight: 400
    lineHeight: 1.5
    letterSpacing: 0
  caption-uppercase:
    fontFamily: "'Inter', sans-serif"
    fontSize: 12px
    fontWeight: 600
    lineHeight: 1.4
    letterSpacing: 0.96px
    textTransform: uppercase
  button:
    fontFamily: "'Inter', sans-serif"
    fontSize: 15px
    fontWeight: 500
    lineHeight: 1.0
    letterSpacing: 0
  nav-link:
    fontFamily: "'Inter', sans-serif"
    fontSize: 15px
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
    rounded: "{rounded.pill}"
    padding: 10px 20px
    height: 40px
  button-primary-active:
    backgroundColor: "{colors.primary-active}"
    textColor: "{colors.on-primary}"
    rounded: "{rounded.pill}"
  button-outline:
    backgroundColor: transparent
    textColor: "{colors.ink}"
    typography: "{typography.button}"
    rounded: "{rounded.pill}"
    padding: 9px 19px
    height: 40px
  button-tertiary-text:
    backgroundColor: transparent
    textColor: "{colors.ink}"
    typography: "{typography.button}"
  hero-band:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.display-mega}"
    padding: 96px
  gradient-orb-card:
    backgroundColor: "{colors.canvas-soft}"
    textColor: "{colors.ink}"
    rounded: "{rounded.xxl}"
    padding: 32px
  feature-card:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ink}"
    typography: "{typography.title-md}"
    rounded: "{rounded.xl}"
    padding: 24px
  product-card-stack:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.xl}"
    padding: 0
  voice-row:
    backgroundColor: transparent
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    padding: 12px 0
  voice-icon-circular:
    backgroundColor: "{colors.surface-strong}"
    rounded: "{rounded.full}"
    size: 32px
  pricing-tier-card:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.xl}"
    padding: 32px
  pricing-tier-featured:
    backgroundColor: "{colors.surface-dark}"
    textColor: "{colors.on-dark}"
    typography: "{typography.body-md}"
    rounded: "{rounded.xl}"
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
  cta-band:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.display-lg}"
    padding: 96px
  testimonial-card:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.body}"
    typography: "{typography.body-md}"
    rounded: "{rounded.xl}"
    padding: 32px
  audio-waveform-card:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ink}"
    rounded: "{rounded.xl}"
    padding: 24px
  footer:
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

ElevenLabs reads like a quietly editorial print magazine that happens to be a voice-AI product. The base canvas is off-white `{colors.canvas}` (#f5f5f5) holding warm near-black ink `{colors.ink}` (#0c0a09). The brand voltage is **photographic, not chromatic**: soft pastel atmospheric gradient orbs (mint, peach, lavender, sky, rose) drift through the page as the only "color" moments. There is no neon accent, no saturated CTA color, no dark-canvas dev-tools atmosphere.

Type pairs **Waldenburg Light** (custom serif at weight 300) for display with **Inter** for body, navigation, captions. The display weight at 300 is the editorial signature — never bold, never heavy.

CTAs are subtle: a near-black ink pill (`{component.button-primary}`) is the primary, a transparent outline (`{component.button-outline}`) is the secondary. The brand trusts atmospheric photography and modest type weights to carry brand work.

**Key Characteristics:**
- Off-white canvas, warm near-black ink. No saturated CTA color.
- Single primary action: ink pill at `{rounded.pill}`. Atmospheric gradients carry visual brand voltage.
- Display runs Waldenburg Light at weight 300 — editorial magazine voice.
- Body runs Inter at 400 with subtle letter-spacing (+0.15-0.18px).
- Pastel gradient orbs (5 tokens: mint, peach, lavender, sky, rose) used as atmospheric brand decoration only.
- Soft pill geometry (`{rounded.pill}` for CTAs, `{rounded.xl}` for cards).
- 96px section rhythm.

## Colors

### Brand & Accent
- **Ink Primary** (`{colors.primary}` — #292524): The primary action color — warm near-black pill. Used scarcely.
- **Ink Primary Active** (`{colors.primary-active}` — #0c0a09): Press state.

### Surface
- **Canvas** (`{colors.canvas}` — #f5f5f5): Off-white page floor.
- **Canvas Soft** (`{colors.canvas-soft}` — #fafafa): Lighter band for subtle alternating sections.
- **Canvas Deep** (`{colors.canvas-deep}` — #0c0a09): Same as ink — used for the rare dark-mode hero (Agents page).
- **Surface Card** (`{colors.surface-card}` — #ffffff): Pure white card.
- **Surface Strong** (`{colors.surface-strong}` — #f0efed): Badges, voice-icon plates.
- **Surface Dark** (`{colors.surface-dark}` — #0c0a09): Dark hero/CTA band canvas.
- **Surface Dark Elevated** (`{colors.surface-dark-elevated}` — #1c1917): Cards on dark canvas.

### Hairlines
- **Hairline** (`{colors.hairline}` — #e7e5e4): Default 1px divider.
- **Hairline Soft** (`{colors.hairline-soft}` — #f0efed): Lighter divider.
- **Hairline Strong** (`{colors.hairline-strong}` — #d6d3d1): Stronger panel outline.

### Text
- **Ink** (`{colors.ink}` — #0c0a09): Display, primary text.
- **Body** (`{colors.body}` — #4e4e4e): Default running-text.
- **Body Strong** (`{colors.body-strong}` — #292524): Same as primary — emphasis.
- **Muted** (`{colors.muted}` — #777169): Sub-titles.
- **Muted Soft** (`{colors.muted-soft}` — #a8a29e): Disabled text.
- **On Primary** (`{colors.on-primary}` — #ffffff): White text on ink pill.
- **On Dark** (`{colors.on-dark}` — #ffffff): White text on dark hero.
- **On Dark Soft** (`{colors.on-dark-soft}` — #a8a29e): Muted off-white on dark.

### Atmospheric Gradient Stops (signature)
- **Gradient Mint** (`{colors.gradient-mint}` — #a7e5d3): Mint green orb.
- **Gradient Peach** (`{colors.gradient-peach}` — #f4c5a8): Peach orb.
- **Gradient Lavender** (`{colors.gradient-lavender}` — #c8b8e0): Lavender orb.
- **Gradient Sky** (`{colors.gradient-sky}` — #a8c8e8): Sky-blue orb.
- **Gradient Rose** (`{colors.gradient-rose}` — #e8b8c4): Rose orb.

These appear ONLY as soft radial-gradient atmospheric orbs inside `{component.gradient-orb-card}` and as background atmospheric blooms behind hero copy. Never as button fills, never as text colors.

### Semantic
- **Success** (`{colors.semantic-success}` — #16a34a): Confirmation.
- **Error** (`{colors.semantic-error}` — #dc2626): Validation errors.

## Typography

### Font Family
**Waldenburg Light** is the licensed display serif at weight 300. **Inter** carries body, navigation, captions, and buttons. Fallback: `'Times New Roman', serif` for Waldenburg, `sans-serif` for Inter.

### Hierarchy

| Token | Size | Weight | Line Height | Letter Spacing | Use |
|---|---|---|---|---|---|
| `{typography.display-mega}` | 64px | 300 | 1.05 | -1.92px | Homepage hero h1 |
| `{typography.display-xl}` | 48px | 300 | 1.08 | -0.96px | Subsidiary heroes |
| `{typography.display-lg}` | 36px | 300 | 1.17 | -0.36px | Section heads |
| `{typography.display-md}` | 32px | 300 | 1.13 | -0.32px | Sub-section heads |
| `{typography.display-sm}` | 24px | 300 | 1.2 | 0 | Card group titles |
| `{typography.title-md}` | 20px | 500 | 1.35 | 0 | Component titles — Inter |
| `{typography.title-sm}` | 18px | 500 | 1.44 | 0.18px | List labels |
| `{typography.body-md}` | 16px | 400 | 1.5 | 0.16px | Default body — Inter |
| `{typography.body-strong}` | 16px | 500 | 1.5 | 0.16px | Emphasized body |
| `{typography.body-sm}` | 15px | 400 | 1.47 | 0.15px | Footer body |
| `{typography.caption}` | 14px | 400 | 1.5 | 0 | Photo captions |
| `{typography.caption-uppercase}` | 12px | 600 | 1.4 | 0.96px | Section labels, badges |
| `{typography.button}` | 15px | 500 | 1.0 | 0 | CTA pill |
| `{typography.nav-link}` | 15px | 500 | 1.4 | 0 | Top-nav menu |

### Principles
- **Display weight stays at 300.** Waldenburg Light is the editorial signature. Never bold display copy.
- **Subtle letter-spacing on body.** Inter at +0.15-0.18px tracking — slightly looser than default Inter for a more editorial feel.
- **Negative letter-spacing on display.** Waldenburg pulls -0.32px to -1.92px tighter on display sizes.

### Note on Font Substitutes
Waldenburg is licensed. Open-source substitute: **EB Garamond** at weight 300 (slightly more humanist) or **GT Sectra** (closer to Waldenburg's modernity). Use Inter directly for body — it's the same family ElevenLabs uses.

## Layout

### Spacing System
- **Base unit:** 4px.
- **Tokens:** `{spacing.xxs}` 4px · `{spacing.xs}` 8px · `{spacing.sm}` 12px · `{spacing.base}` 16px · `{spacing.md}` 20px · `{spacing.lg}` 24px · `{spacing.xl}` 32px · `{spacing.xxl}` 48px · `{spacing.section}` 96px.
- **Section padding:** 96px.

### Grid & Container
- Max content width: ~1200px.
- Editorial body: 12-column grid.
- Feature card grids: 2-up at desktop for hero splits, 3-up for benefit grids.
- Footer: 5-column at desktop.

### Whitespace Philosophy
Generous editorial pacing — print-magazine feel. 96px between bands; cards inside bands sit close (16-24px gap). The atmospheric gradient orbs occupy generous breathing space without competing with copy.

## Elevation & Depth

The system uses **hairline + soft drop**. Cards float above the off-white canvas via 1px hairlines and a single subtle shadow tier. Atmospheric depth comes from gradient orbs.

| Level | Treatment | Use |
|---|---|---|
| Flat (canvas) | `{colors.canvas}` (#f5f5f5) | Body bands, footer |
| Card | `{colors.surface-card}` (#ffffff) | Content cards |
| Hairline border | 1px `{colors.hairline}` | Card outlines |
| Soft drop | `0 4px 16px rgba(0, 0, 0, 0.04)` | Hovered cards (single shadow tier) |
| Gradient orb | Radial gradient with one of `{colors.gradient-*}` | Atmospheric depth — never a card surface |

### Decorative Depth
- **Pastel gradient orbs** are the brand's strongest atmospheric pattern. Soft radial blooms in mint, peach, lavender, sky, or rose drift through hero bands and feature sections without containing any content — they are pure atmosphere.

## Shapes

### Border Radius Scale

| Token | Value | Use |
|---|---|---|
| `{rounded.none}` | 0px | Reserved |
| `{rounded.xs}` | 4px | Inline tags |
| `{rounded.sm}` | 6px | Compact rows |
| `{rounded.md}` | 8px | Form inputs |
| `{rounded.lg}` | 12px | Compact cards |
| `{rounded.xl}` | 16px | Feature cards, pricing tiers |
| `{rounded.xxl}` | 24px | Gradient orb cards (extra-soft) |
| `{rounded.pill}` | 9999px | All CTA buttons, badges |
| `{rounded.full}` | 9999px | Voice icon circles, avatars |

## Components

### Top Navigation

**`top-nav`** — Background `{colors.canvas}`, text `{colors.ink}`, height 64px. Layout: ElevenLabs wordmark left, primary horizontal menu (Creative / Agents / Video / Pricing / Enterprise / Docs), Sign In + "Try free" primary CTA right.

### Buttons

**`button-primary`** — Near-black ink pill. Background `{colors.primary}`, text `{colors.on-primary}`, type `{typography.button}` (15px / 500), padding 10px × 20px, height 40px, rounded `{rounded.pill}`.

**`button-primary-active`** — Press state. Background `{colors.primary-active}`.

**`button-outline`** — Transparent pill with 1px ink border. Background transparent, text `{colors.ink}`, 1px `{colors.hairline-strong}` border.

**`button-tertiary-text`** — Inline ink text link.

### Hero & Atmospheric

**`hero-band`** — Background `{colors.canvas}`, full-width display headline in `{typography.display-mega}` (64px / 300 / -1.92px), subhead in `{typography.body-md}`, two CTAs, and an atmospheric gradient orb behind the centered headline.

**`gradient-orb-card`** — A large card with a soft radial-gradient orb behind centered display copy. Background `{colors.canvas-soft}`, rounded `{rounded.xxl}` (24px), padding 32px. Each variant uses one of the five gradient tokens (`gradient-mint`, `gradient-peach`, `gradient-lavender`, `gradient-sky`, `gradient-rose`).

**`audio-waveform-card`** — A waveform visualization card. Background `{colors.surface-card}`, rounded `{rounded.xl}`, padding 24px. Holds a play button + waveform glyph + voice metadata.

### Cards

**`feature-card`** — 2-up or 3-up grids. Background `{colors.surface-card}`, text `{colors.ink}`, rounded `{rounded.xl}`, padding 24px, 1px hairline border.

**`product-card-stack`** — Stacked product preview cards. Background `{colors.surface-card}`, rounded `{rounded.xl}`, no padding (children fill the card edge-to-edge).

**`testimonial-card`** — Quote card. Background `{colors.surface-card}`, text `{colors.body}`, rounded `{rounded.xl}`, padding 32px.

### Voice Library

**`voice-row`** — Horizontal row in voice list. Background transparent, 1px hairline divider. Layout: 32px circular voice icon (`{component.voice-icon-circular}`) left, voice name + accent stack, optional preview button right.

**`voice-icon-circular`** — Background `{colors.surface-strong}`, rounded `{rounded.full}`, 32px diameter. Holds initials or voice glyph.

### Pricing

**`pricing-tier-card`** — Background `{colors.surface-card}`, rounded `{rounded.xl}`, padding 32px, 1px hairline border.

**`pricing-tier-featured`** — Featured tier inverts. Background `{colors.surface-dark}`, text `{colors.on-dark}`. Same shape, dark inversion.

### Forms & Tags

**`text-input`** — Background `{colors.surface-card}`, text `{colors.ink}`, rounded `{rounded.md}` (8px), padding 12px × 16px, height 44px, 1px `{colors.hairline-strong}` border. On focus, border thickens to 2px ink.

**`badge-pill`** — Background `{colors.surface-strong}`, text `{colors.ink}`, type `{typography.caption-uppercase}`, rounded `{rounded.pill}`, padding 4px × 10px.

### CTA / Footer

**`cta-band`** — Pre-footer. Background `{colors.canvas}`, centered display headline in `{typography.display-lg}`, single ink pill CTA. 96px padding.

**`footer`** — Closing footer. Background `{colors.canvas}`, text `{colors.body}`. 5-column link list. 64×48px padding.

**`footer-link`** — Background transparent, text `{colors.body}`, type `{typography.body-sm}`.

## Do's and Don'ts

### Do
- Reserve `{colors.primary}` (ink pill) for primary CTAs.
- Use Waldenburg Light at weight 300 for every display headline. Never bold.
- Use Inter at +0.15-0.18px tracking for body — the editorial dialect.
- Use atmospheric gradient orbs (mint/peach/lavender/sky/rose) as decoration only.
- Use the pill shape for every CTA and badge.

### Don't
- Don't introduce a saturated brand action color. Ink pill is the only CTA color.
- Don't bold display copy. Display sits at weight 300 — bolding shifts the brand voice from editorial to consumer-marketing.
- Don't use gradient orbs as button fills, text colors, or component backgrounds. They are pure atmosphere.
- Don't use sharp `{rounded.none}` (0px) on CTAs. Pill geometry is the brand button.
- Don't drop body Inter to weight 300 to match Waldenburg — body stays at 400/500 for legibility.
- Don't extract a CTA color from a third-party widget (cookie consent, OneTrust). The brand's CTA color is what appears on actual product CTAs.

## Responsive Behavior

### Breakpoints

| Name | Width | Key Changes |
|---|---|---|
| Mobile | < 640px | Hero h1 64→32px; feature cards 1-up; nav hamburger; gradient orbs shrink. |
| Tablet | 640–1024px | Hero h1 48px; feature cards 2-up. |
| Desktop | 1024–1280px | Full hero h1 64px; feature cards 3-up. |
| Wide | > 1280px | Content caps at 1200px. |

### Touch Targets
- Primary pill at 40px height — at WCAG AA, padded for AAA.
- Voice icon circles 32px — padded row creates effective 48px tap zone.

### Collapsing Strategy
- Top nav switches to hamburger below 768px.
- Feature grid: 3-up → 2-up → 1-up.
- Gradient orbs reduce diameter at every breakpoint but never disappear.

## Iteration Guide

1. Focus on a single component at a time.
2. CTAs default to `{rounded.pill}`. Cards use `{rounded.xl}` (16px).
3. Variants live as separate entries.
4. Use `{token.refs}` everywhere — never inline hex.
5. Hover state never documented.
6. Waldenburg 300 for display, Inter 400/500 for body.
7. Gradient orbs scoped to atmospheric decoration.

## Known Gaps

- Waldenburg is a licensed typeface; EB Garamond / GT Sectra are documented substitutes.
- Animation timings (orb drift, waveform pulse, hero entrance) out of scope.
- In-product surfaces (voice library editor, agent playground) only partially captured via marketing mockups.
- Form validation states beyond focus not visible on captured surfaces.


---

## Brand: `pinterest`

---
version: alpha
name: Pinterest-design-analysis
description: |
  A photography-first discovery system organized around the Pinterest Red CTA, the masonry pin grid, and a soft warm-cream chrome that gets out of the imagery's way. The home page is a content-discovery tool wearing the chrome of a magazine publisher: 70px display headlines, friendly Pin Sans typography, fully-rounded pill buttons (16px) on a cream-tinted neutral palette, and a sticky red "Sign up" CTA that anchors every viewport. Pin imagery is the system's load-bearing visual element — square, portrait, and landscape pins tile in a column-based masonry grid where each tile is a fully-rounded 16px-radius card, separated by tight 8px gutters. The chrome is otherwise quiet: warm grays, true whites, and a single saturated red — no decorative gradients, no atmospheric backgrounds, no shadows beyond a soft modal scrim.

colors:
  primary: "#e60023"
  on-primary: "#ffffff"
  primary-pressed: "#cc001f"
  ink: "#000000"
  ink-soft: "#211922"
  body: "#33332e"
  charcoal: "#262622"
  mute: "#62625b"
  ash: "#91918c"
  stone: "#c8c8c1"
  hairline: "#dadad3"
  hairline-soft: "#e5e5e0"
  on-secondary: "#000000"
  secondary-bg: "#e5e5e0"
  secondary-pressed: "#c8c8c1"
  canvas: "#ffffff"
  surface-soft: "#fbfbf9"
  surface-card: "#f6f6f3"
  surface-elevated: "#ffffff"
  on-dark: "#ffffff"
  on-dark-mute: "rgba(255,255,255,0.7)"
  surface-dark: "#262622"
  focus-outer: "#435ee5"
  focus-inner: "#ffffff"
  accent-pressed-blue: "#617bff"
  accent-purple: "#7e238b"
  accent-purple-deep: "#6845ab"
  success-deep: "#103c25"
  success-pale: "#c7f0da"
  error: "#9e0a0a"
  error-deep: "#cc001f"

typography:
  display-xl:
    fontFamily: Pin Sans
    fontSize: 70px
    fontWeight: 600
    lineHeight: 1.1
    letterSpacing: -1.2px
  display-lg:
    fontFamily: Pin Sans
    fontSize: 44px
    fontWeight: 700
    lineHeight: 1.15
    letterSpacing: -0.8px
  heading-xl:
    fontFamily: Pin Sans
    fontSize: 28px
    fontWeight: 700
    lineHeight: 1.2
    letterSpacing: -1.2px
  heading-lg:
    fontFamily: Pin Sans
    fontSize: 22px
    fontWeight: 600
    lineHeight: 1.25
    letterSpacing: 0
  heading-md:
    fontFamily: Pin Sans
    fontSize: 18px
    fontWeight: 600
    lineHeight: 1.3
    letterSpacing: 0
  body-md:
    fontFamily: Pin Sans
    fontSize: 16px
    fontWeight: 400
    lineHeight: 1.4
    letterSpacing: 0
  body-strong:
    fontFamily: Pin Sans
    fontSize: 16px
    fontWeight: 600
    lineHeight: 1.4
    letterSpacing: 0
  body-sm:
    fontFamily: Pin Sans
    fontSize: 14px
    fontWeight: 400
    lineHeight: 1.4
    letterSpacing: 0
  body-sm-strong:
    fontFamily: Pin Sans
    fontSize: 14px
    fontWeight: 700
    lineHeight: 1.4
    letterSpacing: 0
  caption-md:
    fontFamily: Pin Sans
    fontSize: 12px
    fontWeight: 500
    lineHeight: 1.5
    letterSpacing: 0
  caption-sm:
    fontFamily: Pin Sans
    fontSize: 12px
    fontWeight: 400
    lineHeight: 1.4
    letterSpacing: 0
  link-md:
    fontFamily: Pin Sans
    fontSize: 16px
    fontWeight: 600
    lineHeight: 1.4
    letterSpacing: 0
  button-md:
    fontFamily: Pin Sans
    fontSize: 14px
    fontWeight: 700
    lineHeight: 1
    letterSpacing: 0
  button-sm:
    fontFamily: Pin Sans
    fontSize: 12px
    fontWeight: 700
    lineHeight: 1
    letterSpacing: 0

rounded:
  none: 0px
  sm: 8px
  md: 16px
  lg: 32px
  full: 9999px

spacing:
  xxs: 4px
  xs: 6px
  sm: 8px
  md: 12px
  lg: 16px
  xl: 24px
  xxl: 32px
  section: 64px

components:
  button-primary:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button-md}"
    rounded: "{rounded.md}"
    padding: 6px 14px
    height: 40px
  button-primary-pressed:
    backgroundColor: "{colors.primary-pressed}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button-md}"
    rounded: "{rounded.md}"
  button-secondary:
    backgroundColor: "{colors.secondary-bg}"
    textColor: "{colors.on-secondary}"
    typography: "{typography.button-md}"
    rounded: "{rounded.md}"
    padding: 6px 14px
    height: 40px
  button-secondary-pressed:
    backgroundColor: "{colors.secondary-pressed}"
    textColor: "{colors.on-secondary}"
    typography: "{typography.button-md}"
    rounded: "{rounded.md}"
  button-tertiary:
    backgroundColor: "transparent"
    textColor: "{colors.ink}"
    typography: "{typography.button-md}"
    rounded: "{rounded.md}"
  button-icon-circular:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ink}"
    rounded: "{rounded.full}"
    size: 40px
  button-pill-on-image:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.button-md}"
    rounded: "{rounded.full}"
    padding: 8px 14px
  button-disabled:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ash}"
    rounded: "{rounded.md}"
  search-bar:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.full}"
    padding: 11px 15px
    height: 48px
  search-bar-focused:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    rounded: "{rounded.full}"
  text-input:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.md}"
    padding: 11px 15px
    height: 44px
  text-input-focused:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    rounded: "{rounded.md}"
  pin-card:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ink}"
    rounded: "{rounded.md}"
    padding: 0px
  pin-card-large:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ink}"
    rounded: "{rounded.lg}"
    padding: 0px
  pin-overlay-pill:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.button-sm}"
    rounded: "{rounded.full}"
    padding: 6px 12px
  filter-chip:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ink}"
    typography: "{typography.button-md}"
    rounded: "{rounded.full}"
    padding: 8px 16px
  filter-chip-active:
    backgroundColor: "{colors.ink}"
    textColor: "{colors.on-dark}"
    typography: "{typography.button-md}"
    rounded: "{rounded.full}"
  category-tile:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ink}"
    typography: "{typography.body-strong}"
    rounded: "{rounded.md}"
    padding: 16px
  feature-card:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.heading-xl}"
    rounded: "{rounded.md}"
    padding: 32px
  feature-card-soft:
    backgroundColor: "{colors.surface-card}"
    textColor: "{colors.ink}"
    typography: "{typography.heading-xl}"
    rounded: "{rounded.md}"
    padding: 32px
  modal-card:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.lg}"
    padding: 32px
  hero-cta-strip:
    backgroundColor: "{colors.surface-dark}"
    textColor: "{colors.on-dark}"
    typography: "{typography.heading-xl}"
    rounded: "{rounded.none}"
    padding: 48px 32px
  primary-nav:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-strong}"
    rounded: "{rounded.none}"
    height: 64px
  footer-section:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.mute}"
    typography: "{typography.body-sm}"
    rounded: "{rounded.none}"
    padding: 32px 24px
  link-inline:
    textColor: "{colors.ink-soft}"
    typography: "{typography.link-md}"
---

## Overview

Pinterest's marketing system is built around a single instructional principle: get out of the photograph's way. The chrome is a quiet warm-cream neutral palette (`{colors.surface-soft}`, `{colors.surface-card}`, `{colors.canvas}`) carrying typography in Pinterest's proprietary Pin Sans face, with Pinterest Red (`{colors.primary}` — `#e60023`) reserved exclusively for the "Sign up" CTA, the active-tab indicator, and the sticky top-nav anchor. Every other surface is allowed to fade behind the imagery — pin tiles, category tiles, content thumbnails, profile shots — that constitutes the actual product.

The design system has two distinct surface modes that alternate down the home page: the **hero/CTA chrome** (cream surfaces, large 70px Pin Sans display headlines, alternating left/right photo-illustrated feature cards) and the **content masonry** (a column-based grid of 16px-radius pin cards on `{colors.surface-card}` with no internal padding — the pin is the card). The search results page is almost pure masonry: a tight column grid of pin imagery in mixed aspect ratios, with a small filter-chip strip at the top and the sticky red Sign-up CTA in the upper-right corner. The `create.pinterest.com` business surface inverts the grid back to a more traditional editorial layout but keeps every other rule of the system: Pin Sans, cream chrome, red CTA, 16px-radius pills.

The system's signature gesture is **shape geometry**: 16px radius (`{rounded.md}`) for nearly every surface — buttons, inputs, pin cards, feature cards — and 32px radius (`{rounded.lg}`) reserved for pin-card-large and modal cards. There are exactly three radius values in active use: 16px, 32px, and pill (9999px). The system never goes flat (sharp corners) and never goes radius-medium — those two values are the entire shape vocabulary.

**Key Characteristics:**
- Single-accent CTA: Pinterest Red (`{colors.primary}`) carries every primary action; everything else is monochrome
- Pin Sans proprietary typography across every text role from `{typography.display-xl}` (70px) down to `{typography.caption-sm}` (12px) — no serif, no monospace anywhere
- Two-radius shape system: `{rounded.md}` (16px) for most components, `{rounded.lg}` (32px) for large cards and modals, `{rounded.full}` for circular elements
- Masonry pin grid as the load-bearing visual element — column-based layout where each pin's natural aspect ratio is preserved
- Warm-cream neutral chrome (`{colors.surface-card}` — #f6f6f3) that softly recedes behind imagery without competing
- Sticky top nav with the always-red Sign-up CTA anchored in the upper-right at every breakpoint
- Modal overlay (login/signup) using a soft scrim over the page content rather than a navigation jump

## Colors

> **Source pages:** `/` (home), `/search/pins/?q=bold lip` (search results), `create.pinterest.com/` (creator marketing), `create.pinterest.com/product-features/how-to-create-boards/` (creator article). The chrome palette is identical across all four pages.

### Brand & Accent
- **Pinterest Red** (`{colors.primary}` — `#e60023`): the brand's only highly-saturated color. Sign-up CTAs, sticky top-nav anchor, active state in tab strips, and the brand wordmark.
- **Pinterest Red Pressed** (`{colors.primary-pressed}` — `#cc001f`): pressed state for the primary button — a single notch deeper than brand red.

### Surface
- **Canvas** (`{colors.canvas}` — `#ffffff`): true white. The base surface for the primary nav, modals, feature cards, and content body.
- **Soft Surface** (`{colors.surface-soft}` — `#fbfbf9`): faintly cream-tinted off-white used for the page body wash on the home page hero.
- **Surface Card** (`{colors.surface-card}` — `#f6f6f3`): warm-cream card and pin-tile background. Carries category tiles, search-bar default fill, button-secondary default, and pin-card backgrounds.
- **Secondary BG** (`{colors.secondary-bg}` — `#e5e5e0`): the gray-cream used for `{component.button-secondary}` ("I already have an account") fill — a notch deeper than `{colors.surface-card}`.
- **Secondary Pressed** (`{colors.secondary-pressed}` — `#c8c8c1`): pressed state for the secondary button.
- **Surface Dark** (`{colors.surface-dark}` — `#262622`): warm near-black used in the rare dark CTA strip on `create.pinterest.com`.
- **Hairline** (`{colors.hairline}` — `#dadad3`): 1px row dividers, footer column rules.
- **Hairline Soft** (`{colors.hairline-soft}` — `#e5e5e0`): lighter inline divider; doubles as the secondary-button background.

### Text
- **Ink** (`{colors.ink}` — `#000000`): primary headlines, button text, primary nav links.
- **Ink Soft** (`{colors.ink-soft}` — `#211922`): inline-link color in body prose. The brand's only "color" beyond Pinterest Red used in chrome — a near-black with a faint warm cast.
- **Body** (`{colors.body}` — `#33332e`): default paragraph text on `{colors.canvas}`.
- **Charcoal** (`{colors.charcoal}` — `#262622`): subtly softer body where pure ink is too heavy.
- **Mute** (`{colors.mute}` — `#62625b`): metadata text, footer links, secondary captions.
- **Ash** (`{colors.ash}` — `#91918c`): disabled button text, placeholder text in inputs.
- **Stone** (`{colors.stone}` — `#c8c8c1`): least-emphasis utility text, disabled-state borders.
- **On Dark** (`{colors.on-dark}` — `#ffffff`): primary text on `{colors.surface-dark}`.

### Semantic
- **Error** (`{colors.error}` — `#9e0a0a`): validation messages, destructive confirmation copy.
- **Error Deep** (`{colors.error-deep}` — `#cc001f`): deepened error background where the regular error tone needs more contrast. Note: this matches the primary-pressed value but in error context represents semantic destructiveness.
- **Success Deep** (`{colors.success-deep}` — `#103c25`): in-product success messaging.
- **Success Pale** (`{colors.success-pale}` — `#c7f0da`): pale success-pill background.
- **Focus Outer** (`{colors.focus-outer}` — `#435ee5`): the system's focus-ring blue — appears as a 2px outer outline around focused inputs and buttons.
- **Focus Inner** (`{colors.focus-inner}` — `#ffffff`): white inner gap inside the focus-ring stack.

### Editorial Accents (used sparingly inside content imagery and category badges)
- **Accent Pressed Blue** (`{colors.accent-pressed-blue}` — `#617bff`): pressed state for blue informational badges and editorial pin chips.
- **Accent Purple** (`{colors.accent-purple}` — `#7e238b`): editorial recommendation badge, in-product "Pinterest Predicts" callout.
- **Accent Purple Deep** (`{colors.accent-purple-deep}` — `#6845ab`): paired dark for purple lockups and "Performance+" iconography.

## Typography

### Font Family
**Pin Sans** is Pinterest's proprietary geometric sans-serif used across every text role on every page. It carries weights 400 (regular), 500 (medium), 600 (semibold), and 700 (bold), and falls back through a long stack — `-apple-system` → `system-ui` → `Segoe UI` → `Roboto` → `Helvetica Neue` → `Arial` plus emoji fallbacks. The face's distinctive trait is its tight letter-spacing at display sizes (-1.2px on `{typography.display-xl}` and `{typography.heading-xl}`), which gives 70px headlines a confident, friendly density rather than the airy spread of more conventional display geometric sans faces.

### Hierarchy

| Token | Size | Weight | Line Height | Letter Spacing | Use |
|---|---|---|---|---|---|
| `{typography.display-xl}` | 70px | 600 | 1.1 | -1.2px | Marketing hero headline ("Create the life you love on Pinterest") |
| `{typography.display-lg}` | 44px | 700 | 1.15 | -0.8px | "Where your content can thrive" creator hero |
| `{typography.heading-xl}` | 28px | 700 | 1.2 | -1.2px | Section heading ("Bring your favorite ideas to life", "Pinterest for your brand") |
| `{typography.heading-lg}` | 22px | 600 | 1.25 | 0 | Sub-section heading, modal title ("Welcome to Pinterest") |
| `{typography.heading-md}` | 18px | 600 | 1.3 | 0 | Card title, in-grid pin label |
| `{typography.body-md}` | 16px | 400 | 1.4 | 0 | Body copy, modal body, default paragraph |
| `{typography.body-strong}` | 16px | 600 | 1.4 | 0 | Inline emphasis, primary nav link, form label |
| `{typography.body-sm}` | 14px | 400 | 1.4 | 0 | Footer copy, in-grid pin metadata, helper text |
| `{typography.body-sm-strong}` | 14px | 700 | 1.4 | 0 | Search-result count label, table-header text |
| `{typography.caption-md}` | 12px | 500 | 1.5 | 0 | Caption text, link metadata |
| `{typography.caption-sm}` | 12px | 400 | 1.4 | 0 | Smallest utility text, copyright |
| `{typography.link-md}` | 16px | 600 | 1.4 | 0 | Inline anchor link in body prose |
| `{typography.button-md}` | 14px | 700 | 1 | 0 | Standard primary/secondary button label |
| `{typography.button-sm}` | 12px | 700 | 1 | 0 | Compact pill chip, in-card button |

### Principles
The system has an unusually steep size jump between display and body — `{typography.display-xl}` (70px) drops directly to `{typography.body-md}` (16px) on the home hero with no intermediate tier between. The negative tracking on the largest tiers (-1.2px / -0.8px) creates a tighter, more confident headline than a default geometric sans would deliver, and the body copy sits at a generous 1.4 line-height to keep multi-line descriptions breathing.

### Note on Font Substitutes
Pin Sans is proprietary. The closest open-source substitute is **Inter** (weights 400 / 500 / 600 / 700) — its geometry, x-height, and metric balance match Pin Sans within ~3% at body sizes. **Manrope** is a strong secondary substitute for the display tier where slightly tighter letterspacing helps the 70px headline feel weighted. Apply -1.2px tracking on the substitute at display sizes regardless of which substitute is chosen.

## Layout

### Spacing System
- **Base unit:** 8px (with finer 4/6/7px steps available for tight inline gaps in pill buttons and chips).
- **Tokens (front matter):** `{spacing.xxs}` (4px) · `{spacing.xs}` (6px) · `{spacing.sm}` (8px) · `{spacing.md}` (12px) · `{spacing.lg}` (16px) · `{spacing.xl}` (24px) · `{spacing.xxl}` (32px) · `{spacing.section}` (64px).
- **Universal section rhythm:** every page in the set uses `{spacing.section}` (64px) as the vertical gap between major content blocks. Pin grids use `{spacing.sm}` (8px) gutters between tiles — the tightest grid gutter in the system, designed so imagery effectively touches across columns.
- **Modal padding:** `{component.modal-card}` uses 32px internal padding (`{spacing.xxl}`) on all sides.

### Grid & Container
- **Max width:** ~1280px content area at desktop with 24px gutters (~48px at ultrawide).
- **Pin masonry grid:** auto-fitting column-based layout — 5–6 columns at ultrawide, 4 columns at desktop, 3 at tablet, 2 at mobile-landscape, 1 at mobile. Each tile preserves its natural aspect ratio (square / 2:3 / 3:4 / 4:5 portrait — never landscape because pins are vertically-oriented). Gutters are `{spacing.sm}` (8px) horizontal and vertical.
- **Home hero feature row:** asymmetric 2-column split where text and imagery alternate left/right down the page (text-left + image-right, then image-left + text-right, etc.).
- **Footer:** 4-column link grid at desktop, collapsing to 2-up at tablet, 1-up at mobile.

### Whitespace Philosophy
Whitespace is generous on the marketing surfaces and tight on the discovery surfaces. The home page sits sections 64px apart with photo-illustrated feature cards using 32px internal padding, while the search results page collapses to an 8px-gutter masonry grid that tiles imagery edge-to-edge. The system reads as two tools sharing the same chrome: a magazine (hero / feature / CTA / footer) and a search engine (top nav / filter row / pin grid / load more).

## Elevation & Depth

| Level | Treatment | Use |
|---|---|---|
| 0 — Flat | No border, no shadow | Default for pin cards, feature cards, footer — the dominant treatment |
| 1 — Hairline border | 1px solid `{colors.hairline}` | Inputs, footer column dividers, in-list rows |
| 2 — Modal scrim + soft shadow | Modal sits on a dark scrim over the page content with a soft 16px ambient shadow | Login / signup modal, image preview modal |
| 3 — Pin hover lift | (intentionally undocumented per system policy) | n/a |

Pinterest's system has effectively no shadow elevation in its content surfaces. Pin cards sit flat on the canvas; the only "elevation" appears on the modal layer where a 16px ambient shadow paired with a 50%-opacity scrim lifts the modal above the page content.

### Decorative Depth
Depth comes entirely from the imagery itself, not from CSS effects:
- **Pin photography** carries cinematic depth through composition (food photography, fashion close-ups, interior shots) — the design lets each tile's image speak rather than adding chrome to it.
- **Category tile thumbnails** in the home page's feature rows use Pinterest's own pin imagery as composition assets, often with a small `{component.pin-overlay-pill}` ("Cherry red", "Preppy look", "Earthy space inspo") overlaid in the corner of the image.
- **Modal scrim** — a 50%-opacity dark overlay over the entire page content when the login modal opens, with a 16px ambient shadow underneath the modal card lifting it to the visual top.

## Shapes

### Border Radius Scale

| Token | Value | Use |
|---|---|---|
| `{rounded.none}` | 0px | Footer, primary nav, page sections — all flat structural surfaces |
| `{rounded.sm}` | 8px | Rare medium-radius surface (e.g., editorial tooltip) |
| `{rounded.md}` | 16px | Buttons, inputs, pin cards, feature cards, category tiles — the dominant component radius |
| `{rounded.lg}` | 32px | Large pin cards, modal cards — used sparingly for "big" content surfaces |
| `{rounded.full}` | 9999px | Search bar, filter chips, pin overlay pills, icon-circular buttons, avatars |

The radius vocabulary is essentially three values: 16px for most things, 32px for big cards and modals, and pill for circular elements. There are no sharp-cornered buttons or sharp-cornered pin cards.

### Photography Geometry
- **Pin imagery:** mixed aspect ratios — square (1:1), portrait (3:4, 2:3, 4:5), and rare landscape — preserved at their natural ratio inside `{rounded.md}` (16px) corners on small tiles and `{rounded.lg}` (32px) on large feature pins.
- **Category tile thumbnails:** square (1:1) with `{rounded.md}` corners.
- **Avatar circles:** 32–48px at `{rounded.full}` for in-pin attribution and profile chips.
- **Feature card imagery:** typically 4:5 portrait on home-page category cards, with the photo occupying ~60% of the card and the headline + CTA stacked beneath.

## Components

> **No hover states documented** per system policy. Each spec covers Default and Active/Pressed only.

### Buttons

**`button-primary`** — the universal Pinterest CTA
- Background `{colors.primary}` (Pinterest Red), text `{colors.on-primary}`, type `{typography.button-md}`, padding `6px 14px`, height ~40px, rounded `{rounded.md}` (16px).
- Used for "Sign up", "Join Pinterest for free", "Get started" — every primary action across every surface in the system.
- Pressed state lives in `button-primary-pressed` — background drops to `{colors.primary-pressed}` (`#cc001f`).

**`button-secondary`** — gray-cream alternative
- Background `{colors.secondary-bg}` (`#e5e5e0`), text `{colors.on-secondary}`, type `{typography.button-md}`, padding `6px 14px`, height ~40px, rounded `{rounded.md}`.
- "I already have an account", "Continue", "Cancel" — second-tier actions paired with the red primary.
- Pressed state lives in `button-secondary-pressed` — background drops to `{colors.secondary-pressed}`.

**`button-tertiary`** — ghost link
- Background transparent, text `{colors.ink}`, type `{typography.button-md}`, rounded `{rounded.md}`.
- Used for low-emphasis actions inside dialogs ("Read the docs", "Learn more →" with a small chevron).

**`button-icon-circular`** — circular icon button
- Background `{colors.surface-card}`, icon `{colors.ink}`, rounded `{rounded.full}`, size 40px.
- Carousel paddles, modal close button, and small floating action buttons in pin imagery.

**`button-pill-on-image`** — small overlay pill on photography
- Background `{colors.canvas}`, text `{colors.ink}`, type `{typography.button-md}`, rounded `{rounded.full}`, padding `8px 14px`.
- The signature "Cherry red" / "Preppy look" / "Earthy space inspo" overlay pill that anchors the corner of category-tile pin imagery.

**`button-disabled`**
- Background `{colors.surface-card}`, text `{colors.ash}` — flat soft-cream.

### Filter & Tab Chips

**`filter-chip`** + **`filter-chip-active`**
- Default: background `{colors.surface-card}`, text `{colors.ink}`, type `{typography.button-md}`, rounded `{rounded.full}`, padding `8px 16px`.
- Active: background `{colors.ink}`, text `{colors.on-dark}` — the chip flips fully inverted on selection.
- Used across the search results page filter strip ("Beauty makeup", "Lipstick", "Editorial makeup"...).

### Inputs & Forms

**`text-input`** + **`text-input-focused`**
- Default: background `{colors.canvas}`, text `{colors.ink}`, 1px solid `{colors.ash}`, type `{typography.body-md}`, padding `11px 15px`, height ~44px, rounded `{rounded.md}`.
- Focused: 2px `{colors.ink}` inner border + 4px `{colors.focus-outer}` outer outline — the signature double-ring focus signal.
- Used across the login/signup modal for email, password, birthdate, country fields.

**`search-bar`** + **`search-bar-focused`**
- Default: background `{colors.surface-card}`, text `{colors.ink}`, type `{typography.body-md}`, padding `11px 15px`, height ~48px, rounded `{rounded.full}`.
- Focused: same dimensions, background flips to `{colors.canvas}` with a 1px `{colors.ash}` border.
- Anchored in the center of the primary nav with a magnifier glyph at the left edge and "Search for ideas, fashion..." placeholder.

### Cards & Containers

**`pin-card`** — the standard masonry pin tile
- Container: background `{colors.surface-card}`, rounded `{rounded.md}` (16px), padding 0.
- Layout: full-bleed image at the card's natural aspect ratio with no internal padding. Optional `{component.pin-overlay-pill}` anchored to one corner of the image, optional 32px circular avatar with profile name in `{typography.body-sm-strong}` overlaid at the bottom-left.

**`pin-card-large`** — the home-page feature pin
- Identical to `pin-card` but rounded `{rounded.lg}` (32px) — used for the large editorial pins that anchor home-page feature rows.

**`pin-overlay-pill`** — anchored chip on pin imagery
- Background `{colors.canvas}`, text `{colors.ink}`, type `{typography.button-sm}`, rounded `{rounded.full}`, padding `6px 12px`.
- Floats over a pin's bottom-left or top-left corner with the search-term label that surfaces if the pin matches a search ("Cherry red", "Preppy look", "Earthy space inspo").

**`category-tile`**
- Background `{colors.surface-card}`, rounded `{rounded.md}`, padding 16px.
- 3- or 4-up grid of small category thumbnails inside the home-page "Bring your favorite ideas to life" section. Each tile contains a category icon or composition photograph + a short label in `{typography.body-strong}`.

**`feature-card`** + **`feature-card-soft`**
- Standard: background `{colors.canvas}`, rounded `{rounded.md}`, padding 32px. Pairs a 4:5 portrait pin image (left or right) with a `{typography.heading-xl}` headline + body copy + `{component.button-primary}` red CTA.
- Soft: background `{colors.surface-card}` for the alternating-row variant where the cream surface is needed to break up content.

**`modal-card`** — login/signup overlay
- Background `{colors.canvas}`, rounded `{rounded.lg}` (32px), padding 32px.
- Layout: title in `{typography.heading-lg}` ("Welcome to Pinterest"), subtitle in `{typography.body-md}`, stacked `{component.text-input}` fields (Email, Password, Birthdate, Country), primary `{component.button-primary}` "Continue", small "Already a member? Log in" link below.
- Floats over a 50%-opacity scrim covering the entire page content with a 16px ambient shadow.

**`hero-cta-strip`** — dark CTA strip on `create.pinterest.com`
- Background `{colors.surface-dark}`, text `{colors.on-dark}`, type `{typography.heading-xl}`, padding `48px 32px`, rounded `{rounded.none}`.
- Sits at the top of the creator marketing page with a single `{component.button-primary}` red CTA on the right.

### Navigation

**`primary-nav`**
- Background `{colors.canvas}`, text `{colors.ink}`, height ~64px, type `{typography.body-strong}`, rounded `{rounded.none}`, with a 1px `{colors.hairline}` bottom rule on inner pages (no rule on the home hero).
- Layout (desktop home): Pinterest red wordmark at left + "Explore" link, centered `{component.search-bar}`, right cluster ("About / Businesses / Create / Log in" + the always-red `{component.button-primary}` "Sign up" CTA).
- Layout (search results): Pinterest red P-logo at left, centered search bar with the active query, right cluster ("Log in" + red Sign-up button).

**Top Nav (Mobile)**
- Hamburger menu icon at left, P-logo at center, search-glyph + Sign-up CTA at right. Search bar collapses into the magnifier icon and expands to full-width when tapped.

### Footer

**`footer-section`**
- Background `{colors.canvas}`, text `{colors.mute}` in `{typography.body-sm}`, padding `32px 24px`, rounded `{rounded.none}`, with a 1px `{colors.hairline}` top rule.
- Layout: 4-column link grid (Get the app — iOS / Android · Quick Links — Explore / Shop / Users / Collections / Shopping · Pinterest for · About — Privacy / Terms / Help Center) with column headers in `{typography.body-sm-strong}` and link lists in `{typography.body-sm}` `{colors.mute}`.
- Bottom row: Pinterest red wordmark + "© 2026 Pinterest" in `{typography.caption-sm}` `{colors.mute}`.

### Inline

**`link-inline`** — body-prose anchor link
- `{colors.ink-soft}` text with no underline by default. Pinterest's only "color" beyond brand red on chrome — a near-black warm tint used inline to differentiate links from body without color contrast.

## Do's and Don'ts

### Do
- Reserve `{colors.primary}` (Pinterest Red) for primary CTAs, the active-tab indicator, and the brand wordmark only. It is never decorative.
- Use `{rounded.md}` (16px) on every interactive element and standard card; reserve `{rounded.lg}` (32px) for large pin cards and modals; reserve `{rounded.full}` for circular elements (search bar, chips, avatars).
- Stage every pin image inside a `{component.pin-card}` with no internal padding — the photograph IS the card.
- Stack content sections at `{spacing.section}` (64px) rhythm; tighten pin grids to `{spacing.sm}` (8px) gutters so imagery effectively touches.
- Use `{component.pin-overlay-pill}` to anchor a search-term tag in the corner of a category-tile pin photograph — the system's signature decorative gesture.
- Build hierarchy from font weight (400 → 600 → 700) and size, not from color tinting. Body stays `{colors.body}` regardless of section context.
- Apply -1.2px letter-spacing on `{typography.display-xl}` and `{typography.heading-xl}`. The negative tracking is part of the brand voice.

### Don't
- Don't use sharp-cornered buttons or cards. There are no `{rounded.none}` interactive elements in the system.
- Don't introduce drop shadows on cards. The only shadow in the system is the 16px ambient under `{component.modal-card}`.
- Don't pad `{component.pin-card}` internally. The image is full-bleed; metadata sits over the image as an overlay pill, not below it.
- Don't replace `{colors.primary}` with another red. The brand red is precise — `#e60023`.
- Don't use `{colors.ink-soft}` (the body-prose link tint) outside of inline body anchor links. It is not a chrome color.
- Don't introduce a third radius value between 16px and 32px. The system jumps directly from md to lg with nothing in between.

## Responsive Behavior

### Breakpoints

| Name | Width | Key Changes |
|---|---|---|
| ultrawide | 1920px+ | Pin grid expands to 5–6 columns; content max-width holds at ~1280px |
| desktop-large | 1440px | Default — 4-column pin grid, full primary nav |
| desktop | 1280px | Same layout with narrower outer gutters |
| desktop-small | 1024px | Pin grid collapses to 3 columns; sub-nav remains horizontal |
| tablet | 768px | Pin grid collapses to 2 columns; primary nav becomes hamburger drawer; search bar becomes icon-only |
| mobile | 480px | Single-column pin grid; hero `{typography.display-xl}` scales 70px → ~44px |
| mobile-narrow | 320px | Hero further scales to ~36px; section padding tightens to 32px |

### Touch Targets
All interactive elements meet WCAG AA (≥ 44×44px). `{component.button-primary}` and `{component.button-secondary}` sit at ~40px height with 14px horizontal padding (effective ~40×80px tappable). `{component.search-bar}` sits at 48px. `{component.text-input}` sits at 44px. `{component.filter-chip}` is ~36–40px height with 16px padding — extends to 44px tappable via inline padding. `{component.button-icon-circular}` is exactly 40×40 with extended hit-target padding to 48×48 inside the parent.

### Collapsing Strategy
- **Primary nav:** desktop horizontal cluster → tablet hamburger drawer at 768px. The red Sign-up CTA stays visible at every breakpoint.
- **Search bar:** desktop centered (~480px wide) → tablet compressed (~320px) → mobile collapses to a magnifier icon that expands to a full-width overlay on tap.
- **Pin masonry grid:** 5/6-up → 4-up → 3-up → 2-up → 1-up at 1920, 1024, 768, and 480px. Gutters drop from 8px to 6px on mobile.
- **Home feature row:** desktop alternating left/right 2-column → tablet vertical stack with text above image → mobile single-column with full-bleed image.
- **Modal:** desktop centered ~480px-wide card → mobile full-width sheet with rounded `{rounded.lg}` top-only and bottom-anchored CTA.
- **Section padding:** `{spacing.section}` (64px) desktop → 48px tablet → 32px mobile.
- **Hero headline:** `{typography.display-xl}` (70px) at desktop, scaling 56px / 44px / 36px down the breakpoint stack.
- **Footer:** 4-up link columns → 2-up at tablet → full accordion at mobile (each header becomes a tap-to-expand row).

### Image Behavior
- Pin imagery preserves natural aspect ratio at every breakpoint; the column count changes, not the aspect.
- Category tile thumbnails maintain 1:1 across all sizes.
- Hero feature imagery uses art-direction crops on mobile (4:5 portrait → square) so the subject stays centered when the layout collapses to single-column.
- All non-critical imagery is lazy-loaded as the user scrolls into the next grid row.

## Iteration Guide

1. Focus on ONE component at a time. Pull its YAML entry and verify every property resolves.
2. Reference component names and tokens directly (`{colors.primary}`, `{component.button-primary-pressed}`, `{rounded.md}`) — do not paraphrase.
3. Run `npx @google/design.md lint DESIGN.md` after edits — `broken-ref`, `contrast-ratio`, and `orphaned-tokens` warnings flag issues automatically.
4. Add new variants as separate component entries (`-pressed`, `-disabled`, `-focused`) — do not bury them inside prose.
5. Default body to `{typography.body-md}`; reach for `{typography.body-strong}` for emphasis; reserve `{typography.display-xl}` strictly for top-of-page hero headlines.
6. Keep `{colors.primary}` scarce — at most one Pinterest-red CTA per fold (counting nav, hero, and feature-card CTAs together).
7. When introducing a new component, ask whether it can be expressed with the existing pin-card + 16px-radius + cream-surface vocabulary before adding new tokens. The system's strength is that it almost never needs new ones.

## Known Gaps

- **Mobile screenshots not captured** — responsive behavior synthesizes Pinterest's known mobile pattern (hamburger drawer, single-column grid, hero downscale) from desktop evidence and the documented breakpoint stack.
- **Hover states not documented** by system policy.
- **Pin-detail close-up (single pin overlay)** is not in the captured set — the in-product Pin detail view (with comments, related pins, save board picker) likely introduces components not documented here.
- **Authenticated chrome** (logged-in home feed, board pages, profile pages) not in the captured pages — the captured surfaces are the logged-out marketing and search experience.
- **Pinterest mobile app screens** not in the system documented here — this is the web-only chrome.
- **Form validation states** (success / error inline messages) not documented; only the focused-state field is captured.


---

## Brand: `runwayml`

# Design System Inspired by Runway

## 1. Visual Theme & Atmosphere

Runway's interface is a cinematic reel brought to life as a website — a dark, editorial, film-production-grade design where full-bleed photography and video ARE the primary UI elements. This is not a typical tech product page; it's a visual manifesto for AI-powered creativity. Every section feels like a frame from a film: dramatic lighting, sweeping landscapes, and intimate human moments captured in high-quality imagery that dominates the viewport.

The design language is built on a single typeface — abcNormal — a clean, geometric sans-serif that handles everything from 48px display headlines to 11px uppercase labels. This single-font commitment creates an extreme typographic uniformity that lets the visual content speak louder than the text. Headlines use tight line-heights (1.0) with negative letter-spacing (-0.9px to -1.2px), creating compressed text blocks that feel like film titles rather than marketing copy.

What makes Runway distinctive is its complete commitment to visual content as design. Rather than illustrating features with icons or diagrams, Runway shows actual AI-generated and AI-enhanced imagery — cars driving through cinematic landscapes, artistic portraits, architectural renders. The interface itself retreats into near-invisibility: minimal borders, zero shadows, subtle cool-gray text, and a dark palette that puts maximum focus on the photography.

**Key Characteristics:**
- Cinematic full-bleed photography and video as primary UI elements
- Single typeface system: abcNormal for everything from display to micro labels
- Dark-dominant palette with cool-toned neutrals (#767d88, #7d848e)
- Zero shadows, minimal borders — the interface is intentionally invisible
- Tight display typography (line-height 1.0) with negative tracking (-0.9px to -1.2px)
- Uppercase labels with positive letter-spacing for navigational structure
- Weight 450 (unusual intermediate) for small uppercase text — precision craft
- Editorial magazine layout with mixed-size image grids

## 2. Color Palette & Roles

### Primary
- **Runway Black** (`#000000`): The primary page background and maximum-emphasis text.
- **Deep Black** (`#030303`): A near-imperceptible variant for layered dark surfaces.
- **Dark Surface** (`#1a1a1a`): Card backgrounds and elevated dark containers.
- **Pure White** (`#ffffff`): Primary text on dark surfaces and light-section backgrounds.

### Surface & Background
- **Near White** (`#fefefe`): The lightest surface — barely distinguishable from pure white.
- **Cool Cloud** (`#e9ecf2`): Light section backgrounds with a cool blue-gray tint.
- **Border Dark** (`#27272a`): The single dark-mode border color — barely visible containment.

### Neutrals & Text
- **Charcoal** (`#404040`): Primary body text on light surfaces and secondary text.
- **Near Charcoal** (`#3f3f3f`): Slightly lighter variant for dark-section secondary text.
- **Cool Slate** (`#767d88`): Secondary body text — a distinctly blue-gray cool neutral.
- **Mid Slate** (`#7d848e`): Tertiary text, metadata descriptions.
- **Muted Gray** (`#a7a7a7`): De-emphasized content, timestamps.
- **Cool Silver** (`#c9ccd1`): Light borders and dividers.
- **Light Silver** (`#d0d4d4`): The lightest border/divider variant.
- **Tailwind Gray** (`#6b7280`): Standard Tailwind neutral for supplementary text.
- **Dark Link** (`#0c0c0c`): Darkest link text — nearly black.
- **Footer Gray** (`#999999`): Footer links and deeply muted content.

### Gradient System
- **None in the interface.** Visual richness comes entirely from photographic content — AI-generated and enhanced imagery provides all the color and gradient the design needs. The interface itself is intentionally colorless.

## 3. Typography Rules

### Font Family
- **Universal**: `abcNormal`, with fallback: `abcNormal Fallback`

*Note: abcNormal is a custom geometric sans-serif. For external implementations, Inter or DM Sans serve as close substitutes.*

### Hierarchy

| Role | Font | Size | Weight | Line Height | Letter Spacing | Notes |
|------|------|------|--------|-------------|----------------|-------|
| Display / Hero | abcNormal | 48px (3rem) | 400 | 1.00 (tight) | -1.2px | Maximum size, film-title presence |
| Section Heading | abcNormal | 40px (2.5rem) | 400 | 1.00–1.10 | -1px to 0px | Feature section titles |
| Sub-heading | abcNormal | 36px (2.25rem) | 400 | 1.00 (tight) | -0.9px | Secondary section markers |
| Card Title | abcNormal | 24px (1.5rem) | 400 | 1.00 (tight) | normal | Article and card headings |
| Feature Title | abcNormal | 20px (1.25rem) | 400 | 1.00 (tight) | normal | Small headings |
| Body / Button | abcNormal | 16px (1rem) | 400–600 | 1.30–1.50 | -0.16px to normal | Standard body, nav links |
| Caption / Label | abcNormal | 14px (0.88rem) | 500–600 | 1.25–1.43 | 0.35px (uppercase) | Metadata, section labels |
| Small | abcNormal | 13px (0.81rem) | 400 | 1.30 (tight) | -0.16px to -0.26px | Compact descriptions |
| Micro / Tag | abcNormal | 11px (0.69rem) | 450 | 1.30 (tight) | normal | Uppercase tags, tiny labels |

### Principles
- **One typeface, complete expression**: abcNormal handles every text role. The design achieves variety through size, weight, case, and letter-spacing rather than font-family switching.
- **Tight everywhere**: Nearly every size uses line-height 1.0–1.30 — even body text is relatively compressed. This creates a dense, editorial feel.
- **Weight 450 — the precision detail**: Some small uppercase labels use weight 450, an uncommon intermediate between regular (400) and medium (500). This micro-craft signals typographic sophistication.
- **Negative tracking as default**: Even body text uses -0.16px to -0.26px letter-spacing, keeping everything slightly tighter than default.
- **Uppercase as structure**: Labels at 14px and 11px use `text-transform: uppercase` with positive letter-spacing (0.35px) to create navigational signposts that contrast with the tight lowercase text.

## 4. Component Stylings

### Buttons
- Text: weight 600 at 14px abcNormal
- Background: likely transparent or dark, with minimal border
- Radius: small (4px) for button-like links
- The button design is extremely restrained — no heavy fills or borders detected
- Interactive elements blend into the editorial flow

### Cards & Containers
- Background: transparent or Dark Surface (`#1a1a1a`)
- Border: `1px solid #27272a` (dark mode) — barely visible containment
- Radius: small (4–8px) for functional elements; 16px for alert-style containers
- Shadow: zero — no shadows on any element
- Cards are primarily photographic — the image IS the card

### Navigation
- Minimal horizontal nav — transparent over hero content
- Logo: Runway wordmark in white/black
- Links: abcNormal at 16px, weight 400–600
- Hover: text shifts to white or higher opacity
- Extremely subtle — designed to not compete with visual content

### Image Treatment
- Full-bleed cinematic photography and video dominate
- AI-generated content shown at large scale as primary visual elements
- Mixed-size image grids creating editorial magazine layouts
- Dark overlays on hero images for text readability
- Product screenshots with subtle rounded corners (8px)

### Distinctive Components

**Cinematic Hero**
- Full-viewport image or video with text overlay
- Headline in 48px abcNormal, white on dark imagery
- The image is always cinematic quality — film-grade composition

**Research Article Cards**
- Photographic thumbnails with article titles
- Mixed-size grid layout (large feature + smaller supporting)
- Clean text overlay or below-image caption style

**Trust Bar**
- Company logos (leading organizations across industries)
- Clean, monochrome treatment
- Horizontal layout with generous spacing

**Mission Statement**
- "We are building AI to simulate the world through imagination, art and aesthetics"
- On a dark background with white text
- The emotional close — artistic and philosophical

## 5. Layout Principles

### Spacing System
- Base unit: 8px
- Scale: 4px, 6px, 8px, 12px, 16px, 20px, 24px, 28px, 32px, 48px, 64px, 78px
- Section vertical spacing: generous (48–78px)
- Component gaps: 16–24px

### Grid & Container
- Max container width: up to 1600px (cinema-wide)
- Hero: full-viewport, edge-to-edge
- Content sections: centered with generous margins
- Image grids: asymmetric, magazine-style mixed sizes
- Footer: full-width dark section

### Whitespace Philosophy
- **Cinema-grade breathing**: Large vertical gaps between sections create a scrolling experience that feels like watching scenes change.
- **Images replace whitespace**: Where other sites use empty space, Runway fills it with photography. The visual content IS the breathing room.
- **Editorial grid asymmetry**: The image grid uses intentionally varied sizes — large hero images paired with smaller supporting images, creating visual rhythm.

### Border Radius Scale
- Sharp (4px): Buttons, small interactive elements
- Subtle (6px): Links, small containers
- Comfortable (8px): Standard containers, image cards
- Generous (16px): Alert-style containers, featured elements

## 6. Depth & Elevation

| Level | Treatment | Use |
|-------|-----------|-----|
| Flat (Level 0) | No shadow, no border | Everything — the dominant state |
| Bordered (Level 1) | `1px solid #27272a` | Alert containers only |
| Dark Section (Level 2) | Dark bg (#000000 / #1a1a1a) with light text | Hero, features, footer |
| Light Section (Level 3) | White/Cool Cloud bg with dark text | Content sections, research |

**Shadow Philosophy**: Runway uses **zero shadows**. This is a film-production design decision — in cinema, depth comes from lighting, focus, and composition, not drop shadows. The interface mirrors this philosophy: depth is communicated through dark/light section alternation, photographic depth-of-field, and overlay transparency — never through CSS box-shadow.

## 7. Do's and Don'ts

### Do
- Use full-bleed cinematic photography as the primary visual element
- Use abcNormal for all text — maintain the single-typeface commitment
- Keep display line-heights at 1.0 with negative letter-spacing for film-title density
- Use the cool-gray neutral palette (#767d88, #7d848e) for secondary text
- Maintain zero shadows — depth comes from photography and section backgrounds
- Use uppercase with letter-spacing for navigational labels (14px, 0.35px spacing)
- Apply small border-radius (4–8px) — the design is NOT pill-shaped
- Let visual content (photos, videos) dominate — the UI should be invisible
- Use weight 450 for micro labels — the precision matters

### Don't
- Don't add decorative colors to the interface — the only color comes from photography
- Don't use heavy borders or shadows — the interface must be nearly invisible
- Don't use pill-shaped radius — Runway's geometry is subtly rounded, not circular
- Don't use bold (700+) weight — 400–600 is the full range, with 450 as a precision tool
- Don't compete with the visual content — text overlays should be minimal and restrained
- Don't use gradient backgrounds in the interface — gradients exist only in photography
- Don't use more than one typeface — abcNormal handles everything
- Don't use body line-height above 1.50 — the tight, editorial feel is core
- Don't reduce image quality — cinematic photography IS the design

## 8. Responsive Behavior

### Breakpoints
| Name | Width | Key Changes |
|------|-------|-------------|
| Mobile | <640px | Single column, stacked images, reduced hero text |
| Tablet | 640–768px | 2-column image grids begin |
| Small Desktop | 768–1024px | Standard layout |
| Desktop | 1024–1280px | Full layout, expanded hero |
| Large Desktop | 1280–1600px | Maximum cinema-width container |

### Touch Targets
- Navigation links at comfortable 16px
- Article cards serve as large touch targets
- Buttons at 14px weight 600 with adequate padding

### Collapsing Strategy
- **Navigation**: Collapses to hamburger on mobile
- **Hero**: Full-bleed maintained, text scales down
- **Image grids**: Multi-column → 2-column → single column
- **Research articles**: Feature-size cards → stacked full-width
- **Trust logos**: Horizontal scroll or reduced grid

### Image Behavior
- Cinematic images scale proportionally
- Full-bleed hero maintained across all sizes
- Image grids reflow to fewer columns
- Video content maintains aspect ratio

## 9. Agent Prompt Guide

### Quick Color Reference
- Background Dark: "Runway Black (#000000)"
- Background Light: "Pure White (#ffffff)"
- Primary Text Dark: "Charcoal (#404040)"
- Secondary Text: "Cool Slate (#767d88)"
- Muted Text: "Muted Gray (#a7a7a7)"
- Light Border: "Cool Silver (#c9ccd1)"
- Dark Border: "Border Dark (#27272a)"
- Card Surface: "Dark Surface (#1a1a1a)"

### Example Component Prompts
- "Create a cinematic hero section: full-bleed dark background with a cinematic image overlay. Headline at 48px abcNormal weight 400, line-height 1.0, letter-spacing -1.2px in white. Minimal text below in Cool Slate (#767d88) at 16px."
- "Design a research article grid: one large card (50% width) with a cinematic image and 24px title, next to two smaller cards stacked. All images with 8px border-radius. Titles in white (dark bg) or Charcoal (#404040, light bg)."
- "Build a section label: 14px abcNormal weight 500, uppercase, letter-spacing 0.35px in Cool Slate (#767d88). No border, no background."
- "Create a trust bar: company logos in monochrome, horizontal layout with generous spacing. On dark background with white/gray logo treatments."
- "Design a mission statement section: Runway Black background, white text at 36px abcNormal, line-height 1.0, letter-spacing -0.9px. Centered, with generous vertical padding."

### Iteration Guide
1. Visual content first — always include cinematic photography
2. Use abcNormal for everything — specify size and weight, never change the font
3. Keep the interface invisible — no heavy borders, no shadows, no bright colors
4. Use the cool slate grays (#767d88, #7d848e) for secondary text — not warm grays
5. Uppercase labels need letter-spacing (0.35px) — never tight uppercase
6. Dark sections should be truly dark (#000000 or #1a1a1a) — no medium grays as surfaces


---

## Brand: `spotify`

# Design System Inspired by Spotify

## 1. Visual Theme & Atmosphere

Spotify's web interface is a dark, immersive music player that wraps listeners in a near-black cocoon (`#121212`, `#181818`, `#1f1f1f`) where album art and content become the primary source of color. The design philosophy is "content-first darkness" — the UI recedes into shadow so that music, podcasts, and playlists can glow. Every surface is a shade of charcoal, creating a theater-like environment where the only true color comes from the iconic Spotify Green (`#1ed760`) and the album artwork itself.

The typography uses SpotifyMixUI and SpotifyMixUITitle — proprietary fonts from the CircularSp family (Circular by Lineto, customized for Spotify) with an extensive fallback stack that includes Arabic, Hebrew, Cyrillic, Greek, Devanagari, and CJK fonts, reflecting Spotify's global reach. The type system is compact and functional: 700 (bold) for emphasis and navigation, 600 (semibold) for secondary emphasis, and 400 (regular) for body. Buttons use uppercase with positive letter-spacing (1.4px–2px) for a systematic, label-like quality.

What distinguishes Spotify is its pill-and-circle geometry. Primary buttons use 500px–9999px radius (full pill), circular play buttons use 50% radius, and search inputs are 500px pills. Combined with heavy shadows (`rgba(0,0,0,0.5) 0px 8px 24px`) on elevated elements and a unique inset border-shadow combo (`rgb(18,18,18) 0px 1px 0px, rgb(124,124,124) 0px 0px 0px 1px inset`), the result is an interface that feels like a premium audio device — tactile, rounded, and built for touch.

**Key Characteristics:**
- Near-black immersive dark theme (`#121212`–`#1f1f1f`) — UI disappears behind content
- Spotify Green (`#1ed760`) as singular brand accent — never decorative, always functional
- SpotifyMixUI/CircularSp font family with global script support
- Pill buttons (500px–9999px) and circular controls (50%) — rounded, touch-optimized
- Uppercase button labels with wide letter-spacing (1.4px–2px)
- Heavy shadows on elevated elements (`rgba(0,0,0,0.5) 0px 8px 24px`)
- Semantic colors: negative red (`#f3727f`), warning orange (`#ffa42b`), announcement blue (`#539df5`)
- Album art as the primary color source — the UI is achromatic by design

## 2. Color Palette & Roles

### Primary Brand
- **Spotify Green** (`#1ed760`): Primary brand accent — play buttons, active states, CTAs
- **Near Black** (`#121212`): Deepest background surface
- **Dark Surface** (`#181818`): Cards, containers, elevated surfaces
- **Mid Dark** (`#1f1f1f`): Button backgrounds, interactive surfaces

### Text
- **White** (`#ffffff`): `--text-base`, primary text
- **Silver** (`#b3b3b3`): Secondary text, muted labels, inactive nav
- **Near White** (`#cbcbcb`): Slightly brighter secondary text
- **Light** (`#fdfdfd`): Near-pure white for maximum emphasis

### Semantic
- **Negative Red** (`#f3727f`): `--text-negative`, error states
- **Warning Orange** (`#ffa42b`): `--text-warning`, warning states
- **Announcement Blue** (`#539df5`): `--text-announcement`, info states

### Surface & Border
- **Dark Card** (`#252525`): Elevated card surface
- **Mid Card** (`#272727`): Alternate card surface
- **Border Gray** (`#4d4d4d`): Button borders on dark
- **Light Border** (`#7c7c7c`): Outlined button borders, muted links
- **Separator** (`#b3b3b3`): Divider lines
- **Light Surface** (`#eeeeee`): Light-mode buttons (rare)
- **Spotify Green Border** (`#1db954`): Green accent border variant

### Shadows
- **Heavy** (`rgba(0,0,0,0.5) 0px 8px 24px`): Dialogs, menus, elevated panels
- **Medium** (`rgba(0,0,0,0.3) 0px 8px 8px`): Cards, dropdowns
- **Inset Border** (`rgb(18,18,18) 0px 1px 0px, rgb(124,124,124) 0px 0px 0px 1px inset`): Input border-shadow combo

## 3. Typography Rules

### Font Families
- **Title**: `SpotifyMixUITitle`, fallbacks: `CircularSp-Arab, CircularSp-Hebr, CircularSp-Cyrl, CircularSp-Grek, CircularSp-Deva, Helvetica Neue, helvetica, arial, Hiragino Sans, Hiragino Kaku Gothic ProN, Meiryo, MS Gothic`
- **UI / Body**: `SpotifyMixUI`, same fallback stack

### Hierarchy

| Role | Font | Size | Weight | Line Height | Letter Spacing | Notes |
|------|------|------|--------|-------------|----------------|-------|
| Section Title | SpotifyMixUITitle | 24px (1.50rem) | 700 | normal | normal | Bold title weight |
| Feature Heading | SpotifyMixUI | 18px (1.13rem) | 600 | 1.30 (tight) | normal | Semibold section heads |
| Body Bold | SpotifyMixUI | 16px (1.00rem) | 700 | normal | normal | Emphasized text |
| Body | SpotifyMixUI | 16px (1.00rem) | 400 | normal | normal | Standard body |
| Button Uppercase | SpotifyMixUI | 14px (0.88rem) | 600–700 | 1.00 (tight) | 1.4px–2px | `text-transform: uppercase` |
| Button | SpotifyMixUI | 14px (0.88rem) | 700 | normal | 0.14px | Standard button |
| Nav Link Bold | SpotifyMixUI | 14px (0.88rem) | 700 | normal | normal | Navigation |
| Nav Link | SpotifyMixUI | 14px (0.88rem) | 400 | normal | normal | Inactive nav |
| Caption Bold | SpotifyMixUI | 14px (0.88rem) | 700 | 1.50–1.54 | normal | Bold metadata |
| Caption | SpotifyMixUI | 14px (0.88rem) | 400 | normal | normal | Metadata |
| Small Bold | SpotifyMixUI | 12px (0.75rem) | 700 | 1.50 | normal | Tags, counts |
| Small | SpotifyMixUI | 12px (0.75rem) | 400 | normal | normal | Fine print |
| Badge | SpotifyMixUI | 10.5px (0.66rem) | 600 | 1.33 | normal | `text-transform: capitalize` |
| Micro | SpotifyMixUI | 10px (0.63rem) | 400 | normal | normal | Smallest text |

### Principles
- **Bold/regular binary**: Most text is either 700 (bold) or 400 (regular), with 600 used sparingly. This creates a clear visual hierarchy through weight contrast rather than size variation.
- **Uppercase buttons as system**: Button labels use uppercase + wide letter-spacing (1.4px–2px), creating a systematic "label" voice distinct from content text.
- **Compact sizing**: The range is 10px–24px — narrower than most systems. Spotify's type is compact and functional, designed for scanning playlists, not reading articles.
- **Global script support**: The extensive fallback stack (Arabic, Hebrew, Cyrillic, Greek, Devanagari, CJK) reflects Spotify's 180+ market reach.

## 4. Component Stylings

### Buttons

**Dark Pill**
- Background: `#1f1f1f`
- Text: `#ffffff` or `#b3b3b3`
- Padding: 8px 16px
- Radius: 9999px (full pill)
- Use: Navigation pills, secondary actions

**Dark Large Pill**
- Background: `#181818`
- Text: `#ffffff`
- Padding: 0px 43px
- Radius: 500px
- Use: Primary app navigation buttons

**Light Pill**
- Background: `#eeeeee`
- Text: `#181818`
- Radius: 500px
- Use: Light-mode CTAs (cookie consent, marketing)

**Outlined Pill**
- Background: transparent
- Text: `#ffffff`
- Border: `1px solid #7c7c7c`
- Padding: 4px 16px 4px 36px (asymmetric for icon)
- Radius: 9999px
- Use: Follow buttons, secondary actions

**Circular Play**
- Background: `#1f1f1f`
- Text: `#ffffff`
- Padding: 12px
- Radius: 50% (circle)
- Use: Play/pause controls

### Cards & Containers
- Background: `#181818` or `#1f1f1f`
- Radius: 6px–8px
- No visible borders on most cards
- Hover: slight background lightening
- Shadow: `rgba(0,0,0,0.3) 0px 8px 8px` on elevated

### Inputs
- Search input: `#1f1f1f` background, `#ffffff` text
- Radius: 500px (pill)
- Padding: 12px 96px 12px 48px (icon-aware)
- Focus: border becomes `#000000`, outline `1px solid`

### Navigation
- Dark sidebar with SpotifyMixUI 14px weight 700 for active, 400 for inactive
- `#b3b3b3` muted color for inactive items, `#ffffff` for active
- Circular icon buttons (50% radius)
- Spotify logo top-left in green

## 5. Layout Principles

### Spacing System
- Base unit: 8px
- Scale: 1px, 2px, 3px, 4px, 5px, 6px, 8px, 10px, 12px, 14px, 15px, 16px, 20px

### Grid & Container
- Sidebar (fixed) + main content area
- Grid-based album/playlist cards
- Full-width now-playing bar at bottom
- Responsive content area fills remaining space

### Whitespace Philosophy
- **Dark compression**: Spotify packs content densely — playlist grids, track lists, and navigation are all tightly spaced. The dark background provides visual rest between elements without needing large gaps.
- **Content density over breathing room**: This is an app, not a marketing site. Every pixel serves the listening experience.

### Border Radius Scale
- Minimal (2px): Badges, explicit tags
- Subtle (4px): Inputs, small elements
- Standard (6px): Album art containers, cards
- Comfortable (8px): Sections, dialogs
- Medium (10px–20px): Panels, overlay elements
- Large (100px): Large pill buttons
- Pill (500px): Primary buttons, search input
- Full Pill (9999px): Navigation pills, search
- Circle (50%): Play buttons, avatars, icons

## 6. Depth & Elevation

| Level | Treatment | Use |
|-------|-----------|-----|
| Base (Level 0) | `#121212` background | Deepest layer, page background |
| Surface (Level 1) | `#181818` or `#1f1f1f` | Cards, sidebar, containers |
| Elevated (Level 2) | `rgba(0,0,0,0.3) 0px 8px 8px` | Dropdown menus, hover cards |
| Dialog (Level 3) | `rgba(0,0,0,0.5) 0px 8px 24px` | Modals, overlays, menus |
| Inset (Border) | `rgb(18,18,18) 0px 1px 0px, rgb(124,124,124) 0px 0px 0px 1px inset` | Input borders |

**Shadow Philosophy**: Spotify uses notably heavy shadows for a dark-themed app. The 0.5 opacity shadow at 24px blur creates a dramatic "floating in darkness" effect for dialogs and menus, while the 0.3 opacity at 8px blur provides a more subtle card lift. The unique inset border-shadow combination on inputs creates a recessed, tactile quality.

## 7. Do's and Don'ts

### Do
- Use near-black backgrounds (`#121212`–`#1f1f1f`) — depth through shade variation
- Apply Spotify Green (`#1ed760`) only for play controls, active states, and primary CTAs
- Use pill shape (500px–9999px) for all buttons — circular (50%) for play controls
- Apply uppercase + wide letter-spacing (1.4px–2px) on button labels
- Keep typography compact (10px–24px range) — this is an app, not a magazine
- Use heavy shadows (`0.3–0.5 opacity`) for elevated elements on dark backgrounds
- Let album art provide color — the UI itself is achromatic

### Don't
- Don't use Spotify Green decoratively or on backgrounds — it's functional only
- Don't use light backgrounds for primary surfaces — the dark immersion is core
- Don't skip the pill/circle geometry on buttons — square buttons break the identity
- Don't use thin/subtle shadows — on dark backgrounds, shadows need to be heavy to be visible
- Don't add additional brand colors — green + achromatic grays is the complete palette
- Don't use relaxed line-heights — Spotify's typography is compact and dense
- Don't expose raw gray borders — use shadow-based or inset borders instead

## 8. Responsive Behavior

### Breakpoints
| Name | Width | Key Changes |
|------|-------|-------------|
| Mobile Small | <425px | Compact mobile layout |
| Mobile | 425–576px | Standard mobile |
| Tablet | 576–768px | 2-column grid |
| Tablet Large | 768–896px | Expanded layout |
| Desktop Small | 896–1024px | Sidebar visible |
| Desktop | 1024–1280px | Full desktop layout |
| Large Desktop | >1280px | Expanded grid |

### Collapsing Strategy
- Sidebar: full → collapsed → hidden
- Album grid: 5 columns → 3 → 2 → 1
- Now-playing bar: maintained at all sizes
- Search: pill input maintained, width adjusts
- Navigation: sidebar → bottom bar on mobile

## 9. Agent Prompt Guide

### Quick Color Reference
- Background: Near Black (`#121212`)
- Surface: Dark Card (`#181818`)
- Text: White (`#ffffff`)
- Secondary text: Silver (`#b3b3b3`)
- Accent: Spotify Green (`#1ed760`)
- Border: `#4d4d4d`
- Error: Negative Red (`#f3727f`)

### Example Component Prompts
- "Create a dark card: #181818 background, 8px radius. Title at 16px SpotifyMixUI weight 700, white text. Subtitle at 14px weight 400, #b3b3b3. Shadow rgba(0,0,0,0.3) 0px 8px 8px on hover."
- "Design a pill button: #1f1f1f background, white text, 9999px radius, 8px 16px padding. 14px SpotifyMixUI weight 700, uppercase, letter-spacing 1.4px."
- "Build a circular play button: Spotify Green (#1ed760) background, #000000 icon, 50% radius, 12px padding."
- "Create search input: #1f1f1f background, white text, 500px radius, 12px 48px padding. Inset border: rgb(124,124,124) 0px 0px 0px 1px inset."
- "Design navigation sidebar: #121212 background. Active items: 14px weight 700, white. Inactive: 14px weight 400, #b3b3b3."

### Iteration Guide
1. Start with #121212 — everything lives in near-black darkness
2. Spotify Green for functional highlights only (play, active, CTA)
3. Pill everything — 500px for large, 9999px for small, 50% for circular
4. Uppercase + wide tracking on buttons — the systematic label voice
5. Heavy shadows (0.3–0.5 opacity) for elevation — light shadows are invisible on dark
6. Album art provides all the color — the UI stays achromatic


---

## Brand: `theverge`

# Design System Inspired by The Verge

## 1. Visual Theme & Atmosphere

The Verge's 2024 redesign feels like somebody wired a Condé Nast magazine to a chiptune soundboard. The canvas is almost-black (`#131313`), the headlines are built from a brutally heavy display face (Manuka) that runs up to 107px, and the whole page is peppered with acid-mint `#3cffd0` and ultraviolet `#5200ff` that behave less like brand colors and more like hazard tape. Story tiles are not quiet gray cards — they're saturated, full-bleed color blocks (yellow, pink, orange, blue, purple) that feel like pasted-up rave flyers arranged into a timeline. The mood is "developer console meets club night meets tech tabloid": serious enough to cover a congressional hearing, loud enough to review a synthesizer.

What makes this system unmistakable is the **StoryStream** timeline: a vertical feed where every post is a rounded rectangle — often 20–40px radius — filled edge-to-edge with color, framed by a thin border, and marked by a mono-uppercase timestamp on its left rail. Stories don't float on a grid; they stack on a dashed vertical rule like commits in a git log. Above that, a massive **"The Verge" wordmark** dominates the masthead in Manuka at hero scale, letting the reader know before any headline loads that this is editorial territory, not a template.

There is no "light mode" on the homepage — the dark canvas is the product, and the only time the palette inverts is when a single story tile takes a mint or yellow fill. The depth is almost entirely flat: **hairline 1px borders** (`#ffffff`, `#3cffd0`, or `#5200ff`) do the work that shadows would do on a Material-flavored site. Every container is either `#131313` with a 1px outline, a fully saturated accent block, or a slate-gray `#2d2d2d` secondary surface.

**Key Characteristics:**
- Near-black editorial canvas (`#131313`) as the default surface — no light mode on the homepage
- Acid-mint `#3cffd0` + ultraviolet `#5200ff` as hazard-tape accents, never quiet background wash
- Massive Manuka display headlines up to 107px — the single loudest type move in mainstream tech media
- Rounded pill-card everything: 20/24/30/40px corner radii, never square
- Fully saturated color-block story tiles (mint, purple, yellow, pink, orange, electric blue) on a dark page
- Timeline "StoryStream" feed with mono uppercase timestamps rather than a traditional magazine grid
- Flat depth — 1px borders in white, mint, purple do the work that shadows would do elsewhere

## 2. Color Palette & Roles

### Primary (Brand Hazards)
- **Jelly Mint** (`#3cffd0`): The Verge's signature acid-mint accent. Used as CTA button fill, link underlines, active tab borders, and high-attention story-tile backgrounds. Treat it as the visual equivalent of neon safety paint — applied sparingly to the most important element on screen.
- **Verge Ultraviolet** (`#5200ff`): The complementary brand hazard. Used for secondary color-block tiles, promotional spans, and the occasional outlined button. Often applied at 0.9 alpha to soften its cathode intensity.

### Secondary & Accent
- **Console Mint Border** (`#309875`): A darker variant of the jelly mint used on card outlines and button borders where pure mint would over-saturate.
- **Deep Link Blue** (`#3860be`): The link *hover* color — the one moment blue appears on the site. It replaces mint/white/black on hover across every link style.
- **Focus Cyan** (`#1eaedb`): Reserved for button focus rings. Never shown outside a keyboard-focus state.
- **Purple Rule** (`#3d00bf`): A darker ultraviolet variant used as the vertical border on StoryStream `<li>` items.

### Surface & Background
- **Canvas Black** (`#131313`): The default dark surface for the entire homepage. Almost-but-not-quite pure black — has just enough warmth to feel like a printed newsprint negative rather than an OLED void.
- **Surface Slate** (`#2d2d2d`): Secondary card background, used when a story tile doesn't need to be a saturated color block.
- **Image Frame** (`#313131`): The 1px border that wraps inline imagery.
- **Hazard White** (`#ffffff`): Used as story-tile fill, button border, and primary text. When white appears as a large block, it's an editorial decision — a "spotlight" on that tile.
- **Absolute Black** (`#000000`): Reserved for text on the mint/yellow/white tiles — the only place it appears.

### Neutrals & Text
- **Primary Text** (`#ffffff`): Headlines and display text on the canvas.
- **Secondary Text** (`#949494`): Bylines, timestamps, photo credits. The mid-gray that anchors the metadata layer.
- **Muted Text** (`#e9e9e9`): Button text on dark slate buttons. Slightly off-white to reduce screen glare.
- **Inverted Text** (`#131313`): Used only on accent tiles (mint, yellow, white) to keep contrast legible.

### Semantic & Accent
- **Focus Ring** (`#1eaedb`): Keyboard focus only.
- **Overlay Black** (`rgba(0, 0, 0, 0.33)`): Subtle 1px ring used as the quiet shadow alternative on stacked cards.
- **Dim Gray** (`#8c8c8c`): Active/pressed button background — the "pressed down" state.

### Gradient System
The Verge uses **zero decorative gradients**. The only gradient-like treatment is the transition from a saturated accent story tile (mint/purple/yellow) back to the `#131313` canvas between rows. Color is applied in solid blocks, not as washes. This is a deliberate choice — the site's hazard-tape visual identity would dissolve if anything faded.

## 3. Typography Rules

### Font Family
- **Manuka** (Klim Type Foundry) — fallback: Impact, Helvetica. The signature display face for The Verge wordmark and feature headlines. A heavy-weight (900) industrial sans-serif with a condensed, almost-athletic stance. Runs at 60–107px on the homepage, never smaller.
- **PolySans** (PanGram Pangram / Nikolas Wrobel) — fallback: Helvetica, Arial. The UI and secondary headline workhorse. Covers weights 300 / 500 / 700 across the system — everything from kicker captions to body decks.
- **PolySans Mono** — fallback: Courier New, Courier. The monospaced sibling, used exclusively for ALL-CAPS labels: kickers, timestamps, category tags, button labels. This mono-uppercase usage is the second-most-identifiable Verge detail after Manuka.
- **FK Roman Standard** (Florian Karsten) — fallback: Georgia. A serif used sparingly for specific body/caption treatments (article excerpts, certain review pulls). Adds a "print-magazine" counterpoint to the PolySans stack.
- **Roboto** — fallback: `-apple-system`, `system-ui`. Utility UI font for widgets and legacy modules.

### Hierarchy

| Role | Font | Size | Weight | Line Height | Letter Spacing | Notes |
|---|---|---|---|---|---|---|
| Hero Wordmark / Display | Manuka | 107px / 6.69rem | 900 | 0.80 | 1.07px | The top-of-page "The Verge" logo and feature headlines |
| Secondary Display | Manuka | 90px / 5.63rem | 900 | 0.80 | — | Section-level feature headlines |
| Tertiary Display | Manuka | 60px / 3.75rem | 900 | 0.80 | — | Inline feature callouts |
| Large Headline | PolySans | 34px / 2.13rem | 700 | 1.00 | — | Section and module headlines |
| Heading Wide | PolySans | 32px / 2.00rem | 400 | 1.10 | 0.32px | Sub-heroes, promotional units |
| Heading Medium | PolySans | 24px / 1.50rem | 700 | 1.00 | — | Story tile headlines in the main feed |
| Heading Small | PolySans | 20px / 1.25rem | 700 | 1.00 | — | Compact tile headlines |
| Light Capitalized Label | PolySans | 19px / 1.19rem | 300 | 1.20 | 1.9px | Thin-weight capitalized eyebrows — a distinctive Verge move |
| All-Caps Label XL | PolySans | 18px / 1.13rem | 400 | 1.10 | 1.8px | UPPERCASE section kickers |
| Bold Body | PolySans | 16px / 1.00rem | 700 | 1.00 | — | Emphasis within decks |
| Body Relaxed | PolySans | 16px / 1.00rem | 500 | 1.60 | — | Long-form reading body |
| Inline Label | PolySans | 15px / 0.94rem | 400 | 1.20 | 0.15px | UI labels and secondary headlines |
| Body Compact | PolySans | 13px / 0.81rem | 400 | 1.60 | — | Secondary captions and decks |
| Eyebrow All-Caps | PolySans | 12px / 0.75rem | 400 | 1.30 | 1.8px | UPPERCASE kicker above tile headlines |
| Tag Label | PolySans | 12px / 0.75rem | 400 | 1.20 | 0.72px | UPPERCASE category tag |
| Caption Micro | PolySans | 11px / 0.69rem | 400 | 1.20 | 1.1px | UPPERCASE bylines |
| Meta Nano | PolySans | 10px / 0.63rem | 500 | 1.40 | 1.5px | UPPERCASE timestamp microtext |
| Mono Button Label | PolySans Mono | 12px / 0.75rem | 600 | 2.00 | 1.5px | UPPERCASE button text, very open leading |
| Mono Timestamp | PolySans Mono | 11px / 0.69rem | 500/600 | 1.20 | 1.1–1.8px | UPPERCASE StoryStream timestamps |
| Serif Body | FK Roman Standard | 16px / 1.00rem | 400 | 1.30 | -0.16px | Review decks, print-voice excerpts |
| Serif Caption | FK Roman Standard | 20px / 1.25rem | 400 | 1.20 | — | Magazine-style pull quotes |

### Principles
- **Manuka is always the hero, never the UI.** If you see Manuka below 60px you're looking at a bug. It exists to *shout the brand*, not to label a button.
- **PolySans is the workhorse, PolySans Mono is its uniformed sibling.** Mono is used exclusively for UPPERCASE labels, timestamps, tags, and certain buttons. Lowercase mono doesn't exist in this system.
- **Thin-weight (300) capitalized headlines** are a signature Verge move. The 19–20px weight-300 with 1.9px tracking creates a "fashion magazine whisper" that contrasts with the 107px Manuka shout above it. This whisper-vs-shout contrast is the typographic fingerprint.
- **Letter-spacing has two registers**: positive (0.72–1.9px) for ALL-CAPS mono and sans labels, negative (`-0.16px`) for the rare serif appearances, barely-positive (0.32px, 1.07px) for massive display. Plain 0 letter-spacing is rare.
- **FK Roman Standard is the editorial exception**, not the rule. Reserve it for long-form print-voice moments — reviews, critic pulls, masthead essays. Never use it in UI.
- **Line heights are tight** (0.80–1.30) for every display and label, relaxed (1.60–2.00) only for reading body and mono button labels. The leading jump is intentional — it gives the page a "telegraph ticker" rhythm.

### Note on Font Substitutes
The 0.80 line-height on Manuka display (107px, 90px, 60px) assumes the **proprietary Manuka face from Klim Type Foundry**, which has aggressively tight vertical metrics designed for athletic stance at large sizes. If you substitute with wide-metric open-source condensed displays like **Anton**, **Oswald**, **Bebas Neue**, or **Archivo Black**, loosen display line-heights by approximately **+0.10 to +0.15** to prevent ascender/descender collisions (e.g., 0.80 → 0.95). PolySans substitutes (Space Grotesk, DM Sans, Hanken Grotesk) work at the token values without adjustment — their metrics are close enough. PolySans Mono substitutes (Space Mono, JetBrains Mono) and FK Roman substitutes (Newsreader, Literata) also work without adjustment.

## 4. Component Stylings

### Buttons

**Primary — Jelly Mint Pill**
- Background: `#3cffd0` (Jelly Mint)
- Text: `#000000` (Absolute Black), PolySans 16px / 700 or PolySans Mono 12px / 600 UPPERCASE
- Border: none (pure fill)
- Border radius: `24px` — fully rounded pill
- Padding: `10px 24px`
- Outline: `none` at rest
- Hover: background shifts to `rgba(255, 255, 255, 0.2)` (translucent white), text stays black, adds a 1px `#c2c2c2` ring shadow
- Active: background `rgba(140, 140, 140, 0.87)`, opacity `0.5`, ring shadow `#8c8c8c`
- Focus: background `#1eaedb`, white text, 1px solid `#0500ff` border, translucent white focus ring
- Transition: ~180ms ease on background and shadow

**Secondary — Dark Slate Pill**
- Background: `#2d2d2d` (Surface Slate)
- Text: `#e9e9e9` (Muted Text), PolySans 16px / 400
- Border: none
- Border radius: `24px`
- Padding: `10px 24px`
- Outline: `rgb(233, 233, 233) none 0px`
- Hover: same translucent white invert as primary — `rgba(255, 255, 255, 0.2)` bg, black text, 1px `#c2c2c2` ring
- Focus: same cyan focus treatment as primary

**Tertiary — Outlined Mint**
- Background: transparent
- Text: `#3cffd0`, PolySans Mono 12px / 600 UPPERCASE, 1.5px tracking
- Border: `1px solid #3cffd0`
- Border radius: `40px` — larger pill for secondary outline style
- Padding: ~`10px 20px`
- Hover: inverts to mint fill, black text
- Transition: 150ms ease

**Outlined Ultraviolet (Promotional)**
- Background: transparent
- Text: `#5200ff` or `#ffffff`
- Border: `1px solid #5200ff`
- Border radius: `30px`
- Used for "Subscribe" or "Join the Stream" style promotional callouts

**Pill Tag (Non-interactive)**
- Background: saturated accent (`#3cffd0`, `#5200ff`, yellow, etc.)
- Text: black or white depending on background luminance
- Border radius: `20px` (tighter radius than buttons — this is the *text pill*)
- Font: PolySans Mono 11px / 600 UPPERCASE, 1.8px tracking
- Padding: ~`4px 10px`

### Cards & Containers

**StoryStream Tile**
- Background: either `#131313` + 1px white border, OR a saturated accent fill (mint, purple, yellow, pink, orange, white)
- Border radius: `20px` (standard) or `24px` (feature)
- Border: `1px solid #ffffff` (on dark) or `0px 0px 1px solid #3cffd0` (on mint) or nothing (on saturated fill)
- Padding: ~24–32px interior
- Hover: no lift, no scale — the headline text color transitions from white to `#3860be` (deep link blue)
- Transition: 150ms ease on color only

**Feature Card (Top Story)**
- Background: `#131313` with 1px hairline border, OR full-bleed color accent
- Border radius: `24px`
- Padding: 32px+
- Image inside: clipped to match the outer radius (`3px` or `4px` inner radius when nested)
- Hover: text color shift only; the image remains static

**StoryStream Rail (Timeline)**
- A vertical dashed or solid rule (1px `#3d00bf` or `#ffffff`) runs along the left edge of each item, marking the timeline spine
- Timestamps sit on the left rail in PolySans Mono 11px / 500 / UPPERCASE / 1.1px tracking
- Each entry is a pill-cornered rectangle separated from its neighbors by 12–16px vertical gap

### Inputs & Forms
- **Default**: `#131313` background, 1px solid `#ffffff` or `#949494` border, `2px` border radius (tight, newspaper-form feel), PolySans 15px text in `#ffffff`, placeholder in `#949494`.
- **Focus**: border transitions to `#3cffd0` (jelly mint) with optional `1px solid #5200ff` inner ring on deep focus. No glow.
- **Error**: border turns `#5200ff` (ultraviolet — used as error/alert accent here, not the usual red).
- **Transition**: ~150ms ease on border-color.

### Navigation

- **Top nav**: thin `#131313` bar with the Verge wordmark (Manuka) left-aligned, a search icon and a few UPPERCASE mono category links (12–14px, PolySans Mono, 1.5–1.8px tracking), and a single mint-pill CTA (usually "Subscribe") pinned right.
- **Wordmark**: massive on first scroll — the homepage treats the "The Verge" logo as a hero element, not a 32px corner logo.
- **Hover**: every link transitions from `#ffffff` to `#3860be` (deep link blue). No underline — it's a color-only response.
- **Active section**: marked by a 1px mint underline (inset box-shadow `0px -1px 0px 0px inset #3cffd0`)
- **Mobile**: the wordmark shrinks, category nav collapses into a hamburger drawer. Inside the drawer, links are mono-uppercase and stack with 16–20px gaps.

### Image Treatment

- **Aspect ratios**: 16:9 dominates for hero and feature images, 4:3 for mid-feed, 1:1 for thumbnails and author avatars.
- **Corners**: always rounded to match the parent card — `3px`, `4px`, or inherit `20px` / `24px` from the tile.
- **Frame**: 1px `#313131` or `#ffffff` hairline around photography, giving a "contained Polaroid" feel.
- **Full-bleed**: only within the color-block tiles, where the image runs to the padded edge of the accent fill.
- **Hover**: static — no zoom, no scale, no opacity shift. The headline below is the only interactive response.
- **Lazy loading**: `loading="lazy"` on everything below the first fold; eager on the masthead hero only.

### StoryStream Timeline Item (Distinctive)

- Vertical rail line (1px `#3d00bf` or `#ffffff` on `#131313`)
- Mono timestamp on the left in PolySans Mono 11px / UPPERCASE
- Pill-cornered body card (20px radius) with kicker, headline, and optional deck
- Stacked vertically with 12–16px gap, the rail continuing between them
- Often interleaved with full-bleed accent tiles that "break" the timeline rhythm for emphasis

## 5. Layout Principles

### Spacing System
- **Base unit**: 8px.
- **Scale**: 1, 2, 4, 5, 6, 8, 9, 10, 12, 14, 15, 16, 20, 24, 25px.
- **Section padding**: 32–64px vertical between major feed sections. StoryStream items themselves are tighter — 12–16px gaps.
- **Card padding**: 20–32px interior. Feature cards expand to 40–48px.
- **Inline spacing**: kickers sit ~6–10px above headlines; headlines sit ~10–14px above decks; timestamps sit ~6–8px below decks.
- **Micro-scale**: The 2/4/5/6/9/10px values are used inside buttons, pills, and tight label clusters, not in the editorial grid.

### Grid & Container
- **Max width**: ~1280–1300px (dembrandt detected breakpoints at 1200/1280/1300).
- **Column patterns**: a 12-column underlying grid that resolves into 3-column hero + 1-column StoryStream rail + feature panels. The homepage feels freeform because color-block tiles frequently span 2–3 columns on a whim.
- **Container padding**: 24px mobile / 48px desktop on the outer edges.
- **Gutters**: 16–24px between columns, tighter (8–12px) inside StoryStream items.

### Whitespace Philosophy
The Verge treats whitespace like a club DJ treats silence — as a dramatic reset between loud moments. The canvas is so dark and the accents are so saturated that even 32px of empty `#131313` between two tiles acts as a palette cleanser. The page is not airy like Apple or Stripe; it's **paced**, with loud hazard-color blocks interrupting stretches of near-black. Whitespace carries the rhythm, not the elegance.

### Border Radius Scale
- **2px** — inputs, small badges (feels like a typewriter tag)
- **3px** — inline images (just enough to soften against the canvas)
- **4px** — nested card images and small button variants
- **20px** — standard pill cards and color-block tiles
- **24px** — feature tile radius and primary button pill
- **30px** — large promotional buttons
- **40px** — outlined CTA pills (the loudest pill in the system)
- **50%** — avatar circles, icon buttons, and certain round badges

Eight discrete radius values — a **lot** for a single site. This is deliberate: the rhythm between 2px typewriter tags, 20px pill cards, and 40px outlined buttons creates a "nested scale" feel where every component announces its hierarchy through its corners.

## 6. Depth & Elevation

| Level | Treatment | Use |
|---|---|---|
| 0 | No border, no shadow | Default `#131313` canvas text |
| 1 | `rgba(0,0,0,0) 0px 0px 0px 0px inset` (placeholder) | Reset state for interactive elements |
| 2 | `1px solid #ffffff` or `#313131` hairline | Image frames and quiet card outlines |
| 3 | `1px solid #3cffd0` hairline | Active button outlines, focused story tiles |
| 4 | `1px solid #5200ff` hairline | Promotional/alternate state outlines |
| 5 | `rgba(0, 0, 0, 0.33) 0px 0px 0px 1px` | The single "atmospheric" ring — applied to layered cards |
| 6 | `0px -1px 0px 0px inset` (mint/black/white) | Active tab underline — a signature Verge move |
| 7 | Saturated accent fill (`#3cffd0`, `#5200ff`, white, yellow, pink) | Story-tile elevation via color, not shadow |

The Verge's depth philosophy is **color-as-elevation**. When something needs to stand out, it doesn't get a shadow — it gets a mint fill or a 1px hazard-color border. There are 14 shadow entries in the extracted tokens, but all of them are either inset underlines (0px -1px inset) or near-transparent 1px rings — none of them are traditional elevation shadows. The `#131313` canvas stays perfectly flat throughout, and hierarchy is carried by color saturation.

### Decorative Depth
- **1px inset underline** on active tabs/nav links (mint, black, or white depending on context)
- **Subtle `rgba(0, 0, 0, 0.33)` 1px ring** on stacked cards — the only effect that faintly resembles a shadow
- **No gradients, no glows, no atmospheric blurs** anywhere. The hazard-tape aesthetic would break if anything faded softly.

## 7. Do's and Don'ts

### Do
- **Do** use `#131313` as the canvas for every view. There is no light mode.
- **Do** use Jelly Mint (`#3cffd0`) and Verge Ultraviolet (`#5200ff`) as hazard accents — buttons, borders, active states, and saturated color-block tiles.
- **Do** use Manuka exclusively at 60px+ for hero headlines. Treat anything smaller as a bug.
- **Do** round everything: 20px for cards, 24px for feature cards, 30–40px for pill buttons.
- **Do** use PolySans Mono for UPPERCASE labels, timestamps, kickers, and button text. Lowercase mono doesn't exist here.
- **Do** apply 1.5–1.9px letter-spacing to every ALL-CAPS label — this is a Verge signature.
- **Do** use saturated color-block tiles (mint, purple, yellow, pink, orange, white) to elevate a story — never a drop shadow.
- **Do** use `#3860be` (deep link blue) as the hover color on every link, regardless of base color.
- **Do** apply the StoryStream timeline rail (1px dashed/solid `#3d00bf` or white) on feed views.
- **Do** use thin-weight (300) PolySans at 19–20px with 1.9px tracking for "fashion-whisper" capitalized eyebrows — the contrast with the 107px Manuka shout is the whole voice.

### Don't
- **Don't** use a light background. The dark canvas is the product.
- **Don't** add `box-shadow` for elevation. Use 1px borders or saturated accent fills instead.
- **Don't** use square corners. Every interactive and content container is rounded.
- **Don't** use Manuka for UI, buttons, or body copy. It's strictly display.
- **Don't** use lowercase mono. PolySans Mono is always UPPERCASE.
- **Don't** let mint and ultraviolet appear as background washes — they're hazard accents, not canvas tints.
- **Don't** use gradients anywhere. The system is solid color blocks only.
- **Don't** introduce new accent colors outside the declared mint / purple / yellow / pink / orange tile palette.
- **Don't** pair Manuka with FK Roman Standard in the same headline cluster — Manuka is the only display shout, serif pulls are reserved for body moments.
- **Don't** use `#3cffd0` text on a `#131313` background at under 16px — the contrast vibrates at small sizes.

## 8. Responsive Behavior

### Breakpoints

| Name | Width | Key Changes |
|---|---|---|
| Small Mobile | <400px | Single column, Manuka hero scales down to ~48–54px, StoryStream rail collapses to inline timestamps |
| Mobile | 400–549px | Single column, color-block tiles stack full-width, nav is a hamburger drawer |
| Large Mobile | 550–767px | Still single column but padding opens up, tile radii stay at 20px |
| Tablet | 768–1023px | 2-column StoryStream with feature card spanning, wordmark shrinks ~50% |
| Small Desktop | 1024–1179px | Full 3–4 column editorial grid, mint pill CTA restored to nav |
| Desktop | 1180–1299px | Max padding, Manuka wordmark at full hero scale |
| Large Desktop | ≥1300px | Container caps at ~1280–1300px, whitespace expands at the margins, no further scaling |

The dembrandt sweep detected 26 intermediate breakpoints (1300 → 1280 → 1200 → 1181 → 1180 → 1179 → 1024 → 1023 → 901 → 900 → 897 → 896 → 890 → 769 → 768 → 620 → 605 → 600 → 550 → 549 → 530 → 426 → 425 → 400 → 320). The Verge tunes its grid at virtually every major device boundary — an unusually aggressive responsive strategy.

### Touch Targets
- Primary pill buttons are ~44px minimum height (10px vertical padding + 16px text + 2px border) — meets WCAG AA.
- Mono uppercase nav links are smaller (~28–32px tall) — for derivative work, pad to 44px on mobile.
- Circle icon buttons are 40–44px circles, touch-friendly.

### Collapsing Strategy
- **Nav**: wordmark scales from hero (Manuka 60–107px) to ~24–32px on mobile. Category links collapse to a hamburger drawer below 900px.
- **Grid**: 4-col → 3-col → 2-col → 1-col. Feature cards that span 2 columns on desktop reflow to full-width single-column on mobile.
- **Spacing**: section padding tightens from 64px → 32px → 20px. Tile interior padding tightens from 32px → 20px.
- **Type**: Manuka hero scales from 107px to ~48–54px on mobile. PolySans headlines scale from 34px → 24px. Mono labels stay pinned at 11–12px (they don't shrink further or they become unreadable).
- **Color tiles**: accent story blocks never lose saturation on mobile — they just reflow to full width.

### Image Behavior
- Responsive raster via `srcset`, aspect ratios preserved.
- No art-direction swaps — same crop scales across all viewports.
- `loading="lazy"` on everything below the fold, `eager` on the masthead hero.
- Images inside color-block tiles inherit the tile's inner radius (4px or 20px nested).

## 9. Agent Prompt Guide

### Quick Color Reference
- **Primary CTA**: "Jelly Mint (`#3cffd0`)"
- **Background (Canvas)**: "Canvas Black (`#131313`)"
- **Accent (Secondary Hazard)**: "Verge Ultraviolet (`#5200ff`)"
- **Heading Text**: "Hazard White (`#ffffff`)"
- **Body Text**: "Hazard White (`#ffffff`)" (primary) or "Muted Text (`#e9e9e9`)"
- **Secondary Text / Metadata**: "Secondary Text (`#949494`)"
- **Card Border**: "Hazard White (`#ffffff`)" hairline on dark, "Console Mint Border (`#309875`)" on mint variants
- **Link Hover**: "Deep Link Blue (`#3860be`)"

### Example Component Prompts
1. *"Create a StoryStream timeline item on a `#131313` canvas: a 20px-radius rectangle with a 1px solid `#ffffff` border, a PolySans Mono 11px / 600 / UPPERCASE / 1.1px tracking timestamp on the left rail, a 12px PolySans UPPERCASE kicker in mint (`#3cffd0`), and a 24px / 700 PolySans headline in white below. No shadow, no lift — hover only shifts the headline color to `#3860be`."*
2. *"Design a primary subscribe button with a Jelly Mint (`#3cffd0`) fill, black text in PolySans Mono 12px / 600 / UPPERCASE / 1.5px tracking, 24px border radius, 10px × 24px padding. Hover state shifts to `rgba(255, 255, 255, 0.2)` background with a 1px `#c2c2c2` ring shadow, 180ms ease."*
3. *"Build a feature hero with a 107px Manuka 900 headline in white with 1.07px letter-spacing and 0.80 line-height, a thin-weight 300 PolySans 20px capitalized kicker above with 1.9px tracking, on a `#131313` canvas with 64px vertical padding."*
4. *"Create a color-block accent tile filled with Verge Ultraviolet (`#5200ff`) at 0.9 alpha, 24px border radius, white text, a PolySans Mono 11px UPPERCASE category label with 1.5px tracking at the top, and a 32px PolySans 400 capitalized headline with 0.32px tracking below."*
5. *"Design a dark slate secondary button with a `#2d2d2d` background, `#e9e9e9` PolySans 16px text, 24px radius pill shape, 10px × 24px padding. Hover matches the primary button — translucent white `rgba(255, 255, 255, 0.2)` bg with black text."*

### Iteration Guide
When refining existing screens generated with this design system:
1. **Audit the canvas.** If you see a light background anywhere on the homepage, flatten it to `#131313`. There is no light mode.
2. **Audit corners.** Every rectangle should land on 2/3/4/20/24/30/40px or 50%. Square corners break the voice.
3. **Audit shadows.** Strip every `box-shadow` that isn't a 1px inset underline or a 1px hazard-color border. The Verge uses color for elevation, not shadow.
4. **Audit type roles.** Manuka only ≥60px. PolySans Mono only UPPERCASE. PolySans 300 at 19–20px should have 1.9px tracking. FK Roman only for body/magazine moments, never UI.
5. **Audit accent usage.** Mint and ultraviolet should appear as hazard accents — buttons, 1px borders, active underlines, saturated tile fills. If they're appearing as background washes or gradient fades, correct to solid blocks.
6. **Audit labels.** Every kicker, timestamp, category tag, and button label should be ALL CAPS with 1.1–1.9px letter-spacing. Missing tracking = missing voice.
7. **Audit link hover.** Every link, regardless of its base color, should hover to `#3860be` deep link blue with no underline. Any other hover color is drift.


---

## Brand: `wired`

---
version: alpha
name: Wired-Inspired-design-analysis
description: An inspired interpretation of Wired's design language — a flagship technology-magazine brand whose surface is a strict editorial duet of stark black wordmark on white canvas, anchored by a tall narrow custom display serif for hero headlines, a humanist serif body face for long-form reading, and a clean sans face for metadata; layout reads like a printed magazine ported to the web with very little marketing chrome.

colors:
  primary: "#000000"
  on-primary: "#ffffff"
  ink: "#000000"
  ink-soft: "#1a1a1a"
  body: "#757575"
  hairline: "#e0e0e0"
  canvas: "#ffffff"
  canvas-soft: "#f5f5f5"
  link: "#057dbc"

typography:
  display-hero:
    fontFamily: WiredDisplay, "Times New Roman", Georgia, serif
    fontSize: 64px
    fontWeight: 400
    lineHeight: 59.52px
    letterSpacing: -0.5px
  display-lg:
    fontFamily: WiredDisplay, "Times New Roman", Georgia, serif
    fontSize: 48px
    fontWeight: 400
    lineHeight: 50.4px
    letterSpacing: -0.4px
  display-md:
    fontFamily: WiredDisplay, "Times New Roman", Georgia, serif
    fontSize: 32px
    fontWeight: 400
    lineHeight: 35.2px
    letterSpacing: -0.3px
  display-sm:
    fontFamily: WiredDisplay, "Times New Roman", Georgia, serif
    fontSize: 26px
    fontWeight: 400
    lineHeight: 28.08px
  display-xs:
    fontFamily: Apercu, "Helvetica Neue", Helvetica, Arial, sans-serif
    fontSize: 20px
    fontWeight: 700
    lineHeight: 24px
    letterSpacing: -0.28px
  body-serif-lg:
    fontFamily: BreveText, Georgia, "Times New Roman", serif
    fontSize: 19px
    fontWeight: 400
    lineHeight: 27.93px
    letterSpacing: 0.108px
  body-serif-md:
    fontFamily: BreveText, Georgia, "Times New Roman", serif
    fontSize: 16px
    fontWeight: 400
    lineHeight: 24px
    letterSpacing: 0.09px
  body-md:
    fontFamily: Apercu, "Helvetica Neue", Helvetica, Arial, sans-serif
    fontSize: 17px
    fontWeight: 400
    lineHeight: 20px
  body-md-strong:
    fontFamily: Apercu, "Helvetica Neue", Helvetica, Arial, sans-serif
    fontSize: 17px
    fontWeight: 700
    lineHeight: 22px
    letterSpacing: -0.144px
  body-sm:
    fontFamily: Apercu, "Helvetica Neue", Helvetica, Arial, sans-serif
    fontSize: 14px
    fontWeight: 400
    lineHeight: 18px
    letterSpacing: 0.4px
  body-sm-strong:
    fontFamily: Apercu, "Helvetica Neue", Helvetica, Arial, sans-serif
    fontSize: 14px
    fontWeight: 700
    lineHeight: 18px
    letterSpacing: 0.4px
  byline:
    fontFamily: BreveText, Georgia, "Times New Roman", serif
    fontSize: 12.73px
    fontWeight: 700
    lineHeight: 28px
    letterSpacing: 0.108px
  caption:
    fontFamily: Apercu, "Helvetica Neue", Helvetica, Arial, sans-serif
    fontSize: 12px
    fontWeight: 400
    lineHeight: 16px
  button-md:
    fontFamily: Apercu, "Helvetica Neue", Helvetica, Arial, sans-serif
    fontSize: 16px
    fontWeight: 700
    lineHeight: 20px
    letterSpacing: 0.3px

rounded:
  none: 0px
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
  4xl: 48px

components:
  nav-bar:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-sm-strong}"
    padding: "{spacing.md} {spacing.xl}"
  nav-link:
    textColor: "{colors.ink}"
    typography: "{typography.body-sm-strong}"
  button-primary:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.button-md}"
    rounded: "{rounded.none}"
    padding: "{spacing.md} {spacing.xl}"
  button-outline:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    borderColor: "{colors.ink}"
    typography: "{typography.button-md}"
    rounded: "{rounded.none}"
    padding: "{spacing.md} {spacing.xl}"
  button-icon-circular:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    rounded: "{rounded.full}"
    padding: "{spacing.sm}"
  text-input:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    borderColor: "{colors.ink}"
    typography: "{typography.body-md}"
    rounded: "{rounded.none}"
    padding: "{spacing.md} {spacing.lg}"
  story-card-large:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.display-md}"
    padding: "{spacing.lg}"
  story-card:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.display-xs}"
    padding: "{spacing.md}"
  story-row:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    borderColor: "{colors.hairline}"
    typography: "{typography.body-md-strong}"
    padding: "{spacing.lg} 0"
  category-eyebrow:
    textColor: "{colors.ink}"
    typography: "{typography.body-sm-strong}"
  byline-row:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.body}"
    typography: "{typography.byline}"
  hero-band:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.display-hero}"
    padding: "{spacing.4xl} {spacing.xl}"
  masthead-band:
    backgroundColor: "{colors.canvas}"
    textColor: "{colors.ink}"
    typography: "{typography.body-md-strong}"
    padding: "{spacing.md} {spacing.xl}"
  hairline-divider:
    borderColor: "{colors.hairline}"
  footer:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.on-primary}"
    typography: "{typography.body-sm}"
    padding: "{spacing.4xl} {spacing.xl}"

  # ─── Examples (illustrative) — auto-derived; resolve any TO_FILL markers below ───
  ex-pricing-tier:
    description: "Default Pricing tier card. Re-uses feature-card chrome with brand canvas-soft surface."
    backgroundColor: "{colors.canvas-soft}"
    textColor: "{colors.ink}"
    borderColor: "{colors.hairline}"
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
    backgroundColor: "{colors.canvas-soft}"
    rounded: "{rounded.none}"
    padding: "{spacing.lg}"
  ex-cart-drawer:
    description: "Subscription summary — re-purposed for SaaS / B2B (line items per add-on, not literal cart)."
    backgroundColor: "{colors.canvas}"
    rounded: "{rounded.none}"
    padding: "{spacing.lg}"
    item-divider: "{colors.hairline}"
  ex-app-shell-row:
    description: "Sidebar nav row inside the App Shell example. Active state uses brand primary as the indicator."
    backgroundColor: "{colors.canvas}"
    activeIndicator: "{colors.primary}"
    rounded: "{rounded.none}"
    padding: "{spacing.md} {spacing.lg}"
  ex-data-table-cell:
    description: "Default data-table th + td chrome. Header uses mono-caps eyebrow typography; body uses body-sm."
    headerBackground: "{colors.canvas-soft}"
    headerTypography: "{typography.caption}"
    bodyTypography: "{typography.body-sm}"
    cellPadding: "{spacing.md} {spacing.lg}"
    rowBorder: "{colors.hairline}"
  ex-auth-form-card:
    description: "Sign-in / sign-up card. Re-uses feature-card chrome with text-input primitives inside."
    backgroundColor: "{colors.canvas-soft}"
    rounded: "{rounded.none}"
    padding: "{spacing.lg}"
  ex-modal-card:
    description: "Modal dialog surface — same chrome as feature-card with elevated shadow."
    backgroundColor: "{colors.canvas}"
    rounded: "{rounded.none}"
    padding: "{spacing.lg}"
  ex-empty-state-card:
    description: "Empty-state illustration frame."
    backgroundColor: "{colors.canvas-soft}"
    rounded: "{rounded.none}"
    padding: "{spacing.3xl}"
    captionTypography: "{typography.body-md}"
  ex-toast:
    description: "Toast notification surface — feature-card shape + medium shadow."
    backgroundColor: "{colors.canvas}"
    rounded: "{rounded.none}"
    padding: "{spacing.md} {spacing.lg}"
    typography: "{typography.body-sm}"

---


## Overview

Wired is the flagship technology-magazine brand under Condé Nast — and the web surface refuses to dress itself as a SaaS marketing site. The page is unmistakably an editorial product: a white canvas, a strict black wordmark in the brand's proprietary `WiredDisplay` (a tall, narrow, high-contrast serif used at 64 px), and stacked story cards that read as a printed magazine grid ported to the screen. There is no atmospheric gradient, no decorative chrome, no chromatic accent — the brand's only colour beyond the black-and-white duet is the small `{colors.link}` (`#057dbc`) used for inline body links inside long-form articles.

Type carries the entire identity. Three families ladder the system: `WiredDisplay` (the proprietary high-contrast serif) for hero / section headlines; `BreveText` (a humanist serif) for long-form body and bylines; and `Apercu` (a humanist sans) for metadata, captions, eyebrow tags, and buttons. The pairing is editorial-grade: serifs for narrative, sans for navigation and structural labels.

Buttons are square. The brand uses `{rounded.none}` 0 px corners across the entire UI — newsletter sign-ups, login forms, "Read more" CTAs all render as sharp rectangles. The only circular shape is the `button-icon-circular` used for social-share affordances. There are no soft drop-shadows; the brand uses hairline borders for elevation when needed.

**Key Characteristics:**
- A strict black-and-white duet with no chromatic accent except the inline link blue `{colors.link}`. The brand reads as a printed magazine.
- Three-face typographic system — `WiredDisplay` serif for display, `BreveText` serif for body, `Apercu` sans for metadata and buttons.
- Square buttons (`{rounded.none}`) — the brand never softens corners on interactive elements.
- A magazine-style story grid: large feature card at top, two-up secondary, then a vertical stack of bylined story rows separated by `{colors.hairline}` 1 px dividers.
- The brand's only signature decorative move is the **masthead band** — a thin black strip with the wordmark centred, no other decoration.
- A near-black `{colors.ink}` (`#000000`) footer band, no graphics, just text columns and the wordmark repeating.

## Colors

### Brand & Accent
- **Ink Black** (`{colors.primary}` — `#000000`): The brand's only "accent." Used for wordmark, headlines, CTAs, footer fill. Pure black, never softened.

### Surface
- **Canvas** (`{colors.canvas}` — `#ffffff`): The default page background.
- **Canvas Soft** (`{colors.canvas-soft}` — `#f5f5f5`): Rare tint used for the comment-section background and search-result row hover states (not in the main page rhythm).
- **Hairline** (`{colors.hairline}` — `#e0e0e0`): 1 px dividers between story rows. The brand's only "line."

### Text
- **Ink** (`{colors.ink}` — `#000000`): Every headline, every body paragraph in BreveText.
- **Ink Soft** (`{colors.ink-soft}` — `#1a1a1a`): A near-black variant used for caption-strong / footer link emphasis.
- **Body** (`{colors.body}` — `#757575`): Secondary metadata — bylines, timestamps, supporting body lines.

### Semantic
The brand operates with one inline link colour and no separate error / success / warning palette in its marketing surface. Validation cues on form pages use the ink black + body grey hierarchy.

- **Link** (`{colors.link}` — `#057dbc`): The inline body-link blue. Used only inside long-form article body copy, never on UI buttons or navigation.

## Typography

### Font Family
Three families ladder the system:
1. **WiredDisplay** — the proprietary tall-narrow high-contrast serif used exclusively for display headlines (64 px hero, scaling down to 26 px sub-display). The brand's most-recognisable typographic signature.
2. **BreveText** — the proprietary humanist serif used for long-form body, bylines, and editorial captions. Used at 16 – 19 px line-height 1.45 – 1.50 for comfortable reading density.
3. **Apercu** — a humanist sans used for nav, button labels, category eyebrows, metadata, and captions. Weights 400 / 700.

Inter is loaded as a fourth fallback face for embedded utility surfaces (the comment section, account pages) but does not appear on the main marketing / article surface.

### Hierarchy

| Token | Size | Weight | Line Height | Letter Spacing | Use |
|---|---|---|---|---|---|
| `{typography.display-hero}` | 64px | 400 | 59.5px | -0.5px | Cover-story headline. |
| `{typography.display-lg}` | 48px | 400 | 50.4px | -0.4px | Major section / feature headlines. |
| `{typography.display-md}` | 32px | 400 | 35.2px | -0.3px | Story-card large variant. |
| `{typography.display-sm}` | 26px | 400 | 28px | 0 | Sub-display headings inside long-form articles. |
| `{typography.display-xs}` | 20px | 700 | 24px | -0.28px | Sans (Apercu) display micro-headings for category callouts. |
| `{typography.body-serif-lg}` | 19px | 400 | 27.93px | 0.108px | Lead paragraph of an article (BreveText). |
| `{typography.body-serif-md}` | 16px | 400 | 24px | 0.09px | Default article body (BreveText). |
| `{typography.body-md}` | 17px | 400 | 20px | 0 | Sans body (Apercu) for nav / metadata. |
| `{typography.body-md-strong}` | 17px | 700 | 22px | -0.144px | Bold sans body. |
| `{typography.body-sm}` | 14px | 400 | 18px | 0.4px | Secondary sans body. |
| `{typography.body-sm-strong}` | 14px | 700 | 18px | 0.4px | Bold caption / nav-link. |
| `{typography.byline}` | 12.73px | 700 | 28px | 0.108px | Article byline (BreveText). |
| `{typography.caption}` | 12px | 400 | 16px | 0 | Fine print, image captions. |
| `{typography.button-md}` | 16px | 700 | 20px | 0.3px | Button label. |

### Principles
- **Serif for narrative, sans for structure.** The serif faces never carry button labels or nav text; the sans face never carries article body.
- **Display weight 400** — the proprietary WiredDisplay reads as elegant by virtue of its thin-tall-narrow design at default weight, not via weight 700+.
- **Bylines use BreveText weight 700 with relaxed line-height 2.2.** The vertical breathing is part of the editorial signature.

### Note on Font Substitutes
The three proprietary faces have no exact substitutes. Best open-source approximations:
- **WiredDisplay** — *Playfair Display* weight 400 at large display sizes captures the high-contrast didone feel, though wider than the brand's tall-narrow proportions.
- **BreveText** — *Lora* or *Source Serif Pro* at 16 – 19 px.
- **Apercu** — *Inter* or *Manrope* weights 400 / 700.

## Layout

### Spacing System
- **Base unit**: 4 px.
- **Tokens**: `{spacing.xxs}` 2 px · `{spacing.xs}` 4 px · `{spacing.sm}` 8 px · `{spacing.md}` 12 px · `{spacing.lg}` 16 px · `{spacing.xl}` 20 px · `{spacing.2xl}` 24 px · `{spacing.3xl}` 32 px · `{spacing.4xl}` 48 px.
- **Section padding**: hero / story grid use `{spacing.4xl}` 48 px top/bottom on desktop.
- **Story row padding**: `{spacing.lg}` 16 px vertical between bylined story rows.

### Grid & Container
- Marketing content uses a wide container (~1400 px max).
- Cover-story grid: 1 large hero + 2-up secondary stories + vertical stack.
- Story-row stack: full-width single column with hairline dividers.

### Responsive Strategy

#### Breakpoints

| Name | Width | Key Changes |
|---|---|---|
| Mobile | < 768px | Cover hero 64→40 px; all grids 1-up; hamburger nav. |
| Tablet | 768–1023px | 2-up secondary story grid. |
| Desktop | ≥ 1024px | Full magazine grid. |

#### Touch Targets
Button-primary renders ~44 px tall (12 vertical padding + 20 line). WCAG AAA at all widths.

#### Collapsing Strategy
- Nav: full link row + Subscribe CTA at desktop. Hamburger at mobile.
- Magazine grid: hero stays full-width; 2-up secondary drops to 1-up at mobile.
- Story rows: stay single-column at all viewports.

#### Image Behavior
- Cover images: full-bleed 16:9 hero / 4:3 secondary.
- Article body images: full-width inside the article column.
- Author avatars: small inline circular crops next to bylines.

## Elevation & Depth

| Level | Treatment | Use |
|---|---|---|
| Level 0 — Flat | No shadow, no border. | Default — almost every surface lives at this level. |
| Level 1 — Hairline | 1 px solid `{colors.hairline}` border. | Story-row dividers, input borders. |
| Level 2 — Heavy Black Border | 2 px solid `{colors.ink}` border. | Subscribe CTA on certain campaign moments. |

The brand uses no drop-shadows. Surface contrast and hairline borders carry all visual hierarchy.

## Shapes

### Border Radius Scale

| Token | Value | Use |
|---|---|---|
| `{rounded.none}` | 0px | Every interactive shape — buttons, inputs, cards. The brand's signature square geometry. |
| `{rounded.full}` | 9999px | Circular icon containers only (social-share, account avatar). |

### Photography Geometry
- Cover stories: 16:9 hero, edge-to-edge.
- Secondary story cards: 4:3 thumbnails.
- Article body images: native aspect, full column width.
- Bylines / avatars: circular `{rounded.full}` 28 px crops.

## Components

### Buttons

**`button-primary`** — the square black CTA.
- Background `{colors.primary}`, text `{colors.on-primary}`, label `{typography.button-md}` (Apercu 16 px / 700 / 0.3 px tracking), padding `{spacing.md} {spacing.xl}`, shape `{rounded.none}` 0 px.

**`button-outline`** — the white outline CTA.
- Background `{colors.canvas}`, text `{colors.ink}`, 1 px solid `{colors.ink}` border, same typography / padding / shape.

**`button-icon-circular`** — the circular share-icon button.
- Background `{colors.canvas}`, ink icon, shape `{rounded.full}`.

### Cards & Containers

**`story-card-large`** — the cover-story card with `{typography.display-md}` headline.
- Background `{colors.canvas}`, text `{colors.ink}`, padding `{spacing.lg}`. No border — the card lives on the canvas with the photo doing the work.

**`story-card`** — the secondary story card.
- Background `{colors.canvas}`, text `{colors.ink}`, padding `{spacing.md}`. Photo at top, sans display heading + body lead below.

**`story-row`** — the bylined story list row.
- Background `{colors.canvas}`, text `{colors.ink}`, 1 px solid `{colors.hairline}` bottom border, body in `{typography.body-md-strong}`, padding `{spacing.lg}` 0.

### Inputs & Forms

**`text-input`** — the standard text input.
- Background `{colors.canvas}`, text `{colors.ink}`, 1 px solid `{colors.ink}` border, body in `{typography.body-md}`, padding `{spacing.md} {spacing.lg}`, shape `{rounded.none}`.

### Navigation

**`nav-bar`** — the top nav, light by default.
- Background `{colors.canvas}`, text `{colors.ink}`, padding `{spacing.md} {spacing.xl}`. Layout: hamburger left, masthead centre, Subscribe right.

**`nav-link`** — link items inside nav.
- Text `{colors.ink}`, set in `{typography.body-sm-strong}` (Apercu 14 / 700).

**`footer`** — the black footer band.
- Background `{colors.primary}`, text `{colors.on-primary}`, padding `{spacing.4xl} {spacing.xl}`. Body in `{typography.body-sm}` (Apercu 14 / 400). Footer column eyebrows in `{typography.body-sm-strong}`.

### Signature Components

**`hero-band`** — the white hero band hosting the cover-story.
- Background `{colors.canvas}`, text `{colors.ink}`, padding `{spacing.4xl} {spacing.xl}`. Cover headline in `{typography.display-hero}` (WiredDisplay 64 px).

**`masthead-band`** — the thin top band with the wordmark.
- Background `{colors.canvas}`, text `{colors.ink}`, padding `{spacing.md} {spacing.xl}`. The wordmark sits centred; flanked by section nav.

**`category-eyebrow`** — the small uppercase category label above story headlines.
- Text `{colors.ink}`, set in `{typography.body-sm-strong}` (Apercu 14 / 700 — though some campaigns use ALL CAPS via CSS).

**`byline-row`** — the article byline strip.
- Background `{colors.canvas}`, text `{colors.body}`, body in `{typography.byline}` (BreveText 12.73 / 700 / line-height 2.2). Includes an author avatar + name + date.

**`hairline-divider`** — the 1 px line between story rows.
- 1 px solid `{colors.hairline}`.

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
- Reserve `{colors.primary}` black for the wordmark, every CTA, and the footer fill. The brand IS the strict black-on-white duet.
- Set hero headlines in `{typography.display-hero}` (WiredDisplay 64 px weight 400). The proprietary serif IS the brand's typographic signature.
- Use `{rounded.none}` 0 px on every button and form input. The brand reads as a printed magazine — square corners are non-negotiable.
- Pair WiredDisplay (serif display) with BreveText (serif body) and Apercu (sans labels). Three faces, three roles.
- Render story rows with `{colors.hairline}` 1 px dividers — the brand's only elevation cue.

### Don't
- Don't introduce a chromatic brand accent. The link blue is reserved for inline body links inside articles only.
- Don't round button corners. The brand never softens its rectangular geometry.
- Don't drop a soft drop-shadow on cards. Surface contrast and hairlines carry elevation.
- Don't substitute the proprietary serif faces with a generic sans for display. The serif voice is the brand.
- Don't promote display weight beyond 400. The brand's elegance is in the typeface design, not bold weight.


---

