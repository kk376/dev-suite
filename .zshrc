# ===== Zsh History =====
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Write each command immediately upon execution and import from other concurrent shells in real-time
setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY
# Suppress duplicate consecutive entries, leading whitespace commands (prevents secret leakage), and extra internal spaces
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS

# Ctrl + Left / Right navigation (xterm-256color CSI sequences for word jumps)
bindkey '^[[;5D' backward-word
bindkey '^[[;5C' forward-word

# ===== Zsh Autosuggestions color =====
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#8a8a8a"

# ===== Zsh plugins (manual) =====
# Sourced manually to avoid overhead of heavyweight plugin managers
[[ -f ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]] && source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
[[ -f ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ===== Aliases =====
alias ls='eza --group-directories-first --classify --icons --git'
alias cat='bat --paging=never --style=plain'
alias dnf-terra='sudo dnf --enablerepo=terra'

# ===== Antigravity IDE (WSL Remote) =====
# Interop bridge: spawns Windows-native GUI from inside WSL2 without X11/Wayland server forwarding
anti() {
  if [[ -z "$WSL_DISTRO_NAME" ]]; then
    echo "❌ anti: This command must be run inside WSL"
    return 1
  fi

  # Query Windows host environment variable to locate user profile path across arbitrary username schemes
  local WIN_USER
  WIN_USER=$(cmd.exe /c "echo %USERNAME%" 2>/dev/null | tr -d '\r')

  local IDE_EXE="/mnt/c/Users/$WIN_USER/AppData/Local/Programs/Antigravity IDE/Antigravity IDE.exe"

  if [[ ! -f "$IDE_EXE" ]]; then
    echo "❌ Antigravity IDE not found at:"
    echo "   $IDE_EXE"
    return 1
  fi

  # Resolve target path (default: current dir)
  local LINUX_PATH
  LINUX_PATH="$(realpath "${1:-.}")"

  # Pass WSL remote connection target and workspace directory; detach from shell process group to avoid hang
  "$IDE_EXE" --remote "wsl+$WSL_DISTRO_NAME" "$LINUX_PATH" &>/dev/null &
  disown
}

# ===== Environment & PATH =====
export PATH="$HOME/.local/bin:$PATH"

# ===== NVM =====
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# ===== Starship (ALWAYS LAST) =====
# Initialized last so prompt hooks (precmd/preexec) wrap all loaded shell plugins and environment variables
eval "$(starship init zsh)"

