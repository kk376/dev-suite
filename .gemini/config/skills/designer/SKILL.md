---
name: designer
description: >-
  Universal Master Design & UI/UX Architecture Standard. Incorporates 74 production
  design systems from awesome-design-md across 8 archetypes, complete design token
  engines (OKLCH, CSS, Tailwind), component blueprints, fluid layout architecture,
  animation physics, WCAG AAA accessibility, and Core Web Vitals performance.
---

# Universal Designer Skill

A complete, production-grade UI/UX design and frontend architecture standard. Built from the ground up by synthesizing **74 real-world design systems** from top tech companies, fintechs, creative tools, automotive manufacturers, and media giants.

---

## The 8 Design Archetypes & 74 Brands

Choose a brand or aesthetic archetype that perfectly matches your product's soul and user expectations:

| Archetype | Key Vibe & Atmosphere | Representative Brands (74 Total) | Reference File |
| :--- | :--- | :--- | :--- |
| **1. AI & DevTools** | High-efficiency dark mode, precision monospace, command palettes, subtle glowing borders | `linear.app`, `raycast`, `cursor`, `claude`, `warp`, `mintlify`, `ollama`, `replicate`, `together.ai`, `x.ai`, `mistral.ai`, `nvidia`, `cohere`, `lovable`, `minimax`, `opencode.ai`, `voltagent` | [`01_ai_and_devtools.md`](./references/01_ai_and_devtools.md) |
| **2. Big Tech & Enterprise** | Structural clarity, clean hierarchy, universal accessibility, rock-solid typography | `apple`, `meta`, `ibm`, `hashicorp`, `hp`, `mastercard`, `uber`, `vodafone` | [`02_big_tech_and_enterprise.md`](./references/02_big_tech_and_enterprise.md) |
| **3. Cloud, Infra & DB** | Dense data tables, metric charts, log consoles, glowing telemetry, dark theme precision | `vercel`, `supabase`, `sentry`, `posthog`, `resend`, `mongodb`, `clickhouse`, `sanity`, `expo`, `webflow`, `composio` | [`03_cloud_infra_and_databases.md`](./references/03_cloud_infra_and_databases.md) |
| **4. Fintech & Commerce** | Trustworthy neutrals, tabular financial data, secure payment flows, crisp micro-borders | `stripe`, `wise`, `revolut`, `shopify`, `coinbase`, `binance`, `kraken` | [`04_fintech_and_commerce.md`](./references/04_fintech_and_commerce.md) |
| **5. Productivity & SaaS** | Warm paper neutrals, modular block cards, drag-and-drop surfaces, delightful ergonomics | `notion`, `figma`, `framer`, `miro`, `slack`, `airtable`, `clay`, `cal`, `intercom`, `superhuman`, `zapier` | [`05_productivity_and_saas.md`](./references/05_productivity_and_saas.md) |
| **6. Media & Creative** | Bold editorial type, high-contrast imagery, dark immersive media canvases, audio waveforms | `theverge`, `wired`, `spotify`, `elevenlabs`, `runwayml`, `pinterest` | [`06_media_and_creative.md`](./references/06_media_and_creative.md) |
| **7. Consumer & Culture** | Human-centric layouts, warm vibrant accents, lifestyle cards, fluid touch-friendly UI | `airbnb`, `nike`, `starbucks` | [`07_consumer_and_culture.md`](./references/07_consumer_and_culture.md) |
| **8. Automotive, Aerospace & Retro** | Aerospace HUDs, race telemetry dials, carbon minimalism, luxury metallics, 90s/2000s retro | `tesla`, `spacex`, `ferrari`, `lamborghini`, `bugatti`, `bmw`, `bmw-m`, `renault`, `nintendo-2001`, `playstation`, `dell-1996` | [`08_automotive_aerospace_and_retro.md`](./references/08_automotive_aerospace_and_retro.md) |

---

## Core Pillars of Master Design

### 1. Token-Driven Design Foundations
Every interface is constructed from mathematically consistent, semantic design tokens:
- **Colors**: Perceptually uniform OKLCH / HSL scales with semantic bindings (`--bg-canvas`, `--bg-surface`, `--text-primary`, `--border-subtle`, `--accent-primary`).
- **Typography**: Fluid type scaling via CSS `clamp()`, negative letter-spacing on display headings (`-0.02em`), and relaxed body leading (`1.6`).
- **Spatial Rhythm**: Strict 8-point spatial grid (`4px`, `8px`, `12px`, `16px`, `24px`, `32px`, `48px`, `64px`, `96px`).

### 2. Modern Layout & Responsive Architecture
- **Auto-Fit Grids (Zero Media Queries)**: Product grids adapt fluidly using `repeat(auto-fit, minmax(min(100%, 300px), 1fr))`.
- **Container Queries**: Components adapt to their parent container dimensions (`container-type: inline-size`) rather than whole-viewport `@media` queries.
- **Hierarchical Z-Index Scale**: Clean tokenized elevation layers (`--z-base: 0`, `--z-elevated: 10`, `--z-sticky: 100`, `--z-modal: 1000`, `--z-toast: 1200`).

### 3. Component State Coverage (The 5 Essential States)
Every interactive component or data-fetching view must implement all 5 states:
1. **Initial / Idle**: Clean default appearance.
2. **Loading / Skeleton**: Layout-preserving shimmer skeletons that match final dimensions to eliminate Cumulative Layout Shift (CLS).
3. **Success / Populated**: Rendered data with optimal typographic rhythm.
4. **Empty**: Clear visual illustration, helpful copy, and a primary CTA.
5. **Error**: User-friendly explanation, non-technical recovery path, and a "Retry" button.

### 4. Animation Physics & Micro-Interactions
- **Hardware-Accelerated Properties**: Animate only `transform` and `opacity`. Never animate layout properties (`width`, `height`, `margin`, `top`, `left`).
- **Spring Physics**: Fast snappy response (`stiffness: 400`, `damping: 30`, `mass: 1`).
- **Reduced Motion Safety**: Always wrap animations in `@media (prefers-reduced-motion: reduce)` fallbacks.

### 5. Accessibility (WCAG AAA) & Core Web Vitals
- **Contrast**: Text contrast ratio $\ge 7:1$ for normal text and $\ge 4.5:1$ for large text.
- **Focus Rings**: 2px high-visibility focus offset rings on all interactive elements (`:focus-visible`).
- **Core Web Vitals**: LCP $< 1.2	ext{s}$, INP $< 100	ext{ms}$, CLS $= 0.00$.

---

## Detailed Reference Catalog

- [`00_brand_index_and_archetypes.md`](./references/00_brand_index_and_archetypes.md) - Comprehensive index and comparison matrix of all 74 brands.
- [`01_ai_and_devtools.md`](./references/01_ai_and_devtools.md) - AI & DevTools design systems (Linear, Raycast, Cursor, Claude, Warp, etc.).
- [`02_big_tech_and_enterprise.md`](./references/02_big_tech_and_enterprise.md) - Big Tech & Enterprise systems (Apple, Meta, IBM, HashiCorp, etc.).
- [`03_cloud_infra_and_databases.md`](./references/03_cloud_infra_and_databases.md) - Cloud & DB design systems (Vercel, Supabase, Sentry, PostHog, etc.).
- [`04_fintech_and_commerce.md`](./references/04_fintech_and_commerce.md) - Fintech & Commerce design systems (Stripe, Wise, Revolut, Shopify, etc.).
- [`05_productivity_and_saas.md`](./references/05_productivity_and_saas.md) - Productivity & SaaS systems (Notion, Figma, Framer, Slack, etc.).
- [`06_media_and_creative.md`](./references/06_media_and_creative.md) - Media & Creative systems (The Verge, Spotify, Wired, ElevenLabs, etc.).
- [`07_consumer_and_culture.md`](./references/07_consumer_and_culture.md) - Consumer systems (Airbnb, Nike, Starbucks).
- [`08_automotive_aerospace_and_retro.md`](./references/08_automotive_aerospace_and_retro.md) - Automotive & Retro systems (Tesla, SpaceX, Ferrari, Nintendo, PlayStation, Dell-96).
- [`09_universal_token_and_tailwind_engine.md`](./references/09_universal_token_and_tailwind_engine.md) - OKLCH formulas, CSS Variables, and Tailwind v3/v4 configurations.
- [`10_component_blueprints_and_recipes.md`](./references/10_component_blueprints_and_recipes.md) - Production-ready component recipes (Buttons, Inputs, Cards, Modals, Navbars).
- [`11_motion_and_microinteractions.md`](./references/11_motion_and_microinteractions.md) - Spring physics, easing curves, and Framer Motion code.
- [`12_accessibility_and_performance.md`](./references/12_accessibility_and_performance.md) - WCAG AAA rules, contrast verification, and performance checklist.
