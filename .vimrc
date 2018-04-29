set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'mhinz/vim-signify'
Plugin 'edkolev/tmuxline.vim'
"Plugin 'edkolev/promptline.vim'
"Plugin 'Valloric/YouCompleteMe'
call vundle#end()

filetype plugin indent on   " load file type plugin and related indent info

"" Syntax and theme
syntax on
set t_Co=256
set background=dark
colorscheme solarized
set cursorline

set confirm                 "Pop up confirmation when editing RO or unsaved
set wildmenu                "For auto filling   FIXME:don't know what that is
set encoding=utf-8

"" Show line number, command, status line and so on"
set history=1024            "The length of the history need to be recorded
set ruler
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)
set colorcolumn=80          "draw a vertical colored line at 80
highlight ColorColumn ctermbg=red
"set colorcolumn=120        "draw a vertical colored line at 120
set number
"set relativenumber
set showcmd
set showmode
set laststatus=2
set cmdheight=2
set scrolloff=3

"" Turn off annoying error sound
set novisualbell
set noerrorbells

"" Configure backspace to be able to across two lines
set backspace=2
set whichwrap+=<,>,h,l

"" Tab and indent
set tabstop=4               "Let tab equals 4 spaces
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent             "smart indent for C
set autoindent
set iskeyword+=_,$,@,%,#,-
set textwidth=80
"set nowrap

"" Text search and replace
set showmatch               "Highlight matched parenthesis
set incsearch               "Highlight in process
set hlsearch                "Highlight the string found
set ignorecase              "Ignore case when searching
set smartcase               "Case match force active when uppercase entere
set magic
set nowrapscan
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$

"" Set mouse permission: all
set mouse=a
set selection=exclusive
set selectmode=mouse,key

"" Set width of a chinese character
set ambiwidth=double

"" Status line config
set laststatus=2            "always show the status line

"" Vim airline plugin setting
"let g:airline_powerline_fonts = 1
let g:airline_theme='cobalt2'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1        "tab number
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#formatter = 'default'

let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#hunks#hunk_symbols = ['+', '~', '-']
"let g:airline#extensions#hunks#non_zero_only = 0

"" Clear buffer automatically after a tab is closed
autocmd BufDelete * call airline#extensions#tabline#buflist#invalidate()

"" Vim tmuxline plugin settin
let g:tmuxline_powerline_separators = 0
let g:tmuxline_separators = {
    \ 'left' : '',
    \ 'left_alt': '|',
    \ 'right' : '',
    \ 'right_alt' : '|',
    \ 'space' : ' '}

let g:tmuxline_preset = 'ypei_crosshair'

"" powerline symbols FIXME
"let guifont='~/.local/share/fonts/test.ttf'
"let g:airline_left_sep = '>'
"let g:airline_right_sep = '<<'
"autocmd VimEnter * call AirlineRefresh()

"" Key mapping
nmap ff <C-f>
nmap bb <C-b>
nmap go <C-o>
nmap vv <C-v>

inoremap [ []<Esc>i
inoremap { {}<Esc>i

nnoremap th :tabfirst<CR>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap gp :tabprev<CR>
nnoremap tl :tablast<CR>

"" Auto bio info
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
