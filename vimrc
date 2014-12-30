set nocompatible              " be iMproved, required
filetype off                  " required

au FileType crontab set nobackup nowritebackup

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" GitHub repos
Plugin 'avakhov/vim-yaml'
Plugin 'bergren2/JavaScript-Indent'
Plugin 'bling/vim-airline'
Plugin 'chrisbra/csv.vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'elzr/vim-json'
Plugin 'gerw/vim-HiLinkTrace'
Plugin 'groenewege/vim-less'
Plugin 'guns/vim-clojure-static'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'othree/html5.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'SirVer/ultisnips'
Plugin 'StanAngeloff/php.vim'
Plugin 'timcharper/textile.vim'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-liquid'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-ruby/vim-ruby'

call vundle#end()         " required
filetype plugin indent on " required

set runtimepath^=~/.vim/bundle/ctrlp.vim

let g:EclimCompletionMethod = 'omnifunc'
let g:EclimFileTypeValidate = 0

" Mappings and stuff
let mapleader = ";"

noremap ;; ;
nnoremap <leader>a :Ack<space>
let g:ctrlp_root_markers = ['.ctrlp']
nnoremap <leader>p :CtrlPClearCache<cr>
nnoremap <leader>y :YcmRestartServer<cr>
nnoremap <silent> <f5> :let _s=@/<bar>:%s/\s\+$//e<bar>:let @/=_s<bar>:nohl<cr>
nnoremap <silent> <leader>ch :exec 'silent !open -a "Google Chrome" % &'<cr>

" NERDTree stuff
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <c-n> :NERDTreeToggle<cr>
cnoreabbrev NTM NERDTreeMirror

colo molokai
syntax on

" make 80 and 120 character limits easier to see
let &colorcolumn="81,".join(range(121,999),",")

set wildignore+=*/bower_components/*,*/build/*,*/node_modules/*,*/tmp/*,*.so,*.swp,*.zip

let g:ycm_filetype_blacklist = {
      \ 'gitcommit' : 1,
      \ 'liquid' : 1,
      \ 'markdown' : 1,
      \ 'text' : 1,
      \ 'yaml' : 1
      \ }

let g:syntastic_filetype_map = {
      \ 'html.handlebars': 'handlebars'
      \ }

let g:syntastic_javascript_checkers = ['jshint']

set bg=dark
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

let g:UltiSnipsExpandTrigger='<c-k>'
let g:UltiSnipsJumpForwardTrigger='<c-k>'
let g:UltiSnipsJumpBackwardTrigger='<s-c-j>'
let g:UltiSnipsSnippetDirectories=['UltiSnips']
let g:UltiSnipsEditSplit='context'

au FileType ruby compiler ruby
au FileType xml exe ":silent %!xmllint --format --recover - 2>/dev/null"

hi clear SignColumn

let g:airline_powerline_fonts = 1
