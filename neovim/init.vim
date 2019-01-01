call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/goyo.vim'
Plug 'junegunn/seoul256.vim'
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" Set theme
let g:seoul256_background = 233
colo seoul256
set background=dark

" Turn on line numbers
set number
