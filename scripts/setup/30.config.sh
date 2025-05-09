#!/bin/bash

# Remove directories like Download/Desktop/...
rm -rf $HOME/{Downloads,Desktop,Templates,Public,Documents,Music,Pictures,Videos}
mkdir -p $HOME/{downloads,public,documents}
mkdir -p $HOME/documents/{desktop,templates,music,pictures,videos}
mkdir -p $HOME/dev/{uni,bot,github}
mkdir -p $HOME/dev/github/rolandbernard

# Copy config
mv ../dotfiles $HOME/dev/github/rolandbernard
bash scripts/restore.sh

# Install vim plugins
nvim --headless +PlugInstall +qa

if [ "$HOST_NAME" == "rolandlaptop" -o  "$HOST_NAME" == "rolandvm" ]
then

sudo systemctl set-default graphical.target

# Install vscode-theme
cd vscode-theme
npm install
npm run package
code --install-extension simpledark-0.0.2.vsix
cd ..

# Install firefox-theme
cp firefox-theme/129528ec52724bc59c9e-1.1.xpi \
    $HOME/.mozilla/firefox/*.default*/extensions

# Other config
sudo plymouth-set-default-theme details
sudo dracut -f

fi
