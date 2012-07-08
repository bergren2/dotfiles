set guioptions-=T
set guifont=Monaco:h12
set antialias
set guicursor+=a:blinkon0

hi Normal guibg=Black
hi nontext guibg=Black

" highlights lines that are bookmarked with Bookmarking
hi default Bookmarking guifg=#FFFFFF guibg=#FF6600 gui=bold
hi SignColumn guibg=#000000
sign define bookmark linehl=Bookmarking

" NERDTree and such
hi NERDTreeDir guifg=#00AA00
hi NERDTreeDirSlash guifg=#00AA00


" Changes the status bar color based on mode
function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    hi StatusLine guibg=#AA0000
    hi StatusLineNC guifg=#AA0000
  elseif a:mode == 'r'
    hi StatusLine guibg=#0000AA
    hi statusLineNC guifg=#0000AA
  else
    hi StatusLine guibg=#CCAA00
    hi StatusLineNC guifg=#CCAA00
  endif
endfunction

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi StatusLine guibg=#00AA00
au InsertLeave * hi statusLineNC guifg=#00AA00

" Default the statusline to green when entering Vim
hi StatusLine guibg=#00AA00 guifg=#FFFFFF
hi StatusLineNC guibg=#FFFFFF guifg=#00AA00
hi VertSplit guibg=#FFFFFF guifg=#FFFFFF
