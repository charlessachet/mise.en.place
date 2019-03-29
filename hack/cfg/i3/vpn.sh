#!/bin/bash

VPN=$(nmcli -t connection show --active | grep tun0)

# Set urgent flag if VPN is OFF.
if [ -z ${VPN} ]
then
  echo "OFF"
  exit 33
fi

echo "ON"
exit 0
