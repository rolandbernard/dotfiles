#!/bin/bash

# Remove directories like Download/Desktop/...
rm -rf $HOME/{Downloads,Desktop,Templates,Public,Documents,Music,Pictures,Videos}
mkdir -p $HOME/{downloads,public,documents}
mkdir -p $HOME/documents/{desktop,templates,music,pictures,videos}
mkdir -p $HOME/dev/{uni,bot}

# Copy config
mv ../dotfiles $HOME/dev
bash scripts/restore.sh

# Install vim plugins
nvim --headless +PlugInstall +qa

if [ "$HOST_NAME" == "rolandlinux" -o  "$HOST_NAME" == "rolandvm" ]
then

sudo systemctl set-default graphical.target

# Other config
sudo systemctl enable tlp

sudo plymouth-set-default-theme details
sudo dracut -f

fi
