# Software Ledger

Every component that ships with erch, organized by layer. L0 is the foundation;
each layer builds on the one below.

---

## L0 — System

The install pipeline, package profiles, and base system packages.

### Package Profiles

Packages are organized by use-case. Common packages are always installed.
Users select exactly one profile at install time.

| Profile | Selection | Packages |
|---------|-----------|----------|
| common | Always | 80+ (WM, terminal, bar, browser, editor, fonts, audio, networking) |
| work | Interactive prompt | libreoffice, thunderbird, taskwarrior, git/gh/lazygit, docker, rust/clang/ruby/go, opencode |
| school | Interactive prompt | libreoffice, thunderbird, taskwarrior, xournalpp, opencode |
| game | Interactive prompt | steam, lutris, mangohud, gamemode |
| all | ISO builder only | Union of all above |

### Core Packages by Category

#### WM / Compositor

| Package | Profile | Description |
|---------|---------|-------------|
| hyprland | common | Dynamic tiling Wayland compositor |
| hypridle | common | Idle management daemon |
| hyprlock | common | Screen locker |
| hyprpicker | common | Color picker |
| hyprsunset | common | Blue-light / night-light filter |
| hyprland-guiutils | common | GUI utilities (dpms, power, etc.) |
| hyprland-preview-share-picker | common | Screen share region picker |

#### Display Server / Graphics

| Package | Profile | Description |
|---------|---------|-------------|
| uwsm | common | Universal Wayland Session Manager |
| swaybg | common | Wallpaper setter |
| swayosd | common | On-screen display (volume, brightness) |
| qt5-wayland | common | Qt 5 Wayland platform plugin |

#### Status Bar / Launcher / Notifications

| Package | Profile | Description |
|---------|---------|-------------|
| waybar | common | Customizable Wayland status bar |
| mako | common | Lightweight notification daemon |
| erch-walker | common | Walker app launcher (run/calc/search) |
| polkit-gnome | common | PolicyKit authentication agent |

#### Login Manager / Boot Splash

| Package | Profile | Description |
|---------|---------|-------------|
| sddm | common | QML-based display manager (Wayland-native) |
| plymouth | common | Graphical boot splash |

#### Terminal & Shell

| Package | Profile | Description |
|---------|---------|-------------|
| alacritty | common | GPU-accelerated terminal emulator |
| starship | common | Customizable shell prompt |
| zoxide | common | Smarter cd (learns your paths) |
| fzf | common | Fuzzy finder |
| bat | common | cat clone with syntax highlighting |
| eza | common | Modern ls replacement |
| ripgrep | common | Ultra-fast text search |
| fd | common | Fast file search |
| tmux | common | Terminal multiplexer |
| less | common | Terminal pager |
| tldr | common | Simplified man pages |
| fastfetch | common | System information display |
| jq | common | JSON processor |
| gum | common | Glamorous shell UI toolkit |
| inxi | common | System information script |

#### Text Editor

| Package | Profile | Description |
|---------|---------|-------------|
| nvim | common | Neovim (modern Vim fork) |
| erch-nvim | common | erch Neovim distribution (LazyVim-based) |

#### Browser

| Package | Profile | Description |
|---------|---------|-------------|
| chromium | common | Open-source web browser |

#### File Management

| Package | Profile | Description |
|---------|---------|-------------|
| nautilus | common | GNOME file manager |
| nautilus-python | common | Python bindings for Nautilus extensions |
| gnome-disk-utility | common | Disk/partition management GUI |
| gvfs-mtp | common | MTP support (Android file transfer) |
| gvfs-nfs | common | NFS support |
| gvfs-smb | common | SMB/CIFS support (Windows shares) |
| sushi | common | Quick file previewer |
| ffmpegthumbnailer | common | Video thumbnail generator |

#### Images & Screenshots

| Package | Profile | Description |
|---------|---------|-------------|
| imv | common | Image viewer for Wayland |
| grim | common | Screenshot utility |
| slurp | common | Region selector |
| satty | common | Screenshot annotation tool |
| imagemagick | common | Image processing toolkit |

#### Video

| Package | Profile | Description |
|---------|---------|-------------|
| mpv | common | Minimal video player |
| obs-studio | common | Screen recording and streaming |
| kdenlive | common | Non-linear video editor |

#### Audio

| Package | Profile | Description |
|---------|---------|-------------|
| pipewire | common | Audio/video routing server |
| pipewire-alsa | common | ALSA compatibility |
| pipewire-jack | common | JACK compatibility |
| pipewire-pulse | common | PulseAudio compatibility |
| wireplumber | common | Session manager for PipeWire |
| pamixer | common | PulseAudio volume control (CLI) |
| cliamp | common | Terminal audio player |
| alsa-utils | common | ALSA utilities |
| playerctl | common | Media player controller |

#### Fonts

| Package | Profile | Description |
|---------|---------|-------------|
| noto-fonts | common | Google Noto Sans family |
| noto-fonts-cjk | common | CJK (Chinese/Japanese/Korean) fonts |
| noto-fonts-emoji | common | Color emoji font |
| ttf-ia-writer | common | iA Writer font family |
| ttf-jetbrains-mono-nerd | common | JetBrains Mono with Nerd glyphs |
| woff2-font-awesome | common | Font Awesome icon font |
| fontconfig | common | Font configuration library |

#### Password Manager

| Package | Profile | Description |
|---------|---------|-------------|
| gopass | common | CLI password manager (GPG-based) |

#### Printing

| Package | Profile | Description |
|---------|---------|-------------|
| cups | common | CUPS printing daemon |
| cups-browsed | common | Automatic printer discovery |
| cups-filters | common | Print filters |
| cups-pdf | common | Virtual PDF printer |
| system-config-printer | common | Printer configuration GUI |

#### Desktop Portals / XDG

| Package | Profile | Description |
|---------|---------|-------------|
| xdg-desktop-portal-gtk | common | GTK backend for XDG Portal |
| xdg-desktop-portal-hyprland | common | Hyprland backend for XDG Portal |
| xdg-terminal-exec | common | XDG terminal execution handler |

#### Input Method (CJK)

| Package | Profile | Description |
|---------|---------|-------------|
| fcitx5 | common | Input method framework |
| fcitx5-gtk | common | GTK integration |
| fcitx5-qt | common | Qt integration |

#### System Utilities

| Package | Profile | Description |
|---------|---------|-------------|
| ufw | common | Uncomplicated Firewall |
| plocate | common | Fast file location database |
| tzupdate | common | Automatic timezone detection |
| power-profiles-daemon | common | Power profile management |
| socat | common | Bidirectional data relay |
| dosfstools | common | FAT filesystem tools |
| exfatprogs | common | exFAT filesystem tools |
| bolt | common | Thunderbolt device manager |
| avahi | common | Zeroconf/mDNS service discovery |
| nss-mdns | common | mDNS hostname resolution |
| inetutils | common | Network utilities |
| iwd | common | Wireless daemon |
| wireless-regdb | common | Wireless regulatory database |
| wl-clipboard | common | Wayland clipboard utilities |
| man-db | common | Manual page database |
| unzip | common | Zip archive extractor |
| whois | common | WHOIS client |
| xmlstarlet | common | XML command-line toolkit |
| expac | common | Pacman database query utility |

#### Libraries

| Package | Profile | Description |
|---------|---------|-------------|
| libsecret | common | Secret service (keyring) library |
| libyaml | common | YAML parser library |
| libqalculate | common | Calculator library |
| postgresql-libs | common | PostgreSQL client libraries |
| python-gobject | common | Python GLib/GObject bindings |
| python-terminaltexteffects | common | Terminal text animation effects |
| python-poetry-core | common | Python Poetry dependency manager |
| kvantum-qt5 | common | Qt5 widget styling engine |

#### Work Profile Packages

| Package | Profile | Description |
|---------|---------|-------------|
| libreoffice-fresh | work/school | Office suite |
| thunderbird | work/school | Email/calendar/contacts |
| taskwarrior | work/school | CLI task management |
| git | work | Distributed version control |
| github-cli | work | GitHub CLI |
| lazygit | work | TUI git client |
| lazydocker | work | TUI Docker manager |
| docker | work | Container engine |
| docker-compose | work | Docker multi-container orchestration |
| docker-buildx | work | Docker multi-platform build |
| rust | work | Rust programming language |
| clang | work | C/C++ compiler |
| llvm | work | LLVM compiler infrastructure |
| ruby | work | Ruby programming language |
| go | work | Go programming language |
| tobi-try | work/school | Experiment/scratchpad manager |
| pandoc | work/school | Universal document converter |
| mdbook | work/school | Markdown book builder |

#### School Profile Packages

| Package | Profile | Description |
|---------|---------|-------------|
| xournalpp | school | PDF annotation and note-taking |

#### Game Profile Packages

| Package | Profile | Description |
|---------|---------|-------------|
| steam | game | Valve game store and client |
| lutris | game | Game manager (multiple platforms) |
| mangohud | game | Game performance overlay |
| gamemode | game | Game performance optimization daemon |

### Non-Pacman Software

#### Web App Wrappers (webapps.sh)

| Web App | URL | Purpose |
|---------|-----|---------|
| HEY | app.hey.com | Email service (mailto: handler) |
| Basecamp | launchpad.37signals.com | Project management |
| WhatsApp | web.whatsapp.com | Messaging |
| Google Photos | photos.google.com | Photo management |
| Google Contacts | contacts.google.com | Contacts management |
| Google Messages | messages.google.com/web | SMS messaging |
| Google Maps | maps.google.com | Mapping/navigation |
| ChatGPT | chatgpt.com | AI chat assistant |
| YouTube | youtube.com | Video streaming |
| GitHub | github.com | Code hosting |
| X | x.com | Social media |
| Figma | figma.com | UI/UX design tool |
| Discord | discord.com | Voice/text chat |
| Zoom | app.zoom.us | Video conferencing |
| Fizzy | app.fizzy.do | Task management |

#### TUI Wrappers (tuis.sh)

| TUI | Command | Description |
|-----|---------|-------------|
| Disk Usage | dust -r | Terminal disk usage analyzer |
| Docker | lazydocker | Terminal Docker management UI |

#### NPX Packages (npx.sh)

| Package | Profile | Description |
|---------|---------|-------------|
| opencode | work/school | AI coding assistant |

#### Python Packages (pip.sh, via mise+uv)

| Package | Description |
|---------|-------------|
| weasyprint | HTML/CSS to PDF converter |

#### Fonts (fonts.sh)

| Asset | Description |
|-------|-------------|
| erch.ttf | erch icon font (Waybar icon) |

#### Icons (icons.sh)

| Asset | Description |
|-------|-------------|
| Bundled PNGs | Application icons for webapps and TUI wrappers |

### Install Pipeline (116 scripts)

#### helpers/ (4 scripts)

| Script | Purpose |
|--------|---------|
| logging.sh | Log output management via `run_logged` |
| errors.sh | Error handling, catch/exit handlers, QR to Discord |
| presentation.sh | Terminal UI (gum styling, logo, colors) |
| chroot.sh | Chroot-aware systemctl enable functions |

#### preflight/ (8 scripts)

| Script | Purpose |
|--------|---------|
| guard.sh | Root/arch/minimum requirements check |
| begin.sh | Render install header, present EULA |
| show-env.sh | Display detected hardware and install plan |
| profile.sh | Interactive profile selection |
| pacman.sh | Configure pacman, install keyring |
| migrations.sh | Register pending migration scripts |
| first-run-mode.sh | Create first-run marker, grant sudo |
| disable-mkinitcpio.sh | Disable mkinitcpio during install (speed) |

#### packaging/ (12 scripts)

| Script | Purpose |
|--------|---------|
| base.sh | Install pacman packages from profile .pkgs |
| fonts.sh | Copy erch.ttf and update font cache |
| nvim.sh | Bootstrap LazyVim Neovim distribution |
| icons.sh | Copy bundled application icons |
| webapps.sh | Create webapp desktop entries |
| tuis.sh | Create TUI launcher desktop entries |
| npx.sh | Install NPX wrappers (opencode) |
| pip.sh | Install Python packages (weasyprint) |
| asus-rog.sh | ASUS ROG hardware support (conditional) |
| framework16.sh | Framework 16 laptop support (conditional) |
| dell-xps-touchpad-haptics.sh | Dell XPS haptic touchpad (conditional) |
| surface.sh | Surface laptop support (conditional) |

#### config/ (33 scripts)

| Script | Purpose |
|--------|---------|
| config.sh | Copy default configs to ~/.config/ |
| theme.sh | Apply initial theme (Tokyo Night) |
| branding.sh | Apply erch branding (logos, ASCII art) |
| git.sh | Configure git defaults |
| gpg.sh | Configure GPG/dirmngr keyservers |
| timezones.sh | Auto-detect and set timezone |
| increase-sudo-tries.sh | Increase sudo attempts to 10 |
| increase-lockout-limit.sh | Increase PAM lockout threshold |
| ssh-flakiness.sh | Fix SSH drops (tcp_mtu_probing) |
| increase-file-watchers.sh | Raise inotify watch limit |
| increase-fd-limit.sh | Raise file descriptor limit |
| detect-keyboard-layout.sh | Copy install keyboard layout to Hyprland |
| xcompose.sh | Set up CapsLock compose key |
| mise-work.sh | Setup ~/Work directory with mise |
| fix-powerprofilesctl-shebang.sh | Fix powerprofilesctl Python path |
| docker.sh | Configure Docker daemon, socket, group |
| mimetypes.sh | Set default apps (imv, mpv, etc.) |
| user-dirs.sh | Create standard user directories |
| nautilus-python.sh | Install Nautilus extensions |
| localdb.sh | Run updatedb for plocate |
| walker-elephant.sh | Set up Walker + Elephant integration |
| fast-shutdown.sh | Reduce systemd shutdown timeout |
| unmount-fuse.sh | Unmount FUSE before suspend |
| sudoless-asdcontrol.sh | Passwordless Apple Display brightness |
| input-group.sh | Add user to input group |
| erch-ai-skill.sh | Symlink erch skill for AI assistants |
| pi.sh | Copy PI agent extensions |
| erch-toggles.sh | Initialize feature toggle infrastructure |
| kernel-modules-hook.sh | Enable orphan module cleanup |
| powerprofilesctl-rules.sh | Auto power profile on AC/battery |
| wifi-powersave-rules.sh | WiFi powersave on battery |
| plocate-ac-only.sh | Only updatedb on AC power |

#### hardware/ (34 scripts)

| Script | Purpose |
|--------|---------|
| network.sh | Enable iwd, mask networkd-wait-online |
| set-wireless-regdom.sh | Auto-detect wireless regulatory domain |
| fix-fkeys.sh | Force Apple keyboards to F-key mode |
| bluetooth.sh | Enable Bluetooth, A2DP auto-connect |
| printer.sh | Enable CUPS, Avahi, mDNS |
| usb-autosuspend.sh | Disable USB autosuspend |
| ignore-power-button.sh | Disable power button shutdown |
| nvidia.sh | Detect + install NVIDIA driver |
| vulkan.sh | Install Vulkan driver for detected GPU |
| fix-bcm43xx.sh | Broadcom Wi-Fi for MacBooks |
| fix-surface-keyboard.sh | Surface keyboard modules |
| fix-yt6801-ethernet-adapter.sh | YT6801 ethernet driver |
| fix-synaptic-touchpad.sh | Synaptics InterTouch |
| fix-tuxedo-backlight.sh | Tuxedo keyboard backlight |
| intel/video-acceleration.sh | Intel VAAPI/VPL drivers |
| intel/lpmd.sh | Intel Low Power Mode daemon |
| intel/thermald.sh | Intel thermal daemon |
| intel/ipu7-camera.sh | Intel IPU7 MIPI camera |
| intel/ptl-kernel.sh | Panther Lake kernel |
| intel/fred.sh | Intel FRED interrupt delivery |
| intel/fix-wifi7-eht.sh | Disable WiFi 7 EHT workaround |
| intel/sof-firmware.sh | Sound Open Firmware for audio DSP |
| asus/fix-asus-ptl-display-backlight.sh | ASUS PTL display backlight |
| asus/fix-asus-ptl-b9406-display.sh | ExpertBook B9406 Panel Replay |
| asus/fix-asus-ptl-b9406-touchpad.sh | ExpertBook B9406 touchpad |
| asus/fix-audio-mixer.sh | ROG audio volume (soft mixer) |
| asus/fix-mic.sh | ROG internal mic gain (ALC285) |
| asus/fix-z13-touchpad.sh | ROG Flow Z13 disable-while-typing |
| framework/fix-f13-amd-audio-input.sh | Framework 13 AMD audio profile |
| framework/qmk-hid.sh | Framework 16 keyboard RGB access |
| apple/fix-spi-keyboard.sh | MacBook SPI keyboard driver |
| apple/fix-suspend-nvme.sh | MacBook NVMe suspend/resume |
| apple/fix-t2.sh | Full T2 Mac support |
| lenovo/fix-yoga-pro7-bass-speakers.sh | Yoga Pro 7 bass speakers |

#### login/ (5 scripts)

| Script | Purpose |
|--------|---------|
| plymouth.sh | Install erch Plymouth boot splash theme |
| sddm.sh | Configure SDDM with Wayland, autologin, erch theme |
| default-keyring.sh | Create passwordless default GNOME keyring |
| hibernation.sh | Configure hibernation (swap file/partition) |
| limine-snapper.sh | Configure Limine bootloader with snapper snapshots |

#### post-install/ (3 scripts)

| Script | Purpose |
|--------|---------|
| pacman.sh | Final pacman config, T2 repository |
| allow-reboot.sh | Grant passwordless reboot |
| finished.sh | Display completion animation |

#### first-run/ (12 scripts, orchestrated by erch-first-run)

| Script | Purpose |
|--------|---------|
| all.sh | Orchestrator — sourced by erch-first-run |
| battery-monitor.sh | Enable battery monitoring timer |
| recover-internal-monitor.sh | Internal monitor recovery service |
| cleanup-reboot-sudoers.sh | Remove temporary sudo permissions |
| firewall.sh | Configure UFW (deny incoming, allow Docker/LocalSend) |
| dns-resolver.sh | Symlink systemd-resolved stub resolver |
| gnome-theme.sh | Apply GTK theme (Adwaita-dark) |
| swayosd.sh | Enable and start SwayOSD |
| gtk-primary-paste.sh | Enable middle-click paste in GTK |
| elephant.sh | Start Elephant wallpaper manager |
| welcome.sh | Show welcome notification |
| wifi.sh | Prompt for WiFi if offline |
| install-voxtype.hook | Post-update hook for Voxtype |

---

## L1 — Defaults

Read-only system defaults shipped with erch. Copied to `~/.local/share/erch/`
on install. Never edited directly.

| Subdirectory | Files | Purpose |
|-------------|-------|---------|
| bash/ | 8 + 6 fns | Shell init chain: rc → envs → shell → aliases → functions → init → completions + inputrc; function libs for compression, drives, ssh, tmux, transcoding, worktrees |
| bashrc | 1 | Top-level .bashrc entry point; sources bash/rc |
| hypr/ | 7 + 28 subfiles | Compositor: envs, input, looknfeel, windows, autostart, bindings, plain-bindings; 19 app rules, 5 binding modules, 4 toggles |
| systemd/ | 5 | Shutdown timeout, supergfxd delay, sleep hooks (igpu, keyboard backlight, unmount-fuse) |
| wayland-sessions/ | 1 | SDDM session entry (erch.desktop) |
| alacritty/ | 1 | Screensaver terminal config |
| foot/ | 2 | Desktop entry + screensaver config |
| ghostty/ | 1 | Screensaver config |
| mako/ | 1 | Base notification config |
| walker/ | 3 | Desktop entry, restart override, default theme |
| waybar/ | 5 | Widget scripts: salat, weather, idle/notification/recording indicators |
| wireplumber/ | 2 | ALSA soft mixer, Bluetooth A2DP auto-connect |
| pacman/ | 6 | Per-channel pacman.conf + mirrorlist (stable/rc/edge) |
| sddm/ | 10 | QML theme: Main.qml, theme.conf, metadata, PNGs + hyprland.conf |
| plymouth/ | 10 | Theme: .plymouth, .script, PNGs, logos/oma.png |
| gpg/ | 1 | dirmngr.conf for GPG keyservers |
| udev/ | 1 | Framework 16 keyboard udev rule |
| chromium/ | 3 | Extension: copy-url (background.js, icon.png, manifest.json) |
| firefox/ | 1 | policies.json |
| nautilus-python/ | 2 | Extensions: localsend.py, transcode.py |
| elephant/ | 3 | Lua scripts: background_selector, themes, unlocks |
| voxtype/ | 1 | config.toml |
| erch-skill/ | 1 | SKILL.md (AI agent definition) |
| pi/ | 1 | erch-system-theme.ts (PI agent extension) |
| hooks/ | 3 | Default lifecycle hooks (theme-set, font-set, post-update) |
| snapper/ | 1 | Snapshot config |
| limine/ | 2 | Bootloader config + default entry |
| branding/ | 5 | about.txt, screensaver.txt, ee-logo.png, ee-mark.png, water-mark.png |
| xcompose | 1 | XCompose key sequences for emoji |
| project-docs/ | 1 | Documentation template README |

---

## L2 — Configs

Default user configs copied to `~/.config/` on install. Theme-aware configs
contain `{{ variable }}` placeholders and are rendered by the theme system.

| Config | Theme-Aware | Files | Purpose |
|--------|-------------|-------|---------|
| alacritty/ | Yes (.tpl) | alacritty.toml | Terminal colors, fonts, window |
| autostart/ | No | Fcitx5 desktop entry | Input method autostart |
| btop/ | Yes (.tpl) | btop.conf | System monitor theme |
| chromium/ | Yes (.tpl) | Default/Preferences | Browser prefs + policies |
| chromium-flags.conf | No | — | Browser command-line flags |
| elephant/ | No | calc.toml, desktopapplications.toml, symbols.toml | Wallpaper manager |
| environment.d/ | No | fcitx.conf | CJK input env vars |
| erch/ | Partial | salat.conf, extensions/, hooks/, themed/ | User config, hooks, theme overrides |
| fastfetch/ | No | config.jsonc | System info display |
| fcitx5/ | No | conf/ | Input method config |
| fontconfig/ | No | fonts.conf | Font rendering |
| foot/ | Yes (.tpl) | foot.ini | Terminal colors |
| ghostty/ | Yes (.tpl) | config | Terminal colors |
| git/ | No | config | User/aliases/diff |
| git-hooks/ | No | pre-commit | Shell syntax check |
| hypr/ | Yes (.tpl) | 10 files | Compositor: all settings |
| hyprland-preview-share-picker/ | Yes (.tpl) | config.yaml | Share picker styling |
| imv/ | No | config | Image viewer |
| kitty/ | Yes (.tpl) | kitty.conf | Terminal colors |
| lazygit/ | No | config.yml | Git TUI config |
| notes/ | Yes (.tpl) | book.toml, SUMMARY.md, vimwiki.lua, erch.css | Wiki/notes stack |
| obsidian/ | Yes (.tpl) | user-flags.conf | Vault theme |
| opencode/ | No | opencode.json | AI coding agent |
| swayosd/ | Yes (.tpl) | config.toml, style.css | OSD layout + theme |
| systemd/ | No | user/ | User services |
| tmux/ | No | tmux.conf | Multiplexer config |
| Typora/ | No | themes/ | Markdown editor theme |
| uwsm/ | No | default, env | Session manager |
| walker/ | Yes (.tpl) | config.toml | Launcher config |
| waybar/ | Yes (.tpl) | config.jsonc, style.css | Bar layout + theme |
| wiremix/ | No | wiremix.toml | WireGuard VPN |
| xournalpp/ | No | settings.xml | PDF annotation |
| starship.toml | No | — | Shell prompt |
| xdg-terminals.list | No | — | Default terminal list |
| erch.ttf | No | — | Icon font file |

### Theme-Aware Templates (default/themed/*.tpl)

19 `.tpl` files rendered by the theme system using `{{ variable }}` from `colors.toml`.

| Template | Applies To | What It Controls |
|----------|-----------|-----------------|
| alacritty.toml.tpl | Alacritty | 16-color palette, foreground, background, cursor, selection |
| btop.theme.tpl | btop | All UI colors, graphs, process lists |
| chromium.theme.tpl | Chromium/Chrome/Edge/Brave | Tab bar background accent |
| erch.css.tpl | erch internal pages | Background, foreground, accent, selection, status |
| foot.ini.tpl | Foot | 16-color palette, cursor, selection |
| ghostty.conf.tpl | Ghostty | 16-color palette, foreground, background, cursor, selection |
| gum.env.conf.tpl | Hyprland (GUM UI vars) | ~80 color variables for UI elements |
| helix.toml.tpl | Helix editor | 16-color palette, cursor, selection |
| hyprland.conf.tpl | Hyprland WM | Window border accent color |
| hyprland-preview-share-picker.css.tpl | Share picker | Foreground, background, accent, gray, blue |
| hyprlock.conf.tpl | Hyprlock | Background RGB, foreground RGB, accent RGB |
| keyboard.rgb.tpl | Keyboard backlight | Accent color for RGB lighting |
| kitty.conf.tpl | Kitty | 16-color palette, cursor, selection, foreground, background |
| mako.ini.tpl | Mako | Foreground, accent, background for notification bubbles |
| mdbook-variables.css.tpl | mdbook docs | Full theme: sidebar, code blocks, backgrounds |
| obsidian.css.tpl | Obsidian | Background layers, foreground, selection, accent, syntax |
| swayosd.css.tpl | SwayOSD | Background, foreground, accent for OSD popups |
| walker.css.tpl | Walker | Accent, foreground, background for launcher UI |
| waybar.css.tpl | Waybar | Foreground and background colors |

---

## L3 — Theme

### 19 Built-in Themes

```
catppuccin        catppuccin-latte   ethereal           everforest
flexoki-light     gruvbox            hackerman          kanagawa
lumon             matte-black        miasma             nord
osaka-jade        retro-82           ristretto          rose-pine
tokyo-night       vantablack         white
```

4 light themes: catppuccin-latte, flexoki-light, rose-pine, white
15 dark themes: all others

### Each Theme Ships

| Asset | Purpose |
|-------|---------|
| colors.toml | Color definitions: accent, foreground, background, color0–color15 |
| preview.png | Desktop preview image |
| unlock.png | Lockscreen branding image |
| backgrounds/ | Wallpaper images (multiple resolutions) |
| vscode.json | VS Code / Cursor / Codium color theme |
| neovim.lua | Neovim colorscheme |
| icons.theme | Icon theme override |
| btop.theme | btop theme definition |

### Optional Theme Assets

| Asset | Themes That Ship It | Purpose |
|-------|-------------------|---------|
| light.mode | catppuccin-latte, flexoki-light, rose-pine, white | Light mode toggle |
| hyprland.conf | kanagawa, lumon, retro-82 | Border/accent override |
| waybar.css | catppuccin, lumon, retro-82 | Bar styling override |
| swayosd.css | lumon, retro-82 | OSD styling override |
| keyboard.rgb | tokyo-night | Keyboard RGB accent |
| chromium.theme | flexoki-light, lumon, retro-82, rose-pine | Browser tab accent |

---

## L4 — Polish

CLI commands, migrations, hooks, and toggle system.

### CLI Commands: 294 commands across 58 groups

| Group | Commands | Description |
|-------|----------|-------------|
| ac | 1 | AC power detection |
| audio | 2 | Mic mute, output switch |
| battery | 6 | Capacity, monitor, present, remaining, time, status |
| branch | 2 | Git branch create/set |
| branding | 2 | About/screensaver branding |
| brightness | 4 | Display/keyboard brightness, Apple display, mic-mute LED |
| capture | 3 | Screenshot, recording, OCR |
| channel | 1 | Release channel |
| cmd | 3 | Command presence, terminal CWD |
| config | 1 | EFI boot entry |
| debug | 1 | Diagnostics |
| default | 3 | Browser/editor/terminal default |
| dev | 3 | Migration, benchmark, metadata tools |
| drive | 3 | Info, password, select |
| first | 1 | Post-install first-run |
| font | 3 | Current, list, set |
| hibernation | 3 | Available, setup, remove |
| hook | 2 | Run, install hooks |
| hw | 17 | Hardware detection: ASUS, Dell, Framework, Intel, NVIDIA, Surface, touchpad, Vulkan |
| hyprland | 15 | Monitor/window/toggle/workspace control |
| install | 21 | Optional software: browsers, terminals, editors, gaming, VPNs |
| launch | 14 | App/TUI/webapp/screensaver launchers |
| menu | 6 | Walker-based menus, file picker, input, keybindings |
| migrate | 1 | Run pending migrations |
| notification | 2 | Send/dismiss |
| npx | 1 | Install NPX wrappers |
| os | 5 | DDC brightness, idle, scaling |
| pkg | 9 | Package add/remove/install/aur, fuzzy TUI |
| plymouth | 4 | Preview, reset, set, set-by-theme |
| powerprofiles | 3 | Init, list, set |
| refresh | 16 | Reset configs to defaults |
| reinstall | 4 | Full reinstall, configs, git, pkgs |
| reminder | 1 | Desktop reminders |
| remove | 14 | Browser, gaming, security removal |
| restart | 18 | Restart components (waybar, walker, pipewire, etc.) |
| salat | 5 | Prayer times, adhan, hijri, next, config |
| screensaver | 1 | TTE screensaver |
| setup | 3 | DNS, FIDO2, fingerprint |
| show | 2 | Done message, logo |
| snapshot | 1 | Snapper snapshots |
| state | 1 | Toggle state files |
| sudo | 3 | Keepalive, passwordless, reset |
| swayosd | 3 | Brightness, KBD brightness, client |
| system | 5 | Lock, logout, reboot, shutdown, wake |
| theme | 17 | Set, list, refresh, bg, install, keyboard RGB, vscode, obsidian |
| toggle | 11 | Nightlight, touchpad, GPU, idle, suspend, waybar |
| transcode | 2 | Media/ASCII transcoding |
| tui | 3 | Install/remove TUI launchers |
| tz | 1 | Timezone select |
| update | 15 | Full update pipeline, AUR, firmware, orphan |
| upload | 1 | Diagnostic logs |
| version | 4 | Version, branch, channel, pkgs |
| voxtype | 5 | Dictation install/config/model/remove/status |
| weather | 2 | Icon, status |
| webapp | 5 | Install/remove, HEY/Zoom handlers |
| wiki | 1 | Wiki + notes: init, serve, html, pdf, build |
| wifi | 1 | Powersave toggle |
| windows | 1 | Windows VM management |

### Migrations

| Metric | Value |
|--------|-------|
| Total files | 330 |
| Timestamp range | 1751134560–1781743178 |
| Date range | Jun 2025 – Apr 2026 |
| Format | Sourced shell scripts, no shebang, 0644 perms, leading echo |

### Hooks

| Invoked Hook | Context |
|-------------|---------|
| theme-set | After theme change |
| font-set | After font change |
| post-update | After erch update |
| post-boot | After Hyprland autostart |
| battery-low | When battery monitor detects low battery |

User-facing hook slots: theme-pre/post, update-pre/post

---

## Statistics

| Metric | Count |
|--------|-------|
| L0 install scripts | 116 |
| L1 default directories | 29 |
| L2 config entries | 34 |
| L2 theme-aware configs | 15 |
| L3 built-in themes | 19 |
| L3 theme templates | 19 |
| L4 CLI commands | 294 |
| L4 command groups | 58 |
| L4 migrations | 330 |
| Total components | 864 |
