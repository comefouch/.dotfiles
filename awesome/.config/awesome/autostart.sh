#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

# Keyboards
# setxkbmap fr,fr oss,bepo grp:alt_caps_toggle

#run xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off
run nm-applet
#run pamac-tray
#run xfce4-power-manager
#run /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
run numlockx on
#run volumeicon
run nitrogen --restore
#run dropbox
