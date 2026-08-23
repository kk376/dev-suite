# Accessibility (WCAG AAA) & Core Web Vitals Standard

## 1. WCAG 2.1 AAA Contrast Checklist

- **Normal Text (< 18pt / < 24px regular)**:
  - Contrast ratio $\ge 7.0:1$ against background.
- **Large Text (>= 18pt or >= 14pt bold)**:
  - Contrast ratio $\ge 4.5:1$ against background.
- **Interactive UI Components & Form Borders**:
  - Contrast ratio $\ge 3.0:1$ against adjacent colors.

## 2. Accessible Keyboard & Screen Reader Discipline

1. **Logical Tab Ordering**: Focus flows naturally from top-left to bottom-right.
2. **Focus Management in Modals**: Trap focus inside open dialogs; restore focus to triggering button on close.
3. **Semantic ARIA Roles**: Use `<button>`, `<nav>`, `<main>`, `<dialog>`, `<section>` rather than `<div onClick=... aria-role=...>` hacks.
4. **Skip Links**: Provide accessible `"Skip to main content"` link for keyboard navigators.

## 3. Core Web Vitals Standard

| Metric | Target Goal | Failure Threshold | Optimization Strategy |
| :--- | :--- | :--- | :--- |
| **LCP (Largest Contentful Paint)** | `< 1.2s` | `> 2.5s` | Preload critical hero fonts (`woff2`), `fetchpriority="high"` on hero image |
| **INP (Interaction to Next Paint)** | `< 100ms` | `> 200ms` | Break long JS tasks into microtasks, use `requestIdleCallback` |
| **CLS (Cumulative Layout Shift)** | `0.00` | `> 0.1` | Set explicit `width` & `height` or `aspect-ratio` on all media and skeleton loaders |
