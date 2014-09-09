set guioptions-=T
set guifont=Cousine:h12
set antialias
set guicursor+=a:blinkon0

colo solarized

hi Normal guibg=Black
hi nontext guibg=Black

" NERDTree and such
hi NERDTreeDir guifg=#009900
hi NERDTreeDirSlash guifg=#006600

function! StartUp()
  if 0 == argc()
    NERDTree
  end
endfunction

autocmd VimEnter * call StartUp()

" Changes the status bar color based on mode
function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    hi StatusLine guibg=#990000
    hi StatusLineNC guifg=#990000
  elseif a:mode == 'r'
    hi StatusLine guibg=#000099
    hi statusLineNC guifg=#000099
  else
    hi StatusLine guibg=#CCAA00
    hi StatusLineNC guifg=#CCAA00
  endif
endfunction

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi StatusLine guibg=#006600
au InsertLeave * hi statusLineNC guifg=#006600

" Default the statusline to green when entering Vim
hi StatusLine guibg=#006600 guifg=#CCCCCC
hi StatusLineNC guibg=#CCCCCC guifg=#006600
hi VertSplit guibg=#CCCCCC guifg=#CCCCCC

" Textile.vim
let g:TextileBrowser="Google Chrome"
