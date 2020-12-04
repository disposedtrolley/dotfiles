set -Ux EDITOR nvim

# Go
set -x GOENV_ROOT $HOME/.goenv
set -gx PATH $GOENV_ROOT/bin $PATH
source (goenv init - | psub) # https://stanislas.blog/2018/07/how-to-use-nvm-rbenv-pyenv-goenv-with-fish-shell/
set -gx PATH $GOROOT/bin $PATH
set -gx PATH $GOPATH/bin $PATH

# Local packages
set -gx PATH $HOME/.local/bin $PATH

# UI
theme_gruvbox dark medium

# Sources
source $HOME/.config/fish/.fzf.fish
