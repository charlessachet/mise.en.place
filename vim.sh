#!/bin/sh
set -e

echo "Installing my vim"
git clone git@github.com:katcipis/my.vim.git
cd my.vim
make bootstrap
make
