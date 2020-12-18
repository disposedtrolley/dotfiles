set -Ux EDITOR nvim

# Go
set -x GOENV_ROOT $HOME/.goenv
set -gx PATH $GOENV_ROOT/bin $PATH
source (goenv init - | psub) # https://stanislas.blog/2018/07/how-to-use-nvm-rbenv-pyenv-goenv-with-fish-shell/
set -gx PATH $GOROOT/bin $PATH
set -gx PATH $GOPATH/bin $PATH

# Rust
set -gx PATH $HOME/.cargo/bin $PATH

# ARM Embedded Toolchain
set -gx PATH $HOME/gcc-arm-none-eabi-10-2020-q4-major/bin $PATH

# Ruby
set -Ux fish_user_paths $HOME/.rbenv/bin $fish_user_paths  # TODO use `fish_user_paths` everywhere.
status --is-interactive; and rbenv init - | source

# Local packages
set -gx PATH $HOME/.local/bin $PATH

# UI
theme_gruvbox dark medium

# Sources
source $HOME/.config/fish/.fzf.fish
