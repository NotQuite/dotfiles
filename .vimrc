
syntax on

set expandtab
set shiftwidth=2
set softtabstop=2

set backspace=indent,eol,start
set number
set ignorecase

set noswapfile

"turn on 256 color
set t_Co=256

let mapleader=" "

"turn on folds. Here are some helpful commands too:
"zo, zc for stuff on cursor (open/close)
"zO (open all, that big o)
"zM (close all)
"zr, zm decrease/increase fold level
"zj zk move between folds (like j,k)
set foldmethod=syntax

"set relativenumber

"Need this to have file specific options
filetype plugin indent on

"Copied from David's, maps moving keys to switch between windows
nmap  <Up> :wincmd k<CR>
nmap  <Down> :wincmd j<CR>
nmap  <Left> :wincmd h<CR>
nmap  <Right> :wincmd l<CR>


call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'

" git plugin
Plug 'tpope/vim-fugitive'
" git gutter
Plug 'airblade/vim-gitgutter'

Plug 'sickill/vim-monokai'

" Need to learn this though
Plug 'easymotion/vim-easymotion'

"fuzzy matching
Plug 'kien/ctrlp.vim'

Plug 'bling/vim-airline'

"Ag (silver searcher) searching in vim
Plug 'rking/ag.vim'

" Add visuals for marks
Plug 'kshenoy/vim-signature'

Plug 'scrooloose/nerdtree'

call plug#end()

let g:ctrlp_custom_ignore = 'node_modules\|\.git'

" Adding git status
set statusline+=%{fugitive#statusline()}

colorscheme monokai
