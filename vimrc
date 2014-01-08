set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My bundles here:
"
" GitHub repos
Bundle 'bergren2/JavaScript-Indent'
Bundle 'mileszs/ack.vim'
Bundle 'othree/html5.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'timcharper/textile.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-haml'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-rails'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-surround'
Bundle 'avakhov/vim-yaml'
Bundle 'kien/ctrlp.vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'guns/vim-clojure-static'
Bundle 'tpope/vim-fireplace'

" vim-scripts repos
Bundle 'php.vim--Hodge'

set runtimepath^=~/.vim/bundle/ctrlp.vim

" Mappings and stuff
let mapleader = ";"

noremap ;; ;
nnoremap <leader>a :Ack 
let g:ctrlp_root_markers = ['.ctrlp']
nnoremap <leader>p :CtrlPClearCache<cr>
cnoreabbrev NT NERDTree
cnoreabbrev NTM NERDTreeMirror
cnoreabbrev qa tabclose

colorscheme vividchalk " will be overwritten by .gvimrc theme

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
