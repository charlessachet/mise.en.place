#!/bin/sh

set -o errexit
set -o nounset

hack/essentials.sh
hack/myzsh.sh
hack/golang.sh
hack/docker.sh
hack/i3-cfg.sh
hack/aur.sh google-chrome
hack/aur.sh spotify
