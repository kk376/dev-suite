# Contract-First API & Event Schema Governance

Coordinate frontend, backend, and service-to-service work through authoritative, machine checkable contracts. Consumers specify the data and interactions they require, providers implement that contract, and both sides verify against the same artifact before integration.

---

## 1. Core Principles of Contract-First Architecture

1. **One Authoritative Machine Checkable Artifact**: The contract is the single source of truth. Never maintain payload definitions independently across wikis, prose documents, mock files, and server code.
2. **Consumer-First Task Modeling**: Design contracts around what the consumer must render or execute. Never dump raw database rows or ORM entities onto an API boundary and call it a contract.
3. **Fail Closed Validation**: Both provider and consumer validate inputs and outputs at the boundary against the schema.
4. **Generated Over Handwritten**: Generate TypeScript types, Go structs, Python Pydantic models, and client SDKs directly from the contract artifact.
5. **Contract-Valid Mocks**: Consumers unblock immediately by building against mocks generated directly from the schema before provider implementation begins.

---

## 2. Choosing the Boundary Artifact

| Architecture / Transport | Authoritative Format | Tooling & Generators |
| :--- | :--- | :--- |
| **REST / HTTP APIs** | **OpenAPI 3.1** (YAML or JSON) | `openapi-typescript`, `hey-api`, `spectral`, `prism` |
| **Event-Driven / Webhooks** | **AsyncAPI 3.0** | `@asyncapi/cli`, `asyncapi-generator` |
| **gRPC / High Performance RPC** | **Protocol Buffers v3** (`.proto`) | `protoc`, `buf`, `connect-es`, `ts-proto` |
| **Standalone JSON Payloads** | **JSON Schema Draft 2020-12** | `ajv`, `json-schema-to-typescript`, `pydantic` |
| **Monorepo Internal RPC** | **Typed Seams** (tRPC / Ts-Rest) | Shared library packages, zero runtime drift |

Keep implementation details out. Database column names, internal table joins, and raw query structures must never leak into public contracts.

---

## 3. The 5-Step Consumer-First Workflow

```
1. Identify Consumers & Owner ──► 2. Model Consumer Jobs ──► 3. Define Minimal Schema
                                                                      │
                                                                      ▼
5. Verify Provider via Diffs  ◄── 4. Generate Mocks & Types ◄─────────┘
```

### Step 1: Identify Consumers and Owners
Record explicitly:
- Who consumes this boundary (e.g. mobile app, web dashboard, external webhook subscriber).
- Who owns provider implementation.
- Who holds sign-off authority for breaking contract changes.
- The path to the authoritative repository schema file (e.g. `schemas/openapi.yaml`).

### Step 2: Model Consumer Jobs
Start from the user experience and downstream workflows:
- What fields are mandatory for the consumer to render state?
- What do missing, empty, and null mean?
- Which numbers must remain strings (e.g. 64-bit IDs that overflow JavaScript's `Number.MAX_SAFE_INTEGER`)?
- Can one task-oriented response replace multiple chatty network calls?
- What error codes require custom UI handling (e.g. `INSUFFICIENT_FUNDS` vs `CARD_EXPIRED`)?

### Step 3: Define the Smallest Useful Contract
Write the schema using explicit validation constraints, enums, and clear nullability.

```yaml
# schemas/openapi.yaml
openapi: 3.1.0
info:
  title: Order Service API
  version: 1.0.0
paths:
  /orders/{orderId}:
    get:
      summary: Retrieve order summary for user checkout
      parameters:
        - name: orderId
          in: path
          required: true
          schema:
            type: string
            pattern: '^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$'
      responses:
        '200':
          description: Order details successfully retrieved
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/OrderSummary'
        '404':
          description: Order not found
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/ApiError'

components:
  schemas:
    OrderSummary:
      type: object
      required: [id, status, currency, totalCents, createdAt]
      properties:
        id:
          type: string
          description: Opaque UUID string. Never parse as float or integer.
        status:
          type: string
          enum: [pending, processing, paid, cancelled]
        currency:
          type: string
          pattern: '^[A-Z]{3}$'
          example: USD
        totalCents:
          type: integer
          minimum: 0
          description: Total amount in smallest currency unit (cents).
        cancellationReason:
          type: [string, "null"]
          description: Null unless status is cancelled.
        createdAt:
          type: string
          format: date-time
    ApiError:
      type: object
      required: [code, message]
      properties:
        code:
          type: string
          enum: [NOT_FOUND, UNAUTHORIZED, RATE_LIMITED, INTERNAL_ERROR]
        message:
          type: string
```

### Step 4: Generate Types and Contract-Valid Mocks
Never write TypeScript interfaces or domain models by hand when a schema exists. Run pinned generator scripts:

```bash
npx openapi-typescript schemas/openapi.yaml -o src/generated/api-types.ts
```

Construct mocks that strictly conform to the generated types:

```typescript
import type { components } from "./generated/api-types";

type OrderSummary = components["schemas"]["OrderSummary"];

export const mockPaidOrder: OrderSummary = {
  id: "550e8400-e29b-41d4-a716-446655440000",
  status: "paid",
  currency: "USD",
  totalCents: 4999,
  cancellationReason: null,
  createdAt: "2026-09-03T12:00:00Z",
};
```

Consumers develop UI components against `mockPaidOrder` immediately with zero blocking backend dependencies.

### Step 5: Verify Provider Implementation
The provider runs contract testing against the schema before shipping:
1. **Schema Linting**: Validate style, naming conventions, and security rules (e.g. `spectral lint schemas/openapi.yaml`).
2. **Contract Conformance Tests**: Use Dredd, Schemathesis, or Prism to verify that actual HTTP responses match the declared OpenAPI schema.
3. **Breaking Change Detection**: Run `oasdiff` or `buf breaking` in CI on every PR. Any unannounced breaking change immediately fails the build.

---

## 4. Schema Evolution & Breaking Change Policy

### Non-Breaking Changes (Safe to ship anytime)
- Adding an optional field to a request.
- Adding any field to a response (provided consumers ignore unknown fields).
- Adding a new independent endpoint or query parameter.
- Adding a new optional header.

### Breaking Changes (Requires deprecation window)
- Renaming or deleting an existing field.
- Changing field nullability (e.g. making an optional field required, or making a non-null field nullable).
- Restricting enum values or regex patterns.
- Changing error status codes or error structure.

### The Two-Phase Deprecation Protocol
When a field must be retired:
1. **Phase 1 (Announce & Dual Support)**: Mark the field `deprecated: true` in the schema. Add the replacement field alongside it. The provider populates both fields.
2. **Phase 2 (Telemetry Verification)**: Inspect production access logs and request headers. Verify that zero active clients request the deprecated field.
3. **Phase 3 (Retire)**: Remove the deprecated field in the next major API version.
