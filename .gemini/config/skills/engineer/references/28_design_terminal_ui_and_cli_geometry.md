# Terminal UI, ANSI Geometry & Micro-Fetch Layout Engines

A precision engineering guide for terminal interfaces, ASCII art rendering, ANSI escape sequences, and low-latency system probers.

---

## 1. Visible Column Width Calculation

In terminal emulators, byte length and UTF-8 char counts do not reflect visual column positions.

```
Visible Terminal Width = ∑ char_width(c) - ANSI_Escape_Sequences
```

### Critical Width Invariants:
1. **ANSI Sequences (0 Columns)**: `\x1b[...m` escape codes occupy 0 visual columns. Always strip them before measuring line width.
2. **Double-Width Characters (2 Columns)**: CJK ideographs, full-width kana, and Unicode emojis occupy 2 visual columns (use `unicode-width` crate in Rust or `wcwidth()` in C).
3. **Zero-Width Characters (0 Columns)**: Combining accents, zero-width joiners (ZWJ), and soft hyphens occupy 0 columns.

---

## 2. Dynamic Side-by-Side Two-Column Layout Engine

```
 ┌────────────────┐  ┌──────────────────────────────────────────────┐
 │   ASCII LOGO   │  │ INFO BLOCK                                   │
 │                │  │                                              │
 │    .--.        │  │ user@hostname                                │
 │   |o_o |       │  │ -------------                                │
 │   |:_/ |       │  │ OS: Ubuntu 24.04 LTS x86_64                  │
 │  //   \ \      │  │ Kernel: 6.8.0-40-generic                     │
 │ (|     | )     │  │ Uptime: 3 hours, 12 mins                     │
 │/'\_   _/`\     │  │ Memory: 4.12 GiB / 15.21 GiB (27%)           │
 │\___)=(___/     │  │                                              │
 └────────────────┘  └──────────────────────────────────────────────┘
```

### Layout Algorithm:
1. **Compute Max Logo Width**: Find the maximum visible width across all ASCII logo lines (`logo_max_width`).
2. **Line-by-Line Merging**: For row index $i$:
   - Pad the logo line with trailing spaces to reach `logo_max_width`.
   - Append a 2-to-3 space column margin.
   - Append the matching info line.
3. **Unequal Row Padding**:
   - If logo has fewer lines than info text: Emit empty padded space on the left column.
   - If info text has fewer lines than logo: Emit remaining logo lines on the left with empty right column.
4. **Narrow Viewport Fallback**:
   - Query terminal column width via `ioctl(TIOCGWINSZ)` or `GetConsoleScreenBufferInfo()`.
   - If width $< 60$ columns, automatically switch to vertical stacked layout (logo on top or hidden).

---

## 3. Color Blocks & Palette Strips

Render 8-color and 16-color ANSI swatches using Unicode full blocks (`\u{2588}`) or circles (`\u{25CF}`):

```rust
// Standard 8-color palette bar:
"\x1b[30m███\x1b[31m███\x1b[32m███\x1b[33m███\x1b[34m███\x1b[35m███\x1b[36m███\x1b[37m███\x1b[0m"

// Bright 8-color palette bar:
"\x1b[90m███\x1b[91m███\x1b[92m███\x1b[93m███\x1b[94m███\x1b[95m███\x1b[96m███\x1b[97m███\x1b[0m"
```

---

## 4. Zero-Subprocess Virtual Filesystem Probing

Never execute shell binaries (`uname`, `grep`, `df`, `free`) to gather metrics. Read directly from the kernel:

- **CPU**: `/proc/cpuinfo` & `/sys/devices/system/cpu/cpu*/cpufreq/`
- **RAM**: `/proc/meminfo` (byte-level prefix scanner)
- **Uptime**: `/proc/uptime` or `clock_gettime(CLOCK_BOOTTIME)`
- **Disks**: `statvfs()` on `/proc/mounts` endpoints
- **Battery**: `/sys/class/power_supply/*`
- **Windows NT**: Win32 direct FFI (`GlobalMemoryStatusEx`, `GetDiskFreeSpaceExW`, `GetTickCount64`, `GetTimeZoneInformation`).
