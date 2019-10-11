call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/goyo.vim'
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'majutsushi/tagbar'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-fugitive'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'
Plug 'iCyMind/NeoSolarized'
Plug 'parsonsmatt/intero-neovim'
Plug 'davidhalter/jedi-vim'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'mdempsky/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'zchee/deoplete-jedi'

Plug 'nightsense/cosmic_latte'

Plug 'vim-scripts/indentpython.vim'

Plug 'vim-syntastic/syntastic'

call plug#end()

" Golang
source ~/dotfiles/neovim/lang/go.vim
" Python
source ~/dotfiles/neovim/lang/python.vim
let g:deoplete#enable_at_startup = 1
" Rust
source ~/dotfiles/neovim/lang/rust.vim
" OCaml
source ~/dotfiles/neovim/lang/ocaml.vim

source ~/dotfiles/neovim/general.vim
