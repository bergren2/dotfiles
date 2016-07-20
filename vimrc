" vim-plug

" Load vim-plug
if empty(glob("~/.vim/autoload/plug.vim"))
  execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')

" GitHub repos
Plug 'airblade/vim-gitgutter'
Plug 'avakhov/vim-yaml', { 'for': 'yaml' }
Plug 'burnettk/vim-angular', { 'for': 'javascript' }
Plug 'chrisbra/csv.vim', { 'for': 'csv' }
Plug 'claco/jasmine.vim', { 'for': 'javascript' }
Plug 'derekwyatt/vim-scala', { 'for': 'scala' }
Plug 'digitaltoad/vim-jade', { 'for': 'jade' }
Plug 'elixir-lang/vim-elixir', { 'for': 'elixir' }
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'gcmt/taboo.vim'
Plug 'gerw/vim-HiLinkTrace'
Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'guns/vim-clojure-static', { 'for': 'clojure' }
Plug 'jiangmiao/auto-pairs'
Plug 'jalvesaq/Nvim-R', { 'for': 'r' }
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
Plug 'kien/ctrlp.vim'
Plug 'keith/swift.vim', { 'for': 'swift' }
Plug 'kovisoft/slimv', { 'for': ['lisp', 'scheme'] }
Plug 'marijnh/tern_for_vim', { 'do': 'npm install' }
Plug 'mileszs/ack.vim'
Plug 'msanders/cocoa.vim'
Plug 'mustache/vim-mustache-handlebars', { 'for': 'html.handlebars' }
Plug 'nathanaelkane/vim-indent-guides'
Plug 'othree/html5.vim', { 'for': 'html' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'SirVer/ultisnips'
Plug 'StanAngeloff/php.vim', { 'for': 'php' }
Plug 'timcharper/textile.vim', { 'for': 'textile' }
Plug 'tpope/vim-cucumber'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-haml', { 'for': 'haml' }
Plug 'tpope/vim-liquid'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'Valloric/MatchTagAlways'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --omnisharp-completer' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'vim-scripts/SQLComplete.vim', { 'for': 'sql' }

call plug#end()

au FileType crontab set nobackup nowritebackup
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Mappings and stuff
let mapleader = ";"

noremap ;; ;
nnoremap <leader>a :Ack<space>
let g:ctrlp_root_markers = ['.ctrlp']
nnoremap <leader>p :CtrlPClearCache<cr>
nnoremap <leader>y :YcmRestartServer<cr>
nnoremap <silent> <f5> :let _s=@/<bar>:%s/\s\+$//e<bar>:let @/=_s<bar>:nohl<cr>
nnoremap <silent> <leader>ch :exec 'silent !open -a "Google Chrome" % &'<cr>
nnoremap <leader>s :syn sync fromstart<cr>

map <F1> <Esc>
imap <F1> <Esc>

" NERDTree stuff
autocmd StdinReadPre * let s:std_in=1
if !empty(glob("~/.vim/plugged/nerdtree/"))
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
endif

let NERDTreeIgnore = ["__pycache__"]

map <c-n> :NERDTreeToggle<cr>
cnoreabbrev NTM NERDTreeMirror

colo Tomorrow-Night-Bright
syntax on

" make 80 and 120 character limits easier to see
let &colorcolumn="81,".join(range(121,999),",")

set wildignore+=*/bower_components/*,*/build/*,*/node_modules/*,*/tmp/*,*.so,*.swp,*.zip

autocmd FileType javascript setlocal omnifunc=tern#Complete

let g:ycm_auto_start_csharp_server = 1
let g:ycm_auto_stop_csharp_server = 1

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
let g:syntastic_html_tidy_ignore_errors = [
      \ 'escaping malformed URI reference',
      \ 'proprietary attribute',
      \ 'trimming empty',
      \ 'is not recognized!',
      \ 'discarding unexpected'
      \ ]

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
set backspace=indent,eol,start
set ttimeoutlen=0

set autoindent
set expandtab " use spaces for fun and profit
set splitbelow
set splitright

let g:UltiSnipsExpandTrigger='<c-k>'
let g:UltiSnipsJumpForwardTrigger='<c-k>'
let g:UltiSnipsJumpBackwardTrigger='<c-j>'
let g:UltiSnipsSnippetDirectories=['UltiSnips']
let g:UltiSnipsEditSplit='context'

au FileType ruby compiler ruby
au FileType xml exe ":silent %!xmllint --format --recover - 2>/dev/null"

hi clear SignColumn

let g:airline_powerline_fonts = 1
let g:airline_theme = "tomorrow"
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" slimv
let g:lisp_rainbow=1
let g:paredit_mode=0

" Change cursor shape between insert and normal mode in iTerm2
if $TERM_PROGRAM =~ "iTerm"
  let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
  let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif
