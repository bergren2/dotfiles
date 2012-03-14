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


" Changes the status bar color based on mode
function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    hi statusline guibg=#AA0000
    hi statuslinenc guifg=#AA0000
  elseif a:mode == 'r'
    hi statusline guibg=#0000AA
    hi statuslinenc guifg=#0000AA
  else
    hi statusline guibg=#CCAA00
    hi statuslinenc guifg=#CCAA00
  endif
endfunction

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline guibg=#00AA00
au InsertLeave * hi statuslinenc guifg=#00AA00

" Default the statusline to green when entering Vim
hi statusline guibg=#00AA00 guifg=#FFFFFF
hi statuslinenc guibg=#FFFFFF guifg=#00AA00
hi vertsplit guibg=#FFFFFF guifg=#FFFFFF
