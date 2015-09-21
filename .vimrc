set tabstop=4
set shiftwidth=4
set expandtab
set number
set ignorecase

"set spell

filetype plugin indent on

nmap <silent> <Up> :wincmd k<CR>
nmap <silent> <Down> :wincmd j<CR>
nmap <silent> <Left> :wincmd h<CR>
nmap <silent> <Right> :wincmd l<CR>

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'

" git plugin
Plug 'tpope/vim-fugitive'

" jshint
"Plug 'walm/jshint.vim', { 'for': 'javascript' }

" static checker
Plug 'scrooloose/syntastic'

" JS syntax
Plug 'jelera/vim-javascript-syntax', { 'for': 'javascript'}

" Plug 'sickill/vim-monokai'
" It seems that the gnome-terminal monokai and monokai
" here are getting confused

Plug 'digitaltoad/vim-jade'

"fuzzy matching
Plug 'kien/ctrlp.vim'

Plug 'bling/vim-airline'
call plug#end()

" Adding git status
set statusline+=%{fugitive#statusline()}

" Recommended default options for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-std=c++11'

" Doesn't work because syntastic seems to only run on
" the real written file. So unsaved changes are ignored
"autocmd InsertLeave *.js :SyntasticCheck

" set up monokai
syntax enable
colorscheme peachpuff
