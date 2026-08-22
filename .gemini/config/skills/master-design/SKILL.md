---
name: master-design
description: >-
  The Master System Information Fetch & Terminal UI Architecture Standard.
  Synthesizes lessons, archetypes, hardware probers, rendering engines,
  low-latency kernel interfaces, and distribution pipelines from the global
  awesome-fetch ecosystem (Fastfetch, Ferrisfetch, Macchina, Onefetch,
  Cpufetch, Nitch).
---

# Master Design: Terminal System Fetch & CLI Architecture Protocol

A unified engineering, architecture, and design standard for building high-performance system information fetch tools, hardware probers, and terminal user interfaces.

---

# Part 1: Archetypes & Architectural Philosophies

Derived from the analysis of the global terminal fetch ecosystem (`awesome-fetch`):

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                          FETCH TOOL ARCHETYPES                              │
├───────────────────────┬──────────────────────────┬──────────────────────────┤
│ 1. Full System Fetch  │ 2. Hardware-Specialized  │ 3. Domain & Repository   │
│ (fastfetch, ferris-   │ (cpufetch, gpufetch,     │ (onefetch, ghfetch,      │
│  fetch, macchina)     │  ramfetch, batfetch)     │  gitfetch, tinyfetch)    │
│ Complete hardware, OS,│ Deep microarchitectures, │ Git commits, authorship, │
│ packages, and desktop │ AVX/NEON instruction set,│ programming languages,   │
│ environment probes.   │ VRAM clocks, power curves│ repo health, LOC stats.  │
├───────────────────────┼──────────────────────────┼──────────────────────────┤
│ 4. Ultra-Fast Minimal │ 5. Aesthetic & Themed    │ 6. Daemonized & Remote   │
│ (nitch, pfetch, rfetch│ (hyfetch, cutefetch,     │ (hayabusa, webfetch,     │
│  noorfetch, ufetch)   │  bunnyfetch, songfetch)  │  so-sysinfo)             │
│ Sub-millisecond exec, │ Custom ASCII art, pride  │ Background caching,      │
│ zero dependencies.    │ flags, media/widgets.    │ web server endpoints.    │
└───────────────────────┴──────────────────────────┴──────────────────────────┘
```

## Core Design Tenets
1. **Zero Subprocess Spawning in Hot Paths**:
   Never spawn shell processes (`sh -c`, `uname`, `grep`, `awk`, `which`, `lscpu`) to collect system metrics. Shell forks introduce 10–50ms overhead per invocation. Always read virtual filesystems (`/proc`, `/sys`) or invoke OS C-FFI directly.
2. **Sub-10 Millisecond Execution Budget**:
   System fetch tools are frequently placed in `.zshrc` / `.bashrc` and run on every terminal startup. Total execution time must remain under **10ms** (and ideally under **3ms** on modern hardware).
3. **Resilient Cascade Degradation**:
   Every probe must degrade gracefully without panicking or failing when optional hardware, virtual environments (WSL, Docker, KVM), or metadata files are missing.
4. **Deep Module Boundary**:
   Each collector implements a clean trait or interface (`Collector::collect(&Context) -> Option<ModuleOutput>`). Callers never manage OS-specific probe logic directly.

---

# Part 2: Kernel Probing & Hardware Detection Matrix

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                       CROSS-PLATFORM PROBE TARGETS                          │
├───────────────┬────────────────────────────┬────────────────────────────────┤
│ Subsystem     │ Linux / POSIX Interface    │ Windows NT Win32 / Registry    │
├───────────────┼────────────────────────────┼────────────────────────────────┤
│ OS Info       │ /etc/os-release, uname     │ HKLM\...\CurrentVersion        │
│ Kernel        │ /proc/version, uname       │ RtlGetVersion / Win32 Build    │
│ Host / Model  │ /sys/class/dmi/id/*        │ HKLM\...\System\BIOS           │
│ CPU           │ /proc/cpuinfo, sysfs hwmon │ CentralProcessor registry keys │
│ Memory / Swap │ /proc/meminfo, sysinfo()   │ GlobalMemoryStatusEx()         │
│ GPU & VRAM    │ /sys/class/drm/card*, lspci│ Class\{4d36e968...} registry   │
│ Disks         │ /proc/mounts, statvfs()    │ GetDiskFreeSpaceExW()          │
│ Battery       │ /sys/class/power_supply/*  │ GetSystemPowerStatus()         │
│ Uptime        │ /proc/uptime, clock_gettime│ GetTickCount64()               │
│ Install Date  │ statx(stx_btime) on /      │ InstallDate registry timestamp │
│ Timezone      │ localtime_r(tm_gmtoff)     │ GetTimeZoneInformation()       │
│ Desktop / WM  │ $XDG_CURRENT_DESKTOP, X11  │ Desktop Window Manager (DWM)   │
│ Display / Hz  │ DRM sysfs, wlr-randr, X11  │ EnumDisplaySettingsW()         │
└───────────────┴────────────────────────────┴────────────────────────────────┘
```

## 1. Linux & POSIX Direct Probers
- **CPU & Cores**: Read `/proc/cpuinfo`. Extract `model name` / `Hardware` and count unique `processor` entries. Probing maximum clock frequencies via `/sys/devices/system/cpu/cpu*/cpufreq/scaling_max_freq`.
- **Memory & Swap**: Parse `/proc/meminfo` line-by-line using zero-allocation byte prefix matching (`MemTotal:`, `MemAvailable:`, `MemFree:`, `Buffers:`, `Cached:`, `SwapTotal:`, `SwapFree:`).
- **GPU Discovery**: Read `/sys/class/drm/card*/device/vendor` and `device`. Map PCI IDs directly or parse `/sys/class/drm/card*/gt_max_freq_mhz` for clock frequencies.
- **System Installation Time**: Call `statx(AT_FDCWD, "/", AT_SYMLINK_NOFOLLOW, STATX_BTIME, &mut stx)` to query raw filesystem creation time (`stx_btime`).
- **Local Timezone Resolution**: Pass UTC epoch seconds to `libc::localtime_r(&epoch, &mut tm)` to resolve `tm.tm_gmtoff` and format local wall-clock dates with daylight saving time adjustments.

## 2. Windows NT Direct Probers
- **Windows OS & Version**: Read `HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion` (`ProductName`, `DisplayVersion`, `CurrentBuildNumber`). When build $\ge 22000$, identify as Windows 11 regardless of legacy branding strings.
- **Physical Memory**: Allocate `MEMORYSTATUSEX` and call `GlobalMemoryStatusEx(&mut status)` to query total physical RAM and available RAM.
- **Drive Enumeration**: Call `GetLogicalDrives()`, iterate active bitmasks (`C:\`, `D:\`), verify drive type with `GetDriveTypeW()`, and query capacity with `GetDiskFreeSpaceExW()`.
- **Uptime**: Query `GetTickCount64() / 1000` to avoid 32-bit millisecond rollover after 49.7 days.
- **Local Timezone Conversion**: Call `GetTimeZoneInformation(&mut tzi)` to compute total bias in minutes: `-(tzi.Bias + Daylight/Standard Bias) * 60`.

---

# Part 3: Package Database Direct Parsers

Avoid executing package manager binaries (`dpkg -l`, `pacman -Q`, `rpm -qa`). Parse on-disk metadata stores directly:

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                       PACKAGE DATABASE PARSING RULES                        │
├──────────────┬───────────────────────────────┬──────────────────────────────┤
│ Manager      │ File / Directory Path         │ Fast Counting Strategy       │
├──────────────┼───────────────────────────────┼──────────────────────────────┤
│ dpkg / APT   │ /var/lib/dpkg/status          │ Count lines matching         │
│              │                               │ "^Status: install ok inst"   │
│ pacman       │ /var/lib/pacman/local/        │ Count subdirectories (excl.  │
│              │                               │ ALPM lock files and ./)      │
│ rpm / dnf    │ /var/lib/rpm or rpmdb query   │ Direct SQLite / BDB header   │
│              │                               │ query without locking lockdb │
│ apk          │ /lib/apk/db/installed         │ Count lines matching "^P:"   │
│ flatpak      │ /var/lib/flatpak/app/ + user  │ Count directories in app/    │
│ snap         │ /var/lib/snapd/snaps/         │ Count *.snap files           │
│ cargo        │ ~/.cargo/.crates.toml         │ Parse TOML table headers     │
│ npm          │ <global-prefix>/lib/node_mods │ Count directories in global  │
│ pip          │ <python-site-packages>        │ Count *.dist-info / *.egg    │
│ winget       │ %LOCALAPPDATA%\Microsoft\     │ Count entries in packages    │
│              │ WinGet\Packages               │ directory                    │
│ chocolatey   │ C:\ProgramData\chocolatey\lib │ Count subdirectories         │
└──────────────┴───────────────────────────────┴──────────────────────────────┘
```

---

# Part 4: Terminal Typography, Geometry & ANSI Engine

## 1. Visible Width Calculation (ANSI & Unicode Aware)
Standard `string.len()` counts bytes, and `string.chars().count()` counts code points. Neither represents terminal column width.

```
Visible Terminal Width = ∑ char_width(c) - ANSI_Escape_Sequences
```

- **ANSI Escape Sequences**: Zero width (`\x1b[...m` sequences consume 0 columns).
- **Double-Width Characters**: CJK ideographs, full-width kana, and certain emojis occupy **2 columns**.
- **Zero-Width Characters**: Combining marks, zero-width joiners (ZWJ), and soft hyphens occupy **0 columns**.
- **Enforcement**: Always strip or skip ANSI control characters before computing padding and alignment widths.

## 2. Dynamic Side-by-Side Layout Engine

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

- **Two-Column Pairing**: Line $i$ of the ASCII logo is padded to `logo_max_width` and concatenated with line $i$ of the info lines with a configurable margin (e.g. 2–3 spaces).
- **Unequal Row Counts**: When the logo has fewer lines than info output, pad logo lines with empty spaces. When the logo has more lines, emit logo trailing lines without info text.
- **Narrow Terminal Fallback**: Query terminal column width via `ioctl(TIOCGWINSZ)` or `GetConsoleScreenBufferInfo()`. If width $< 60$ columns or `--no-logo` is passed, automatically fallback to vertical stacked rendering (logo on top or omitted).

## 3. Color Blocks & Palette Visualization
Render standard 8-color and 16-color swatches using Unicode full block (`\u{2588}`) or circles (`\u{25CF}`):

```rust
// Standard 8-color palette bar:
"\x1b[30m███\x1b[31m███\x1b[32m███\x1b[33m███\x1b[34m███\x1b[35m███\x1b[36m███\x1b[37m███\x1b[0m"
```

---

# Part 5: Performance Budgets & Systems Engineering

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                           PERFORMANCE TARGETS                               │
├───────────────────────┬─────────────────────────┬───────────────────────────┤
│ Metric                │ Maximum Threshold       │ Ideal Target              │
├───────────────────────┼─────────────────────────┼───────────────────────────┤
│ Execution Latency     │ < 10 ms                 │ 1.5 ms – 3.0 ms           │
│ Process Spawns        │ 0 subprocesses          │ 0 subprocesses            │
│ Memory Allocations    │ < 2 MB RSS              │ < 500 KB RSS              │
│ File Descriptors      │ Closed immediately      │ Streamed in small buffers │
└───────────────────────┴─────────────────────────┴───────────────────────────┘
```

1. **Stack Allocation Over Heap**: Reuse static buffers or small `Vec` with pre-allocated capacity for parsing `/proc` lines.
2. **Short-Circuit Streaming**: Break file reading as soon as target keys are discovered (e.g. read only the first 50 lines of `/proc/cpuinfo` instead of reading entire multi-socket records).
3. **No Unbounded Globbing**: Never traverse recursive filesystem trees when counting packages or fonts. Target exact database directories.

---

# Part 6: CLI UX & Structured Output Standard

## 1. Standard CLI Command Flags
Every master fetch CLI must support:
- `-c, --config <PATH>`: Custom configuration file (TOML, YAML, JSON).
- `-l, --logo <NAME>`: Explicit ASCII logo override (e.g. `arch`, `ubuntu`, `windows`, `fedora`, `none`).
- `-m, --modules <LIST>`: Comma-separated list of enabled modules.
- `-d, --disable <LIST>`: Comma-separated list of disabled modules.
- `--no-logo`: Render only information block.
- `--no-color`: Disable all ANSI styles and color escapes (respecting `$NO_COLOR`).
- `--json`: Emit complete structured machine-readable JSON telemetry.
- `-h, --help`: Formatted usage and module listing.
- `-V, --version`: Version string matching repository tags.

## 2. Structured JSON Output Schema
When `--json` is specified, emit a validated, machine-parsable object:

```json
{
  "title": { "user": "<username>", "hostname": "<hostname>" },
  "os": { "name": "Ubuntu", "version": "24.04.4 LTS", "arch": "x86_64" },
  "kernel": "6.18.33.2-microsoft-standard-WSL2",
  "uptime": { "seconds": 11040, "formatted": "3 hours, 4 mins" },
  "memory": { "used_bytes": 1610612736, "total_bytes": 7902597120, "percentage": 20.3 },
  "installed": { "timestamp": 1769127720, "formatted": "23 Jan 2026, 12:22 AM" }
}
```

---

# Part 7: Cross-Platform Packaging & Distribution Matrix

A tier-1 system fetch tool must maintain active distribution channels across all major ecosystem repositories:

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                       DISTRIBUTION CHANNELS MATRIX                          │
├───────────────────────┬─────────────────────────┬───────────────────────────┤
│ Ecosystem             │ Manifest Location       │ Automation Pipeline       │
├───────────────────────┼─────────────────────────┼───────────────────────────┤
│ Ubuntu / Debian       │ packaging/debian/       │ Launchpad PPA (debuild +  │
│                       │ (control, rules)        │ dput)                     │
│ Fedora / RHEL         │ packaging/rpm/          │ Fedora Copr (copr-cli)    │
│                       │ (ferrisfetch.spec)      │                           │
│ Arch Linux            │ packaging/arch/         │ AUR (makepkg, .SRCINFO)   │
│                       │ (PKGBUILD)              │                           │
│ macOS / Linux         │ packaging/homebrew/     │ Homebrew Tap Formula      │
│                       │ (ferrisfetch.rb)        │                           │
│ Windows 10/11         │ packaging/winget/       │ Microsoft WinGet PKGs     │
│                       │ (*.yaml)                │ (wingetcreate)            │
│ Android               │ packaging/termux/       │ Termux Packages Repo      │
│                       │ (build.sh)              │                           │
│ Alpine Linux          │ packaging/alpine/       │ Alpine aports (APKBUILD)  │
│ Nix / NixOS           │ packaging/nix/          │ Nixpkgs / Flakes          │
└───────────────────────┴─────────────────────────┴───────────────────────────┘
```

## Quality Gate Checklist Before Any Release
1. `cargo check --target x86_64-unknown-linux-gnu` & `cargo check --target x86_64-pc-windows-gnu`: 0 errors.
2. `cargo clippy --all-targets --all-features -- -D warnings`: 0 warnings.
3. `cargo fmt --check`: 100% compliant.
4. `cargo test`: 100% passing across all units and fixtures.
5. Multi-platform release assets compiled and published with SHA256 checksums.
