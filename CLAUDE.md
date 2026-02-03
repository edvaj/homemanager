# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Build & Deploy Commands

```bash
# Apply the home-manager configuration
home-manager switch --flake .

# Build without activating (dry run)
home-manager build --flake .

# Update flake inputs (nixpkgs, home-manager, nvf)
nix flake update

# Update a single input
nix flake lock --update-input <input-name>
```

## Architecture

This is a Nix Home Manager configuration using flakes. The user is `goat` on `x86_64-linux` running Hyprland (Wayland).

### Entry Points

- **flake.nix** - Defines inputs (nixpkgs unstable, home-manager, nvf) and outputs a single `homeConfigurations.goat`. Passes `self` and `inputs` via `extraSpecialArgs` so all modules can access flake inputs.
- **home.nix** - Imports all modules and sets user-level config (username, home directory, stateVersion `24.05`).

### Module Structure

Modules live in `modules/<name>/<name>.nix`. Complex modules split into subconfigs:

```
modules/<name>/<name>.nix              # simple module
modules/<name>/<name>.nix -> config/   # complex module with subconfigs
```

Examples of complex modules:
- `hypr/hypr.nix` imports `config/{binds,input,startup,ui}.nix`
- `shell/bash.nix` imports `config/alias.nix`
- `waybar/waybar.nix` references `config/style.css`

### Module Patterns

Most modules use `programs.<name>.enable = true` with inline `settings`. Some (like alacritty) use `home.file` to write config files directly. The nvf module uses its own home-manager module loaded in flake.nix.

All module function signatures take `{ config, pkgs, ... }` — some also destructure `inputs`.

### Design Choices

- **Gruvbox Dark** theme applied consistently across terminals (alacritty) and UI
- **Vi-style keybindings** throughout (hyprland hjkl navigation, newsboat)
- **JetBrainsMono Nerd Font** as the standard font
- **Multi-monitor**: eDP-1 (1920x1280) + HDMI-A-1 (3840x2160) configured in hyprland
- **Dual keyboard layout**: GB + US with right-alt toggle
