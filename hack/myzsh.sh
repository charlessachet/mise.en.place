#!/bin/sh
set -o nounset
set -o errexit

WORKDIR=/tmp/myzsh
rm -rf $WORKDIR
mkdir -p $WORKDIR
cd $WORKDIR
wget https://github.com/charlessachet/my.zsh/archive/master.zip
unzip master.zip
cd my.zsh-master
make install
make copy
