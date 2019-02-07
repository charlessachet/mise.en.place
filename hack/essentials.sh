#!/bin/sh
set -e

echo "Forcing DNS to be 1.1.1.1, some ISP DNS are pretty crappy"
sudo cp ./hack/cfg/dns/resolv.conf /etc/resolv.conf
sudo chattr +i /etc/resolv.conf

echo "Installing basic stuff"
sudo pacman --noconfirm -S libcurl-gnutls feh git unrar unzip python-pip

git config --global push.default simple
git config --global user.name "Charles Sachet"
git config --global user.email "charles@csachet.com"

echo "Installing Sound Stuff"
sudo pacman --noconfirm -S alsa-utils alsa-tools pulseaudio pavucontrol

echo "Install Monitoring tools"
sudo pacman --noconfirm -S sysdig iotop iftop htop sysstat

echo "Install Atom editor"
sudo pacman --noconfirm -S atom
