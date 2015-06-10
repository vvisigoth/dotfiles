execute pathogen#infect()
syntax on
filetype on
filetype plugin indent on

set number

set undodir=~/.vim/undodir
set undofile

set hlsearch

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set exrc
set secure  

colorscheme slate

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/


let mapleader=","
map <leader>n :NERDTreeToggle<CR>
command W w

let g:neocomplete#enable_at_startup = 1
