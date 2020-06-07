syntax on
set autoread
set nu
set ai

set nocompatible
set relativenumber
set backspace=indent,eol,start
set noerrorbells visualbell t_vb=
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

set hlsearch
set ignorecase
set incsearch
set smartcase
set cursorline
set confirm
set history=1000
set tabstop=4
set softtabstop=4
set expandtab
set wildmenu
set showmatch
"nnoremap jk :nohlsearch<CR>
set foldenable
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za
set foldmethod=syntax
inoremap jk <esc>
set clipboard=unnamedplus
set background=light
set shortmess+=I