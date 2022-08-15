
Plug 'prettier/vim-prettier', { 'do': 'npm install --frozen-lockfile --production' }

let g:prettier#exec_cmd_async = 1
let g:prettier#exec_cmd_path = '~/AppData/Roaming/npm/node_modules/prettier/bin-prettier.js'

autocmd FileType javascript,javascriptreact,css
			\ map <buffer> <F7> :call prettier#Prettier()<CR>

