#!/usr/bin/env sh
HYPRGAMEMODE=$(hyprctl getoption animations:enabled | awk 'NR==1{print $2}')
if [ "$HYPRGAMEMODE" = 1 ] ; then
    hyprctl keyword decoration:screen_shader ~/.config/hypr/greyscale.frag
    exit
fi
hyprctl reload
