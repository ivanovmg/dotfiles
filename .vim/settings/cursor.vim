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
