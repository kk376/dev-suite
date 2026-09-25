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
