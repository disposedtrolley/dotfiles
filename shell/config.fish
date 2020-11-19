set -Ux EDITOR nvim

# Go
set -x GOENV_ROOT $HOME/.goenv
set -gx PATH $GOENV_ROOT/bin $PATH
source (goenv init - | psub) # https://stanislas.blog/2018/07/how-to-use-nvm-rbenv-pyenv-goenv-with-fish-shell/

# UI
theme_gruvbox dark medium
