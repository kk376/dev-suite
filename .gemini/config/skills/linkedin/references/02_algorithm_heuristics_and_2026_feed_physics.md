# 2026 Feed & Algorithm Physics (Distribution Engine)

Empirical feed mechanics based on arXiv:2501.16450 (*360Brew* semantic ranking model), AuthoredUp 2026 reach datasets, and anti-pod detection heuristics.

---

## 1. Format Reach Multipliers

Relative to a standard single image post (baseline 1.0x):

```
┌─────────────────────────────────────────────────────────────────────────────────────────┐
│                      2026 LINKEDIN FORMAT REACH MULTIPLIER MATRIX                       │
├──────────────────────────────────────┬─────────────┬────────────────────────────────────┤
│ Content Format                       │ Multiplier  │ Strategic Execution & Mechanics    │
├──────────────────────────────────────┼─────────────┼────────────────────────────────────┤
│ Document Carousel (Multi-Page PDF)   │ 1.7x – 2.3x │ Maximum dwell time, high save rate │
│ Native Video (<90s, 9:16 vertical)   │ 1.4x – 1.8x │ Mobile-optimized, burned captions  │
│ High-Density Text-Only               │ 1.0x – 1.3x │ Crisp line breaks, strong hook     │
│ Poll with Discussion Prompt          │ 1.1x        │ Quick engagement, low authority    │
│ Single Image + Text                  │ 1.0x        │ Baseline reference format          │
│ In-Body External Link                │ 0.4x – 0.6x │ 40%–60% algorithmic reach penalty  │
└──────────────────────────────────────┴─────────────┴────────────────────────────────────┘
```

---

## 2. Core Algorithmic Invariants

### A. The External Link Penalty & First-Comment Workaround
* **The In-Body Penalty**: Including an outbound HTTP link in the post body slashes reach by **40% to 60%**.
* **The First-Comment Strategy**: Place the link in the **first comment** under your post within 60 seconds of publishing.
* **In-Body Framing**: Reference the comment naturally:
  - `"Full benchmark code and reproducible scripts linked in the first comment below ↓"`
  - `"Detailed implementation repo pinned in comments."`
* **Impression Yield**: First-comment links yield **~2.1x more impressions** than in-body links.

### B. The 210-Character Mobile Fold
* On mobile screens, posts are truncated with `"… see more"` at **210 characters** (~3 lines).
* If a user does not click `"see more"`, dwell time is registered as zero.
* If a user clicks and bounces within 3 seconds, a clickbait demotion is applied.
* Deliver the core premise and tension within the first 210 characters.

### C. Hashtag Deprecation Physics
* **0 Hashtags** performs equal to or better than 5+ in 2026.
* The 360Brew feed ranking architecture uses dense vector semantic embeddings rather than keyword tags.
* 5+ hashtags triggers an automated low-reputation spam signal.
* Use **0 to 2 niche hashtags** (<50k volume) placed at the very end of the post.

### D. Signal Weights & Interaction Physics
* **Save / Bookmark**: Weighted at **5x a like** and **2x a standard comment**. It signals durable reference value.
* **Paragraph Comments**: In-depth multi-sentence comments score **4x** higher than single-word reactions.
* **User-to-User Threading**: Multi-tier discussion replies create high viral score multipliers.

### E. The 60–90 Minute Momentum Window
* The first 60–90 minutes post-publication determines 80% of lifetime distribution.
* **Author SLA**: The author must reply to incoming comments within 90 minutes to breach secondary testing tiers.
* **Cannibalization Ceiling**: Posting 2+ times within 24 hours cuts reach on both posts by up to 50%. Enforce a strict **one post per day** ceiling.
