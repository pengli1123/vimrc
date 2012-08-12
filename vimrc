
call pathogen#infect()

set nocompatible

set backspace=indent,eol,start

if has("vms")
  set nobackup
else
  set backup
endif

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

set wrap
set textwidth=80
colorschem desert

set showtabline=2
map Q gq
set mouse=a

if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

if has("autocmd")

  filetype plugin indent on
  filetype plugin on

  let g:pydiction_location = '~/.vim/pydiction-1.2/complete-dict'

  augroup vimrcEx
  au!

  autocmd FileType text setlocal textwidth=78
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
  augroup END
else
 set autoindent
endif " has("autocmd")

command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
	 	\ | wincmd p | diffthis

nmap <F8> :TagbarToggle<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
