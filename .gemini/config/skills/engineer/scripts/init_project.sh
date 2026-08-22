#!/usr/bin/env bash
set -euo pipefail

echo "=== Initializing Engineering Protocols ==="

# 1. Create docs and ADR structure
mkdir -p docs/adr .tickets

# 2. Initialize CONTEXT.md if not present
if [ ! -f "CONTEXT.md" ]; then
  cat << 'EOF' > CONTEXT.md
# Project Context & Ubiquitous Language

## Overview
Brief description of the project, core domain, and business purpose.

## Ubiquitous Language Glossary
- **Term 1**: Clear, unambiguous definition.
- **Term 2**: Clear, unambiguous definition.

## Core Invariants
1. Invariant rule 1.
2. Invariant rule 2.
EOF
  echo "Created CONTEXT.md"
fi

# 3. Create initial ADR template
if [ ! -f "docs/adr/0001-record-architecture-decisions.md" ]; then
  cat << 'EOF' > docs/adr/0001-record-architecture-decisions.md
# ADR-0001: Record Architecture Decisions

## Status
Accepted

## Context
We need a standard way to record significant, hard-to-reverse architectural decisions with their context and trade-offs.

## Decision
We will maintain Architecture Decision Records in `docs/adr/` following the standard ADR template.

## Consequences
### Positive
- Clear historical context for future engineers and agents.
- Documented trade-offs.
EOF
  echo "Created docs/adr/0001-record-architecture-decisions.md"
fi

echo "Engineering project structure successfully initialized."
