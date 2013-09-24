call pathogen#infect()
call pathogen#helptags()

" Mappings and stuff
let mapleader = ";"

noremap ;; ;
nnoremap <leader>a :Ack 
nnoremap <leader>T :CommandTFlush
cnoreabbrev NT NERDTree
cnoreabbrev NTM NERDTreeMirror

colorscheme vividchalk " will be overwritten by .gvimrc theme

set nocompatible
syntax on
filetype plugin indent on

set background=dark
set number 
set cindent
set shiftwidth=2
set tabstop=2
set scrolloff=0
set nowrap
set cursorline
set laststatus=2

set list
set listchars=tab:▸\ ,eol:¬

set autoindent
set expandtab " use spaces for fun and profit
set splitbelow
set splitright

map <F1> <Esc>
imap <F1> <Esc>

" NERDTree stuff
let NERDTreeShowHidden=0 " disable -- I think I have the hang of this keybind now

function! StartUp()
  if 0 == argc()
    NERDTree
  end
endfunction

autocmd VimEnter * call StartUp()
autocmd FileType ruby compiler ruby
