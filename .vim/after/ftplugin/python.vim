set tabstop=4
set softtabstop=4

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" expand tabs into spaces
set expandtab

setlocal colorcolumn=80

setlocal wildignore=*/__pycache__/*,*.pyc
setlocal path=src/**,tests

set include=^\\s*\\(from\\\|import\\)\\s*\\zs\\(\\S\\+\\s\\{-}\\)*\\ze\\($\\\|\ as\\)
function! PyInclude(fname)
    let parts = split(a:fname, ' import ')
    let l = parts[0]
    if len(parts) > 1
	let r = parts[1]
	let joined = join([l, r], '.')
	let fp = substitute(joined, '\.', '/', 'g') . '.py'
	let found = glob(fp, 1)
	if len(found)
	    return found
	endif
    endif
    return substitute(l, '\.', '/', 'g') . '.py'
endfunction

setlocal includeexpr=PyInclude(v:fname)

setlocal define=^\\s*\\<\\(def\\\|class\\)\\>
