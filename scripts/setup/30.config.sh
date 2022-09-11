#!/bin/bash

# Remove directories like Download/Desktop/.../
rm -rf $HOME/{Downloads,Desktop,Templates,Public,Documents,Music,Pictures,Videos}
mkdir -p $HOME/{downloads,public,documents}
mkdir -p $HOME/x/{desktop,templates,music,pictures,videos}
mkdir -p $HOME/{dev,dev-uni,dev-bot}

# Copy config

# Other config
sudo systemctl disable abrt-journal-core.service
sudo systemctl disable abrt-oops.service
sudo systemctl disable abrt-xorg.service
sudo systemctl disable abrtd.service

sudo systemctl enable tlp

sudo plymouth-set-default-theme details
sudo dracut -f

