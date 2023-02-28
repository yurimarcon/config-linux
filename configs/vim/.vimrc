set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Plugin 'tpope/vim-fugitive'
" Plugin 'git://git.wincent.com/command-t.git'
" Plugin 'file:///home/gmarik/path/to/plugin'
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'arcticicestudio/nord-vim'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'ryanoasis/vim-devicons'
Plugin 'mhinz/vim-startify'
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
set spelllang=pt              " Escolhe o dicioário
set textwidth=80              " Limita a linha em no máximo 80 caracteres
set colorcolumn=80            " Cria uma linha apontando o limite de 80 caracteres

filetype plugin indent on

" Autocomplta a abertura e fechamento de símbolos
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap < <><LEFT>

" colorscheme nord
" colorscheme nord
colorscheme murphy

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

" Abas (buffers)
noremap <S-H> :bp <CR>
noremap <S-L> :bn <CR>

" Airline
set laststatus=2

let g:airline_theme='afterglow'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airlin_statusline_ontop = 0
let g:airline#extensions#tabline#left_sep = " "
let g:airline#extensions#tabline#left_alt_sep = "|"
let g:airline#extensions#tabline#formater = "default"

" Formata e identa arquivos JSON
function! ParseStringToJsonFormat()
    %s/\\"/"/g
    %s/^"//
    %s/"$//
    %!python -m json.tool
endfunc
noremap <C-J> :call ParseStringToJsonFormat() <CR>


