# Three-Tier Publishing & API Integration

---

## 1. The Three-Tier Model

```
┌─────────────────────────────────────────────────────────────────────────────────────────┐
│                           THE THREE-TIER EXECUTION PIPELINE                             │
├───────────────────┬───────────────────────────────┬─────────────────────────────────────┤
│ Execution Tier    │ Prerequisites                 │ Operational Workflow                │
├───────────────────┼───────────────────────────────┼─────────────────────────────────────┤
│ Tier 0: Draft-Only│ None (Default, Zero-API)      │ Outputs clean copy-paste text,      │
│ (Zero Setup)      │                               │ formatted first comment, and images │
├───────────────────┼───────────────────────────────┼─────────────────────────────────────┤
│ Tier 1: Publora   │ `PUBLORA_API_KEY`,            │ Auto-schedules via Publora REST API │
│ Auto-Publish      │ `LINKEDIN_PLATFORM_ID` in env │ with 90s safety buffer & URN parser │
├───────────────────┼───────────────────────────────┼─────────────────────────────────────┤
│ Tier 2: Custom    │ `LINKEDIN_SKILLS_CUSTOM_POSTER`│ Executes local headless browser or  │
│ Headless Poster   │ script in environment         │ proprietary enterprise API runner   │
└───────────────────┴───────────────────────────────┴─────────────────────────────────────┘
```

---

## 2. URL to URN Parsing Reference

LinkedIn URLs map to three backend URN formats:
- Activity: `/posts/slug-activity-7448...` → `urn:li:activity:7448...`
- Share: `/posts/slug-share-7449...` → `urn:li:share:7449...`
- UGC Post: `/feed/update/urn:li:ugcPost:7447...` → `urn:li:ugcPost:7447...`

When replying to nested comments, LinkedIn flattens threads to two levels. The parent comment URN must always resolve to the top-level comment URN.
