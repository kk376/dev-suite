# Codebase Architecture Survey & Refactoring

## Architecture Health Scanning (`improve-codebase-architecture`)

### Hotspot Detection
- Find files with high churn + high complexity (cyclomatic complexity, line count, dependency fan-out).
- Scan for shallow module patterns:
  - Long parameter lists passed straight to child functions.
  - An interface that simply renames another interface.
  - Business logic scattered across API controllers instead of deep domain cores.

### Architecture Report Schema (HTML / Mermaid)
Generate a visual report containing:
1. **Executive Summary**: Architecture health score and top 3 deepening candidates.
2. **Mermaid Seam Diagrams**: Before vs After module boundary diagrams.
3. **The Deletion Test Evaluation**: Proof of complexity reduction.
4. **Step-by-Step Refactoring Roadmap**: Expand-contract ticket sequence.
