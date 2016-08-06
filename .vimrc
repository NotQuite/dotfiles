
syntax on

set expandtab
set shiftwidth=2
set softtabstop=2

set backspace=indent,eol,start
set number
set ignorecase

"turn on 256 color
set t_Co=256

let mapleader=" "

let isLight = system("uptime | cut -f2 -d, | tr --squeeze-repeats ' ' | cut -f2 -d' '") < 50

" --------------------------------------------------------
" Help startup performance
" Profile using vim --startuptime <logfile> <file to edit>
" Do this a few times, the first time is always a lot slower

" Setting up the clipboard is taking > 100ms and I don't see
" any change in behavior.
set clipboard=exclude:.*

" --------------------------------------------------------

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

"half down
nmap <Leader>j <C-d>
nmap <Leader>k <C-u>



call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'

" git plugin
Plug 'tpope/vim-fugitive'
" git gutter
Plug 'airblade/vim-gitgutter'

" jshint
"Plug 'walm/jshint.vim', { 'for': 'javascript' }

" static checker
if isLight
  Plug 'scrooloose/syntastic'
endif

" JS syntax
Plug 'jelera/vim-javascript-syntax', { 'for': 'javascript'}

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

call plug#end()

" Adding git status
set statusline+=%{fugitive#statusline()}

" If the machine has less than 50 users, do heavy stuff
if isLight
  " Recommended default options for syntastic
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*
  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_auto_loc_list = 1
  let g:syntastic_check_on_open = 0
  let g:syntastic_check_on_wq = 0
  let g:syntastic_mode_map = { 'passive_filetypes': [] }
  let g:syntastic_cpp_remove_include_errors = 1
  let g:syntastic_python_checkers = ['pyflakes']
endif

colorscheme monokai
