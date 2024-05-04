#!/bin/bash
# Software that is not packaged

if [ "$HOST_NAME" == "rolandlinux" -o  "$HOST_NAME" == "rolandvm" ]
then

# Install Marvin
mkdir -p $HOME/.local/share/applications
wget -qO- https://raw.githubusercontent.com/rolandbernard/marvin/master/install.sh | bash

# Install Nerd Fonts
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts $HOME/dev/nerd-fonts
bash $HOME/dev/nerd-fonts/install.sh IBMPlexMono

rustup-init -y --default-toolchain nightly --profile complete

fi
