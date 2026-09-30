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

---

## 4. Contrast Anti-Hallucination Mathematics

Agents frequently hallucinate contrast compliance by visually guessing that muted greys pass accessibility thresholds. Strict mathematical verification is required.

### The WCAG 2.x Relative Luminance Formula
1. Convert sRGB 8-bit hex channels to unit decimals ($c = \text{hex} / 255$).
2. Linearize each color channel:
   - If $c \le 0.03928$: $c_{\text{lin}} = c / 12.92$
   - Otherwise: $c_{\text{lin}} = ((c + 0.055) / 1.055)^{2.4}$
3. Compute relative luminance ($L$):
   $L = 0.2126 \cdot R_{\text{lin}} + 0.7152 \cdot G_{\text{lin}} + 0.0722 \cdot B_{\text{lin}}$
4. Calculate contrast ratio between lighter luminance ($L_1$) and darker luminance ($L_2$):
   $\text{Ratio} = (L_1 + 0.05) / (L_2 + 0.05)$

### The Grey-on-Grey Hallucination
The human eye and language models routinely overestimate contrast across grey color pairs. Never assume a grey pairing passes WCAG AA without computation:
- `#555555` on black produces only 2.82:1, which FAILS both regular and large text standards.
- `#777777` on white produces 4.48:1, which FAILS normal body text (4.5:1 required).

### Contrast Reference Lookup Table
Use this computed lookup table for common pairings:

| Text Color | Background Color | Contrast Ratio | Normal Text (4.5:1) | Large Text (3.0:1) |
| :--- | :--- | :--- | :--- | :--- |
| Black (`#000000`) | White (`#FFFFFF`) | 21.00:1 | Pass | Pass |
| White (`#FFFFFF`) | Black (`#000000`) | 21.00:1 | Pass | Pass |
| White (`#FFFFFF`) | Charcoal (`#333333`) | 12.63:1 | Pass | Pass |
| White (`#FFFFFF`) | Mid Grey (`#666666`) | 5.74:1 | Pass | Pass |
| Muted Grey (`#777777`) | White (`#FFFFFF`) | 4.48:1 | Fail | Pass |
| White (`#FFFFFF`) | Slate Grey (`#888888`) | 3.54:1 | Fail | Pass |
| White (`#FFFFFF`) | Light Grey (`#999999`) | 2.85:1 | Fail | Fail |
| Dark Grey (`#555555`) | Black (`#000000`) | 2.82:1 | Fail | Fail |

### Text Over Media and Variable Gradients
- When placing text over photography or dynamic gradients, contrast varies across the bounding box.
- Never check contrast at a single bright pixel. Verify against the worst-case luminance point across the entire text area.
- Add an explicit solid scrim, darkened gradient overlay, or backing container card behind text elements to guarantee invariant contrast.

### Non-Text Interactive Boundary Contrast (WCAG 1.4.11)
Interactive control perimeters must maintain a minimum 3.0:1 contrast ratio against adjacent surfaces:
- Input border lines, checkbox containers, toggle switches, and radio outlines
- Button boundaries when un-filled or ghost variants are used
- Active tab underlines and segmented control dividers
- Focus indicator rings

---

## 5. Focus Indicators & Keyboard Operation

1. **Prohibition of Naked `outline: none`**: Setting `outline: none` or `outline: 0` without declaring an immediate, high-contrast `:focus-visible` replacement is strictly forbidden (R-32).
2. **Focus Visibility Standard**: Provide a 2px offset ring with a minimum 3.0:1 contrast against both the component and its surrounding canvas.
3. **Modal Focus Traps**: Dialogs and drawers must contain keyboard navigation within their boundaries and dismiss immediately on Escape.
4. **Color Independence**: Never indicate success, error, or operational state via color alone. Pair color shifts with descriptive text labels, status icons, or distinct border shapes.

---

## 6. Mobile Resilience & Zoom Constraints

1. **200% Zoom Text Reflow**: All viewports must support 200% text enlargement without clipping content or forcing horizontal scrolling (WCAG 1.4.4). Avoid fixed-height containers with `overflow: hidden` on text wrappers.
2. **On-Screen Keyboard Clearance**: On touch viewports, active input fields must remain unobstructed when the virtual keyboard expands. Apply `scroll-margin-bottom` or padding so focused inputs scroll smoothly into clear view.

