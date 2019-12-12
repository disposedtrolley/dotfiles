call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/goyo.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-fugitive'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'
Plug 'parsonsmatt/intero-neovim'
Plug 'davidhalter/jedi-vim'
Plug 'morhetz/gruvbox'
Plug 'dense-analysis/ale'

Plug 'mdempsky/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'vim-scripts/indentpython.vim'

Plug 'vim-syntastic/syntastic'

call plug#end()

" Golang
source ~/dotfiles/neovim/lang/go.vim
" Python
source ~/dotfiles/neovim/lang/python.vim
" Rust
source ~/dotfiles/neovim/lang/rust.vim

source ~/dotfiles/neovim/general.vim
