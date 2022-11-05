#!/bin/sh

# Restart UDEV Service if not running
udev_status=$(service udev status) 
if [[ $udev_status = *"is not running"* ]]; then
  service udev restart
fi

usbip attach --remote=192.168.1.36 --busid=3-3

gphoto2 --list-config
