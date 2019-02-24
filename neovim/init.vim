call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/goyo.vim'
Plug 'junegunn/seoul256.vim'
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}

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

Plug 'marcelbeumer/spacedust.vim'
Plug 'marcelbeumer/javascript-syntax.vim'

Plug 'arcticicestudio/nord-vim'

Plug 'vim-scripts/indentpython.vim'

Plug 'vim-syntastic/syntastic'

call plug#end()

" Golang
source ~/dotfiles/neovim/lang/go.vim
" Python
source ~/dotfiles/neovim/lang/python.vim
let g:deoplete#enable_at_startup = 1

source ~/dotfiles/neovim/general.vim
