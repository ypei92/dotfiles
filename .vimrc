set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
call vundle#end()            

filetype plugin indent on   " load file type plugin and related indent info

"Syntax and theme
syntax on
set t_Co=256
set background=dark
colorscheme solarized
set cursorline

set confirm                 "Pop up confirmation when editing RO or unsaved
set wildmenu                "For auto filling   FIXME:don't know what that is

"Show line number, command, status line and so on"
set history=1024            "The length of the history need to be recorded
set ruler
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)
set colorcolumn=80          "draw a vertical colored line at 80 FIXME:add color
"set colorcolumn=120        "draw a vertical colored line at 120
set number
"set relativenumber
set showcmd
set showmode
set laststatus=2
set cmdheight=2
set scrolloff=3

"Turn off annoying error sound
set novisualbell
set noerrorbells

"Configure backspace to be able to across two lines
set backspace=2
set whichwrap+=<,>,h,l

"Tab and indent
set tabstop=4               "Let tab equals 4 spaces
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent             "smart indent for C
set autoindent
set iskeyword+=_,$,@,%,#,-
set textwidth=80
"set nowrap

"Text search and replace
set showmatch               "Highlight matched parenthesis
set incsearch               "Highlight in process
set hlsearch                "Highlight the string found
set ignorecase              "Ignore case when searching
set smartcase               "Case match force active when uppercase entere
set magic
set nowrapscan
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$

" Set mouse permission: all
set mouse=a
set selection=exclusive 
set selectmode=mouse,key

" Set width of a chinese character
set ambiwidth=double

" Status line config
set laststatus=2            "always show the status line
:highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white
:match OverLength '\%81v.*'
"set statusline=            "FIXME

" CTags settings FIXME

" Auto bio info
autocmd BufNewFile *.py,*.cc,*.sh,*.java exec ":call SetTitle()"
func SetTitle()
    if expand("%:e") == 'sh'
        call setline(1, "#!/bin/bash")
        call setline(2, "")
        call setline(3, "# Author:\typei")
        call setline(4, "# Time:\t\t".strftime("%F %T"))
        call setline(5, "# Name:\t\t".expand("%"))
        call setline(6, "# Version:\tV0.1")
    else
    "if expand("%:e") == 'py'
        call setline(2, "# Author:\typei")
        call setline(3, "# Time:\t\t".strftime("%F %T"))
        call setline(4, "# Name:\t\t".expand("%"))
        call setline(5, "# Version:\tV0.1")
    endif
endfunc
