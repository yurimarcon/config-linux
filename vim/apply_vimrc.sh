#! /bin/bash

cat ~/.vimrc > ~/.vimrc_bkp

cat .vimrc > ~/.vimrc

source ~/.vimrc

vim +PluginInstall +qall

echo "Configs Vim updated success"
