if has('vim_starting')
	set nocompatible
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

let neobundle_readme=expand('~/.vim/bundle/neobundle.vim/README.md')
let g:vim_bootstrap_langs = "javascript,c,php,html"
let g:vim_bootstrap_editor = "vim"

if !filereadable(neobundle_readme)
	echo "Installing NeoBundle..."
	echo ""
	silent !mkdir -p ~/.vim/bundle
	silent !git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim/
	let g:not_finsh_neobundle = "yes"
endif
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'


NeoBundle 'wavded/vim-stylus'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'tmux-plugins/vim-tmux'
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'othree/yajs.vim'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'mxw/vim-jsx'
NeoBundle '1995eaton/vim-better-javascript-completion'
NeoBundle 'nikvdp/ejs-syntax',{'autoload':{'filetypes':['ejs']}}
NeoBundle 'elzr/vim-json'
NeoBundle 'othree/javascript-libraries-syntax.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'mhartington/oceanic-next'
NeoBundle 'kien/rainbow_parentheses.vim'
NeoBundle 'chrisbra/Colorizer'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'valloric/MatchTagAlways'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'sheerun/vim-polyglot'
NeoBundle 'vim-scripts/grep.vim'
NeoBundle 'vim-scripts/CSApprox'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'jiangmiao/auto-pairs'
NeoBundle 'isRuslan/vim-es6'
NeoBundle 'othree/yajs.vim'
NeoBundle 'nikvdp/ejs-syntax'
NeoBundle 'Shougo/vimproc.vim', {
			\ 'build' : {
			\     'windows' : 'tools\\update-dll-mingw',
			\     'cygwin' : 'make -f make_cygwin.mak',
			\     'mac' : 'make -f make_mac.mak',
			\     'unix' : 'make -f make_unix.mak',
			\    },
			\ }

NeoBundle 'xolox/vim-misc'
NeoBundle 'xolox/vim-session'

if v:version >= 703
	NeoBundle 'Shougo/vimshell.vim'
endif

if v:version >= 704
	"" Snippets
	NeoBundle 'SirVer/ultisnips'
	NeoBundle 'FelikZ/ctrlp-py-matcher'
endif
NeoBundle 'honza/vim-snippets'
NeoBundle 'tomasr/molokai'
NeoBundle 'sherzberg/vim-bootstrap-updater'
NeoBundle 'vim-scripts/c.vim'
NeoBundle "scrooloose/syntastic"
NeoBundle "majutsushi/tagbar"
NeoBundle "Yggdroot/indentLine"
NeoBundle "majutsushi/tagbar"
NeoBundle 'amirh/HTML-AutoCloseTag'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'gorodinskiy/vim-coloresque'
NeoBundle 'tpope/vim-haml'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'arnaud-lb/vim-php-namespace'

"" Include user's extra bundle
if filereadable(expand("~/.vimrc.local.bundles"))
	source ~/.vimrc.local.bundles
endif

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set backspace=indent,eol,start
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

"" Map leader to ,
let mapleader=','

"" Enable hidden buffers
set hidden

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"" Encoding
set bomb
set binary
set ttyfast

"" Directories for swp files
set nobackup
set noswapfile

set fileformats=unix,dos,mac
set showcmd
set shell=/bin/sh

" session management
let g:session_directory = "~/.vim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1
syntax on
set ruler
set number

let no_buffers_menu=1
if !exists('g:not_finsh_neobundle')
	colorscheme molokai
endif

set mousemodel=popup
set t_Co=256
set cursorline
set guioptions=egmrti
set gfn=Monospace\ 10

if has("gui_running")
	if has("gui_mac") || has("gui_macvim")
		set guifont=Menlo:h12
		set transparency=7
	endif
else
	let g:CSApprox_loaded = 1

	if $COLORTERM == 'gnome-terminal'
		set term=gnome-256color
	else
		if $TERM == 'xterm'
			set term=xterm-256color
		endif
	endif
endif

if &term =~ '256color'
	set t_ut=
endif

"" Disable the blinking cursor.
set gcr=a:blinkon0
set scrolloff=3

"" Status bar
set laststatus=2

"" Use modeline overrides
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

if exists("*fugitive#statusline")
	set statusline+=%{fugitive#statusline()}
endif

" vim-airline
let g:airline_theme = 'powerlineish'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1

"" Abbreviations
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

"" NERDTree configuration
let g:NERDTreeChDirMode=2
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 50
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
nnoremap <silent> <F2> :NERDTreeFind<CR>
noremap <F3> :NERDTreeToggle<CR>

" grep.vim
nnoremap <silent> <leader>f :Rgrep<CR>
let Grep_Default_Options = '-IR'
let Grep_Skip_Files = '*.log *.db'
let Grep_Skip_Dirs = '.git node_modules'

" vimshell.vim
let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'
let g:vimshell_prompt =  '$ '

" terminal emulation
if g:vim_bootstrap_editor == 'nvim'
	nnoremap <silent> <leader>sh :terminal<CR>
else
	nnoremap <silent> <leader>sh :VimShellCreate<CR>
endif

augroup vimrc-sync-fromstart
	autocmd!
	autocmd BufEnter * :syntax sync fromstart
augroup END

augroup vimrc-remember-cursor-position
	autocmd!
	autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

"" txt
augroup vimrc-wrapping
	autocmd!
	autocmd BufRead,BufNewFile *.txt call s:setupWrapping()
augroup END

"" make/cmake
augroup vimrc-make-cmake
	autocmd!
	autocmd FileType make setlocal noexpandtab
	autocmd BufNewFile,BufRead CMakeLists.txt setlocal filetype=cmake
augroup END

set autoread

"" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

"" Tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>

"" Set working directory
nnoremap <leader>. :lcd %:p:h<CR>

"" Opens an edit command with the path of the currently edited file filled in
noremap <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

"" Opens a tab edit command with the path of the currently edited file filled
noremap <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

"" ctrlp.vim
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|tox|ico|git|hg|svn))$'
let g:ctrlp_user_command = "find %s -type f | grep -Ev '"+ g:ctrlp_custom_ignore +"'"
let g:ctrlp_use_caching = 0
cnoremap <C-P> <C-R>=expand("%:p:h") . "/" <CR>
noremap <leader>b :CtrlPBuffer<CR>
let g:ctrlp_map = '<leader>e'
let g:ctrlp_open_new_file = 'r'

" snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsEditSplit="vertical"

" syntastic
let g:syntastic_always_populate_loc_list=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_auto_loc_list=1
let g:syntastic_aggregate_errors = 1


" Disable visualbell
set visualbell t_vb=

"" Copy/Paste/Cut
if has('unnamedplus')
	set clipboard=unnamed,unnamedplus
endif

noremap YY "+y<CR>
noremap <leader>p "+gP<CR>
noremap XX "+x<CR>

if has('macunix')
	" pbcopy for OSX copy/paste
	vmap <C-x> :!pbcopy<CR>
	vmap <C-c> :w !pbcopy<CR><CR>
endif

"" Buffer nav
noremap <leader>z :bp<CR>
noremap <leader>q :bp<CR>
noremap <leader>x :bn<CR>
noremap <leader>w :bn<CR>

"" Close buffer
noremap <leader>c :bd<CR>


"" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

"" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nmap <silent> <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 1

" vim-airline
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#tagbar#enabled = 1

" Tagbar
nmap <silent> <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 1

let g:javascript_enable_domhtmlcss = 1
" Tagbar
nmap <silent> <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

if !exists('g:airline_powerline_fonts')
	let g:airline#extensions#tabline#left_sep = ' '
	let g:airline#extensions#tabline#left_alt_sep = '|'
	let g:airline_left_sep          = '▶'
	let g:airline_left_alt_sep      = '»'
	let g:airline_right_sep         = '◀'
	let g:airline_right_alt_sep     = '«'
	let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
	let g:airline#extensions#readonly#symbol   = '⊘'
	let g:airline#extensions#linecolumn#prefix = '¶'
	let g:airline#extensions#paste#symbol      = 'ρ'
	let g:airline_symbols.linenr    = '␊'
	let g:airline_symbols.branch    = '⎇'
	let g:airline_symbols.paste     = 'ρ'
	let g:airline_symbols.paste     = 'Þ'
	let g:airline_symbols.paste     = '∥'
	let g:airline_symbols.whitespace = 'Ξ'
else
	let g:airline#extensions#tabline#left_sep = ''
	let g:airline#extensions#tabline#left_alt_sep = ''

	" powerline symbols
	let g:airline_left_sep = ''
	let g:airline_left_alt_sep = ''
	let g:airline_right_sep = ''
	let g:airline_right_alt_sep = ''
	let g:airline_symbols.branch = ''
	let g:airline_symbols.readonly = ''
	let g:airline_symbols.linenr = ''
endif


execute pathogen#infect()

syntax on
syntax enable

:let NERDTreeQuitOnOpen = 0
nnoremap <Leader>d :let NERDTreeQuitOnOpen = 1<bar>NERDTreeToggle<CR>
nnoremap <Leader>D :let NERDTreeQuitOnOpen = 0<bar>NERDTreeToggle<CR>
let g:hybrid_use_iTerm_colors = 1
let g:solarized_termcolors=256
set background=dark
colorscheme jellyx
set number
filetype on
filetype plugin on
filetype indent on

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
set fileformat=unix
set laststatus=2
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
set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class
set title
set visualbell
set noerrorbells
set nobackup
set noswapfile
set mouse=a
set hlsearch
set smartindent
set shiftwidth=4
set softtabstop=4
autocmd VimEnter * wincmd p
autocmd BufWinEnter * NERDTreeMirror
au BufNewFile,BufRead *.ejs set filetype=html
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
