
if [ "$1" = setup ]
then
    cp -r ./.config/libinput-gestures.conf ~/.config/libinput-gestures.conf
    cp -r ./.config/vim/config ~/.config/vim/config
    cp -r ./.config/vim/syntax ~/.config/vim/syntax
    cp -r ./.config/vim/colors ~/.config/vim/colors
    cp -r ./.config/vim/spell ~/.config/vim/spell
    cp -r ./.config/vim/ftdetect ~/.config/vim/ftdetect
    cp -r ./.config/vim/init.vim ~/.config/vim/init.vim
    cp -r ./.config/vim/coc-settings.json ~/.config/vim/coc-settings.json
    cp -r ./.config/vim/autoload ~/.config/vim/autoload
    cp -r ./.config/marvin/marvin.json ~/.config/marvin/marvin.json

    cp -r ./.config/i3/* ~/.config/i3/
    cp -r ./.config/termite/* ~/.config/termite/
    cp -r ./.config/kitty/* ~/.config/kitty/

    cp ./.bashrc ~/.bashrc
    cp ./.inputrc ~/.inputrc
    cp ./.gdbinit ~/.gdbinit
    cp ./.tmux.conf ~/.tmux.conf
    cp ./.clang-format ~/.clang-format
    cp ./.gitconfig ~/.gitconfig
else
    cp -r ~/.config/libinput-gestures.conf ./.config/libinput-gestures.conf
    cp -r ~/.config/vim/config ./.config/vim/
    cp -r ~/.config/vim/syntax ./.config/vim/
    cp -r ~/.config/vim/colors ./.config/vim/
    cp -r ~/.config/vim/spell ./.config/vim/
    cp -r ~/.config/vim/ftdetect ./.config/vim/
    cp -r ~/.config/vim/init.vim ./.config/vim/
    cp -r ~/.config/vim/coc-settings.json ./.config/vim/
    cp -r ~/.config/vim/autoload ./.config/vim/
    cp -r ~/.config/marvin/marvin.json ./.config/marvin/

    cp -r ~/.config/i3/* ./.config/i3/
    cp -r ~/.config/termite/* ./.config/termite
    cp -r ~/.config/kitty/* ./.config/kitty

    cp ~/.bashrc ./.bashrc
    cp ~/.inputrc ./.inputrc
    cp ~/.gdbinit ./.gdbinit
    cp ~/.tmux.conf ./.tmux.conf
    cp ~/.clang-format ./.clang-format
    cp ~/.gitconfig ./.gitconfig
fi

