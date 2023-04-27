" Manage tags
Plug 'ludovicchabant/vim-gutentags'

" Ignore files in gitignore
let g:gutentags_file_list_command = {
    \ 'markers': {
        \ '.git': 'git ls-files',
        \ '.gitignore': 'git ls-files',
        \ '.hg': 'hg files',
        \ },
    \ }

let g:gutentags_ctags_exclude = ['*alembic*', '*node_modules*']
let g:gutentags_ctags_exclude_wildignore = 1
