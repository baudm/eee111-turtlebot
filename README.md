# TurtleBot Setup for EEE 111

## Network Configuration
All EEE 111 devices should have a static IP and should use the subnet `10.158.25.0/24`. Allocation is as follows:
- `.1` to `.9` - reserved
- `.10` to `.99` - for TurtleBots (use the last two digits of the bot's serial number)
- `.100` to `.254` - for the students' workstations

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
