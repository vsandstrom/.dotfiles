# ---------------------
# functions (Shortcuts)
# ---------------------

function pretty_csv {
    perl -pe 's/((?<=,)|(?<=^)),/ ,/g;' "$@" | column -t -s, | less  -F -S -X -K
}

# -------
# Aliases
# -------

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

# Alias to compilers
alias gcc="gcc-12"
alias g++="g++-12"

alias recent="-tr | tail -10 -r"

# --------------------
# Convenience aliases:
# --------------------

#alias ssh='TERM=xterm-256color ssh'

alias bat="bat --color=always --line-range=:500"
alias fzfp="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'"
