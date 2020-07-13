#!/bin/bash

# Setup for Windows OS

function workon() {
    source $WORKON_HOME/$1/Scripts/activate
}

alias nvim='winpty nvim.exe'

alias fzf='winpty fzf.exe'

# refers to http://superuser.com/questions/650322/ignore-ntuser-dat-files-when-ls-on-git-bash
LS_COMMON="-hG"
alias ls=$HOME/scripts/ls_filter.bat
alias la='ls -la'
alias lt='ls -lt'

alias emacsbase='emacs -q --load "$HOME/emacs_vanilla/init.el"'
alias emacsdoom='emacs -q --load "$HOME/emacs_doom/init.el"'

export PYTHONDIR=$HOME/AppData/Local/Programs/Python
alias python='winpty python'
alias python37='winpty $PYTHONDIR/Python37-32/python.exe'
alias python38='winpty $PYTHONDIR/Python38-32/python.exe'
alias py='winpty py.exe'
alias ipython='winpty ipython.exe'
alias pydoc3='py -m pydoc'

alias dotfiles='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
