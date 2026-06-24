# Getting Started

## Installation

erch is installed from scratch via the boot script:

```bash
curl -fsSL https://erch.eande.uk/boot.sh | bash
```

The installer guides you through:

1. **Hardware detection** — erch detects your system and configures device-specific features (ASUS ROG, Framework 16, Dell XPS, Surface).
2. **Profile selection** — choose between general, work, school, or game profiles. Each profile installs the appropriate packages.
3. **Automated install** — packages, configs, themes, and migrations are applied in sequence. The process takes 15–30 minutes depending on your profile and internet speed.

## First Boot

After installation, log in at SDDM. Your desktop is fully configured:

- **Super** (Windows key) opens the application launcher
- **Super + Alt + Space** opens the erch menu
- **Super + C/X/V** copies files, screenshots, and clipboard history
- **Super + Shift + Q** closes the focused window

## First Things to Try

```bash
# See what theme is active
erch theme current

# List all available themes
erch theme list

# Set a different theme
erch theme set nord

# Open your notes directory
erch wiki notes init
erch wiki notes serve

# Update your system
erch update
```

## Updating

```bash
erch update
```

This updates both system packages (pacman) and erch itself (git pull + migration run).
