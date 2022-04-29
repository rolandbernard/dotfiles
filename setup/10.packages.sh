#!/bin/bash

# Some dnf config changes
echo "
fastestmirror=True
max_parallel_downloads=10
deltarpm=True" | sudo tee -a /etc/dnf/dnf.conf

# Add RPM Fusion repositories
sudo dnf install \
    https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
    https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Add Microsoft repositories
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo "[code]
name=Visual Studio Code
baseurl=https://packages.microsoft.com/yumrepos/vscode
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee -a /etc/yum.repos.d/vscode.repo
echo "[teams]
name=Microsoft Teams
baseurl=https://packages.microsoft.com/yumrepos/ms-teams
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee -a /etc/yum.repos.d/ms-teams.repo

# Upgrade system
dnf check-update
sudo dnf upgrade

# Install nvidia driver?
sudo dnf install akmod-nvidia

# Install some other progams
sudo dnf install \
    i3 \
    java-latest-openjdk java-latest-openjdk-devel \
    @multimedia \
    @c-development git llvm clang lld nodejs npm rust cargo @python-science \
    @virtualization guestfs-tools \
    @fonts ibm-plex-fonts-all \
    tlp tlp-rdw \
    firefox ksysguard okular dolphin code teams kitty bash-completion \
    neovim tmux 

sudo dnf group upgrade --with-optional Multimedia
sudo systemctl enable tlp

