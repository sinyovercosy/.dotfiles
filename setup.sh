#!/usr/bin/env bash

echo "if tty -s
then
    if [ -f ~/.dotfiles/bashrcs/.bash_profile ]; then
        source ~/.dotfiles/bashrcs/.bash_profile
    fi
fi" > ~/.bashrc
echo "if [ -f "$HOME/.bashrc" ]; then . "$HOME/.bashrc"; fi " > ~/.bash_profile

git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
cp ./my_configs.vim ~/.vim_runtime/my_configs.vim
git clone https://github.com/mengelbrecht/lightline-bufferline.git ~/.vim_runtime/my_plugins/vim-lightline-bufferline
git clone https://github.com/cmugpi/vim-c0.git ~/.vim_runtime/my_plugins/vim-c0
git clone https://github.com/lifepillar/vim-cheat40.git ~/.vim_runtime/my_plugins/vim-cheat40
git clone https://github.com/flazz/vim-colorschemes.git ~/.vim_runtime/my_plugins/vim-colorschemes
git clone https://github.com/lifepillar/vim-solarized8.git ~/.vim_runtime/my_plugins/vim-solarized8
git clone https://github.com/christoomey/vim-tmux-navigator.git ~/.vim_runtime/my_plugins/vim-tmux-navigator
git clone https://github.com/vim-latex/vim-latex.git ~/.vim_runtime/my_plugins/vim-latex
