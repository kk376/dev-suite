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

# ===== Environment & PATH =====
export EDITOR=nvim
export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$HOME/.opencode/bin:$PATH"
export LIBVIRT_DEFAULT_URI="qemu:///system"

# ===== NVM (Node Version Manager) =====
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# ===== FZF Fuzzy Finder =====
if command -v fzf &>/dev/null; then
    source <(fzf --zsh 2>/dev/null)
fi

# ===== Aliases =====
alias sudo='sudo '
alias ls='eza --group-directories-first --classify --icons --git'
alias cat='bat --paging=never --style=plain'
alias dnf-terra='sudo dnf --enablerepo=terra'

# ===== Zsh Autosuggestions & Syntax Highlighting =====
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#8a8a8a"
[[ -f ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]] && source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
[[ -f ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ===== Starship (ALWAYS LAST) =====
eval "$(starship init zsh)"
