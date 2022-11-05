#!/bin/sh -e

export DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get upgrade -y


PACKAGES=$(xargs <<EOF
build-essential
curl
git
libgphoto2-6
usbip
EOF
)

apt-get install -y $PACKAGES
apt-get clean
