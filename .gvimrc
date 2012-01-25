set guifont=Monaco:h12
set tabstop=2
set shiftwidth=2
highlight normal guibg=black
highlight nontext guibg=black
set guicursor+=a:blinkon0

" highlights lines that are bookmarked with Bookmarking
hi default Bookmarking ctermfg=black ctermbg=lightgrey cterm=bold guifg=black guibg=lightgrey gui=bold
sign define bookmark linehl=Bookmarking
