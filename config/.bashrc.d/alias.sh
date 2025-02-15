
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias lh='ls -a'
alias ll='lh -l'
alias vim='openeditor nvim'
alias hx='openeditor hx'
alias gdb='gdb -q'
alias python='python -q'
alias trash='gio trash'

openeditor() {
    if [ $TMUX ]
    then
        tmux split -bf -l 80% $@
    else
        $@
    fi
}

export -f openeditor

open_conda() {
  if [ -z "$CONDA_INITIALIZED" ]
  then
    __conda_setup="$('/usr/bin/conda' 'shell.bash' 'hook' 2> /dev/null); conda $@"
    if [ $? -eq 0 ]; then
        eval "$__conda_setup"
    else
        if [ -f "/usr/etc/profile.d/conda.sh" ]; then
            . "/usr/etc/profile.d/conda.sh"
        else
            export PATH="/usr/bin:$PATH"
        fi
    fi
    unset __conda_setup
    CONDA_INITIALIZED=YES
  else
    conda $@
  fi
}

alias conda='open_conda'

