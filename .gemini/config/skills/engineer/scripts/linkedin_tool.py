#!/usr/bin/env python3
"""LinkedIn engineering and content audit CLI utility.

Synthesizes 2026 algorithmic heuristics (360Brew arXiv:2501.16450),
URL-to-URN resolution, and the Humanizer AI-tell elimination engine.
"""

import argparse
import re
import sys
from typing import Dict, List, Optional
from urllib.parse import unquote, urlparse

# ---------------------------------------------------------
# 1. URL & URN Resolution Engine
# ---------------------------------------------------------

ACTIVITY_SLUG_RE = re.compile(r"activity[-:](\d{18,25})")
SHARE_SLUG_RE = re.compile(r"share[-:](\d{18,25})")
UGCPOST_SLUG_RE = re.compile(r"ugcPost[-:](\d{18,25})")
COMMENT_URN_RE = re.compile(
    r"urn:li:comment:\("
    r"(?:urn:li:)?(activity|ugcPost|share):(\d+)"
    r"\s*,\s*(\d+)"
    r"\)"
)

def parse_linkedin_url(url: str) -> Dict[str, Optional[str]]:
    raw = url.strip()
    unquoted = unquote(raw)

    out: Dict[str, Optional[str]] = {
        "post_activity_id": None,
        "post_urn": None,
        "comment_id": None,
        "comment_urn": None,
        "url_type": "unknown",
    }

    m_comment = COMMENT_URN_RE.search(unquoted)
    if m_comment:
        parent_type, parent_id, comment_id = m_comment.groups()
        out["post_activity_id"] = parent_id
        out["post_urn"] = f"urn:li:{parent_type}:{parent_id}"
        out["comment_id"] = comment_id
        out["comment_urn"] = f"urn:li:comment:({out['post_urn']},{comment_id})"
        out["url_type"] = "comment"
        return out

    m_act = ACTIVITY_SLUG_RE.search(raw)
    if m_act:
        act_id = m_act.group(1)
        out["post_activity_id"] = act_id
        out["post_urn"] = f"urn:li:activity:{act_id}"
        out["url_type"] = "post"
        return out

    m_share = SHARE_SLUG_RE.search(raw)
    if m_share:
        share_id = m_share.group(1)
        out["post_activity_id"] = share_id
        out["post_urn"] = f"urn:li:share:{share_id}"
        out["url_type"] = "post"
        return out

    m_ugc = UGCPOST_SLUG_RE.search(raw)
    if m_ugc:
        ugc_id = m_ugc.group(1)
        out["post_activity_id"] = ugc_id
        out["post_urn"] = f"urn:li:ugcPost:{ugc_id}"
        out["url_type"] = "post"
        return out

    return out

# ---------------------------------------------------------
# 2. Humanizer & Algorithmic Heuristics Auditor
# ---------------------------------------------------------

BANNED_AI_VOCAB = [
    "delve", "delving", "leverage", "leveraging", "fundamentally",
    "streamline", "streamlining", "harness", "harnessing", "unlock",
    "unlocking", "foster", "fostering", "tapestry", "game-changer",
    "game changer", "testament", "beacon", "vital", "crucial",
    "in today's fast-paced", "in today's world", "it's worth noting",
    "bespoke", "paradigm shift", "journey of", "look no further"
]

EMOJI_PATTERN = re.compile(
    "["
    "\U0001F600-\U0001F64F"  # emoticons
    "\U0001F300-\U0001F5FF"  # symbols & pictographs
    "\U0001F680-\U0001F6FF"  # transport & map symbols
    "\U0001F1E0-\U0001F1FF"  # flags
    "\U00002702-\U000027B0"
    "\U000024C2-\U0001F251"
    "\U0001F900-\U0001F9FF"  # supplemental symbols
    "\U0001FA70-\U0001FAFF"
    "]+",
    flags=re.UNICODE,
)

URL_IN_TEXT_RE = re.compile(r"https?://[^\s]+")
HASHTAG_RE = re.compile(r"#[A-Za-z0-9_]+")

def audit_linkedin_post(text: str) -> Dict:
    chars = len(text)
    words = len(text.split())
    first_210 = text[:210]

    # Check AI tells
    found_ai_vocab = []
    text_lower = text.lower()
    for word in BANNED_AI_VOCAB:
        if re.search(rf"\b{re.escape(word)}\b", text_lower):
            found_ai_vocab.append(word)

    # Check em dashes
    em_dash_count = text.count("—")
    em_dash_per_100_words = (em_dash_count / (words / 100.0)) if words > 0 else 0

    # Check in-body links
    in_body_links = URL_IN_TEXT_RE.findall(text)

    # Check emojis
    emojis = EMOJI_PATTERN.findall(text)
    total_emojis = sum(len(e) for e in emojis)

    # Check hashtags
    hashtags = HASHTAG_RE.findall(text)

    findings = []
    warnings = []

    # Length analysis
    if 900 <= chars <= 1300:
        findings.append(f"Length: {chars} chars (Optimal 900-1,300 sweet spot)")
    elif chars < 900:
        warnings.append(f"Length: {chars} chars (<900 chars; may reduce dwell time)")
    else:
        warnings.append(f"Length: {chars} chars (>1,300 chars; requires strong narrative breaks)")

    # In-body link penalty
    if in_body_links:
        warnings.append(
            f"CRITICAL: Found {len(in_body_links)} external link(s) in body ({in_body_links[0]}). "
            f"Algorithm applies a 40-60% reach penalty. Move link to the first comment!"
        )
    else:
        findings.append("Zero in-body links (Compliant with first-comment distribution strategy)")

    # AI vocabulary
    if found_ai_vocab:
        warnings.append(f"AI Vocabulary Detected: {', '.join(found_ai_vocab)} (Purge immediately)")
    else:
        findings.append("Zero banned AI vocabulary detected")

    # Em dashes
    if em_dash_per_100_words > 1.0:
        warnings.append(f"Em Dash Density: {em_dash_count} em dashes ({em_dash_per_100_words:.1f} per 100 words; cap is ≤1.0)")
    else:
        findings.append(f"Em Dash Density: {em_dash_count} em dash(es) (Compliant)")

    # Emojis
    if total_emojis > 2:
        warnings.append(f"Emoji Density: {total_emojis} emojis (Cap is ≤2; avoid bullet chains)")
    else:
        findings.append(f"Emoji Density: {total_emojis} emoji(s) (Clean, high-signal)")

    # Hashtags
    if len(hashtags) > 3:
        warnings.append(f"Hashtags: {len(hashtags)} hashtags detected (360Brew ranks 0-2 higher; 5+ triggers spam flag)")
    else:
        findings.append(f"Hashtags: {len(hashtags)} hashtag(s) (Optimal 2026 semantic profile)")

    return {
        "chars": chars,
        "words": words,
        "hook_210_chars": first_210,
        "findings": findings,
        "warnings": warnings,
        "passed": len(warnings) == 0,
    }

def main():
    parser = argparse.ArgumentParser(description="LinkedIn Engineering & Algorithmic Tool")
    subparsers = parser.add_subparsers(dest="command", help="Commands")

    parse_p = subparsers.add_parser("parse-url", help="Parse LinkedIn URL into URNs")
    parse_p.add_argument("url", help="LinkedIn post or comment URL")

    audit_p = subparsers.add_parser("audit-post", help="Audit post draft for 2026 feed heuristics")
    audit_p.add_argument("file", nargs="?", help="File containing post draft (or stdin)")

    args = parser.parse_args()

    if args.command == "parse-url":
        res = parse_linkedin_url(args.url)
        print("LinkedIn URL Parsed Result:")
        for k, v in res.items():
            print(f"  {k:18}: {v}")

    elif args.command == "audit-post":
        if args.file:
            with open(args.file, "r", encoding="utf-8") as f:
                text = f.read()
        else:
            text = sys.stdin.read()

        audit = audit_linkedin_post(text)
        print("=" * 60)
        print(f"LINKEDIN POST DRAFT AUDIT (Status: {'PASS' if audit['passed'] else 'NEEDS ATTENTION'})")
        print("=" * 60)
        print(f"Total Characters: {audit['chars']} | Total Words: {audit['words']}")
        print("-" * 60)
        print("Mobile 210-Char Hook Preview:")
        print(f'"{audit["hook_210_chars"].strip()}"')
        print("-" * 60)
        if audit["findings"]:
            print("PASSED CHECKS:")
            for item in audit["findings"]:
                print(f"  ✓ {item}")
        if audit["warnings"]:
            print("\nWARNINGS / ACTION ITEMS:")
            for item in audit["warnings"]:
                print(f"  ✗ {item}")
        print("=" * 60)

    else:
        parser.print_help()

if __name__ == "__main__":
    main()
