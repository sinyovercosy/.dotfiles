#!/usr/bin/env bash

# setup bashrc
echo "if tty -s
then
    if [ -f ~/.dotfiles/bashrcs/profile ]; then
        source ~/.dotfiles/bashrcs/profile
    fi
fi" > ~/.bashrc
echo "if [ -f "$HOME/.bashrc" ]; then . "$HOME/.bashrc"; fi " > ~/.bash_profile

# setup vimrc
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
ln -r -s -f ./my_configs.vim ~/.vim_runtime

# setup tmux.conf
git clone https://github.com/gpakosz/.tmux.git ~/.tmux
ln -s -f ~/.tmux/.tmux.conf ~
cp ~/.tmux/.tmux.conf.local ~
cat ./vim-tmux-navigator.tmux.conf >> ~/.tmux.conf.local

# get vim plugins
while IFS=/ read a b
do
  git clone https://github.com/${a}/${b}.git ~/.vim_runtime/my_plugins/${b}
done < plugins.list

# install virtualenvwrapper
if command -v python3 &>/dev/null; then
  pip3 install --user virtualenvwrapper
  mkdir ~/.virturalenvs
fi
