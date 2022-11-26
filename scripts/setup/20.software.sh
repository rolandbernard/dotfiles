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

# Install twingate VPN (Is this a good idea? -> NO, but I am lazy)
curl -s https://binaries.twingate.com/client/linux/install.sh | sudo bash

fi
