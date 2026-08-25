# Safe Terra Repository Integration Guide for Fedora

A hardened, zero-shenanigans guide for adding the **Terra Repository** (Fyra Labs) to **Fedora Linux** without risking system stability, driver breakages, or unintended package overwrites.

---

## ⚠️ The Problem with Default Terra Installation

Terra provides thousands of modern packages and bleeding-edge CLI tools not available in official Fedora or RPM Fusion. However:
1. **Rolling Release & Epoch Clashes**: Terra frequently builds newer versions of core packages. If left enabled by default, standard `dnf upgrade` can pull Terra's builds instead of Fedora / RPM Fusion builds.
2. **Driver & Codec Risk**: Critical multimedia codecs (`ffmpeg`), GPU drivers (`nvidia`, `mesa`), audio servers (`pipewire`), and kernel modules should **never** be replaced by third-party rolling builds.

---

## 🛡️ The 2-Layer Hardened Defense Architecture

```
                                  [ Daily System Operations ]
                                               │
                                 `sudo dnf update` / `install`
                                               │
                        ┌──────────────────────┴──────────────────────┐
                        ▼                                             ▼
             [ Fedora + RPM Fusion ]                         [ Terra Repository ]
             =======================                         ====================
             ✅ Always Active                                🚫 Dormant (`enabled=0`)
             ✅ Kernels, NVIDIA, Mesa, Codecs                 🚫 0% Background Traffic
```

### Layer 1: Dormant by Default (`enabled=0`)
* Terra repository metadata is **never queried** during routine `dnf upgrade` or standard `dnf install`.
* Zero background interference.

### Layer 2: Core Subsystem Blacklist (`excludepkgs`)
* Even when Terra is explicitly invoked on demand, DNF is hard-blocked from ever serving kernel, NVIDIA, Mesa, PipeWire, FFmpeg, or glibc packages from Terra.

---

## 🚀 1-Minute Setup Instructions

### Step 1: Create the Hardened Repository Configuration
Run this command in your terminal to create `/etc/yum.repos.d/terra.repo`:

```bash
sudo tee /etc/yum.repos.d/terra.repo > /dev/null <<'EOF'
[terra]
name=Terra $releasever
baseurl=https://repos.fyralabs.com/terra$releasever
type=rpm
skip_if_unavailable=True
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://repos.fyralabs.com/terra$releasever/key.asc
enabled=0
priority=99
excludepkgs=kernel*, *nvidia*, mesa*, ffmpeg*, pipewire*, wireplumber*, systemd*, glibc*, gcc*
metadata_expire=4h
EOF
```

### Step 2: Install the System-Wide `dnf-terra` Command
Deploy `/usr/local/bin/dnf-terra` so `sudo dnf-terra` works anywhere:

```bash
sudo tee /usr/local/bin/dnf-terra > /dev/null <<'EOF'
#!/bin/bash
exec dnf --enablerepo=terra "$@"
EOF
sudo chmod +x /usr/local/bin/dnf-terra
```

---

## 🛠️ Intuitive CLI Usage via `sudo dnf-terra`

Instead of remembering verbose flags like `--enablerepo=terra`, use the built-in **`sudo dnf-terra`** command:

### 1. Install an App from Terra:
```bash
sudo dnf-terra install <package-name>
```

### 2. Remove an App:
```bash
sudo dnf-terra remove <package-name>
```

### 3. Search for Packages in Terra:
```bash
dnf-terra search <keyword>
```

### 4. Check Package Information:
```bash
dnf-terra info <package-name>
```

---

## 🔒 Routine System Updates Remain 100% Clean:

```bash
sudo dnf upgrade
```
*DNF only updates official Fedora and RPM Fusion packages. Terra is completely ignored.*

---

## 💡 Troubleshooting: `dnf5daemon-server` Offline Transaction Warning

If you see:
```text
Warning: A pending offline transaction initiated by the following command will be invalidated: dnf5daemon-server
```
This is **100% harmless**. It means GNOME Software prepared a background update queue, but because you ran a live CLI install, DNF cleanly discarded the stale background cache.

To manually clear the offline cache:
```bash
sudo dnf offline clean
```
