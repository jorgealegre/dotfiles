let mapleader=","

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_max_files=50000
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Syntax support
Plugin 'derekwyatt/vim-scala'
Plugin 'keith/swift.vim'

" Easily toggle code comments
Plugin 'scrooloose/nerdcommenter'

Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-fugitive'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'ntpeters/vim-better-whitespace'
" :StipWhitespace

" Show indent guides
" :IndentGuidesEnable
" :IndentGuidesDisable
" :IndentGuidesToggle
Plugin 'nathanaelkane/vim-indent-guides'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

set shell=zsh

set showmode

set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
set number
set showmatch
set ignorecase

set scrolloff=7

set hlsearch
set incsearch

set pastetoggle=<F2>

set autoread

set encoding=utf-8

set nobackup
set noswapfile

set cursorline


set colorcolumn=80
set ruler

syntax enable
set background=dark
colorscheme solarized

set diffopt+=vertical
