call pathogen#infect()
call pathogen#helptags()

filetype on
filetype plugin on
filetype indent on

runtime macros/matchit.vim

set autoindent
set autoread
set background=dark
set backup
set backspace=indent,eol,start
set backupdir=~/.vim-tmp
set directory=~/.vim-tmp
set encoding=utf-8
set expandtab
set foldmethod=indent
set foldlevel=99
set hidden
set history=100
set hlsearch
set incsearch
set nocompatible
set ruler
set scrolloff=1
set shiftwidth=4
set showcmd
set showmode
set smartindent
set smarttab
set tabstop=8
set title
set visualbell
set wildmode=list:longest
set wildmenu

syntax on
colorscheme solarized

if filereadable(glob("~/.vim/vimrc.local")) 
    source ~/.vim/vimrc.local
endif
