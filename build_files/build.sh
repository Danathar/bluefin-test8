#!/bin/bash

set -ouex pipefail

if [ -d /ctx/system_files ]; then
    cp -avf /ctx/system_files/. /
fi

# Install packages
dnf5 install -y \
    age \
    borgbackup \
    cockpit \
    fish \
    gparted \
    iotop \
    iperf3 \
    lm_sensors \
    mtr \
    ncdu \
    nethack \
    nmap \
    powertop \
    rclone \
    restic \
    smartmontools \
    tmux \
    virt-manager \
    wireguard-tools \
    zsh

# Clean dnf metadata before the final image is committed
dnf5 clean all
