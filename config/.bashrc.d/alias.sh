
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias lh='ls -a'
alias ll='lh -l'
alias vim='openvim'
alias gdb='gdb -q'
alias python='python -q'
alias trash='gio trash'

openvim () {
    if [ $TMUX ]
    then
        tmux split -bf -p 80 nvim $@
    else
        nvim $@
    fi
}

export -f openvim

