#!/bin/bash

# Some dnf config changes
echo "
fastestmirror=1
max_parallel_downloads=10
deltarpm=true" > /etc/dnf/dnf.conf

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
gpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo
echo "[teams]
name=Microsoft Teams
baseurl=https://packages.microsoft.com/yumrepos/ms-teams
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/ms-teams.repo

# Upgrade system
dnf check-update
dnf upgrade

# Install nvidia?

# Install some other progams
sudo dnf install \
    @kde \ # KDE
    java-latest-openjdk java-latest-openjdk-devel \ # Java
    @multimedia \ # Multimedia
    @c-development git llvm clang lld nodejs npm \ # Development
    @virtualization guestfs-tools \ # Virtualization
    @fonts ibm-plex-fonts-all \ # Fontyws
    firefox ksysguard okular dolphin code teams kitty \ # Other

