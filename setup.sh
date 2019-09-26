#!/bin/sh

if [ ! "$#" -eq 3 ]; then
    echo "Usage: $0 <SSID> <PSK> <last octet of IP address>"
    exit 1
fi

# For testing:
PREFIX=

SSID="$1"
PSK="$2"
IP="10.158.25.${3}"

cat<<EOF
Using the following configuration:

SSID = $SSID
PSK = $PSK
IP = $IP
EOF

# Set correct timezone
raspi-config nonint do_change_timezone Asia/Manila

# Boot to text console, requiring user to login
raspi-config nonint do_boot_behaviour B1

# Wait for network
raspi-config nonint do_boot_wait 0

# TurtleBot "bringup" nodes
install -D -m755 turtlebot-bringup.sh "$PREFIX/usr/local/bin/turtlebot-bringup.sh"
install -D -m644 turtlebot-bringup.service "$PREFIX/lib/systemd/system/turtlebot-bringup.service"

# Network configuration (WiFi)
mkdir -p "$PREFIX/etc/wpa_supplicant"
cat >"$PREFIX/etc/wpa_supplicant/wpa_supplicant.conf" <<EOF
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1
country=PH

network={
        ssid="$SSID"
        psk="$PSK"
        key_mgmt=WPA-PSK
}
EOF

# Network configuration (IP Address)
mkdir -p "$PREFIX/etc"
cat dhcpcd.conf.template - >"$PREFIX/etc/dhcpcd.conf" <<EOF
interface wlan0
static ip_address=${IP}/24
static routers=10.158.25.1
static domain_name_servers=10.32.1.7 10.16.3.143

EOF
