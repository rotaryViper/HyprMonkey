#!/usr/bin/env bash

op=$( echo -e " Poweroff\n🗘 Reboot\n Suspend\n Lock\n Logout" | wofi -i --height=23% -w=5 -d | awk '{print tolower($2)}' )

case $op in
		poweroff)
				;&
        reboot)
                ;&
        suspend)
                systemctl $op
                ;;
        lock)
		swaylock -c 000000FF
                ;;
        logout)
                hyprctl dispatch exit
                ;;
esac
