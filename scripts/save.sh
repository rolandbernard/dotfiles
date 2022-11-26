#!/bin/bash
# Copy config form the system to this repository

cd $(dirname $0)/..

mkdir -p config/.bashrc.d
mkdir -p config/.mozilla/firefox/default/chrome
mkdir -p config/.config/{gtk-3.0,gtk-4.0,i3,kdedefaults,kitty,marvin,nitrogen,htop}
mkdir -p config/.config/Code/User
mkdir -p config/.config/vim/{colors,config,ftdetect,syntax}
mkdir -p config/.config/vim/autoload/lightline/colorscheme
mkdir -p config/.local/share/color-schemes

cp $HOME/.bashrc config/
cp $HOME/.clang-format config/
cp $HOME/.gitconfig config/
cp $HOME/.gtkrc-2.0 config/
cp $HOME/.gtkrc-2.0-kde4 config/
cp $HOME/.inputrc config/
cp $HOME/.tmux.conf config/

cp $HOME/.mozilla/firefox/*.default-release/chrome/userChrome.css config/.mozilla/firefox/default/chrome/
cp $HOME/.bashrc.d/* config/.bashrc.d/
cp $HOME/.local/share/color-schemes/* config/.local/share/color-schemes/
cp $HOME/.config/{breezerc,dolphinrc,gtkrc,gtkrc-2.0} config/.config/
cp $HOME/.config/{kaccessrc,katerc,katevirc,kcminputrc,kded5rc,kdeglobals,kglobalshortcutsrc} config/.config/
cp $HOME/.config/{khotkeysrc,klaunchrc,konsolerc,kscreenlockerrc,ksplashrc} config/.config/
cp $HOME/.config/{ktimezonedrc,plasma_calendar_holiday_regions,plasma-localerc} config/.config/
cp $HOME/.config/{plasma-org.kde.plasma.desktop-appletsrc,plasmanotifyrc,plasmashellrc} config/.config/
cp $HOME/.config/gtk-3.0/settings.ini config/.config/gtk-3.0/
cp $HOME/.config/gtk-4.0/settings.ini config/.config/gtk-4.0/
cp $HOME/.config/i3/config config/.config/i3/
cp $HOME/.config/kdedefaults/{kcminputrc,kdeglobals,kscreenlockerrc,ksplashrc,kwinrc,package,plasmarc} config/.config/kdedefaults/
cp $HOME/.config/kitty/kitty.conf config/.config/kitty/
cp $HOME/.config/marvin/marvin.json config/.config/marvin/
cp $HOME/.config/Code/User/{keybindings.json,settings.json} config/.config/Code/User/
cp $HOME/.config/vim/{init.vim,coc-settings.json} config/.config/vim/
cp $HOME/.config/vim/autoload/lightline/colorscheme/* config/.config/vim/autoload/lightline/colorscheme/
cp $HOME/.config/vim/autoload/plug.vim config/.config/vim/autoload/
cp $HOME/.config/vim/colors/* config/.config/vim/colors/
cp $HOME/.config/vim/config/* config/.config/vim/config/
cp $HOME/.config/vim/ftdetect/* config/.config/vim/ftdetect/
cp $HOME/.config/vim/syntax/* config/.config/vim/syntax/
cp $HOME/.config/nitrogen/bg-saved.cfg config/.config/nitrogen/
cp $HOME/.config/htop/htoprc config/.config/htop/

