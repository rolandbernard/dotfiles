#!/bin/bash
# Copy config form this repository to the system

cd $(dirname $0)/..

cp -r config/.bashrc.d $HOME/
cp -r config/.config $HOME/
cp -r config/.local $HOME/
cp -r config/.mozilla/firefox/default/chrome $HOME/.mozilla/firefox/*.default-release/
cp config/.bashrc $HOME/
cp config/.clang-format $HOME/
cp config/.gitconfig $HOME/
cp config/.inputrc $HOME/
cp config/.tmux.conf $HOME/
cp config/.gtkrc-2.0 $HOME/
cp config/.gtkrc-2.0-kde4 $HOME/

rm -f $HOME/.config/nvim
ln -s $HOME/.config/vim $HOME/.config/nvim
rm -f $HOME/.vimrc
ln -s $HOME/.config/vim/init.vim $HOME/.vimrc

