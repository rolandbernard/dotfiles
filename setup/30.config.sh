#!/bin/bash

# Clone dotfiles
git clone https://github.com/rolandbernard/dotfiles

# vim config

# vscode config

# tmux config

# bash config

# other config
sudo systemctl disable abrt-journal-core.service
sudo systemctl disable abrt-oops.service
sudo systemctl disable abrt-xorg.service
sudo systemctl disable abrtd.service

sudo systemctl enable tlp

