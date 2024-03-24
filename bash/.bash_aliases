# ---------------------
# functions (Shortcuts)
# ---------------------

function pretty_csv {
    perl -pe 's/((?<=,)|(?<=^)),/ ,/g;' "$@" | column -t -s, | less  -F -S -X -K
}

# -------
# Aliases
# -------

os="$(uname -s)"
case "${os}" in
    Linux*)
        echo "Linux"
        alias sc="$HOME/Documents/sc/"
        # Shortcuts to programming stuff
            alias c="$HOME/Documents/c/"
            alias cpp="$HOME/Documents/cpp/"
            alias c++="$HOME/Documents/cpp/"
            alias p="$HOME/Documents/python/"
            alias js="$HOME/Documents/js/"
            alias ts="$HOME/Documents/js/TS"
            alias gl="$HOME/Documents/go/"
            alias rust="$HOME/Documents/rust/"
            alias darkmode="brightnessctl s 40%"
            alias darkestmode="brightnessctl s 25%"
            alias lightmode="brightnessctl s 65%"
        ;;
    Darwin*) 
        echo "MacOS"
        # Alias to compilers
        alias gcc="gcc-12"
        alias g++="g++-12"
        alias python="python3.11"
        alias python3="python3.11"
        alias lg="lazygit"
        # Shortcuts to programming stuff
            alias c="$HOME/Documents/C/"
            alias cpp="$HOME/Documents/Cpp/"
            alias c++="$HOME/Documents/Cpp/"
            alias p="$HOME/Documents/Python/"
            alias js="$HOME/Documents/JS/"
            alias ts="$HOME/Documents/JS/TS"
            alias cs="$HOME/Documents/C#/"
            alias jv="$HOME/Documents/Java"
            alias gl="$HOME/Documents/Go/"
            alias rust="$HOME/Documents/rust/"
            alias risc="$HOME/Documents/riscv/"
            alias ino="$HOME/Documents/Arduino/"
            alias sc="$HOME/Documents/DAW/SC/"
            alias dsp="$HOME/Documents/Cpp/dsp/"
            alias rdsp="$HOME/Documents/rust/dsp/"
            alias daisy="$HOME/Documents/Daisy/"
        # Other aliases
          alias ssh='TERM=xterm-256color ssh'
          alias pdf="$HOME/Documents/PDF/Library"
          alias cv="$HOME/Documents/CV"
        # RISC-V compiler 
          alias riscv=". $HOME/esp-idf/export.sh"
        # Clearing attribute from com.apple.quarantine - allowing for all vst/au components to be opened
        alias validatePlugins="sudo xattr -rd com.apple.quarantine /Library/Audio/Plug-Ins"
        # Fixing the mfucking camera when it bugs out
        alias fixCam="sudo killall VCDAssistant";;
    *)  echo "unknown OS"
esac


# --------------------
# Convenience aliases:
# --------------------

alias recent="-tr | tail -10 -r"
alias clr="clear"

alias bat="bat --color=always --line-range=:500"
alias fzfp="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'"
