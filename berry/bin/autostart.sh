#!/usr/bin/env bash

BERYDIR="$HOME/.config/berry"
export path="${PATH}:$HOME/.config/berry/bin"

xrandr --output HDMI-0 --mode 2560x1440 --rate 143.39 &

/home/asakusa/.fehbg &

killall -9 xsettingsd dunst ksuperkey ffplay picom &

sxhkd -c ~/.config/berry/sxhkdrc &

xsettingsd --config $BERYDIR/xsettingsd &

ksuperkey -e 'Super_L=Alt_L|F1' &
ksuperkey -e 'Super_R=Alt_R|F1' &

xsetroot -cursor_name left_ptr &

~/.config/berry/bin/berrybar.sh &

~/.config/berry/bin/berrydunst.sh &

picom --config $BERYDIR/picom.conf &


