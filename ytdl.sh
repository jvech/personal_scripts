#mpv --ytdl-format=bestaudio ytdl://ytsearch:"$*"
case $1 in
    -v)
        shift
        mpv --no-resume-playback --ytdl=no \
            --ytdl-format="bestvideo[height<=?720]+bestaudio/best" ytdl://ytsearch:"$*"
        ;;
    -t)
        shift
        mpv https://twitch.tv/"$*"
        ;;
    -lv|-vl)
        shift
        mpv --no-resume-playback --ytdl=no \
            --ytdl-format="bestvideo[height<=?720]+bestaudio/best" \
            $(tr ' ' '+' | xargs -Iz -d '\n' echo ytdl://ytsearch:z | tr '\n' ' ')
        ;;
    -l)
        shift
        mpv --no-resume-playback --ytdl=no --ytdl-format="bestaudio" \
            $(tr ' ' '+' | xargs -Iz -d '\n' echo ytdl://ytsearch:z | tr '\n' ' ')
        ;;
    *)
        mpv --no-resume-playback --ytdl=no --ytdl-format="bestaudio" ytdl://ytsearch:"$*"
        ;;
esac
