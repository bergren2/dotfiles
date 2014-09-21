set guioptions-=T
set guifont=Source_Code_Pro_for_Powerline:h12
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

" Textile.vim
let g:TextileBrowser="Google Chrome"
