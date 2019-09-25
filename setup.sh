#!/bin/sh

install -D -m755 turtlebot-bringup.sh /usr/local/bin/turtlebot-bringup.sh
install -D -m644 turtlebot-bringup.service /lib/systemd/system/turtlebot-bringup.service
install -D -m644 wpa_supplicant.conf /etc/wpa_supplicant/wpa_supplicant.conf
