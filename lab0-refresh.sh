#!/bin/sh

set -x

sudo podman pull registry.access.redhat.com/ubi9/ubi:latest
sudo podman pull registry.access.redhat.com/ubi9/ubi-init:latest
sudo podman pull registry.access.redhat.com/ubi9/ubi-minimal:latest
sudo podman pull registry.access.redhat.com/ubi9/ubi-micro:latest

sudo podman pull quay.io/fedora/fedora:41
sudo podman pull quay.io/fedora/fedora-minimal:41

sudo podman pull docker.io/rlinfati/containerfile-lab0:grbts-999
sudo podman pull docker.io/rlinfati/containerfile-lab0:ikev2-tls-999

sudo podman image prune --force

sudo podman image ls -a
sudo podman container ls
sudo systemctl start podman-auto-update
sudo podman image ls -a
sudo podman container ls

exit 0
