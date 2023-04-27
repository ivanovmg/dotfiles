
" Universel Grepper
Plug 'mhinz/vim-grepper'

let g:grepper = {}            " initialize g:grepper with empty dictionary
runtime plugin/grepper.vim    " initialize g:grepper with default values

let g:grepper.dir = 'repo,file'
let g:grepper.repo = ['.git', '.hg', '.svn']
let g:grepper.tools =['rg', 'git', 'grep']
let g:grepper.stop = 1000
let g:grepper.prompt_mapping_tool = '<leader>g'
let g:grepper.prompt_text = '$t> '

nnoremap <leader>gg :Grepper<cr>
nnoremap <leader>gb :Grepper-buffers<cr>

" Search for the current selection
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)
