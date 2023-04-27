
Plug 'vim-latex/vim-latex'

" let g:Tex_ViewRule_pdf='SumatraPDF.exe $*'
let Tex_FoldedSections=""
let Tex_FoldedEnvironments="figure,table"
let Tex_FoldedMisc=""

autocmd BufEnter *.tex :setlocal filetype=tex
