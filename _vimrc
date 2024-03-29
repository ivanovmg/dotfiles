set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vim/vimrc

if has("gui_running")
    set guifont=Consolas:h12
    set guioptions-=m  "remove menu bar
    set guioptions-=T  "remove toolbar
    set guioptions-=r  "remove right-hand scroll bar
    set guioptions-=L  "remove left-hand scroll bar
    set guicursor+=a:blinkon0  " do not blink
    autocmd GUIEnter * set t_vb=
    set belloff=all
    set shell=$PROGRAMW6432/Git/bin/bash.exe
endif

