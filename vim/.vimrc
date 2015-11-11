
call plug#begin('~/.vim/plugged')

Plug 'ervandew/supertab'
Plug 'nanotech/jellybeans.vim'
"Plug 'morhetz/gruvbox'
Plug 'bling/vim-airline'
" aur/ttf-dejavu-sans-mono-powerline-git
" ?aur/otf-powerline-symbols-git
"Plug 'bling/vim-bufferline'
"Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-fugitive'
Plug 'rking/ag.vim' " community/the_silver_searcher
Plug 'godlygeek/tabular', { 'on': 'Tabularize' }
Plug 'PotatoesMaster/i3-vim-syntax'

call plug#end()


set nocompatible
set encoding=utf-8
syntax enable " enable syntax highlight
set tabstop=4	" numbers of spaces of tab character
set shiftwidth=4	" numbers of spaces to (auto)indent
set scrolloff=4	" keep 3 lines when scrolling
set number	" show line numbers
set hlsearch	" highlight searches
set ruler	" show the cursor position all the time
set ttyfast	" smoother changes
set autoread " auto read when a file is changed from the outside
set showmatch " show matching bracets when text indicator is over them
set ai " auto indent
set si " smart indet
set showcmd " shows what you are typing as a command
filetype plugin on " enable filetype plugin
filetype indent on
set wildmenu " cool tab completion
set incsearch " incremental searching /
set mouse=a " enable mouse support in console
set ttymouse=xterm2 " makes it work in everything
set backspace=indent,eol,start " make backspace a more flexible
set foldenable " Turn on folding
set foldmethod=indent " Fold on the indent (damn you python)
set foldlevel=100 " Don't autofold anything (but I can still fold manually)
au Filetype python setl noet ts=4 sw=4 " Use tabs in python

set background=dark
colorscheme jellybeans
"colorscheme gruvbox

" vim-airline
set laststatus=2
set timeoutlen=50
"let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline_powerline_fonts = 1 " needs powerline fonts

"if !exists('g:airline_symbols')
"	let g:airline_symbols = {}
"endif
" unicode symbols
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.whitespace = 'Ξ'

"vim-nerdtree
map <C-n> :NERDTreeToggle<CR>

command! W  write
command! Q  quit
command! WL  w | !rubber -d %; rubber --clean %
" community/rubber
command! SW w !sudo tee %

" toggle spellcheck
command! Spell :setlocal spell! spell?

" clipboard
"nmap <C-V> "+gP
"imap <C-V> <ESC><C-V>i
"vmap <C-C> "+y

set t_Co=256

if has("gui_running")
	set lines=40 columns=75
endif

