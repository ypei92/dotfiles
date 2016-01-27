set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
call vundle#end()            

filetype plugin indent on    

"Syntax and theme
syntax on
set t_Co=256
set background=dark
colorscheme solarized
set cursorline
"set cursorcolumn


"Show line number, command, status line and so on"
set history=1000
set ruler
set number
set showcmd
set showmode
set laststatus=2
set cmdheight=2
set scrolloff=3

"Turn off annoying error sound
set noerrorbells
set novisualbell

"Configure backspace to be able to across two lines
set backspace=2
set whichwrap+=<,>,h,l

"Tab and indent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent
set textwidth=80

"Text search and replace
set showmatch
set hlsearch
set incsearch
set ignorecase
set smartcase
set magic
set nowrapscan


