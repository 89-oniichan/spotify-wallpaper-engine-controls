# spotify-wallpaper-engine-controls


# 🎧 Spotify Wallpaper Engine Controls

> Full media control for Spotify through Wallpaper Engine on Windows — No API needed!

[![Live Demo](https://img.shields.io/badge/Live%20Demo-Visit%20Site-1DB954?style=for-the-badge&logo=spotify)](https://89-oniichan.github.io/spotify-wallpaper-controls/)

Control Spotify directly from your Wallpaper Engine with lightweight PowerShell scripts. Play, pause, skip tracks, and adjust volume — all without touching your keyboard or mouse!

![Preview](https://img.shields.io/badge/Platform-Windows-0078D6?style=flat-square&logo=windows)
![PowerShell](https://img.shields.io/badge/PowerShell-5.1+-5391FE?style=flat-square&logo=powershell)
![Wallpaper Engine](https://img.shields.io/badge/Wallpaper%20Engine-Required-FF6B6B?style=flat-square)

---

##  Features

| Feature | Description |
|---------|-------------|
| ⏯️ **Play/Pause** | Toggle playback instantly |
| ⏭️ **Next Track** | Skip to next song |
| ⏮️ **Previous Track** | Go back to previous track |
| 🔊 **Volume Up** | Increase system volume |
| 🔉 **Volume Down** | Decrease system volume |
| 🔇 **Mute/Unmute** | Toggle audio mute |

###  Why This Solution?

- ✅ **No API setup** — Works offline
- ✅ **Zero latency** — Instant response
- ✅ **Lightweight** — Minimal system impact
- ✅ **Background ready** — Works while Spotify is minimized
- ✅ **Free forever** — No subscriptions or accounts needed

---

## 📥 Quick Start

### Option 1: Download from Website (Recommended)
👉 **[Visit the Live Page](https://89-oniichan.github.io/spotify-wallpaper-controls/)**

Click "Download All Scripts" and follow the on-page instructions!

### Option 2: Manual Download
1. Download all `.ps1` files from this repository
2. Place them in `C:\Tools\`
3. Configure Wallpaper Engine (see below)

---

## 🛠️ Installation

### Step 1: Create Tools Folder
Open **PowerShell as Administrator** and run:
```powershell
New-Item -Path "C:\Tools" -ItemType Directory -Force
```

### Step 2: Download Scripts
Download all 6 PowerShell scripts:
- `playpause.ps1`
- `skip.ps1`
- `prev.ps1`
- `volumeup.ps1`
- `volumedown.ps1`
- `mute.ps1`

Place them in `C:\Tools\`

### Step 3: Test Scripts
Verify they work by running:
```powershell
powershell.exe -ExecutionPolicy Bypass -File "C:\Tools\playpause.ps1"
```
Spotify should pause/play instantly!

### Step 4: Configure Wallpaper Engine
1. Open **Wallpaper Engine**
2. Go to **Settings** → **General** → **Media Info**
3. Under **Media Player Controls**, choose **Custom Commands**
4. Add each command:

| Function | Command |
|----------|---------|
| **Play/Pause** | `powershell.exe -ExecutionPolicy Bypass -File "C:\Tools\playpause.ps1"` |
| **Next Track** | `powershell.exe -ExecutionPolicy Bypass -File "C:\Tools\skip.ps1"` |
| **Previous Track** | `powershell.exe -ExecutionPolicy Bypass -File "C:\Tools\prev.ps1"` |
| **Volume Up** | `powershell.exe -ExecutionPolicy Bypass -File "C:\Tools\volumeup.ps1"` |
| **Volume Down** | `powershell.exe -ExecutionPolicy Bypass -File "C:\Tools\volumedown.ps1"` |
| **Mute/Unmute** | `powershell.exe -ExecutionPolicy Bypass -File "C:\Tools\mute.ps1"` |

### Step 5: Done! 🎉
Your Spotify controls are now fully integrated with Wallpaper Engine!

---

## 🎮 How It Works

These scripts use Windows' native media key functionality via PowerShell and the `user32.dll` library. They simulate media key presses (Play/Pause, Next, Previous, Volume) that Spotify recognizes system-wide.

### Technical Details
- Uses `keybd_event` from `user32.dll`
- Virtual key codes: `0xB3` (Play/Pause), `0xB0` (Next), `0xB1` (Previous), `0xAF` (Vol+), `0xAE` (Vol-), `0xAD` (Mute)
- Works with any media player that supports Windows media keys
- No background processes or services required
