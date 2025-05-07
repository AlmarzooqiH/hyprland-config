#!/bin/bash

selection=$(printf "Shutdown\nRestart\nLogoff\nLock" | rofi -dmenu -p "Power Menu")

if [ "$selection" = "Shutdown" ]; then
    shutdown
elif [ "$selection" = "Restart" ]; then
    reboot
elif [ "$selection" = "Logoff" ]; then
    hyprctl dispatch exit
elif [ "$selection" = "Lock" ]; then
    swaylock -i "/home/hamad/.config/hypr/Images/One_Piece.jpg"
fi

