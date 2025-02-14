
if ! [[ "$PATH" =~ "$HOME/.cargo/bin:" ]]
then
    PATH="$HOME/.cargo/bin:$PATH"
fi

if ! [[ "$PATH" =~ "$HOME/go/bin:" ]]
then
    PATH="$HOME/go/bin:$PATH"
fi

if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi

if ! [[ "$LD_LIBRARY_PATH" =~ "$HOME/.local/lib:$HOME/lib:" ]]
then
    LD_LIBRARY_PATH="$HOME/.local/lib:$HOME/lib:$LD_LIBRARY_PATH"
fi

export LD_LIBRARY_PATH
export PATH

