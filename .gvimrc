set guifont=Monaco:h12
set antialias
set guicursor+=a:blinkon0

highlight Normal guibg=Black
highlight nontext guibg=Black

" highlights lines that are bookmarked with Bookmarking
highlight default Bookmarking guifg=white guibg=RoyalBlue4 gui=bold
sign define bookmark linehl=Bookmarking

" NERDTree and such
highlight NERDTreeDir guifg=#00AA00
highlight NERDTreeDirSlash guifg=#00AA00
