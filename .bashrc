source ~/.bash_aliases

if [ ! -d "$HOME/.cfg" ]
then
    echo "Creating $HOME/.cfg"
    git init --bare $HOME/.cfg
    dotfiles config --local status.showUntrackedFiles no
    dotfiles config --local user.name "Maxim Ivanov"
    dotfiles config --local user.email "ivanovmg@gmail.com"
fi

