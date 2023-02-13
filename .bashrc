source ~/.bash_aliases

export PAGER=less

if [ ! -d "$HOME/.cfg" ]
then
    echo "Creating $HOME/.cfg"
    git init --bare $HOME/.cfg
    dotfiles config --local status.showUntrackedFiles no
    dotfiles config --local user.name "Maxim Ivanov"
    dotfiles config --local user.email "ivanovmg@gmail.com"
fi

# added by travis gem
[ ! -s C:/Users/MIvanov4/.travis/travis.sh ] || source C:/Users/MIvanov4/.travis/travis.sh

function man {
    local section=all
    if [[ "$1" =~ ^[0-9]+$ ]]; then section="$1"; shift; fi
    local doc="$(curl -v --silent --data-urlencode topic="$@" --data-urlencode section="$section" http://man.he.net/ 2>&1)"
    local ok=$?
    local pre="$(printf '%s' "$doc" | sed -ne "/<PRE>/,/<\/PRE>/ { /<PRE>/ { n; b; }; p }")"
    [[ $ok -eq 0 && -n "$pre" ]] && printf '%s' "$pre" | less || printf 'Got nothing.\n' >&2
    return $ok
}
