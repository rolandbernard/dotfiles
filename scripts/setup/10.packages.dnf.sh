#!/bin/bash

if [ "$OS_NAME" == "Fedora Linux" ]
then

# Some dnf config changes
echo "
fastestmirror=True
max_parallel_downloads=10" | sudo tee -a /etc/dnf/dnf.conf

if [ "$HOST_NAME" == "rolandlinux" -o "$HOST_NAME" == "rolandvm" ]
then

# Add RPM Fusion repositories
sudo dnf -y install \
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

fi

# Upgrade system
dnf -y check-update
sudo dnf -y upgrade
sudo dnf -y install pciutils wget2-wget

# Install nvidia driver?
if [ $(lspci | grep -c NVIDIA) -gt 0 ]
then
    sudo dnf -y install akmod-nvidia
fi

# Install some other programs
if [ "$HOST_NAME" == "rolandlaptop" -o "$HOST_NAME" == "rolandvm" ]
then

sudo dnf -y install \
    gnome-shell ptyxis nautilus gnome-tweaks adw-gtk3-theme \
    @multimedia \
    @development-tools @c-development llvm-devel clang clangd lld nodejs npm rustup \
    @python-science java-latest-openjdk java-latest-openjdk-devel \
    @virtualization guestfs-tools \
    @fonts ibm-plex-fonts-all \
    firefox code bash-completion neovim tmux gimp inkscape \
    ImageMagick python-neovim htop

sudo dnf remove gnome-tour

if [ "$HOST_NAME" == "rolandvm" ]
then

sudo dnf -y install spice-vdagent

fi

elif [ "$HOST_NAME" == "rolandpi" ]
then

sudo dnf -y install \
    @development-tools @c-development git llvm-devel clang lld nodejs npm rust \
    cargo @python-science \
    bash-completion neovim tmux python-neovim

fi

fi
