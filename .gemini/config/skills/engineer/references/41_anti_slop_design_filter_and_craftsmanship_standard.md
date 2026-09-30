# Anti-Slop Design Filter & Craftsmanship Standard

A disciplined filter and execution standard preventing AI coding assistants from generating generic, sterile, or recognizable AI slop interfaces. Holds every design decision to strict purpose gates, enforces craftsmanship invariants, and injects positive human liveliness.

---

## 1. Core Philosophy: The Purpose Filter

This standard is a filter, not a rigid aesthetic style guide. It does not enforce a single house style, nor does it forbid modern visual techniques such as gradients, glassmorphism, or card layouts when used with intent. It rejects technique without purpose.

Before applying any visual technique, answer: **what does this serve?**
- If the only justification is that it looks safe, modern, or represents an AI default, the technique must be eliminated.
- If the technique establishes information hierarchy, reinforces brand identity, or clarifies user navigation, it is permitted once its reason is explicitly documented.

### The Identity Litmus Test
Before declaring any design complete, apply this test:
> If the brand logo and product name were swapped out, would this design still feel distinct and possess its own character?

If the answer is negative, the design is too generic and must be restructured.

---

## 2. The Craftsmanship Standard

Clean code and layout without slop represents the floor, not the goal. High-grade craftsmanship requires satisfying five fundamental principles:

1. **C1: Intentionality**: Every visual and copy decision has a clear rationale. Defaulting to an AI training preset is an automatic red flag.
2. **C2: Functional Completeness**: Every interactive element operates correctly, or it does not exist. A button or link that performs no action is a defect, not decoration.
3. **C3: Content-Driven Composition**: Every section exists because the underlying product information demands it, not because an AI landing page template expected it.
4. **C4: Resilience**: The user interface holds up gracefully across all states (empty, loading, error), all themes shipped, all viewport widths, and during keyboard-only navigation.
5. **C5: Evidence Over Claims**: All metrics, statistics, security certifications, and testimonials reflect verified facts, or they are omitted completely.

---

## 3. The 38 Anti-Slop Invariants (Grouped Architecture)

The 38 invariants are structured into three distinct enforcement tiers.

### Group 1: Hard Gates (Absolute Invariants: Zero Exceptions)

Breaking any Hard Gate results in an automatic audit failure regardless of rationale.

- **R-02 (Copywriting)**: Strictly forbidden to use the em dash character in any agent-authored text. Use commas, periods, colons, or parentheses instead. All prose must reflect natural, conversational human cadence.
- **R-03 (Mobile Responsiveness)**: Mobile layouts must reflow cleanly as a first-class citizen. Zero horizontal scroll leaks, zero text clipping or container overflow, zero colliding cards, and all touch targets must meet the 44x44px minimum bounding box.
- **R-17 (Data & Numbers)**: Forbidden to present fabricated statistics, vanity counts, or unverified performance figures (such as 10K+ Users, 99.9% Uptime, 500M Requests) without primary source evidence.
- **R-18 (Testimonials)**: Forbidden to fabricate fictional reviews, generated customer avatars, or synthetic customer quotes. If real testimonials do not exist, omit the section.
- **R-23 (Clarification & Visual Assets)**: Forbidden to invent synthetic logos, team avatars, or identity assets without explicit user instructions or clear placeholders (such as text markers `[LOGO]` or `[REAL DATA]`).
- **R-24 (Navigation)**: Forbidden to place links in navigation bars or menus that point to non-existent pages, dead anchors, or unbuilt features.
- **R-25 (Color Contrast)**: All text must strictly comply with WCAG AA contrast ratios (4.5:1 for standard body text, 3.0:1 for large text 18px and above) across the entire underlying surface, including gradients and image backdrops.
- **R-26 (Interactive Elements)**: Every button, toggle, dropdown, tab, and form control must possess a real, functioning handler or link destination. Dead controls are prohibited.
- **R-27 (UI States)**: Every data-driven view must implement three explicit, observable states: empty state, loading state, and error recovery state.
- **R-28 (FAQ Sections)**: Forbidden to populate FAQ blocks with canned, generic template questions that do not address the specific product domain.
- **R-32 (Keyboard Accessibility)**: All interactive controls must be navigable via Tab and Shift-Tab in logical visual order, activatable via Enter or Space, and dialogs must close on Escape. Removing focus outlines without providing a high-contrast replacement is strictly prohibited.
- **R-33 (No Scripted CSS Patching)**: Forbidden to implement or modify styling via external scripts that execute string replacements on CSS files. All styling must be authored directly in source components or stylesheets.
- **R-34 (Multi-Theme Verification)**: If a theme switcher is provided, both light and dark modes must be fully functional, legible, and verified against contrast thresholds.
- **R-35 (Verification Before Delivery)**: Every deliverable must be verified in a running environment or build pipeline. Conduct an element-by-element click-through inspection and record the evidence table.
- **R-36 (No Fabricated Claims)**: Forbidden to claim unverified compliance or security certifications (such as SOC 2, ISO 27001, Enterprise-Grade) without factual proof.
- **R-37 (Design Direction Required)**: Base the interface on explicit brand direction or `DESIGN.md`. If no direction exists and the user cannot be asked, explicitly label the output as a draft and set default dials to ENERGY 1, RHYTHM 1, MOTION 1.
- **R-38 (Real Content or Honest Placeholders)**: All displayed features, specifications, and text must represent real product functionality or explicit, un-disguised placeholders (such as Coming Soon).

### Group 2: Purpose-Gates (Techniques Allowed with Stated Rationale & Dose Caps)

Techniques in this tier are permitted only when fulfilling a defined informational or brand purpose. Defaulting to them without a documented reason constitutes a failure.

- **R-01 (Color & Gradients)**: Forbidden as generic purple, cyan, or rainbow background fills. Allowed when reinforcing brand identity or separating visual hierarchy, with the reason recorded.
- **R-04 (Icons)**: Forbidden to use generic AI glyphs (sparkles, magic wands, robots, floating cubes) or uniform thin-line icon clones. Icons must directly represent their specific domain concept.
- **R-06 (Typography)**: Forbidden to use large monospace fonts for body text or extreme letter-spacing purely for terminal aesthetics. Typefaces must be selected based on brand character and legibility.
- **R-07 (Backgrounds)**: Forbidden to apply dot matrix, blueprint, or graph paper grid backgrounds as arbitrary decoration. Permitted only when directly reinforcing a technical domain concept.
- **R-08 (Button Arrows)**: Forbidden to attach decorative arrows to every action button. Permitted only when signaling directional navigation or external links.
- **R-09 (Badges)**: Forbidden to litter interfaces with capsule badges declaring AI Powered, Beta, or New. Permitted only for genuine operational status, subject to dose caps.
- **R-10 (Glassmorphism)**: Background blur and translucency are capped at a maximum of 1 to 2 focal elements. Forbidden to apply glassmorphism simultaneously across navigation, cards, dialogs, and sidebars.
- **R-12 (Shadows)**: Elevation shadows must reflect physical information hierarchy. Forbidden to apply uniform diffuse shadows to every card, which makes the page float without depth.
- **R-13 (Glow Effects)**: Glow is capped at a maximum of 1 to 2 focal accents. Forbidden to apply glows simultaneously to buttons, cards, borders, badges, and icons.
- **R-14 (Feature Cards)**: Forbidden to generate homogeneous grids where every card shares identical padding, height, and layout. Cards must reflect the hierarchy of the content they contain.
- **R-19 (Animations)**: Transitions and keyframes must serve explicit UX feedback or attention direction. Forbidden to apply simultaneous floating, scaling, and bouncing effects across all elements.
- **R-22 (Illustrations)**: Forbidden to use generic 3D blob characters or stock vector illustrations that bear no relation to the product. Use authentic interface captures or omit illustrations.

### Group 3: Quality Locks (Consistency, Identity & Keystone Invariant)

- **R-05 (Layout & Page Structure)**: Forbidden to generate generic landing page templates (such as Hero plus 3-card grid, 3-step How It Works, or standard 4-column footer). Page architecture must follow the logical narrative of the product.
- **R-11 (Border Radius)**: Maintain a consistent geometric radius hierarchy. Forbidden to make every component fully pill-shaped.
- **R-15 (Specific CTAs)**: Replace generic labels like Get Started, Learn More, or Try Now with descriptive actions such as Create Workspace, Download CLI, or View Live Demo.
- **R-16 (Specific Vocabulary)**: Eliminate AI marketing cliches such as Seamless, Revolutionary, Next-Generation, Cutting-Edge, or Effortless in favor of concrete descriptions of capability.
- **R-20 (Visual Identity)**: The design must feature a coherent, memorable identity driven by intentional palette, typography, and structural rhythm.
- **R-21 (Deliberate Theming)**: The choice between dark and light defaults must be grounded in product domain and user environment, rather than assuming dark mode represents modern technology.
- **R-29 (Palette Discipline)**: Limit active palette to 2 to 3 core brand colors plus 1 intentional accent color. Neutral tones (white, grey, black) provide the canvas.
- **R-30 (Originality)**: Forbidden to generate unprompted clones of popular software interfaces such as Linear, Vercel, Stripe, or Notion.
- **R-31 (Keystone Invariant: Explicit Decision Log)**: Every major design decision regarding color, typography, layout, spacing, and iconography must have an articulable, one-line justification recorded in the implementation brief. Decisions that cannot be explained in a single sentence are invalid.

---

## 4. The Liveliness Toolkit

Filtering out AI slop without deliberate direction risks creating sterile, lifeless interfaces. Liveliness must be actively injected through structured dials and levers.

### The Three Dials
Every interface must declare its coordinates across three dials:

| Dial | Level 1: Calm | Level 2: Balanced | Level 3: Bold | Architectural Question |
| :--- | :--- | :--- | :--- | :--- |
| **ENERGY** | Minimalist, understated (e.g. Linear, documentation) | Modern, confident (e.g. Stripe, Vercel) | High-impact, expressive (e.g. Agency, showcase) | How loudly does this interface announce itself? |
| **RHYTHM** | Uniform, predictable cadence | Consistent with occasional asymmetric breaks | Dynamic, contrasting section structures | How varied are compositions between sections? |
| **MOTION** | Subtle state changes and hover feedback | Smooth scroll reveals and view transitions | Choreographed layouts and physical springs | How much motion is present, and why? |

### The Five Levers of Visual Character
1. **One Focal Point Per Screen**: Exactly one primary element commands initial visual attention; all secondary elements defer to it.
2. **Hierarchical Contrast**: Scale, weight, and tone differences are sharp and deliberate, preventing visual monotony.
3. **Structural Whitespace**: Empty space is used purposefully as an architectural divider rather than leftover void.
4. **One Deliberate Accent**: A single accent color or graphical gesture is deployed at the critical conversion or focal moment.
5. **Identity Motif**: A single repeated geometric, typographic, or textural motif anchors the interface to the brand.

### The Design Read Protocol
Before generating interface code, declare the design read in a single line:
```
Reading this as: <page purpose> for <target audience>, in a <visual language> style, dials: ENERGY <1-3> / RHYTHM <1-3> / MOTION <1-3>.
```

---

## 5. Functional UI Patterns

Every interactive element in an interface must bind to a concrete functional behavior:
- **Direct Anchor Navigation**: Jumps cleanly to an existing on-page section using a verified ID.
- **Contextual Dialog or Drawer**: Opens a focused modal view with keyboard trap and Escape dismissal.
- **State Toggle**: Shifts tab panels, expands accordions, or alternates theme mode with instantaneous visual feedback.
- **External Hand-off**: Navigates to a verified external URI or opens a `mailto:` composition.
- **Validated Form Submission**: Validates inputs, renders inline errors, and presents an explicit success response.

If a control does not fulfill one of these five patterns, remove it.

---

## 6. The Delivery Gate Verification Protocol

Before declaring an interface task complete, execute the four-block verification check and output the audit findings.

```markdown
### Anti-Slop Delivery Gate Audit

#### Block 1: Hard Gates (Absolute)
- [x] R-02 Copywriting: Zero em dashes in agent text; natural human cadence confirmed.
- [x] R-03 Mobile: Zero horizontal scroll; all controls meet 44px tap target.
- [x] R-17 Data: Zero fabricated numbers or vanity stats.
- [x] R-18 Testimonials: Zero synthetic reviews or avatars.
- [x] R-23 Visual Assets: Zero unconfirmed synthetic logos or identities.
- [x] R-24 Navigation: Zero dead links or ghost routes in navigation.
- [x] R-25 Contrast: All text verified at or above WCAG AA (4.5:1 normal, 3.0:1 large).
- [x] R-26 Interactivity: Every button and input possesses a functioning handler.
- [x] R-27 UI States: Empty, loading, and error states fully implemented.
- [x] R-28 FAQ: All questions address genuine domain issues.
- [x] R-32 Keyboard: Full Tab navigation, visible focus indicators, Escape dismissal.
- [x] R-33 No Script Patching: All styles authored directly in source components.
- [x] R-34 Themes: All shipped themes verified for contrast and layout stability.
- [x] R-35 Verification: Runtime click-through executed and documented.
- [x] R-36 Claims: Zero unverified security, compliance, or speed assertions.
- [x] R-37 Direction: Grounded in DESIGN.md or explicit dials.
- [x] R-38 Placeholders: All non-production elements honestly labeled.

#### Block 2: Purpose-Gates (Technique & Reason)
- [x] R-01 Color & Gradients: Stated hierarchy purpose documented.
- [x] R-04 Icons: Domain-relevant glyphs only.
- [x] R-06 Typography: Typefaces selected based on brand voice.
- [x] R-07 Backgrounds: Purposeful texture without gratuitous grids.
- [x] R-08 Button Arrows: Restricted to directional navigation.
- [x] R-09 Badges: Functional status only; dose caps respected.
- [x] R-10 Glassmorphism: Restricted to 1 or 2 focal elements maximum.
- [x] R-12 Shadows: Elevation hierarchy strictly functional.
- [x] R-13 Glows: Capped at 1 or 2 focal accents.
- [x] R-14 Cards: Content-driven sizing and layout variations.
- [x] R-19 Animations: Intentional UX guidance aligned with MOTION dial.
- [x] R-22 Illustrations: Domain-specific captures or omitted.

#### Block 3: Liveliness Dials
- ENERGY Dial: Level <1-3> verified.
- RHYTHM Dial: Level <1-3> verified across sections.
- MOTION Dial: Level <1-3> verified in interaction physics.
- Focal point clearly established on each view.
- Single intentional accent deployed.

#### Block 4: Craftsmanship & Quality Locks
- C1 Intentionality: Every major decision backed by a 1-line reason (R-31).
- C2 Completeness: Zero dead controls or non-functioning links.
- C3 Composition: Section structure tailored to product narrative (R-05).
- C4 Resilience: Resilient across empty, loading, error, and keyboard states.
- C5 Evidence: Real verified claims only (R-36).
```
