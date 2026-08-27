# ==============================================================================
# ZSH CONFIGURATION (Fedora + Starship)
# ==============================================================================

# ===== Zsh Options & History =====
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt PROMPT_SUBST
setopt MULTIBYTE
setopt INTERACTIVE_COMMENTS

# Use standard Emacs keybindings mode
bindkey -e

# ===== Keybindings (Universal Terminal Support) =====
# Word navigation (Ctrl + Left/Right across Kitty, VS Codium, Alacritty)
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word
bindkey "^[[5D" backward-word
bindkey "^[[5C" forward-word
bindkey "^[^[[D" backward-word
bindkey "^[^[[C" forward-word
bindkey "^W" backward-kill-word

# Alt + Left/Right
bindkey "^[[1;3D" backward-word
bindkey "^[[1;3C" forward-word
bindkey "^[b" backward-word
bindkey "^[f" forward-word

# Home / End
bindkey "^[[H" beginning-of-line
bindkey "^[[1~" beginning-of-line
bindkey "^[[7~" beginning-of-line
bindkey "^[OH" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[4~" end-of-line
bindkey "^[[8~" end-of-line
bindkey "^[OF" end-of-line

# Delete / Backspace
bindkey "^[[3~" delete-char
bindkey "^?" backward-delete-char

# Edit huge multi-line prompts in Neovim with Ctrl+X Ctrl+E
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^X^E' edit-command-line
bindkey '^Xe' edit-command-line

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
alias ..='cd ..'
alias c='clear'
alias ls='eza --group-directories-first --classify --icons --git'
alias ll='eza -la --group-directories-first --classify --icons --git'
alias lt='eza -a --tree --level=2 --icons'
alias cat='bat --paging=never --style=plain'
alias dnf-terra='sudo dnf --enablerepo=terra'
alias v='$EDITOR'
alias vim='$EDITOR'
alias wifi='nmtui'

alias nf='fastfetch'
alias pf='fastfetch'
alias ff='fastfetch'

# Git Aliases
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gpl="git pull"
alias gst="git stash"
alias gsp="git stash; git pull"
alias gfo="git fetch origin"
alias gcheck="git checkout"
alias gcredential="git config credential.helper store"

# ===== 1. Starship Prompt Initialization =====
if command -v starship &>/dev/null; then
    eval "$(starship init zsh)"
fi

# ===== 2. ZSH Autosuggestions (Right Arrow Autocompletion) =====
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#8a8a8a"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
if [[ -f ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]]; then
    source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

# ===== 3. ZSH Syntax Highlighting (Must be the very last line) =====
if [[ -f ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
    source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
