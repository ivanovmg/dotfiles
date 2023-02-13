#!/bin/bash

# Setup for Windows OS

export WORKON_HOME=$HOME/envs

function workon() {
    source $WORKON_HOME/$1/Scripts/activate
}

function venv() {
	source venv/Scripts/activate
}

alias nvim='winpty nvim.exe'
alias fzf='winpty fzf.exe'

alias ls=$HOME/scripts/ls_filter.bat
alias la='ls -la'
alias lt='ls -lt'

alias python='winpty python'
alias py='winpty py.exe'
alias ipython='winpty ipython.exe'
alias pydoc3='py -m pydoc'

alias dotfiles='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

alias flake8=$WORKON_HOME/flake8/Scripts/flake8
alias cookiecutter=$WORKON_HOME/cookiecutter/Scripts/cookiecutter
alias tldr=$WORKON_HOME/tldr/Scripts/tldr
alias tlrd=tldr
alias ruff=$WORKON_HOME/ruff/Scripts/ruff

alias gvim='/c/tools/vim/vim82/gvim.exe'
alias g='gvim --remote-silent'

alias git-bash='/c/Program\ Files/Git/git-bash.exe'
