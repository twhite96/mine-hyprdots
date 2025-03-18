#!/bin/sh


case $1 in
    up)
        wpctl set-mute @DEFAULT_AUDIO_SINK@ 0
        wpctl set-volume -l 2.0 @DEFAULT_AUDIO_SINK@ 2%+
        ;;
    down)
        wpctl set-mute @DEFAULT_AUDIO_SINK@ 0
        wpctl set-volume -l 2.0 @DEFAULT_AUDIO_SINK@ 2%-
        ;;
    mute)
        wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
        ;;
    *)
        echo "Usage: $0 {up|down|mute}"
        exit 1
        ;;
esac

VOLUME=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print int($2 * 100)}')

NORMALIZED_VOLUME=$((VOLUME / 2))

send_notification() {
    # if [ "$1" = "mute" ]; then
    #     ICON=''  # Mute icon
    #     MSG="Muted"
    # elif [ "$NORMALIZED_VOLUME" -lt 50 ]; then
    #     ICON=''   # Low volume icon
    #     MSG="Volume: $NORMALIZED_VOLUME%"
    # elif [ "$NORMALIZED_VOLUME" -lt 90 ]; then
    #     ICON=''   # Medium volume icon
    #     MSG="Volume: $NORMALIZED_VOLUME%"
    # else
    #     ICON=''   # High volume icon
    #     MSG="Volume: $NORMALIZED_VOLUME%"
    # fi

    dunstify -u normal -h "int:value:$NORMALIZED_VOLUME"  -a "Volume" "Volume" -t 2000
}

case $1 in
    mute)
        if wpctl get-volume @DEFAULT_AUDIO_SINK@ | grep -q "MUTED"; then
            send_notification mute
        else
            send_notification
        fi
        ;;
    *)
        send_notification
        ;;
esac