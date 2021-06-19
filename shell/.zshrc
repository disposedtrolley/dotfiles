# oh-my-zsh init
ZSH_DISABLE_COMPFIX=true
plugins=(git colorize brew osx zsh-syntax-highlighting vi-mode z)
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# User configuration

export EDITOR='nvim'

# ==== Version Managers ====
# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
#
# goenv
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"
#
# pyenv - https://github.com/pyenv/pyenv-installer
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
#
# rbenv
eval "$(rbenv init -)"


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

# Created by `userpath` on 2020-09-30 11:52:45
export PATH="$PATH:/Users/james/.local/bin"
[ -f "/Users/james/.ghcup/env" ] && source "/Users/james/.ghcup/env" # ghcup-env

alias sw="~/dotfiles/scripts/start_work.sh"

# Starship.rs
eval "$(starship init zsh)"
