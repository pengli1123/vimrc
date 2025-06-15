
set nocompatible
filetype off

set backspace=indent,eol,start

set nobackup

set history=50
set ruler	
set showcmd
set showmode
set incsearch
set number	
set ignorecase
set laststatus=2
set title

set cindent
set smartindent
set autoindent

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set hlsearch

" Enable folding
set foldmethod=indent
set foldlevel=99

set wrap
set textwidth=80

set noswapfile

colorschem desert

set showtabline=2
set mouse=a

if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
  set lines=76 columns=200
endif

set autoindent

