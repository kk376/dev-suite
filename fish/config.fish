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

# ===== Screen Recording Helper =====
function record --description "Record screen with audio and MP4 faststart optimization"
    if not type -q wf-recorder
        echo "Error: wf-recorder is not installed. Install it with: sudo dnf install wf-recorder" >&2
        return 1
    end
    if not type -q ffmpeg
        echo "Error: ffmpeg is not installed. Install it with: sudo dnf install ffmpeg" >&2
        return 1
    end

    set -l target "recording.mp4"
    if test (count $argv) -ge 1
        set target $argv[1]
        string match -q "*.mp4" $target; or set target "$target.mp4"
    end

    set -l audio_mode "mic"
    if test (count $argv) -ge 2
        set audio_mode $argv[2]
    end

    set -l audio_args
    switch $audio_mode
        case desktop system
            set -l default_sink (pactl get-default-sink 2>/dev/null)
            if test -n "$default_sink"
                set audio_args -a "$default_sink.monitor" -C aac
            else
                set audio_args -a -C aac
            end
        case none mute
            set audio_args
        case "*"
            set audio_args -a -C aac
    end

    set -l raw (mktemp -u --suffix=.mp4 /tmp/wf_rec_XXXXXX)
    echo "Starting screen recording: $target (Audio: $audio_mode)"
    echo "Press Ctrl+C to stop recording."

    wf-recorder -c libx264 -x yuv420p -r 60 -p crf=20 -p preset=veryfast $audio_args -f $raw

    if test -f $raw
        echo "Applying faststart stream optimization..."
        ffmpeg -v error -y -i $raw -c copy -movflags +faststart $target
        rm -f $raw
        echo "Saved optimized stream recording to: $target"
    end
end

# ===== Starship Prompt (ALWAYS LAST) =====
if type -q starship
    starship init fish | source
end

