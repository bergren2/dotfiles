set nocompatible              " be iMproved, required
filetype off                  " required

au FileType crontab set nobackup nowritebackup

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" GitHub repos
Plugin 'altercation/vim-colors-solarized'
Plugin 'avakhov/vim-yaml'
Plugin 'bergren2/JavaScript-Indent'
Plugin 'chrisbra/csv.vim'
Plugin 'guns/vim-clojure-static'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'othree/html5.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'StanAngeloff/php.vim'
Plugin 'timcharper/textile.vim'
Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-ruby/vim-ruby'

call vundle#end()         " required
filetype plugin indent on " required

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

au FileType ruby compiler ruby
au FileType xml exe ":silent %!xmllint --format --recover - 2>/dev/null"
