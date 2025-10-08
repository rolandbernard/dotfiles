#!/bin/bash
# Copy config form the system to this repository

cd $(dirname $0)/..

mkdir -p config/.bashrc.d
mkdir -p config/.config/{marvin,htop}
mkdir -p config/.config/Code/User
mkdir -p config/.config/vim/{colors,config,ftdetect,syntax}
mkdir -p config/.config/vim/autoload/lightline/colorscheme
mkdir -p config/.config/ghostty/themes
mkdir -p config/.config/helix/themes
mkdir -p config/.config/gtk-3.0
mkdir -p config/.config/gtk-4.0
mkdir -p config/.mozilla/firefox/default/chrome
mkdir -p config/.zen/default/chrome

cp $HOME/.bashrc config/
cp $HOME/.bash_profile config/
cp $HOME/.clang-format config/
cp $HOME/.gitconfig config/
cp $HOME/.inputrc config/
cp $HOME/.tmux.conf config/

cp $HOME/.bashrc.d/* config/.bashrc.d/
cp $HOME/.config/marvin/marvin.json config/.config/marvin/
cp $HOME/.config/Code/User/{keybindings.json,settings.json} config/.config/Code/User/
cp $HOME/.config/vim/{init.vim,coc-settings.json} config/.config/vim/
cp $HOME/.config/vim/autoload/lightline/colorscheme/* config/.config/vim/autoload/lightline/colorscheme/
cp $HOME/.config/vim/colors/* config/.config/vim/colors/
cp $HOME/.config/vim/config/* config/.config/vim/config/
cp $HOME/.config/vim/ftdetect/* config/.config/vim/ftdetect/
cp $HOME/.config/vim/syntax/* config/.config/vim/syntax/
cp $HOME/.config/htop/htoprc config/.config/htop/
cp $HOME/.config/ghostty/config config/.config/ghostty/
cp $HOME/.config/ghostty/themes/* config/.config/ghostty/themes/
cp $HOME/.config/helix/languages.toml config/.config/helix/
cp $HOME/.config/helix/themes/* config/.config/helix/themes/
cp $HOME/.config/gtk-3.0/gtk.css config/.config/gtk-3.0
cp $HOME/.config/gtk-4.0/gtk.css config/.config/gtk-4.0
cp $HOME/.var/app/app.zen_browser.zen/.zen/*" (release)"/chrome/userChrome.css config/.zen/default/chrome
cp $HOME/.mozilla/firefox/*".default-release"/chrome/userChrome.css config/.mozilla/firefox/default/chrome

dconf dump / > config/settings.dconf

