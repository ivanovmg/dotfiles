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

" width of tabulation
set tabstop=4
set shiftwidth=4

" redraw only when we need to (not during macro recording)
set lazyredraw

" show the matching part of the pair for [] {} and ()
set showmatch

function GuessOS()
	let uname = substitute(system('uname'), '\n', '', '')
	"Example values: Linux, Darwin, MINGW64_NT-10.0, MINGW32_NT-6.1

	if uname == 'Linux' || uname == 'Darwin'
		return 'unix'
	else " windows
		return 'windows'
	endif
endfunction

if GuessOS() == 'unix'
	set ffs=unix
else
	set ffs=dos
endif


