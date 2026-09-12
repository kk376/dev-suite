#!/usr/bin/env python3
"""Check Markdown references declared by skill documents.

Verifies that relative Markdown links and backticked paths resolve
to valid physical files on disk or recognized conceptual conventions.
"""

from __future__ import annotations
from pathlib import Path
import re
import sys

ROOT = Path(__file__).resolve().parents[1]
REFERENCE = re.compile(r"`((?:\.\.?/)*[A-Za-z0-9_.\-]+(?:/[A-Za-z0-9_.\-]+)*\.md)(?:#[^`]*)?`")
MD_LINK = re.compile(r"\[.*?\]\(((?:\.\.?/)*[A-Za-z0-9_.\-]+(?:/[A-Za-z0-9_.\-]+)*\.md)(?:#[^)]*)?\)")

CONCEPTUAL_FILES = {
    "CONTEXT.md", "TODO.md", "CONTRIBUTING.md", "ARCHITECTURE.md",
    "README.md", ".impeccable.md", "scratch/session_state.md"
}

def documents() -> list[Path]:
    found = [ROOT / "SKILL.md"] if (ROOT / "SKILL.md").is_file() else []
    if (ROOT / "references").is_dir():
        found += sorted((ROOT / "references").rglob("*.md"))
    return found

def resolves(document: Path, ref: str) -> bool:
    if ref in CONCEPTUAL_FILES or Path(ref).name in CONCEPTUAL_FILES:
        return True
    candidates = [
        (document.parent / ref).resolve(),
        (document.parent / "references" / ref).resolve(),
        (ROOT / ref).resolve(),
        (ROOT / "references" / ref).resolve(),
    ]
    return any(p.is_file() for p in candidates)

def main() -> None:
    broken: list[str] = []
    for document in documents():
        text = document.read_text(encoding="utf-8")
        # Check backticked references
        for m in REFERENCE.finditer(text):
            ref = m.group(1)
            if "://" in ref or ref.startswith("/"):
                continue
            if not resolves(document, ref):
                broken.append(f"{document.relative_to(ROOT)} (backtick): {ref}")

        # Check markdown hyperlinks
        for m in MD_LINK.finditer(text):
            ref = m.group(1)
            if "://" in ref or ref.startswith("/"):
                continue
            if not resolves(document, ref):
                broken.append(f"{document.relative_to(ROOT)} (link): {ref}")

    if broken:
        print("Broken Markdown references:\n" + "\n".join(broken), file=sys.stderr)
        sys.exit(1)

    print("All Markdown references resolve successfully.")

if __name__ == "__main__":
    main()
