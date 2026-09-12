# Profile Architecture, 9-Component Scorecard & Conversion Optimization

Optimized LinkedIn profiles receive **3.9x more views**, **3x more connection requests**, and are **71% more likely to yield high-value technical interviews or inbound inquiries**.

---

## 1. The 9-Component Profile Scorecard

```
┌─────────────────────────────────────────────────────────────────────────────────────────┐
│                          THE 9-COMPONENT PROFILE SCORECARD                              │
├─────┬───────────────────────┬─────────────────────────────┬─────────────────────────────┤
│  #  │ Component             │ Pass Criteria (2026)        │ Common Fatal Anti-Pattern   │
├─────┼───────────────────────┼─────────────────────────────┼─────────────────────────────┤
│  1  │ Photo                 │ ≥400x400, face 60% of frame │ Group crop, low-res selfie, │
│     │                       │ natural light, slight smile │ sunglasses, <5-year-old pic │
├─────┼───────────────────────┼─────────────────────────────┼─────────────────────────────┤
│  2  │ Hero Banner           │ 1584x396, text in right 2/3,│ Left-aligned text (obscured │
│     │                       │ high contrast value + CTA   │ by mobile avatar), cluttered│
├─────┼───────────────────────┼─────────────────────────────┼─────────────────────────────┤
│  3  │ Headline              │ Full 220 chars; format:     │ Job title only ("Software   │
│     │                       │ [What You Do] | [Who You    │ Engineer"), buzzword chains │
│     │                       │ Help] [Achieve What Result] │ ("Passionate thought leader")│
├─────┼───────────────────────┼─────────────────────────────┼─────────────────────────────┤
│  4  │ About Section         │ 200–300 words, 7-step       │ Third-person bio, walls of  │
│     │                       │ structure, mobile hook in   │ text, missing search skills,│
│     │                       │ first 265–275 characters    │ starting with "Welcome..."  │
├─────┼───────────────────────┼─────────────────────────────┼─────────────────────────────┤
│  5  │ Featured Section      │ 3 curated items matching    │ Empty section (80% failure),│
│     │                       │ goal archetype, custom      │ 10 random links, corporate  │
│     │                       │ 1200x627 benefit thumbnails │ generic PDF press releases  │
├─────┼───────────────────────┼─────────────────────────────┼─────────────────────────────┤
│  6  │ Experience Section    │ Every bullet = Action Verb +│ Resume fossil bullets ("Was │
│     │                       │ Metric; 5+ skills per role; │ responsible for...", "Helped│
│     │                       │ attached media proof        │ with..."), zero proof media │
├─────┼───────────────────────┼─────────────────────────────┼─────────────────────────────┤
│  7  │ Skills Section        │ Maxed 50 skills, top 3      │ <5 skills listed, stale     │
│     │                       │ pinned, ≥1 endorsement/skill│ legacy skills, unendorsed   │
│     │                       │ aligned with recruiter ATS  │ skills (hidden by LinkedIn) │
├─────┼───────────────────────┼─────────────────────────────┼─────────────────────────────┤
│  8  │ Custom URL            │ linkedin.com/in/firstlast   │ Default randomized hash tail│
│     │                       │ (clean, memorable, no hash) │ (e.g. `john-doe-491b827a`)  │
├─────┼───────────────────────┼─────────────────────────────┼─────────────────────────────┤
│  9  │ Recommendations       │ ≥3 recent, specific to concrete│ Generic "Great to work with"│
│     │                       │ projects/skills, diverse peer│ praise without context     │
└─────┴───────────────────────┴─────────────────────────────┴─────────────────────────────┘
```

---

## 2. Component Blueprints

### Component 2: Hero Banner Physics & Mobile Safe-Zone
* **Canvas Dimensions**: 1584 x 396 px.
* **The Left-Third Avatar Obstruction**: On mobile clients, the circular profile photo covers the left 33% of the banner. All primary branding, value props, and call-to-actions must sit within the **right two-thirds** (horizontal pixels 530 to 1584).
* **Typography**: Dark neutral or high-contrast background with crisp sans-serif text. Zero distracting stock photos or busy gradients.

### Component 3: The 220-Character Headline Formula
The headline is indexed heavily by LinkedIn's semantic search and recruiter algorithms:
```
[What You Do / Role Noun] | [Who You Help / Problem You Solve] [Concrete Outcome / Metric]
```
* Use all 220 characters.
* Pack with concrete search keywords (*Rust Systems Engineer*, *Sub-Millisecond CLI*, *Linux Packaging*, *Zero-Cost Systems*).
* Avoid empty filler adjectives (*passionate*, *driven*, *visionary*).

### Component 4: The 7-Step About Section (265-Char Mobile Fold)
Must be 200–300 words (1,000–1,500 chars), written strictly in **first person** (`"I build..."`).

* **The 265–275 Character Mobile Fold**: The mobile feed truncates after ~270 characters before the "see more" button. The opening must stop the scroll, state the core thesis, and provoke the click.

```
┌─────────────────────────────────────────────────────────────────────────────────────────┐
│                               THE 7-STEP ABOUT BLUEPRINT                                │
├─────┬───────────────────────┬─────────────┬─────────────────────────────────────────────┤
│ Step│ Section               │ Budget      │ Purpose & Execution                         │
├─────┼───────────────────────┼─────────────┼─────────────────────────────────────────────┤
│  1  │ Hook                  │ ~50 chars   │ Provocative contrarian claim, metric, or bug│
│  2  │ Role & Focus          │ ~100 chars  │ Exactly what you build and who it serves    │
│  3  │ Quantified Proof      │ ~150 chars  │ Concrete wins: latency drop, users, releases│
│  4  │ Architecture / Value  │ ~200 chars  │ How you solve problems differently (philosophy)│
│  5  │ Human Anchor          │ ~100 chars  │ Grounding personal quirk (chess, dogs, F1)  │
│  6  │ Search Specialties    │ ~150 chars  │ High-density recruiter/ATS keyword block    │
│  7  │ Call-to-Action (CTA)  │ ~100 chars  │ Frictionless next step (DM, repo, website)  │
└─────┴───────────────────────┴─────────────┴─────────────────────────────────────────────┘
```

### Component 5: The Featured Section Playbook
Featured items drive **30% longer profile viewing time**. Curate exactly **3 items** rotated quarterly with custom 1200x627 px benefit-driven thumbnails:
* **Technical Authority**:
  1. Flagship open-source repository or framework teardown (e.g. `kkfetch` benchmark).
  2. In-depth architecture case study (e.g. "Why We Rebuilt PCI Bus Enumeration in Rust").
  3. Personal developer suite or portfolio link.
* **Founder / Commercial**:
  1. Free diagnostic tool or technical audit template.
  2. Quantified customer/client case study.
  3. Direct booking calendar link (Cal.com / Calendly).

### Component 6: Experience Bullets & Impact Metricization
* Formula: `[Action Verb] + [Quantifiable Metric] + [Technical Scope & Outcome]`.
* Banned passive phrasing: *"Responsible for..."*, *"Helped with..."*, *"Worked on..."*.
* High-signal proof: Attach project links, benchmark charts, or release artifacts to each position (roles with attached media get 2.1x longer view duration).

### Component 7: Skills Section Architecture
* List all 50 allowed skills. Pin top 3.
* Ensure ≥1 endorsement per skill so LinkedIn Recruiter indexes them.
