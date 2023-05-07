set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'file:///home/gmarik/path/to/plugin'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
call vundle#end()            " required
filetype plugin indent on    " required

" Config YURI
syntax on
set autoindent
set smartindent
set history=5000
set number
set cursorline
set mouse=a
" set clipboard=unnamedplus
set tabstop=4 softtabstop=4 expandtab shiftwidth=4
" set foldmethod=syntax
" set foldlevel=99
set nowrap
set encoding=utf8
"
