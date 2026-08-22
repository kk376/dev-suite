# Motion Physics & Micro-Interactions Standard

## 1. Natural Easing Physics

| Transition Type | CSS Cubic-Bezier | Duration | Use Case |
| :--- | :--- | :--- | :--- |
| **Entrance / Slide In** | `cubic-bezier(0.16, 1, 0.3, 1)` (Snappy ease-out) | 220ms–300ms | Modals, Dropdowns, Tooltips, Toasts |
| **Exit / Dismiss** | `cubic-bezier(0.7, 0, 0.84, 0)` (Accelerating ease-in) | 160ms–200ms | Dialog close, Notification dismiss |
| **Hover / State Transition** | `cubic-bezier(0.4, 0, 0.2, 1)` (Standard ease) | 120ms–180ms | Button hover, Border glow, Icon shifts |

## 2. Framer Motion Spring Presets

```typescript
export const springPresets = {
  snappy: {
    type: "spring",
    stiffness: 450,
    damping: 32,
    mass: 0.8,
  },
  gentle: {
    type: "spring",
    stiffness: 280,
    damping: 26,
    mass: 1.0,
  },
  bouncy: {
    type: "spring",
    stiffness: 500,
    damping: 22,
    mass: 1.2,
  },
};
```

## 3. Reduced-Motion Guardrail
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
