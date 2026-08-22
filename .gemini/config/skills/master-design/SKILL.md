---
name: master-design
description: >-
  Universal Master Design & UI/UX Architecture Standard. Comprehensive
  protocol for web applications, design systems, responsive layouts,
  interactive desktop simulations, documentation sites, typography,
  micro-interactions, accessibility (WCAG AAA), and Core Web Vitals performance.
---

# Master Design: Universal UI/UX & Web Architecture Protocol

A unified engineering, architecture, and design standard for building modern web applications, design systems, documentation platforms, portfolio architectures, and interactive digital interfaces.

---

# Part 1: Design Tokens & System Foundations

A robust design system begins with mathematically sound, semantic tokens defined at the root layer.

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                          DESIGN TOKEN HIERARCHY                             │
├───────────────────────┬──────────────────────────┬──────────────────────────┤
│ 1. Global / Primitive │ 2. Semantic / Purpose    │ 3. Component-Scoped      │
│ --blue-500: #3b82f6   │ --color-primary: ...     │ --button-bg: ...         │
│ --space-4: 1rem (16px)│ --bg-surface: ...        │ --card-padding: ...      │
│ Raw values & scales.  │ Meaning & theme bindings.│ Concrete element tokens. │
└───────────────────────┴──────────────────────────┴──────────────────────────┘
```

## 1. Typography Engine & Fluid Scales
- **Fluid Type Scaling**: Avoid rigid pixel breakpoints for headers and hero typography. Use CSS `clamp()` to scale smoothly between mobile and ultra-wide viewports:
  ```css
  :root {
    --font-hero: clamp(2.5rem, 5vw + 1rem, 4.5rem);
    --font-h1: clamp(2.0rem, 3vw + 1rem, 3.0rem);
    --font-h2: clamp(1.5rem, 2vw + 0.75rem, 2.25rem);
    --font-body: clamp(1.0rem, 0.5vw + 0.875rem, 1.125rem);
  }
  ```
- **Font Pairing & Metrics**:
  - *Display / Headings*: High-character geometric or editorial sans (e.g. Inter, Outfit, Plus Jakarta Sans, General Sans).
  - *Body / Long-form*: High-legibility neutral sans with open apertures (e.g. Inter, Public Sans, System UI).
  - *Monospace / Code*: Tabular figures with clear glyph distinction (`0` vs `O`, `1` vs `l`, `I`) (e.g. JetBrains Mono, Fira Code).
- **Line Heights & Tracking**:
  - Headings: Tight line-height (`leading-tight`: `1.1`–`1.25`) with negative letter-spacing (`tracking-tight`: `-0.02em` to `-0.03em`).
  - Body: Relaxed line-height (`leading-relaxed`: `1.6`–`1.75`) with normal tracking (`0em`) for reading ergonomics.

## 2. Color Spaces, Dark Mode & Contrast
- **Modern Color Spaces (OKLCH / HSL)**: Prefer OKLCH for predictable perceived lightness across hue shifts:
  ```css
  :root {
    --color-primary: oklch(65% 0.22 260);
    --bg-canvas: oklch(98% 0.01 260);
    --bg-surface: oklch(100% 0 0);
    --text-primary: oklch(20% 0.02 260);
  }
  [data-theme="dark"], .dark {
    --bg-canvas: oklch(14% 0.01 260);
    --bg-surface: oklch(18% 0.015 260);
    --text-primary: oklch(95% 0.01 260);
  }
  ```
- **WCAG 2.1 AAA Contrast Target**:
  - Normal text ($< 18\text{pt}$): Contrast ratio $\ge 7:1$ against background.
  - Large text ($\ge 18\text{pt}$ or bold $\ge 14\text{pt}$): Contrast ratio $\ge 4.5:1$.
  - Interactive boundaries & focus rings: Contrast ratio $\ge 3:1$.

## 3. Spatial Rhythm & Spacing Scales
- Use an **8-point spatial grid** (with 4-point half-steps for compact micro-UI):
  - `4px` (half), `8px` (1), `12px` (1.5), `16px` (2), `24px` (3), `32px` (4), `48px` (6), `64px` (8), `96px` (12).
- Apply **layout breathing room**: Containers must have comfortable internal padding so content never crowds viewport boundaries.

---

# Part 2: Layout Engines & Modern CSS Architecture

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                          MODERN LAYOUT TOOLBOX                              │
├───────────────────────┬──────────────────────────┬──────────────────────────┤
│ CSS Grid              │ Flexbox                  │ Container Queries        │
│ 2D layouts, auto-fit  │ 1D distribution, inline  │ Component-level adaptive │
│ card grids, subgrids. │ alignments, navbars.     │ resizing without @media. │
└───────────────────────┴──────────────────────────┴──────────────────────────┘
```

## 1. Dynamic Auto-Fit Grid (Zero Media Queries)
Avoid fragile fixed-column breakpoints for product/card grids. Use `auto-fit` and `minmax()`:
```css
.card-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(min(100%, 320px), 1fr));
  gap: 1.5rem;
}
```

## 2. Container Queries for Modular Components
Components should adapt based on their parent container's width, not the whole viewport:
```css
.card-container {
  container-type: inline-size;
}

@container (min-width: 480px) {
  .card {
    display: flex;
    flex-direction: row;
    gap: 1.5rem;
  }
}
```

## 3. Hierarchical Z-Index Scale
Prevent z-index wars with an explicit system scale:
```css
:root {
  --z-base: 0;
  --z-elevated: 10;
  --z-sticky: 100;
  --z-drawer: 500;
  --z-modal-backdrop: 900;
  --z-modal: 1000;
  --z-popover: 1100;
  --z-toast: 1200;
  --z-tooltip: 1300;
}
```

---

# Part 3: Component Architecture & State Modeling

## 1. Deep Component Design
- **Single Seam Principle**: A component exposes a small, intuitive prop interface while encapsulating layout calculations, keyboard events, and theme variations.
- **Composition Over Boolean Explosion**: Use compound components (`<Card>`, `<Card.Header>`, `<Card.Body>`) instead of passing 20 boolean flags to one monolithic component.

## 2. Five Essential UI States
Every interactive component or data-fetching view must implement all 5 states:
1. **Initial / Idle**: Clean, uncluttered starting view.
2. **Loading / Skeleton**: Layout-preserving shimmer skeletons that match the final content dimensions exactly (prevents Cumulative Layout Shift).
3. **Success / Populated**: Rendered data with optimal spacing and typography.
4. **Empty**: Clear visual illustration, helpful message, and an immediate primary call-to-action button.
5. **Error**: User-friendly explanation, non-technical recovery instruction, and a "Retry" trigger.

---

# Part 4: Micro-Interactions, Motion & Canvas

## 1. Animation Physics & Timing
- **Hardware Acceleration**: Animate only `transform` and `opacity`. Never animate layout properties (`width`, `height`, `margin`, `top`, `left`) in interactive loops.
- **Natural Easing Curves**:
  - *Enter / Entrance*: `cubic-bezier(0.16, 1, 0.3, 1)` (snappy ease-out, duration 200–300ms).
  - *Exit / Dismiss*: `cubic-bezier(0.7, 0, 0.84, 0)` (accelerating ease-in, duration 150–200ms).
  - *Spring Physics* (Framer Motion): `stiffness: 400`, `damping: 30`, `mass: 1`.

## 2. Reduced Motion Accessibility
Always respect user system settings for vestibular safety:
```css
@media (prefers-reduced-motion: reduce) {
  *, ::before, ::after {
    animation-duration: 0.01ms !important;
    animation-iteration-count: 1 !important;
    transition-duration: 0.01ms !important;
    scroll-behavior: auto !important;
  }
}
```

## 3. Interactive Canvas & Background Systems
When rendering background particle fields, graphs, or interactive canvases:
- Use `requestAnimationFrame` with delta time calculation.
- Clean up animation frames, event listeners, and resize observers in component unmount / `useEffect` teardown.
- Pause canvas rendering when the tab is hidden (`document.visibilityState === 'hidden'`).

---

# Part 5: Web Applications & Desktop Simulators

For complex interactive applications (e.g. desktop environments, window managers, terminal emulators, dashboards):

## 1. Window Manager State Machine
- **Window Stack**: Array of open window objects `{ id, title, icon, zIndex, isMinimized, isMaximized, position, size }`.
- **Active Focus**: Clicking any window promotes its `zIndex` to the top of the stack.
- **Drag & Resize Boundaries**: Keep window headers inside viewport bounds (`Math.max(0, Math.min(x, window.innerWidth - width))`).

## 2. Terminal Emulation Architecture
- Clean command parser separating command name and flags.
- Command registry mapping input strings to pure handler functions returning rendered JSX output.
- History navigation via Up/Down arrow keys with a circular history buffer.

---

# Part 6: Documentation & Content Platforms

For documentation systems, knowledge bases, and content-driven web platforms:

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                       DOCUMENTATION PLATFORM LAYOUT                         │
├─────────────────┬─────────────────────────────────────────┬─────────────────┤
│ Left Sidebar    │ Main Reading Flow                       │ Right Sidebar   │
│ Category tree,  │ Breadcrumbs, H1 Title, Metadata badge,  │ "On this page"  │
│ search trigger, │ Content blocks, Code blocks with copy,  │ sticky TOC,     │
│ active page.    │ Callout alerts (Note/Tip/Warning).      │ feedback links. │
└─────────────────┴─────────────────────────────────────────┴─────────────────┤
│ Footer: Previous Page / Next Page pagination controls                       │
└─────────────────────────────────────────────────────────────────────────────┘
```

1. **Algorithmic Client-Side Search**: Instant fuzzy searching over indexed headings and body paragraphs.
2. **Code Snippets with 1-Click Copy**: Copy-to-clipboard button with visual checkmark feedback and clear language badges.
3. **Structured GitHub-Style Callouts**: Semantic styling for `Note`, `Tip`, `Important`, `Warning`, and `Caution` blocks.

---

# Part 7: Performance & Core Web Vitals Standard

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                          CORE WEB VITALS TARGETS                            │
├───────────────────────┬─────────────────────────┬───────────────────────────┤
│ Metric                │ Target Threshold        │ Optimization Strategy     │
├───────────────────────┼─────────────────────────┼───────────────────────────┤
│ LCP (Largest Paint)   │ < 1.2 seconds           │ Preload critical fonts,   │
│                       │                         │ fetchpriority="high" hero │
│ INP (Interaction)     │ < 100 milliseconds      │ Offload heavy tasks to    │
│                       │                         │ Web Workers or transitions│
│ CLS (Layout Shift)    │ 0.00 (Zero Shift)       │ Explicit width/height on  │
│                       │                         │ images, skeleton loaders  │
│ Lighthouse Score      │ 100 / 100 across all    │ Minified assets, modern   │
│                       │ Performance & SEO axes  │ formats, zero unused CSS  │
└───────────────────────┴─────────────────────────┴───────────────────────────┘
```

## Asset Optimization Protocols
- **Images**: Serve modern WebP / AVIF formats with responsive `srcset` and `sizes` attributes. Use `loading="lazy"` on below-the-fold images and `loading="eager"` + `fetchpriority="high"` on hero images.
- **Fonts**: Use modern `woff2` format with `font-display: swap`. Preload the primary regular and bold weights in the HTML `<head>`.
- **Bundle Splitting**: Split vendor bundles, route-level chunks, and dynamically import heavy components (modals, syntax highlighters, chart engines).

---

# Part 8: Universal Quality Gate Checklist

Before shipping any web application, page, or design system component:

- [ ] **Accessibility**: Full keyboard navigation (Tab, Shift+Tab, Enter, Escape, Arrow keys) with visible focus rings.
- [ ] **Contrast**: WCAG 2.1 AAA contrast verified across both Light and Dark themes.
- [ ] **Responsive**: Tested at 360px (mobile), 768px (tablet), 1280px (laptop), and 1920px+ (desktop).
- [ ] **Layout Shifts**: Zero Cumulative Layout Shift (CLS) during page loading and font swaps.
- [ ] **State Coverage**: Loading, Empty, Populated, and Error states designed and verified.
- [ ] **SEO & Meta**: Title tags, OpenGraph images, Twitter cards, canonical links, and semantic HTML5 headings.
- [ ] **Console Cleanliness**: Zero JavaScript errors, zero unhandled promise rejections, zero CSS layout warnings.
