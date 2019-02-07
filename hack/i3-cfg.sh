#!/bin/sh

set -o errexit
set -o nounset

echo "Installing i3blocks for cosmetic"
sudo pacman --noconfirm -S i3blocks

mkdir -p ${HOME}/.i3
cp ./hack/cfg/i3/config ${HOME}/.i3/config
cp ./hack/cfg/i3/i3blocks.conf ${HOME}/.i3/i3blocks.conf
