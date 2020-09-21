source ~/.bash_aliases

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
