#!/bin/sh

set -o errexit
set -o nounset

packagename=$1

cd /tmp
sudo rm -rf $packagename
git clone https://aur.archlinux.org/$packagename.git
cd $packagename
makepkg -sri --noconfirm
cd -
