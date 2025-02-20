" vim-plug

" Load vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" GitHub repos
Plug 'airblade/vim-gitgutter'
Plug 'alvan/vim-closetag', { 'for': ['html', 'javascript.jsx'] }
Plug 'avakhov/vim-yaml', { 'for': 'yaml' }
Plug 'burnettk/vim-angular', { 'for': 'javascript' }
Plug 'chrisbra/csv.vim', { 'for': 'csv' }
Plug 'claco/jasmine.vim', { 'for': 'javascript' }
Plug 'dense-analysis/ale'
Plug 'derekwyatt/vim-scala', { 'for': 'scala' }
Plug 'digitaltoad/vim-jade', { 'for': 'jade' }
Plug 'editorconfig/editorconfig-vim'
Plug 'elixir-lang/vim-elixir', { 'for': 'elixir' }
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'gcmt/taboo.vim'
Plug 'gerw/vim-HiLinkTrace'
Plug 'godlygeek/tabular'
Plug 'google/vim-jsonnet', { 'for': 'jsonnet' }
Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'guns/vim-clojure-static', { 'for': 'clojure' }
Plug 'jiangmiao/auto-pairs'
Plug 'jalvesaq/Nvim-R', { 'for': 'r' }
Plug 'junegunn/vim-github-dashboard', { 'on': ['GHDashboard', 'GHActivity'] }
Plug 'jszakmeister/vim-togglecursor'
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
Plug 'kien/ctrlp.vim'
Plug 'keith/swift.vim', { 'for': 'swift' }
Plug 'kovisoft/slimv', { 'for': ['lisp', 'scheme'] }
Plug 'leafgarland/typescript-vim', { 'for': ['typescript'] }
Plug 'marijnh/tern_for_vim', { 'do': 'npm install' }
Plug 'msanders/cocoa.vim'
Plug 'mustache/vim-mustache-handlebars', { 'for': 'html.handlebars' }
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'nathanaelkane/vim-indent-guides'
Plug 'othree/html5.vim', { 'for': 'html' }
Plug 'OmniSharp/omnisharp-vim', { 'for': 'cs' }
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'rudes/vim-java', { 'for': 'java' }
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'scrooloose/nerdtree'
Plug 'SirVer/ultisnips'
Plug 'StanAngeloff/php.vim', { 'for': 'php' }
Plug 'timcharper/textile.vim', { 'for': 'textile' }
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-cucumber'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-haml', { 'for': 'haml' }
Plug 'tpope/vim-liquid'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'udalov/kotlin-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'vim-scripts/SQLComplete.vim', { 'for': 'sql' }
Plug 'vim-scripts/vbnet.vim', { 'for': 'vbnet' }
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py --all' }

call plug#end()

au FileType crontab set nobackup nowritebackup
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Mappings and stuff
let mapleader = ";"

noremap ;; ;
nnoremap <leader>r :Rg<space>
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

let NERDTreeIgnore = ["__pycache__", "\.class$", "\.zip$"]
let NERDTreeMinimalUI = 1

map <c-n> :NERDTreeToggle<cr>
cnoreabbrev NTM NERDTreeMirror

colo Tomorrow-Night-Bright
syntax on

" make 80 and 120 character limits easier to see
let &colorcolumn="81,".join(range(121,999),",")

set wildignore+=*/bin/*,*/bower_components/*,*/build/*,*/node_modules/*,*/obj/*,*/tmp/*,*.so,*.swp,*.zip,*.class,*.dll

autocmd FileType javascript setlocal omnifunc=tern#Complete

let g:ycm_filetype_blacklist = {
      \ 'gitcommit' : 1,
      \ 'liquid' : 1,
      \ 'markdown' : 1,
      \ 'text' : 1,
      \ 'yaml' : 1
      \ }

let g:jsx_ext_required = 0 " Allow JSX in normal JS files

set bg=dark
set number
set cindent
set shiftwidth=2
set tabstop=2
set scrolloff=0
set nowrap
set cursorline
set laststatus=2
set hlsearch
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

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

let g:closetag_filenames = '*.html,*.jsx,*.xhtml,*.phtml'

au FileType ruby compiler ruby
au FileType xml exe ":silent %!xmllint --format --recover - 2>/dev/null"

hi clear SignColumn

let g:airline_powerline_fonts = 1
let g:airline_theme = "tomorrow"
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" Linting
let g:ale_completion_enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_python_flake8_options = "--ignore E265,E266,E501"
let g:ale_linters = {
      \ 'javascript': ['eslint'],
      \ 'ruby': ['rubocop'],
      \ 'cs': ['OmniSharp']
      \ }

" slimv
let g:lisp_rainbow=1
let g:paredit_mode=0

" Change cursor shape between insert and normal mode in iTerm2
if $TERM_PROGRAM =~ "iTerm"
  let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
  let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

set nofoldenable

let g:OmniSharp_server_use_mono = 1

if executable("rg")
  set grepprg=rg\ --vimgrep\ --no-heading
  set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

" tabby cursor shenanigans
if $TERM_PROGRAM == 'Tabby'
  let g:togglecursor_force = 'xterm'
endif
