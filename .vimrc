" Enable CtrlP plugin
" Follow installation guide http://kien.github.io/ctrlp.vim/#installation
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Setup vim-plug https://github.com/junegunn/vim-plug
call plug#begin('C:\\Users\\MIvanov4\\.vim\\plugged')

" Reasonable defaults
Plug 'tpope/vim-sensible'

" Git management
Plug 'tpope/vim-fugitive'

" Comment via gcc or gc<motion>
Plug 'tpope/vim-commentary'

" Change surrounding via cs)
Plug 'tpope/vim-surround'

" Useful toggles, move along quickfix list, etc
Plug 'tpope/vim-unimpaired'

" Netrw manager without header
Plug 'tpope/vim-vinegar'

" Extended % operator
Plug 'https://github.com/adelarsq/vim-matchit'

" Dark theme with barely visible comments
Plug 'arcticicestudio/nord-vim'

" Python indentation
Plug 'vim-scripts/indentpython.vim'

" Flake 8 check via F7
Plug 'nvie/vim-flake8'

" LaTeX mode
Plug 'lervag/vimtex'

" Highlight/delete trailing whitespace
Plug 'ntpeters/vim-better-whitespace'

" Manage tags
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar'

" Search tool Ack
Plug 'mileszs/ack.vim'

" Most recently used files
Plug 'yegappan/mru'

" Deal with indentation objects (ai, ii, aI, iI)
Plug 'michaeljsmith/vim-indent-object'

call plug#end()

" No vi compatibility
set nocompatible

colorscheme nord

" Scrolling - leave one line
set scrolloff=1

" Enable folding
set foldmethod=indent

" Unfold everything when opening buffer
set foldlevel=99

" Support unicode
set encoding=utf-8

" Working by default on Windows OS :(
set ffs=dos,unix

" Statusline
set statusline=
set statusline+=\ %f\ 
set statusline+=%*
set statusline+=\ %h%m%r%{FugitiveStatusline()}
set statusline+=%=
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\ [%{&fileformat}\]
set statusline+=\ %-6.(%l:%c%V%)
set statusline+=\ %p%%
set statusline+=\ 

" Mappings for tabs
nnoremap <leader><Tab> <Esc>:tabnext<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Different cursor shapes (not in cmd)
" in normal mode (block)
" and insert mode (vertical bar)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if &term =~ "xterm"
    let &t_SI = "\e[6 q"
    let &t_EI = "\e[2 q"

    " optional reset cursor on start:
    augroup myCmds
    au!
    autocmd VimEnter * silent !echo -ne "\e[2 q"
    augroup END
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Currently Disabled Syntastic
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'vim-syntastic/syntastic'
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 0
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_mode_map = {'mode':'passive'}
" map <F10> <Esc>: SyntasticToggleMode<CR>
" cabbrev STM SyntasticToggleMode<CR>
" cabbrev SC SyntasticCheck<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Setup wildmenu
set wildmode=longest:list,full
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

set lazyredraw          " redraw only when we need to (not during macro recording)

" jk is escape from insert mode
inoremap jk <esc>

" show the matching part of the pair for [] {} and ()
set showmatch

"""""""""""""""""""""""""""""""""""""""""""""""""""
" Python Setup
"""""""""""""""""""""""""""""""""""""""""""""""""""
" Tab == 4 spaces wide
set tabstop=4
set softtabstop=4

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" expand tabs into spaces
set expandtab

" Visual limit 80 chars for python files
au BufRead,BufNewFile *.py setlocal colorcolumn=80

"""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP Setup
"""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }
" ignore files in gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Exclude from CtrlP most recent files
let g:ctrlp_mruf_exclude = '*COMMIT*'
let g:ctrlp_mruf_case_sensitive = 0
"""""""""""""""""""""""""""""""""""""""""""""""""""
" Tags setup
"""""""""""""""""""""""""""""""""""""""""""""""""""
" Ignore files in gitignore
let g:gutentags_file_list_command = 'rg --files'

" setup tagbar
nmap <F8> :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""
" Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""
" russian keymap (switch via C-^)
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0

" spellchecking languages
set spelllang=en_us,ru


"""""""""""""""""""""""""""""""""""""""""""""""""""
" Ack setup
"""""""""""""""""""""""""""""""""""""""""""""""""""
" Use ag
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""
" Most recent files setup
"""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>fr :MRU<CR>
let MRU_Exclude_Files = '^c:\\temp\\.*\|^d:\\temp\\.*\|.git\\.*'
let MRU_Max_Menu_Entries = 15

"""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""
" command to change dir to current file
command CDC cd %:p:h

" change dir to current file path
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
" change local dir (this window only) to current file path
nnoremap <leader>lcd :lcd %:p:h<CR>:pwd<CR>
" echo current path
nnoremap <leader>pwd :pwd<CR>

" Delete buffer without closing split
command Bd bp\|bd \#
nnoremap <leader>bd :Bd<CR>
