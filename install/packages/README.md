# Package Profiles

Packages are organized by use-case profile. Common packages are always installed.

## Profile selection

Set `$ERCH_PROFILE` before install or select at prompt:
- `work` — Dev, office, AI, Docker
- `school` — Education, writing, research
- `game` — Steam, gaming tools
- `all` — Union of all above (no commercial)

## Ledger

### Common (always installed)

| Category | Package |
|---|---|
| WM/compositor | hyprland, hypridle, hyprlock, hyprpicker, hyprsunset, hyprland-guiutils, hyprland-preview-share-picker |
| Display server | uwsm, swaybg, swayosd |
| Status bar | waybar |
| Notifications | mako |
| App launcher | erch-walker |
| Login manager | sddm |
| Boot splash | plymouth |
| Terminal | alacritty |
| Shell prompt | starship |
| Shell utils | zoxide, fzf, bat, eza, ripgrep, fd, jq, gum, inxi |
| Multiplexer | tmux |
| Pager | less, man-db, tldr |
| Text editor | nvim, erch-nvim |
| File manager | nautilus, nautilus-python |
| Disk utility | gnome-disk-utility |
| GVFS | gvfs-mtp, gvfs-nfs, gvfs-smb |
| Image viewer | imv |
| Screenshot | grim, slurp, satty |
| Image processing | imagemagick |
| Video player | mpv |
| Screen recording | obs-studio |
| Video editor | kdenlive |
| Thumbnails | ffmpegthumbnailer |
| Audio server | pipewire, pipewire-alsa, pipewire-jack, pipewire-pulse |
| Audio session | wireplumber |
| Volume control | pamixer |
| Audio player | cliamp |
| ALSA utils | alsa-utils |
| Clipboard | wl-clipboard |
| Browser | chromium |
| Password manager | gopass |
| Printing | cups, cups-browsed, cups-filters, cups-pdf, system-config-printer |
| Fonts | noto-fonts, noto-fonts-cjk, noto-fonts-emoji, ttf-ia-writer, ttf-jetbrains-mono-nerd, woff2-font-awesome |
| Firewall | ufw |
| File indexing | plocate |
| Timezone | tzupdate |
| Power profile | power-profiles-daemon |
| Networking | socat, iwd, wireless-regdb, avahi, nss-mdns, inetutils |
| USB/Thunderbolt | bolt, dosfstools, exfatprogs |
| System info | fastfetch |
| Java portal | xdg-desktop-portal-gtk, xdg-desktop-portal-hyprland |
| Terminal exec | xdg-terminal-exec |
| Polkit | polkit-gnome |
| Media keys | playerctl |
| File preview | sushi |
| Input method | fcitx5, fcitx5-gtk, fcitx5-qt (CJK IME) |
| Qt Wayland | qt5-wayland |
| Qt styling | kvantum-qt5 |
| XML util | xmlstarlet |
| Archive | unzip |
| Whois | whois |
| Font icon | woff2-font-awesome |
| Fontconfig | fontconfig |
| Secret lib | libsecret |
| YAML lib | libyaml |
| Calc lib | libqalculate |
| Python GLib | python-gobject |
| TTE | python-terminaltexteffects |
| Poetry | python-poetry-core |
| PostgreSQL libs | postgresql-libs |
| Package helper | expac |
| Hardware detection | erch-hw-* (separate scripts) |

### Work

| Category | Package |
|---|---|
| Office suite | libreoffice-fresh |
| Email/calendar | thunderbird |
| Task management | taskwarrior |
| Version control | git, github-cli, lazygit |
| Container mgmt | docker, lazydocker, docker-compose, docker-buildx |
| Language: Rust | rust |
| Language: C/CPP | clang, llvm |
| Language: Ruby | ruby |
| Language: Go | go |
| Misc dev | tobi-try |
| AI coding | opencode (via NPX) |

### School

| Category | Package |
|---|---|
| Office suite | libreoffice-fresh |
| Email/calendar | thunderbird |
| Task management | taskwarrior |
| Annotation | xournalpp |
| Misc dev | tobi-try |
| AI coding | opencode (via NPX) |

### Game

| Category | Package |
|---|---|
| Game store | steam |
| Game manager | lutris |
| Performance | mangohud, gamemode |

### Install-time packages (non-profile, always installed)

| Script | Purpose |
|---|---|
| fonts.sh | Copies erch.ttf for Waybar icon |
| nvim.sh | Runs erch-nvim-setup (LazyVim) |
| icons.sh | Bundled application icons |
| webapps.sh | Webapp wrappers (separate from profile selection) |
| tuis.sh | TUI launchers (dust, lazydocker) |
| asus-rog.sh | ASUS ROG hardware (conditional) |
| framework16.sh | Framework laptop (conditional) |
| dell-xps-touchpad-haptics.sh | Dell XPS (conditional) |
| surface.sh | Surface laptop (conditional) |

### Removed from defaults (commercial or replaced)

| Package | Reason | Replacement |
|---|---|---|
| 1password-beta | Commercial | gopass |
| 1password-cli | Commercial | gopass |
| obsidian | Commercial | nvim + vimwiki |
| typora | Paid | nvim + vimwiki |
| spotify | Commercial | cliamp |
| signal-desktop | Removed | — |
| mariadb-libs | Unused | — |
| @openai/codex | Commercial NPX | — |
| @google/gemini-cli | Commercial NPX | — |
| @github/copilot | Commercial NPX | — |
| claude-code | Commercial NPX | — |
| All webapps | Commercial wrappers | — |
| pi-coding-agent | Optional (post-install only) | — |
