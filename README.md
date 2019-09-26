# eee111-turtlebot
Turtlebot Setup

## Network Configuration
All EEE 111 devices should have a static IP and should use the subnet 10.158.25.0/24:
- TurtleBots should use .10 to .99
- Workstations should use .100 to .199

## Automated Setup
The setup.sh script will need the following details:
1. WiFi SSID
2. WiFi PSK (password)
3. Last octet of the IP address

Run the script as root, e.g.:
```
./setup.sh EEE-WIFI password 17
```
