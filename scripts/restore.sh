#!/bin/bash
# Copy config form this repository to the system

cd $(dirname $0)/..

cp -r config/.bashrc.d $HOME/
cp -r config/.config $HOME/
cp config/.bashrc $HOME/
cp config/.clang-format $HOME/
cp config/.gitconfig $HOME/
cp config/.inputrc $HOME/
cp config/.tmux.conf $HOME/

rm -f $HOME/.config/nvim
ln -s $HOME/.config/vim $HOME/.config/nvim
rm -f $HOME/.vimrc
ln -s $HOME/.config/vim/init.vim $HOME/.vimrc

dconf load -f / < config/settings.dconf

