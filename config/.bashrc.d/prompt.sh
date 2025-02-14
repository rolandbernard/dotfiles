
timer_start=0

print_time() {
    local ns=$1
    local us=$((ns / 1000))
    local ms=$((us / 1000))
    local sec=$((ms / 1000))
    local min=$((sec / 60))
    local hou=$((min / 60))
    local day=$((hou / 24))
    if [ $ns -lt 1000 ]; then
        printf "%3ins" $ns
    elif [ $us -lt 10 ]; then
        printf "%1i.%.1ius" $us $((ns / 100 % 10))
    elif [ $us -lt 1000 ]; then
        printf "%3ius" $us
    elif [ $ms -lt 10 ]; then
        printf "%1i.%.1ims" $ms $((us / 100 % 10))
    elif [ $ms -lt 1000 ]; then
        printf "%3ims" $ms
    elif [ $sec -lt 10 ]; then
        printf "%1i.%.2is" $sec $((ms / 10 % 100))
    elif [ $sec -lt 100 ]; then
        printf "%2i.%.1is" $sec $((ms / 100 % 10))
    elif [ $min -lt 10 ]; then
        printf "%1im%2is" $min $((sec % 60))
    elif [ $min -lt 100 ]; then
        printf "%4im" $min
    elif [ $hou -lt 10 ]; then
        printf "%1ih%2im" $hou $((min % 60))
    elif [ $hou -lt 100 ]; then
        printf "%4ih" $hou
    elif [ $day -lt 10 ]; then
        printf "%1id%2ih" $day $((hou % 24))
    else
        printf "%4id" $day
    fi
}

set_prompt() {
    PS1=""
    if [ $1 -eq 0 ]
    then
        PS1+="\[\e[92m\]"
    else 
        PS1+="\[\e[91m\]"
    fi
    if [ $timer_start -ne 0 ]
    then
        PS1+=$(print_time $(( $(date +%s%N) - timer_start )))
    else
        PS1+="  0ms"
    fi
    PS1+=" \[\e[94m\]\W\[\e[m\] "
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

PS0='${PS0:0:$((timer_start=$(date +%s%N),0))}'
PROMPT_COMMAND='set_prompt $? ; timer_start=0'

