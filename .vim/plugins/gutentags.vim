" Manage tags
Plug 'ludovicchabant/vim-gutentags'

" Ignore files in gitignore
let g:gutentags_file_list_command = {
    \ 'markers': {
        \ '.git': 'git ls-files',
        \ '.hg': 'hg files',
        \ },
    \ }
