# Shell script to set up a Go development environment for Neovim

# deoplete
pip3 install --user pynvim

# gocode
# ensure GOPATH is setup correctly
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

go get -u github.com/mdempsky/gocode
