#!/usr/bin/env bash
 
res=$(echo -e "Logout\nSuspend\nReboot\nShutdown" | rofi -dmenu -i -p 'Choose: ' -hide-scrollbar -width -12 -lines 4)
 
#if [ $res = "lock" ]; then
#    /home/khoaduccao/.config/lock.sh
#fi
if [[ $res == "Logout" ]]; then
    i3-msg exit
fi
if [[ $res == "Suspend" ]]; then
    ~/.config/i3/scripts/i3lock.sh && systemctl suspend
fi

if [[ $res == "Reboot" ]]; then
    systemctl reboot
fi
if [[ $res == "Shutdown" ]]; then
    systemctl poweroff
fi
exit 0
