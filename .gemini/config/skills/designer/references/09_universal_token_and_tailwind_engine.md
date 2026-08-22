# Universal Design Token & Tailwind Engine

## 1. Universal CSS Custom Properties (`:root`)

```css
:root {
  /* Spatial System (8pt Grid) */
  --space-0: 0px;
  --space-1: 0.25rem; /* 4px */
  --space-2: 0.5rem;  /* 8px */
  --space-3: 0.75rem; /* 12px */
  --space-4: 1.0rem;  /* 16px */
  --space-5: 1.25rem; /* 20px */
  --space-6: 1.5rem;  /* 24px */
  --space-8: 2.0rem;  /* 32px */
  --space-12: 3.0rem; /* 48px */
  --space-16: 4.0rem; /* 64px */
  --space-24: 6.0rem; /* 96px */

  /* Fluid Typography Scale */
  --text-hero: clamp(2.5rem, 5vw + 1rem, 4.5rem);
  --text-h1: clamp(2.0rem, 3.5vw + 0.75rem, 3.25rem);
  --text-h2: clamp(1.5rem, 2vw + 0.5rem, 2.25rem);
  --text-h3: clamp(1.25rem, 1.2vw + 0.5rem, 1.75rem);
  --text-body: clamp(0.9375rem, 0.5vw + 0.8rem, 1.0625rem);
  --text-caption: 0.8125rem;
  --text-code: 0.875rem;

  /* Line Heights */
  --leading-tight: 1.15;
  --leading-snug: 1.35;
  --leading-normal: 1.5;
  --leading-relaxed: 1.65;

  /* Letter Spacing */
  --tracking-tighter: -0.035em;
  --tracking-tight: -0.015em;
  --tracking-normal: 0em;
  --tracking-wide: 0.025em;

  /* Elevation & Z-Index */
  --z-canvas: 0;
  --z-card: 10;
  --z-sticky: 100;
  --z-drawer: 400;
  --z-backdrop: 800;
  --z-modal: 1000;
  --z-popover: 1100;
  --z-toast: 1200;
  --z-tooltip: 1300;
}
```

## 2. Tailwind Configuration Generator (v3 & v4)

```javascript
// tailwind.config.js
module.exports = {
  darkMode: ["class", '[data-theme="dark"]'],
  theme: {
    extend: {
      colors: {
        canvas: {
          DEFAULT: "var(--bg-canvas)",
          subtle: "var(--bg-canvas-subtle)",
        },
        surface: {
          DEFAULT: "var(--bg-surface)",
          hover: "var(--bg-surface-hover)",
          active: "var(--bg-surface-active)",
        },
        border: {
          DEFAULT: "var(--border-subtle)",
          strong: "var(--border-strong)",
        },
        primary: {
          DEFAULT: "var(--primary)",
          hover: "var(--primary-hover)",
          foreground: "var(--primary-foreground)",
        },
        accent: {
          DEFAULT: "var(--accent)",
          foreground: "var(--accent-foreground)",
        }
      },
      borderRadius: {
        xs: "var(--radius-xs, 2px)",
        sm: "var(--radius-sm, 4px)",
        md: "var(--radius-md, 8px)",
        lg: "var(--radius-lg, 12px)",
        xl: "var(--radius-xl, 16px)",
        pill: "9999px"
      },
      fontFamily: {
        sans: ["var(--font-sans)", "system-ui", "sans-serif"],
        display: ["var(--font-display)", "var(--font-sans)", "sans-serif"],
        mono: ["var(--font-mono)", "ui-monospace", "monospace"],
      }
    }
  }
};
```
