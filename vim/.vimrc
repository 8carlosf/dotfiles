
call plug#begin('~/.vim/plugged')

Plug 'ervandew/supertab'
Plug 'nanotech/jellybeans.vim'
"Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" aur/ttf-dejavu-sans-mono-powerline-git
" ?aur/otf-powerline-symbols-git
"Plug 'bling/vim-bufferline'
"Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'rking/ag.vim' " community/the_silver_searcher
Plug 'junegunn/vim-easy-align'
" Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'kchmck/vim-coffee-script'
Plug 'fatih/vim-go'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
" Plug 'tell-k/vim-autopep8'

call plug#end()


set nocompatible
set encoding=utf-8
syntax enable " enable syntax highlight
set tabstop=4	" numbers of spaces of tab character
set shiftwidth=4	" numbers of spaces to (auto)indent
set expandtab " always use spaces instead of tab
set softtabstop=4 " delete 4 spaces together
set scrolloff=4	" keep 3 lines when scrolling
set number	" show line numbers
set relativenumber " show relative line numbers 
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
"au Filetype python setl noet ts=4 sw=4 " Use tabs in python

set t_Co=256

set background=dark
colorscheme jellybeans
"colorscheme gruvbox

let mapleader=","
let g:mapleader = ","

" set timeoutlen=1000

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" needs clang
map <Leader>f :pyf $HOME/.vim/clang-format.py<CR>
" imap <Leader>f <c-o>:pyf $HOME/.vim/clang-format.py<CR>
map <Leader>h :noh<CR>
map <Leader>c gcc
vmap <Leader>c gc
" autocmd FileType python set equalprg=autopep8\ -

" vim-airline
let g:airline_theme='jellybeans'
set laststatus=2
set ttimeoutlen=50
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
map <Leader>n :NERDTreeToggle<CR>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

command! W  w
command! Q  q
command! WL  w | !rubber -d %; rubber --clean %
" community/rubber
command! SW w !sudo tee %

" toggle spellcheck
command! Spell :setlocal spell! spell?

" clipboard
map <Leader>p "+gp
vmap <Leader>y "+y
map <Leader>y "+yy
"nmap <C-V> "+gP
"imap <C-V> <ESC><C-V>i
"vmap <C-C> "+y

if has("gui_running")
    set lines=33 columns=135
    set guifont=MesloLGS\ NF:h12
endif

