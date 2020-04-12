call plug#begin()
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

Plug 'dylanaraps/wal.vim'

call plug#end()

set spellfile=~/.vim/spell/en.utf-8.add

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn hybrid line numbers on
set number relativenumber

" Always show current position
set ruler

" Ignore case when searching
set ignorecase

" Be smart about cases when searching
set smartcase

" Highlight search results
set hlsearch

" Show matching brackets when text indicator is over them
set showmatch

" Pretty colors
syntax enable
"colorscheme wal
set background=dark

" Set UTF-8 as standard encoding
set encoding=utf8

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files, backups and undo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is pushed to git anyways
set nobackup
set nowb
set noswapfile
set fileformat=unix   " for github

" Filetype specific commands

" Make python pep8 compliant
au BufRead,BufNewFile *.py
    \ set tabstop=4     |
    \ set softtabstop=4 |
    \ set shiftwidth=4  |
    \ set textwidth=79  |
    \ set expandtab     |
    \ set autoindent    |

au BufRead,BufNewFile Makefile*
    \ set noexpandtab

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure editor tabs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set smarttab
""set expandtab			" enter spaces when tab is pressed
set textwidth=80		" break lines
set tabstop=8
set softtabstop=8
set shiftwidth=8		" number of spaces to use for autoindent
set autoindent

" autocomplets provided that `set paste` is not set. When autocomplete is not
" wanted, escape it vith ctrl + v
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O<TAB>

" make backspaces more powerful
set backspace=indent,eol,start

" Set autocompletion
set wildmode=longest,list,full

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Movement options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Scrollable editor
set mouse=a

" Remap jj to escape in insert mode
inoremap jj <Esc>

" swapping : and ; saves a lot of unneeded shifting
noremap ; :
noremap : ;

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Automatically delete all trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable code folding for classes and methods
set foldmethod=indent
set foldlevel=99

" Enable code folding with spacebar
nnoremap <space> za
