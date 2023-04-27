" change dir to current file path
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
" change local dir (this window only) to current file path
nnoremap <leader>lcd :lcd %:p:h<CR>:pwd<CR>
" echo current path
nnoremap <leader>pwd :pwd<CR>

" Delete buffer without closing split
command Bd bp\|bd \#
nnoremap <leader>bd :Bd<CR>

" Clear highlight search when clearing screen
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" jf is escape from insert mode
inoremap jf <esc>
