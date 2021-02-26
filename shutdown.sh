#!/bin/sh
# Retroflag Pi Case shutdown script for Kodi
# This script is executed by service.py when a case button is pressed.

button="$1"
case "$button" in
    power)
        # poweroff
        if pgrep "kodi" > /dev/null;
        then
        	kodi-send -a "ShutDown()"
        else
        	shutdown -h now
        fi
        ;;

    reset)
        # reboot
        if pgrep "kodi" > /dev/null;
        then
        	kodi-send -a "Reboot";
        else
        	reboot
        fi
        ;;
esac
