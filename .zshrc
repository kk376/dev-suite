# ===== Zsh History =====
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS

# Ctrl + Left / Right navigation
bindkey '^[[;5D' backward-word
bindkey '^[[;5C' forward-word

# ===== Zsh Autosuggestions color =====
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#8a8a8a"

# ===== Zsh plugins (manual) =====
[[ -f ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]] && source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
[[ -f ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ===== Aliases =====
alias ls='eza --group-directories-first --classify --icons --git'
alias cat='batcat --paging=never --style=plain'

# Browser Integration
export BROWSER='/mnt/c/Users/$WIN_USER/AppData/Local/BraveSoftware/Brave-Browser/Application/brave.exe'

# ===== Antigravity IDE (WSL Remote) =====
anti() {
  if [[ -z "$WSL_DISTRO_NAME" ]]; then
    echo "❌ anti: This command must be run inside WSL"
    return 1
  fi

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

  # Launch Antigravity IDE connected to WSL
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
eval "$(starship init zsh)"
