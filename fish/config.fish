# Disable default welcome greeting
set -g fish_greeting ""

# ===== Colors & Styling =====
# Brighter, readable autosuggestion color (matching Tokyo Night palette)
set -g fish_color_autosuggestion 828bb8

# ===== Environment & PATH =====
set -gx EDITOR nvim
set -gx PAGER cat
set -gx SYSTEMD_PAGER cat
set -gx MANPAGER cat
set -gx BAT_PAGER ""
set -gx DELTA_PAGER cat
set -gx LESS "-F -X -R"
set -gx LIBVIRT_DEFAULT_URI "qemu:///system"
set -gx SUDO_PROMPT "[sudo] 🔒 password for %u: "

# Add personal bin paths
fish_add_path -m $HOME/.local/bin $HOME/.cargo/bin $HOME/.opencode/bin

# ===== Aliases =====
alias clear 'printf "\033[2J\033[3J\033[H"'
alias ls 'eza --group-directories-first --classify --icons --git'
alias cat 'bat --paging=never --style=plain'
alias less 'bat --paging=always --pager="less -R"'
alias la 'ls -la'
alias oc 'opencode'

# --- Git Shortcuts ---
alias gs 'git status -sb'
alias ga 'git add'
alias gaa 'git add -A'
alias gap 'git add -p'
alias gc 'git commit'
alias gcm 'git commit -m'
alias gca 'git commit --amend'
alias gcan 'git commit --amend --no-edit'
alias gp 'git push'
alias gpf 'git push --force-with-lease'
alias gpl 'git pull --rebase'
alias gd 'git diff'
alias gds 'git diff --staged'
alias gl 'git log --oneline --graph --decorate -n 15'
alias glog 'git log --oneline --graph --decorate --all'
alias gco 'git checkout'
alias gcb 'git checkout -b'
alias gsw 'git switch'
alias gswc 'git switch -c'
alias gst 'git stash'
alias gstp 'git stash pop'
alias gundo 'git reset --soft HEAD~1'

# ===== FZF Fuzzy Finder =====
if type -q fzf
    fzf --fish | source
end

# ===== Starship Prompt (ALWAYS LAST) =====
if type -q starship
    starship init fish | source
end
