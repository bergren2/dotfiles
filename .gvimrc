set guifont=Monaco:h12
set antialias
set tabstop=2
set shiftwidth=2
highlight normal guibg=black
highlight nontext guibg=black
set guicursor+=a:blinkon0

" highlights lines that are bookmarked with Bookmarking
hi default Bookmarking ctermfg=white ctermbg=darkblue cterm=bold guifg=white guibg=RoyalBlue4 gui=bold
sign define bookmark linehl=Bookmarking
