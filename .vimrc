call pathogen#infect()
call pathogen#helptags()

" colorscheme sunburst

syntax on
filetype plugin indent on
set background=dark
set number 
set cindent
set shiftwidth=2
set tabstop=2
set scrolloff=3

set autoindent
set expandtab
retab

" NERDTree and such
hi NERDTreeDir guifg=#00AA00
hi NERDTreeDirSlash guifg=#00AA00
