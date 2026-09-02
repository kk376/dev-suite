# High-Performance Canvas, Viewport Rendering & Document Viewer Architecture

Architectural invariants for building low-latency, memory-bounded canvas engines, PDF/document viewers, and high-frequency coordinate-mapping systems.

---

## 1. Viewport On Demand Rendering & Bounded Memory LRU

Loading, rasterizing, or retaining an entire multi-page document or large canvas graph in GPU memory creates latency spikes and out-of-memory crashes on large files.

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                       VIEWPORT ON DEMAND RENDERING                          │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                             │
│  [Page 1: Evicted / Offscreen]                                              │
│                                                                             │
│  ┌───────────────────────────────────────────────┐                          │
│  │ CURRENT VISIBLE VIEWPORT                      │                          │
│  │ ┌───────────────────────────────────────────┐ │                          │
│  │ │ Page 2: Intersecting -> Rendered in Cache │ │                          │
│  │ ├───────────────────────────────────────────┤ │                          │
│  │ │ Page 3: Intersecting -> Rendered in Cache │ │                          │
│  │ └───────────────────────────────────────────┘ │                          │
│  └───────────────────────────────────────────────┘                          │
│                                                                             │
│  [Page 4: Prefetch / Staged]                                                │
│  [Page 5..N: Unrendered on Disk]                                            │
│                                                                             │
└─────────────────────────────────────────────────────────────────────────────┘
```

### Core Invariants
- **Geometric Viewport Intersection**: Calculate the exact visible rectangular bounds in document coordinates using current scroll offsets, container dimensions, and zoom scale.
- **Render Only Intersecting Pages**: Only trigger rasterization or rendering passes for pages or canvas nodes whose bounding boxes intersect the visible viewport (plus a minimal overdraw margin of 1-2 pages).
- **Byte-Bounded LRU Cache (`PageLruCache`)**:
  - Eviction must be bounded by memory footprint in bytes (`DEFAULT_MEMORY_BUDGET_BYTES`, e.g. 128MB to 256MB), not arbitrary item counts.
  - Compute byte cost for each cached raster texture: `width * height * 4` (RGBA).
  - Evict least recently viewed textures when adding a new texture would exceed the memory budget.

---

## 2. O(1) Intermediate Mouse Drag Selection (Zero Allocation on Move)

High-frequency mouse move events fire at the monitor refresh rate (60Hz to 240Hz). Performing text extraction, string allocations, or complex layout queries inside continuous drag handlers introduces noticeable frame drops and memory churn.

### The Zero-Allocation Drag Rule
- **Numeric Coordinates During Drag**: In the active `on_mouse_move` handler, only record lightweight numeric ranges or coordinate tuples:
  ```rust
  // Lightweight drag state: zero heap allocation
  struct SelectionRange {
      start_page: usize,
      start_segment: usize,
      end_page: usize,
      end_segment: usize,
  }
  ```
- **Deferred Text Allocation**:
  - Never allocate strings or concatenate text buffers while the user is actively dragging.
  - Defer full UTF-8 string extraction and clipboard payload assembly until either:
    1. The mouse button is released (`on_mouse_up`).
    2. An explicit copy command (`copy_to_clipboard`) is dispatched.

---

## 3. Instanced GPU Quad Rendering vs Layout Node Churn

Dynamic visual elements like selection highlight boxes, search result markers, and cursor carets must not be constructed as individual layout tree nodes or DOM elements.

### The Direct Paint Standard
- Creating separate UI layout nodes or HTML elements for dozens of text highlights triggers heavy style recalculation, layout layout trees, and object allocation.
- **Direct Instanced Quad Paint**: Render selection highlight bounding boxes directly in the low-level paint phase (such as GPUI `paint_quad` or direct 2D canvas draw rects).
- Transform page-relative bounding boxes to screen coordinates directly during paint and dispatch them to the GPU in a single instanced pass.

---

## 4. Geometric Proximity Thresholds for Selection Snapping

When mapping mouse cursor coordinates $(x, y)$ to text characters or runs on a canvas:

### The Snapping Guardrail
- Blindly finding the "nearest" text segment across the entire canvas causes selection to jump across margins, headers, or empty gutters.
- **Proximity Distance Threshold ($\Delta$)**:
  - When the cursor is clicked or dragged outside a text segment's bounding box, calculate the Euclidean or Manhattan distance to the nearest segment boundary.
  - If the distance exceeds a tight proximity threshold (e.g. 16px to 24px), reject selection matching.
  - Clicking in whitespace or empty page gutters must clear active selections rather than erroneously snapping to distant text.

---

## 5. Uniform Aspect Ratio Scaling Clamps (Anti-DoS & Memory Safety)

Zooming or rendering large canvas documents must guard against malicious or corrupt dimensions that could trigger GPU memory exhaustion or panics.

### The Uniform Scaling Clamp Rule
- Set hard upper bounds on maximum renderable dimensions (e.g. `MAX_PAGE_DIMENSION = 8192px`).
- **Never Clamp Width and Height Independently**:
  - Clamping width and height independently distorts aspect ratio and leads to buffer over-allocation or rendering distortion.
  - When target dimensions exceed the maximum bound, compute a uniform scale factor:
    ```rust
    let scale = (max_dimension as f32 / width.max(height) as f32).min(1.0);
    let target_width = ((width as f32 * scale).round() as u32).max(1);
    let target_height = ((height as f32 * scale).round() as u32).max(1);
    ```
- This guarantees uniform proportions, prevents division by zero, and caps maximum surface allocation to safe limits.

---

## 6. Typed Fail-Closed Error Contracts vs Synthetic Fallbacks

Native FFI rendering engines (such as PDFium, Skia, or WebGPU) can fail due to corrupted files, missing system libraries, or unsupported color spaces.

### Error Handling Rules
- **No Synthetic Mock Fallbacks**: Never return dummy transparent pixels or fake success responses when an engine fails.
- **Typed Error Enums**: Return explicit, typed errors (e.g. `PdfError::EngineNotAvailable`, `PdfError::PageRenderFailed(page_idx)`).
- **Surface Actionable UI States**: Present clear, user-facing error states in the interface:
  - Inform the user if an external dependency is missing.
  - Provide an actionable retry button when transient rendering fails.
  - Preserve the rest of the workspace and host application stability without panics.
