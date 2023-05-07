set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
" Plugin 'file:///home/gmarik/path/to/plugin'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
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
set clipboard=unnamed
set tabstop=4 softtabstop=4 expandtab shiftwidth=4
set foldmethod=syntax
set foldlevel=99
set nowrap
set encoding=utf8

" Config NerdTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let g:airline_theme='simple'
let g:airline#extensions#tabline#enabled = 1
