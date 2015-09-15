execute pathogen#infect()
syntax on
syntax enable
let g:hybrid_use_iTerm_colors = 1
colorscheme deepsea
set number
filetype on
filetype plugin on
filetype indent on
set runtimepath^=~/.vim/bundle/ctrlp.vim


let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

set fileformat=unix
set fileformats=unix,dos
set autoread        
set encoding=utf-8
set fileencoding=utf-8
set nocompatible
set hidden
set tabstop=4
set backspace=indent,eol,start
set autoindent
set copyindent
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
set nobackup
set noswapfile
set mouse=a
set hlsearch
set smartindent     " smarter indent for C-like languages
set shiftwidth=4    " when reading, tabs are 4 spaces
set softtabstop=4   " in insert mode, tabs are 4 spaces
autocmd VimEnter * wincmd p
au BufNewFile,BufRead *.ejs set filetype=html
