#!/usr/bin/env bash
# ==============================================================================
# dev-suite: hyprland-dots deployment script
# Target: MSI Thin A15 (AMD Radeon 680M + NVIDIA RTX 2050 Mobile)
# ==============================================================================

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}"
LOCAL_BIN="$HOME/.local/bin"

log_info() {
    printf "[INFO] %s\n" "$1"
}

log_pass() {
    printf "[PASS] %s\n" "$1"
}

deploy_link() {
    local source_path="$1"
    local target_path="$2"
    mkdir -p "$(dirname "$target_path")"
    ln -sf "$source_path" "$target_path"
    log_pass "Linked: $target_path -> $source_path"
}

main() {
    log_info "Deploying device-specific Hyprland configuration from dev-suite..."

    # Hyprland & Shell
    deploy_link "$SCRIPT_DIR/dotfiles/hypr/hyprland.lua" "$CONFIG_DIR/hypr/hyprland.lua"
    deploy_link "$SCRIPT_DIR/dotfiles/hypr/hypridle.conf" "$CONFIG_DIR/hypr/hypridle.conf"
    deploy_link "$SCRIPT_DIR/dotfiles/hypr/hyprlock.conf" "$CONFIG_DIR/hypr/hyprlock.conf"
    deploy_link "$SCRIPT_DIR/dotfiles/hypr/hyprpaper.conf" "$CONFIG_DIR/hypr/hyprpaper.conf"
    deploy_link "$SCRIPT_DIR/dotfiles/hypr/noctalia.lua" "$CONFIG_DIR/hypr/noctalia.lua"
    deploy_link "$SCRIPT_DIR/dotfiles/hypr/scripts/compact_workspaces.py" "$CONFIG_DIR/hypr/scripts/compact_workspaces.py"
    deploy_link "$SCRIPT_DIR/dotfiles/hypr/scripts/screenshot.sh" "$CONFIG_DIR/hypr/scripts/screenshot.sh"
    deploy_link "$SCRIPT_DIR/dotfiles/hypr/scripts/bt_battery_sync.py" "$CONFIG_DIR/hypr/scripts/bt_battery_sync.py"
    deploy_link "$SCRIPT_DIR/dotfiles/hypr/scripts/app_menu.sh" "$CONFIG_DIR/hypr/scripts/app_menu.sh"

    # Noctalia Shell
    deploy_link "$SCRIPT_DIR/dotfiles/noctalia/config.toml" "$CONFIG_DIR/noctalia/config.toml"
    deploy_link "$SCRIPT_DIR/dotfiles/noctalia/colors.json" "$CONFIG_DIR/noctalia/colors.json"
    deploy_link "$SCRIPT_DIR/dotfiles/noctalia/plugins" "$CONFIG_DIR/noctalia/plugins"
    deploy_link "$SCRIPT_DIR/dotfiles/noctalia/palettes/noctalia.json" "$CONFIG_DIR/noctalia/palettes/noctalia.json"
    deploy_link "$SCRIPT_DIR/dotfiles/noctalia/scripts/sync-gtk-theme.sh" "$CONFIG_DIR/noctalia/scripts/sync-gtk-theme.sh"
    deploy_link "$SCRIPT_DIR/dotfiles/noctalia/scripts/toggle-emoji.sh" "$CONFIG_DIR/noctalia/scripts/toggle-emoji.sh"
    chmod +x "$SCRIPT_DIR/dotfiles/noctalia/scripts/toggle-emoji.sh"

    # Ghostty Terminal
    deploy_link "$SCRIPT_DIR/dotfiles/ghostty/config.ghostty" "$CONFIG_DIR/ghostty/config.ghostty"
    deploy_link "$SCRIPT_DIR/dotfiles/ghostty/gtk.css" "$CONFIG_DIR/ghostty/gtk.css"
    deploy_link "$SCRIPT_DIR/dotfiles/ghostty/themes/noctalia" "$CONFIG_DIR/ghostty/themes/noctalia"
    mkdir -p "$LOCAL_BIN"
    deploy_link "$SCRIPT_DIR/dotfiles/ghostty/scripts/ghostty-theme" "$LOCAL_BIN/ghostty-theme"
    deploy_link "$SCRIPT_DIR/dotfiles/ghostty/scripts/ghostty-theme" "$LOCAL_BIN/term-theme"

    # Editors & Dev
    deploy_link "$SCRIPT_DIR/dotfiles/btop/btop.conf" "$CONFIG_DIR/btop/btop.conf"
    deploy_link "$SCRIPT_DIR/dotfiles/nvim/init.lua" "$CONFIG_DIR/nvim/init.lua"
    deploy_link "$SCRIPT_DIR/dotfiles/nvim/lazy-lock.json" "$CONFIG_DIR/nvim/lazy-lock.json"
    deploy_link "$SCRIPT_DIR/dotfiles/nvim/lua/config/lazy.lua" "$CONFIG_DIR/nvim/lua/config/lazy.lua"
    deploy_link "$SCRIPT_DIR/dotfiles/nvim/lua/config/options.lua" "$CONFIG_DIR/nvim/lua/config/options.lua"
    deploy_link "$SCRIPT_DIR/dotfiles/nvim/lua/config/keymaps.lua" "$CONFIG_DIR/nvim/lua/config/keymaps.lua"
    deploy_link "$SCRIPT_DIR/dotfiles/nvim/lua/plugins/colorscheme.lua" "$CONFIG_DIR/nvim/lua/plugins/colorscheme.lua"
    deploy_link "$SCRIPT_DIR/dotfiles/nvim/lua/plugins/treesitter.lua" "$CONFIG_DIR/nvim/lua/plugins/treesitter.lua"
    deploy_link "$SCRIPT_DIR/dotfiles/nvim/lua/plugins/base16.lua" "$CONFIG_DIR/nvim/lua/plugins/base16.lua"

    deploy_link "$SCRIPT_DIR/dotfiles/zed/settings.json" "$CONFIG_DIR/zed/settings.json"
    deploy_link "$SCRIPT_DIR/dotfiles/zed/keymap.json" "$CONFIG_DIR/zed/keymap.json"
    deploy_link "$SCRIPT_DIR/dotfiles/zed/tasks.json" "$CONFIG_DIR/zed/tasks.json"
    mkdir -p "$CONFIG_DIR/zed/themes"
    ln -f "$SCRIPT_DIR/dotfiles/zed/themes/noctalia.json" "$CONFIG_DIR/zed/themes/noctalia.json"

    deploy_link "$SCRIPT_DIR/dotfiles/vscode/settings.json" "$CONFIG_DIR/Code/User/settings.json"
    deploy_link "$SCRIPT_DIR/dotfiles/vscodium/settings.json" "$CONFIG_DIR/VSCodium/User/settings.json"

    # GTK Dynamic Themes
    deploy_link "$SCRIPT_DIR/dotfiles/gtk-3.0/gtk.css" "$CONFIG_DIR/gtk-3.0/gtk.css"
    deploy_link "$SCRIPT_DIR/dotfiles/gtk-3.0/gtk-dark.css" "$CONFIG_DIR/gtk-3.0/gtk-dark.css"
    deploy_link "$SCRIPT_DIR/dotfiles/gtk-3.0/settings.ini" "$CONFIG_DIR/gtk-3.0/settings.ini"
    deploy_link "$SCRIPT_DIR/dotfiles/gtk-3.0/noctalia.css" "$CONFIG_DIR/gtk-3.0/noctalia.css"
    deploy_link "$SCRIPT_DIR/dotfiles/gtk-4.0/gtk.css" "$CONFIG_DIR/gtk-4.0/gtk.css"
    deploy_link "$SCRIPT_DIR/dotfiles/gtk-4.0/gtk-dark.css" "$CONFIG_DIR/gtk-4.0/gtk-dark.css"
    deploy_link "$SCRIPT_DIR/dotfiles/gtk-4.0/settings.ini" "$CONFIG_DIR/gtk-4.0/settings.ini"
    deploy_link "$SCRIPT_DIR/dotfiles/gtk-4.0/noctalia.css" "$CONFIG_DIR/gtk-4.0/noctalia.css"

    # Audio & System Environment
    deploy_link "$SCRIPT_DIR/dotfiles/wireplumber/wireplumber.conf.d/50-bluez.conf" "$CONFIG_DIR/wireplumber/wireplumber.conf.d/50-bluez.conf"
    deploy_link "$SCRIPT_DIR/system/environment.d/10-vulkan-hybrid.conf" "$CONFIG_DIR/environment.d/10-vulkan-hybrid.conf"
    deploy_link "$SCRIPT_DIR/system/environment.d/20-gtk-theme.conf" "$CONFIG_DIR/environment.d/20-gtk-theme.conf"
    deploy_link "$SCRIPT_DIR/dotfiles/systemd/user/hyprland-session.target" "$CONFIG_DIR/systemd/user/hyprland-session.target"

    # Appearance Profile Switchers & Shell Aliases
    deploy_link "$SCRIPT_DIR/scripts/hypr-profile.sh" "$LOCAL_BIN/hypr-profile.sh"

    cat << 'EOF' > "$LOCAL_BIN/hypr-default"
#!/usr/bin/env bash
exec hypr-profile.sh default "$@"
EOF
    chmod +x "$LOCAL_BIN/hypr-default"

    cat << 'EOF' > "$LOCAL_BIN/hypr-blur"
#!/usr/bin/env bash
exec hypr-profile.sh blur "$@"
EOF
    chmod +x "$LOCAL_BIN/hypr-blur"

    deploy_shell_aliases

    log_pass "All device-specific symlinks established successfully."
}

deploy_shell_aliases() {
    log_info "Configuring hypr-default and hypr-blur shell aliases..."

    # Bash
    local bashrc="$HOME/.bashrc"
    if [[ -L "$bashrc" && ! -e "$bashrc" ]]; then
        rm -f "$bashrc"
        if [[ -f /etc/skel/.bashrc ]]; then
            cp /etc/skel/.bashrc "$bashrc"
        else
            touch "$bashrc"
        fi
    fi
    if [[ -f "$bashrc" ]]; then
        if ! grep -q "alias hypr-default=" "$bashrc"; then
            printf "\n# Hyprland appearance profile switchers\nalias hypr-default='hypr-profile.sh default'\nalias hypr-blur='hypr-profile.sh blur'\n" >> "$bashrc"
            log_pass "Configured aliases in: $bashrc"
        fi
    fi

    # Zsh
    local zshrc="$HOME/.zshrc"
    if [[ -f "$zshrc" ]]; then
        if ! grep -q "alias hypr-default=" "$zshrc"; then
            printf "\n# Hyprland appearance profile switchers\nalias hypr-default='hypr-profile.sh default'\nalias hypr-blur='hypr-profile.sh blur'\n" >> "$zshrc"
            log_pass "Configured aliases in: $zshrc"
        fi
    fi

    # Fish
    local fish_conf="$CONFIG_DIR/fish/config.fish"
    if [[ -f "$fish_conf" ]]; then
        if ! grep -q "alias hypr-default" "$fish_conf"; then
            printf "\n# Hyprland appearance profile switchers\nalias hypr-default 'hypr-profile.sh default'\nalias hypr-blur 'hypr-profile.sh blur'\n" >> "$fish_conf"
            log_pass "Configured aliases in: $fish_conf"
        fi
    fi
}

main
