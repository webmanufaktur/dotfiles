#!/bin/sh
xrandr --output eDP1 --off --output DP1 --mode 3440x1440 --pos 0x0 --rotate normal --output DP2 --off --output HDMI1 --off --output HDMI2 --off --output VIRTUAL1 --off

sleep 1

nitrogen --restore
