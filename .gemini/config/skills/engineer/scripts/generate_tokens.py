#!/usr/bin/env python3
import sys
import json
import re
from pathlib import Path

SKILL_DIR = Path(__file__).resolve().parent.parent
REF_DIR = SKILL_DIR / "references"

def get_brand_markdown(brand_name: str):
    brand_lower = brand_name.lower()
    for ref_file in REF_DIR.glob("*.md"):
        content = ref_file.read_text(encoding="utf-8")
        pattern = rf"## Brand: `{re.escape(brand_lower)}`([\s\S]*?)(?:## Brand: |$)"
        match = re.search(pattern, content, re.IGNORECASE)
        if match:
            return match.group(1).strip()
    return None

def extract_brand_tokens(brand_text: str):
    tokens = {
        "colors": {},
        "typography": {},
        "radius": {},
        "shadows": {}
    }
    
    # 1. Parse line by line for key-value hex definitions
    for line in brand_text.splitlines():
        line = line.strip()
        # match key: "#hex" or key: #hex
        m = re.match(r"^([a-zA-Z0-9_\-]+)\s*:\s*[\"']?(#[0-9a-fA-F]{3,8})[\"']?", line)
        if m:
            k, v = m.group(1).lower(), m.group(2)
            if k not in ["version", "name"]:
                tokens["colors"][k] = v
                
    # 2. Table pattern: | Name | #Hex |
    if len(tokens["colors"]) < 3:
        for line in brand_text.splitlines():
            table_match = re.findall(r"(?:^|\|)\s*([a-zA-Z0-9_\-\s]{2,20})\s*\|\s*`?(#[0-9a-fA-F]{3,8})`?", line)
            for name, hex_val in table_match:
                clean_name = name.strip().lower().replace(" ", "-")
                if clean_name and not clean_name.startswith("#") and clean_name not in ["color", "token", "value"]:
                    tokens["colors"][clean_name] = hex_val

    # 3. Fallback: all `#hex` values with preceding word
    if len(tokens["colors"]) < 3:
        matches = re.findall(r"([a-zA-Z0-9_\-]+)[^#\n]{1,20}(#[0-9a-fA-F]{6})", brand_text)
        for name, hex_val in matches:
            clean_name = name.strip().lower()
            if clean_name and clean_name not in ["version", "name", "color", "http", "https"]:
                tokens["colors"][clean_name] = hex_val

    return tokens

def main():
    if len(sys.argv) < 2:
        print("Usage: generate_tokens.py <brand-name> [css|tailwind|json]")
        print("Example: generate_tokens.py linear.app tailwind")
        print("Supported brands: 74 brands (e.g. apple, linear.app, stripe, vercel, tesla, notion, etc.)")
        sys.exit(1)
        
    brand = sys.argv[1].lower()
    fmt = sys.argv[2].lower() if len(sys.argv) > 2 else "css"
    
    brand_md = get_brand_markdown(brand)
    if not brand_md:
        print(f"Error: Brand '{brand}' not found in 74-brand catalog.")
        sys.exit(1)
        
    tokens = extract_brand_tokens(brand_md)
    colors = tokens["colors"]
    
    if fmt == "json":
        print(json.dumps({"brand": brand, "tokens": tokens}, indent=2))
    elif fmt == "tailwind":
        print(f"// Tailwind Color Configuration for {brand}")
        print("module.exports = {")
        print("  theme: {")
        print("    extend: {")
        print("      colors: {")
        for k, v in colors.items():
            print(f'        "{k}": "{v}",')
        print("      }")
        print("    }")
        print("  }")
        print("};")
    else: # css
        print(f"/* CSS Design Tokens for {brand} */")
        print(":root {")
        for k, v in colors.items():
            print(f"  --{brand.replace('.', '-')}-{k}: {v};")
        print("}")

if __name__ == "__main__":
    main()
