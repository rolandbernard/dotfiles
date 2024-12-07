#!/bin/bash
# Software that is not packaged

if [ "$HOST_NAME" == "rolandlaptop" -o  "$HOST_NAME" == "rolandvm" ]
then

# Install Marvin
mkdir -p $HOME/.local/share/applications
wget -qO- https://raw.githubusercontent.com/rolandbernard/marvin/master/install.sh | bash

# Install Nerd Fonts
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts $HOME/dev/nerd-fonts
bash $HOME/dev/nerd-fonts/install.sh IBMPlexMono

rustup-init -y --default-toolchain nightly --profile complete

curl -fLo $HOME/.config/vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

fi
