# ---------------------
# functions (Shortcuts)
# ---------------------

function pretty_csv {
    perl -pe 's/((?<=,)|(?<=^)),/ ,/g;' "$@" | column -t -s, | less  -F -S -X -K
}

# -------
# Aliases
# -------

# Search path pollution using CDPATH, rather use the aliases directly
# export CDPATH=:$HOME/Documents/DAW:$HOME/Documents

# Shortcuts to programming stuff
alias sc="$HOME/Documents/DAW/SC/"
alias c="$HOME/Documents/C/"
alias cpp="$HOME/Documents/Cpp/"
alias c++="$HOME/Documents/Cpp/"
alias p="$HOME/Documents/Python/"
alias js="$HOME/Documents/JS/"
alias ts="$HOME/Documents/JS/TS"
alias cs="$HOME/Documents/C#/"
alias gl="$HOME/Documents/Go/"
alias rust="$HOME/Documents/rust/"

os="$(uname -s)"
case "${os}" in
    Linux*) echo "Linux";;
    Darwin*) 
        echo "MacOS"
        # Alias to compilers
        alias gcc="gcc-12"
        alias g++="g++-12"
        alias pdf="$HOME/Documents/PDF/Library"
        # Clearing attribute from com.apple.quarantine - allowing for all vst/au components to be opened
        alias validatePlugins="sudo xattr -rd com.apple.quarantine /Library/Audio/Plug-Ins"
        # Fixing the mfucking camera when it bugs out
        alias fixCam="sudo killall VCDAssistant";;
    *)  echo "unknown OS"
esac

alias recent="-tr | tail -10 -r"

# --------------------
# Convenience aliases:
# --------------------

alias ssh='TERM=xterm-256color ssh'

alias bat="bat --color=always --line-range=:500"
alias fzfp="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'"
