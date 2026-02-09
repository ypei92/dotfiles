#!/bin/bash

# Tried on DSM
sudo netbird service stop
sudo iptables -t nat -F NETBIRD-RT-NAT
sudo iptables -t nat -X NETBIRD-RT-NAT
sudo iptables -t nat -L NETBIRD-RT-NAT
sudo iptables -t nat -S | grep NETBIRD-RT-NAT  # show nothing
sudo netbird service uninstall
sudo rm /usr/local/bin/netbird
sudo rm -rf /var/lib/netbird
sudo rm -rf /etc/netbird/
