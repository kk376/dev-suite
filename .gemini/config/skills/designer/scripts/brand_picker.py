#!/usr/bin/env python3
import sys

ARCHETYPES = {
    "1": ("AI & DevTools", "linear.app, raycast, cursor, claude, warp, mintlify, ollama, x.ai, mistral.ai"),
    "2": ("Big Tech & Enterprise", "apple, meta, ibm, hashicorp, hp, mastercard, uber, vodafone"),
    "3": ("Cloud, Infra & DB", "vercel, supabase, sentry, posthog, resend, mongodb, clickhouse"),
    "4": ("Fintech & Commerce", "stripe, wise, revolut, shopify, coinbase, binance, kraken"),
    "5": ("Productivity & SaaS", "notion, figma, framer, miro, slack, airtable, clay, cal"),
    "6": ("Media & Creative", "theverge, wired, spotify, elevenlabs, runwayml, pinterest"),
    "7": ("Consumer & Lifestyle", "airbnb, nike, starbucks"),
    "8": ("Automotive & Retro", "tesla, spacex, ferrari, lamborghini, nintendo-2001, playstation, dell-1996")
}

def main():
    print("=== Universal Brand & Archetype Selector ===\n")
    print("Select your project's aesthetic archetype:")
    for k, (name, brands) in ARCHETYPES.items():
        print(f"  [{k}] {name} (e.g. {brands})")
    
    choice = input("\nEnter choice [1-8] (default 1): ").strip() or "1"
    if choice in ARCHETYPES:
        name, brands = ARCHETYPES[choice]
        print(f"\n✔ Selected: {name}")
        print(f"Recommended Brand Systems: {brands}")
        print("\nTo generate design tokens, run:")
        print(f"  python3 scripts/generate_tokens.py <brand> [css|tailwind|json]")
    else:
        print("Invalid choice.")

if __name__ == "__main__":
    main()
