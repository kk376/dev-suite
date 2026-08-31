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
alias sudo='sudo '
alias clear='printf "\033[2J\033[3J\033[H"'
alias ls='eza --group-directories-first --classify --icons --git'
alias cat='bat --paging=never --style=plain'
alias less='bat --paging=always --pager="less -R"'
alias dnf-terra='sudo dnf --enablerepo=terra'

# --- Git Shortcuts ---
alias gs='git status -sb'
alias ga='git add'
alias gaa='git add -A'
alias gap='git add -p'
alias gc='git commit'
alias gcm='git commit -m'
alias gca='git commit --amend'
alias gcan='git commit --amend --no-edit'
alias gp='git push'
alias gpf='git push --force-with-lease'
alias gpl='git pull --rebase'
alias gd='git diff'
alias gds='git diff --staged'
alias gl='git log --oneline --graph --decorate -n 15'
alias glog='git log --oneline --graph --decorate --all'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gsw='git switch'
alias gswc='git switch -c'
alias gst='git stash'
alias gstp='git stash pop'
alias gundo='git reset --soft HEAD~1'

# ===== Environment & PATH =====
export EDITOR=nvim
export PAGER=cat
export SYSTEMD_PAGER=cat
export MANPAGER=cat
export BAT_PAGER=""
export DELTA_PAGER=cat
export LESS="-F -X -R"
export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$HOME/.opencode/bin:$PATH"
export LIBVIRT_DEFAULT_URI="qemu:///system"

# ===== NVM =====
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# ===== FZF Fuzzy Finder =====
if command -v fzf &>/dev/null; then
    source <(fzf --zsh 2>/dev/null)
fi

# ===== Starship (ALWAYS LAST) =====
eval "$(starship init zsh)"
