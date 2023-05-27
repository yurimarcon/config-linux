#! /bin/bash

git clone https://github.com/VundleVim/Vundle.vim.git \
    ~/.vim/bundle/Vundle.vim

cat ~/.vimrc > ~/.vimrc_bkp

cat .vimrc > ~/.vimrc

source ~/.vimrc

vim +PluginInstall +qall

echo "Configs Vim updated success"
