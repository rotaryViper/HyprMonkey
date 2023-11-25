#!/usr/bin/env bash

op=$( echo -e "\n🗘\n\n\n" | wofi --conf=./.config/wofi/powermenuconfig -d )


case $op in
		)
				systemctl poweroff
				;;
		🗘)
				systemctl reboot
				;;
		)
				systemctl suspend
				;;
		)
				swaylock -c 000000FF
		        ;;
		)
                hyprctl dispatch exit
                ;;
esac
