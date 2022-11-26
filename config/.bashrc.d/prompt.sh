
timer_start () {
    timer_start=${timer_start:-$(date +%s%N)}
}

timer_end () {
    timer_end=$(date +%s%N)
}

timer_format () {
    local ns=$((timer_end - timer_start))
    local us=$((ns / 1000))
    local ms=$((us / 1000))
    local sec=$((ms / 1000))
    local min=$((sec / 60))
    local hou=$((min / 60))
    local day=$((hou / 24))
    if (( ns < 1000 )); then
        printf "%3ins" ${ns}
    elif (( us < 10 )); then
        printf "%1i.%.1ius" $((us)) $((ns / 100 % 10))
    elif (( us < 1000 )); then
        printf "%3ius" ${us}
    elif (( ms < 10 )); then
        printf "%1i.%.1ims" ${ms} $((us / 100 % 10))
    elif (( ms < 1000 )); then
        printf "%3ims" ${ms}
    elif (( sec < 10 )); then
        printf "%1i.%.2is" ${sec} $((ms / 10 % 100))
    elif (( sec < 100 )); then
        printf "%2i.%.1is" ${sec} $((ms / 100 % 10))
    elif (( min < 10 )); then
        printf "%1im%2is" ${min} $((sec % 60))
    elif (( min < 100 )); then
        printf "%4im" ${min}
    elif (( hou < 10 )); then
        printf "%1ih%2im" ${hou} $((min % 60))
    elif (( hou < 100 )); then
        printf "%4ih" ${hou}
    elif (( day < 10 )); then
        printf "%1id%2ih" ${day} $((hou % 24))
    else
        printf "%4id" ${day}
    fi
}

set_prompt () {
    timer_end
    echo -n -e "\e]2;`pwd`\a" # Set the terminal window title
    PS1=""
    if [ $1 -eq 0 ]
    then
        PS1+="\[\e[92m\]"
    else 
        PS1+="\[\e[91m\]"
    fi
    PS1+="$(timer_format) \[\e[94m\]\W\[\e[m\] "
    if [ -n "$CONDA_DEFAULT_ENV" -a "$CONDA_DEFAULT_ENV" != "base" ]
    then
        PS1+="\[\e[90m\][$CONDA_DEFAULT_ENV]\[\e[m\] "
    fi
    if git branch --show-current &> /dev/null
    then
        PS1+="\[\e[34m\]{$(git branch --show-current)}\[\e[m\] "
    fi
    PS1+=" "
}

trap 'timer_start' DEBUG
PROMPT_COMMAND='set_prompt $? ; unset timer_start'

open_conda() {
  if [ -z "$CONDA_INITIALIZED" ]
  then
    __conda_setup="$('/home/roland/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null); conda $@"
    if [ $? -eq 0 ]; then
        eval "$__conda_setup"
    else
        if [ -f "/home/roland/anaconda3/etc/profile.d/conda.sh" ]; then
            . "/home/roland/anaconda3/etc/profile.d/conda.sh"
        else
            export PATH="/home/roland/anaconda3/bin:$PATH"
        fi
    fi
    unset __conda_setup
    CONDA_INITIALIZED=YES
  else
    conda $@
  fi
}

alias conda='open_conda'

