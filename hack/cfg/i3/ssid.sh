#!/bin/bash

SSID=$(iwgetid -r)

if ! [ -z ${SSID} ]
then
  echo ${SSID}
fi

exit 0
