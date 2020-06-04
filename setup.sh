#!/bin/bash

# script directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $DIR

# change default shell to bash
chsh -s /bin/bash

# setup bashrc
echo "if tty -s
then
    if [ -f $DIR/bashrcs/profile ]; then
        source $DIR/bashrcs/profile
    fi
fi" > ~/.bashrc
echo "if [ -f "$HOME/.bashrc" ]; then . "$HOME/.bashrc"; fi " > ~/.bash_profile
source ~/.bashrc

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Packages
while IFS=/ read a
do
  brew install ${a}
done < "$DIR/packages.txt"

# Casks
brew tap homebrew/cask
brew tap homebrew/cask-versions
while IFS=/ read a
do
  brew cask install ${a}
done < "$DIR/apps.txt"

# setup vimrc
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
ln -s -f "$DIR/my_configs.vim" ~/.vim_runtime

# get vim plugins
while IFS=/ read a b
do
  git clone https://github.com/${a}/${b}.git ~/.vim_runtime/my_plugins/${b}
done < "$DIR/vim-plugins.txt"

# setup tmux.conf
git clone https://github.com/gpakosz/.tmux.git ~/.tmux
ln -s -f ~/.tmux/.tmux.conf ~
cp ~/.tmux/.tmux.conf.local ~
cat "$DIR/vim-tmux-navigator.tmux.conf" >> ~/.tmux.conf.local

# install virtualenvwrapper
if command -v python3 &>/dev/null; then
  sudo pip3 install --upgrade pip &&
  sudo pip3 install virtualenvwrapper &&
  mkdir ~/.virtualenvs
fi
