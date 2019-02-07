#!/bin/sh
set -o errexit
set -o nounset

GO_VERSION="1.11.5"

echo "Install Go "$GO_VERSION" at "$GOROOT

cd /tmp
wget https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz
sudo tar -xvf go$GO_VERSION.linux-amd64.tar.gz

sudo rm -rf $GOROOT
mkdir -p $GOROOT
sudo mv ./go/* $GOROOT
