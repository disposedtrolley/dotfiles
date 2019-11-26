" Configure leader key
let mapleader=","

" Configure clipboard
" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" Set theme
set background=dark
colorscheme gruvbox
set termguicolors
let g:airline_theme='base16'

" Turn on line numbers
set number

" Error and warning signs.
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'
" Enable integration with airline.
let g:airline#extensions#ale#enabled = 1

" Default indentation
set tabstop=4
set shiftwidth=4
set expandtab

" Netrw
" Remove banner
let g:netrw_banner = 0
" Set width to 25%
let g:netrw_winsize = 25
" Open new files in previous window
let g:netrw_browse_split = 4

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Tagbar - http://majutsushi.github.io/tagbar/
nnoremap <silent> <Leader>b :TagbarToggle<CR>

" CtrlP
nnoremap <leader>. :CtrlPTag<cr>
