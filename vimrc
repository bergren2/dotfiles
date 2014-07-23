set nocompatible              " be iMproved
filetype off                  " required!

au FileType crontab set nobackup nowritebackup

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" GitHub repos
Bundle 'altercation/vim-colors-solarized'
Bundle 'avakhov/vim-yaml'
Bundle 'bergren2/JavaScript-Indent'
Bundle 'guns/vim-clojure-static'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'mileszs/ack.vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'othree/html5.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'StanAngeloff/php.vim'
Bundle 'timcharper/textile.vim'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fireplace'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'Valloric/YouCompleteMe'
Bundle 'vim-ruby/vim-ruby'

set runtimepath^=~/.vim/bundle/ctrlp.vim

" Mappings and stuff
let mapleader = ";"

noremap ;; ;
nnoremap <leader>a :Ack<space>
let g:ctrlp_root_markers = ['.ctrlp']
nnoremap <leader>p :CtrlPClearCache<cr>
nnoremap <leader>y :YcmRestartServer<cr>
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
cnoreabbrev NT NERDTree
cnoreabbrev NTM NERDTreeMirror
cnoreabbrev qa tabclose

colorscheme vividchalk

syntax on
filetype plugin indent on

" make 80 and 120 character limits easier to see
let &colorcolumn="81,".join(range(121,999),",")

let g:ctrlp_custom_ignore = '\/tmp\/'

let g:ycm_filetype_blacklist = {
  \ 'gitcommit' : 1,
  \ 'markdown' : 1,
  \ 'text' : 1,
  \ 'yaml' : 1
  \}

let g:syntastic_mode_map = {
  \ 'passive_filetypes': ['css', 'scss']
  \}

let g:syntastic_filetype_map = {
  \ 'html.handlebars': 'handlebars'
  \}

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

autocmd FileType ruby compiler ruby
