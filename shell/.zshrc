# oh-my-zsh init
ZSH_DISABLE_COMPFIX=true
plugins=(git colorize brew osx zsh-syntax-highlighting vi-mode z asdf)
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# User configuration

export EDITOR='nvim'


# ==== Aliases ====
# emacs
export ALTERNATE_EDITOR=""
alias e='emacsclient -c'
# neovim
alias nv=nvim


# ==== Custom Functions ====
# gitignore
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}
# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# ==== GNU ====
# sed
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"


# ==== Work ====
if [ -f $HOME/.zshrc_work ]; then
    source $HOME/.zshrc_work
fi
# =============

# arm-gcc-embedded
export ARM_TRIPLE="/Applications/ARM"
export ARM_TRIPLE_BIN="$ARM_TRIPLE/bin"
export PATH="$ARM_TRIPLE_BIN:$PATH"

# C/C++ compiler alises (macOS aliases these to Clang by default)
alias gcc='gcc-10'
alias g++='g++-10'
alias cc='gcc-10'
alias c++='c++-10'

# Zephyr
export ZEPHYR_TOOLCHAIN_VARIANT=gnuarmemb
export GNUARMEMB_TOOLCHAIN_PATH="$ARM_TRIPLE"
export ZEPHYR_BASE="/Users/james/zephyrproject/zephyr"

alias sw="~/dotfiles/scripts/start_work.sh"

# asdf
GOV=$(asdf where golang)
export GOROOT=$GOV/go
export PATH="$GOPATH/bin:$PATH"

# Starship.rs
eval "$(starship init zsh)"
