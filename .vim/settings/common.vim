" Reasonable defaults
Plug 'tpope/vim-sensible'

" Comment via gcc or gc<motion>
Plug 'tpope/vim-commentary'

" Change surrounding via cs)
Plug 'tpope/vim-surround'

" Useful toggles, move along quickfix list, etc
Plug 'tpope/vim-unimpaired'

" Netrw manager without header
Plug 'tpope/vim-vinegar'

" No vi compatibility
set nocompatible

" Allow to switch between buffers without saving
set hidden

" Scrolling - leave one line
set scrolloff=1

" Enable folding
set foldmethod=indent

" Unfold everything when opening buffer
set foldlevel=99

" Support unicode
set encoding=utf-8

" Highligh search
set hlsearch
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" width of tabulation
set tabstop=4
set shiftwidth=4

" redraw only when we need to (not during macro recording)
set lazyredraw

" jf is escape from insert mode
inoremap jf <esc>

" show the matching part of the pair for [] {} and ()
set showmatch
