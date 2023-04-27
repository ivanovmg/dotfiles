
Plug 'prettier/vim-prettier', { 'do': 'npm install --frozen-lockfile --production' }

let g:prettier#exec_cmd_async = 0
let g:prettier#exec_cmd_path = '~/AppData/Roaming/npm/node_modules/prettier/bin-prettier.js'

nnoremap <leader>p <nop>  " remove default keybinding
autocmd FileType javascript,javascriptreact,css,typescript,typescriptreact
			\ map <buffer> <F7> :call prettier#Prettier()<CR>
