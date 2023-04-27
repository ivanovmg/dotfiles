
Plug 'arcticicestudio/nord-vim'

augroup NordOverrides
  autocmd!
  autocmd ColorScheme nord highlight Folded ctermfg=14 cterm=italic
  autocmd User PlugLoaded ++nested colorscheme nord
augroup END
