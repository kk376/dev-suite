# Fedora Workstation Desktop, Multimedia & Hardware Fixes Guide

A curated reference of practical fixes, audio stack optimizations, and hardware acceleration workarounds for **Fedora Workstation (Wayland, PipeWire, Dual AMD/NVIDIA Graphics)**.

---

## 🎧 1. Bluetooth Audio Quality Fix (A2DP vs. Handsfree Mode)

### Problem:
Bluetooth earbuds/headphones (e.g. Mivi, Sony, Bose) sound tinny, distorted, or drop to low-bitrate mono audio after being connected for a while or after joining a voice call.

### Root Cause:
Bluetooth devices operate in two modes:
1. **A2DP Sink (High Definition Stereo)**: High-resolution audio using **AAC**, **SBC-XQ**, or **LDAC** (44.1/48kHz).
2. **HSP / HFP (Handsfree / Headset Unit)**: Low-bandwidth bidirectional telephony mode (**16kHz mSBC** or **8kHz CVSD** mono).

When any application (Chrome with microphone access, Discord, OBS, WebRTC) requests audio input from the headset, PipeWire / WirePlumber automatically switches the headset from A2DP to HFP. Often, WirePlumber fails to revert to A2DP after the microphone is released.

### Instant Fix:
1. Open **GNOME Settings ➔ Sound**.
2. Under **Input**, change the **Input Device** to your laptop's **Internal Microphone** (`Ryzen HD Audio` / `Intel HD Audio`) instead of the Bluetooth headset.
3. Disconnect and reconnect your Bluetooth headset:
   ```bash
   # Quick CLI reconnect
   bluetoothctl disconnect <MAC_ADDRESS> && sleep 2 && bluetoothctl connect <MAC_ADDRESS>
   ```
4. Verify high-definition codec is active:
   ```bash
   wpctl status
   # Check that your sink is running: api.bluez5.codec = "aac" / profile = "a2dp-sink"
   ```

### Permanent WirePlumber Configuration:
Create `~/.config/wireplumber/wireplumber.conf.d/50-bluez.conf`:
```spa-json
monitor.bluez.properties = {
  bluez5.roles = [ a2dp_sink a2dp_source bap_sink bap_source hfp_hf hfp_ag hsp_hs hsp_ag ]
  bluez5.codecs = [ ldac aac aptx_hd aptx sbc_xq sbc ]
  bluez5.enable-sbc-xq = true
  bluez5.enable-msbc = true
  bluez5.enable-hw-volume = true
}
```
Restart WirePlumber:
```bash
systemctl --user restart wireplumber
```

---

## 🎬 2. Chrome / Chromium Video Playback Artifact Fix (Vertical Split Line)

### Problem:
A subtle, 1-pixel vertical line or seam appears right down the middle (50% centerline) of YouTube and HTML5 videos in Google Chrome or Chromium on Linux/Wayland.

### Root Cause:
On Linux/Wayland systems with AMD Radeon integrated graphics (Rembrandt / RDNA2 / RDNA3) and Mesa drivers, Chromium's hardware video decoder (VA-API / ANGLE) splits the video texture into two sub-viewports during zero-copy presentation, creating a visible rendering seam down the middle.

### Fix:
1. In **Google Chrome**, navigate to:
   ```text
   chrome://settings/system
   ```
2. Toggle **"Use graphics acceleration when available"** to **OFF**.
3. Click **`Relaunch`**.

### Performance Impact:
Modern AMD Ryzen and Intel multi-core processors easily handle 1080p, 1440p, and 4K 60fps VP9/AV1 software decoding using **less than 2–3% CPU**, resulting in completely smooth, artifact-free playback.

---

## ⚡ 3. Kernel Updates & NVIDIA Driver Verification

When Fedora updates its kernel (`dnf upgrade`), kernel modules (`akmod-nvidia`, `akmod-v4l2loopback`) must compile against the new kernel headers before rebooting.

### Verification Commands:
```bash
# Check running kernel vs installed kernel
uname -r
rpm -q --last kernel-core | head -1

# Force rebuild kernel modules if needed
sudo akmods --force

# Verify NVIDIA GPU driver is active
nvidia-smi
```
