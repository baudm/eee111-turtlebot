# eee111-turtlebot
Turtlebot Setup

## raspi-config
1. `Localization Options` -> `Change Timezone` -> `Asia`. Select `Manila`.
2. `Boot Options` -> `Desktop/CLI`. Select `Console`.
3. `Boot Options` -> `Wait for Network at Boot`. Select `Yes`.

## Turtlebot Bringup
1. Put the correct WiFi SSID and pre-shared key into `wpa_supplicant.conf`.
2. Run the setup script as root: `sudo ./setup.sh`
