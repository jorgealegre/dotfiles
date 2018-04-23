let mapleader=","

" CtrlP configuration
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_max_files=50000
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Vundle setup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

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

Plugin 'pangloss/vim-javascript'

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

" Easily navigate open panes.
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Search and replace the word under the cursor easily.
:nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>

" Sensible splits.
set splitbelow
set splitright

" Shell
set shell=zsh
set encoding=utf-8

set showmode

" Tabs vs. spaces
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

" Easier coding
set autoindent

" Line number
set number

" Highlight found searches
set showmatch

" Case insensitive search
set ignorecase

" Offset the screen 7 lines when scrolling
set scrolloff=7

set hlsearch
set incsearch

" Toggle paste mode when copying large chunks of code from somewhere else.
set pastetoggle=<F2>

set autoread

" Don't save backups
set nobackup
set noswapfile

" Highlight the current line
set cursorline

" Highlight the 80th column
set colorcolumn=80

set ruler

" Pretty stuff
syntax enable
set background=dark
colorscheme solarized

" Show diffs in vertical splits
set diffopt+=vertical
