#!/bin/sh

set -x

sudo podman pull docker.io/rlinfati/containerfile-lab0:grbts-999
sudo podman pull docker.io/rlinfati/containerfile-lab0:ikev2-tls-999

sudo podman image prune --force

sudo podman image ls -a
sudo podman container ls
sudo systemctl start podman-auto-update
sudo podman image ls -a
sudo podman container ls

exit 0
