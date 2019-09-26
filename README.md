# eee111-turtlebot
Turtlebot Setup

## Network Configuration
All EEE 111 devices should have a static IP and should use the subnet `10.158.25.0/24`:
- TurtleBots should use `.10` to `.99` (use the last two digits of the bot's serial number)
- Workstations should use `.100` to `.199`

## Automated Setup
```Usage: ./setup.sh <SSID> <PSK> <last octet of IP address>```
The `setup.sh` script will need the following details:
1. WiFi SSID
2. WiFi PSK (password)
3. Last octet of the IP address

Run the script as `root`, e.g.:
```
# cd eee111-turtlebot/
# ./setup.sh EEE-WIFI password 17
Using the following configuration:

SSID = EEE-WIFI
PSK = password
IP = 10.158.25.17
```
