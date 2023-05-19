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
set number                    " Numera as linhas
set linebreak                 " Quebra linha sem quebrar a palavra
set wildmode=longest,list     " Completa o comando com TAB igual no bash
set ignorecase                " Ignora case sensitive na busca
set smartcase                 " Se tiver alguma letra maiuscula, ativa o case sensitive
set hlsearch                  " Termo procurado em destaque
set completeopt=menu,preview  " Como mostrar as possibilidades de insercao
set spelllang=pt              " Escolhe o dicionario
set textwidth=80              " Limita o tamanho da linha em uma quantidade de caracteres
set autoindent                " Identa o texto de acordo com a linha atual quando quebrar linha
set smartindent               " Auto-identa
set tabstop=4 softtabstop=4 expandtab shiftwidth=4
set history=5000              " Guarda no maximo 5000 registros no historico de comandos
set autochdir                 " Vai para o diretorioi do arquivo aberto
set cursorline                " Mostra linha atual mais clara
set mouse=a
set clipboard=unnamed
set foldmethod=syntax
set foldlevel=99
set nowrap
set encoding=utf8

" Permite selecionar com SHIFT + SETA
set selectmode=mouse,key
set mousemodel=popup
set keymodel=startsel,stopsel
set selection=exclusive

" Config NerdTree
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>

" Airline
set laststatus=2

let g:airline_theme='base16_twilight'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airlin_statusline_ontop = 0
let g:airline#extensions#tabline#left_sep = " "
let g:airline#extensions#tabline#left_alt_sep = "|"
let g:airline#extensions#tabline#formater = "default"
