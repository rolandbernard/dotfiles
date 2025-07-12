
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias lh='ls -a'
alias ll='lh -l'
alias vim='openeditor nvim'
alias hx='openeditor hx'
alias code='opencode'
alias gdb='gdb -q'
alias python='python -q'
alias trash='gio trash'
alias fan-turbo='echo 1 | sudo tee /sys/devices/platform/asus-nb-wmi/throttle_thermal_policy'
alias fan-balanced='echo 0 | sudo tee /sys/devices/platform/asus-nb-wmi/throttle_thermal_policy'
alias fan-silent='echo 2 | sudo tee /sys/devices/platform/asus-nb-wmi/throttle_thermal_policy'

opencode() {
    if [ -z "$1" ]
    then
        \code $(realpath .)
    else
        \code $(realpath $1)
    fi
}

export -f opencode

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

