Plug 'nvie/vim-flake8'

" let g:flake8_cmd=$HOME.'/envs/flake8/Scripts/flake8.exe'
let g:flake8_cmd='c:/users/MIvanov4/envs/flake8/Scripts/flake8.exe'
autocmd FileType python map <buffer> <F7> :call flake8#Flake8()<CR>
