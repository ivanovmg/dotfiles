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
