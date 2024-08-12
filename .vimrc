set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'mhinz/vim-signify'
Plugin 'ycm-core/YouCompleteMe'
call vundle#end()

filetype plugin indent on   " load file type plugin and related indent info

"" Syntax and theme
syntax on
set background=dark
if (has("termguicolors"))
  set termguicolors
endif
colorscheme solarized8

"" Show line number, command, status line and so on
set cursorline
set number                  " relativenumber
set history=1024            " The length of the history need to be recorded
set encoding=utf-8
set confirm                 " Pop up confirmation when editing RO or unsaved
set wildmenu                " For auto filling
set showcmd
set showmode
set laststatus=2            " Always show the status line
set cmdheight=2
set scrolloff=3
set ambiwidth=double        " Set width of a chinese character

"" Set ruler at 80
set ruler
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)
set colorcolumn=80          "Draw a vertical colored line at 80
"highlight ColorColumn ctermbg=NONE guibg=#1453AD  "# d04c14 iconic red

"" Turn off annoying error sound
set belloff=all
set visualbell
set t_vb=

"" Configure backspace to be able to across two lines
set backspace=2
set whichwrap+=<,>,h,l

"" Tab and indent
set tabstop=2               " Let tab equals 2 spaces
set softtabstop=2
set shiftwidth=2
set expandtab
set smartindent             " Smart indent for C
set autoindent
set iskeyword+=_,$,@,%,#,-
set textwidth=80

"" Text search and replace
set showmatch               " Highlight matched parenthesis
set incsearch               " Highlight in process
set hlsearch                " Highlight the string found
set ignorecase              " Ignore case when searching
set smartcase               " Case match force active when uppercase entere
set magic
set nowrapscan
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$

"" Set mouse permission: all
set mouse=a
set selection=exclusive
set selectmode=mouse,key

"" Vim airline plugin setting
let g:airline_theme='cobalt2'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1        "tab number
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#formatter = 'default'

let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#hunks#hunk_symbols = ['+', '~', '-']

"" Clear buffer automatically after a tab is closed
autocmd BufDelete * call airline#extensions#tabline#buflist#invalidate()

"" Insert mode key mapping
inoremap jj <Esc>

"" Visual mode key mapping
xnoremap p pgvy

"" Normal mode key mapping
nnoremap go <C-o>
nnoremap th :tabfirst<CR>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap tl :tablast<CR>
cnoreabbrev <expr> tn getcmdtype() == ":" && getcmdline() == 'tn' ? 'tabnew' : 'tn'

"" For YCM
let g:ycm_complete_in_comments = 0
let g:ycm_complete_in_strings = 1
let g:ycm_key_list_stop_completion = ['<C-y>']

let g:ycm_add_preview_to_completeopt="popup"
let g:ycm_autoclose_preview_window_after_completion = 0
let g:ycm_autoclose_preview_window_after_insertion = 0

let g:ycm_filetype_blacklist = {
      \ 'tagbar': 1,
      \ 'notes': 1,
      \ 'markdown': 1,
      \ 'netrw': 1,
      \ 'unite': 1,
      \ 'text': 1,
      \ 'vimwiki': 1,
      \ 'pandoc': 1,
      \ 'infolog': 1,
      \ 'leaderf': 1,
      \ 'mail': 1
      \}

cnoreabbrev <expr> gtype getcmdtype() == ":" && getcmdline() == 'gtype' ? 'YcmCompleter GetType' : 'gtype'
cnoreabbrev <expr> gt getcmdtype() == ":" && getcmdline() == 'gt' ? 'YcmCompleter GoTo' : 'gt'
cnoreabbrev <expr> gdef getcmdtype() == ":" && getcmdline() == 'gdef' ? 'YcmCompleter GoToDefinition' : 'gdef'
cnoreabbrev <expr> gdec getcmdtype() == ":" && getcmdline() == 'gdec' ? 'YcmCompleter GoToDeclaration' : 'gdec'
