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
colorscheme delek
set background=dark

" Set UTF-8 as standard encoding
set encoding=utf8

" enable spell checking
set spell spelllang=en_us

" disable spell checking for certain file types
au BufRead,BufNewFile *.ini
	\ set nospell

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files, backups and undo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is pushed to git anyways
set nobackup
set nowb
set noswapfile
set fileformat=unix   " for github

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
set textwidth=80		" enter new line after N characters have been typed
set shiftwidth=4		" number of spaces to use for autoindent
set autoindent

" autocomplets provided that `set paste` is not set. When autocomplete is not
" wanted, escape it vith ctrl + v
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O<TAB>
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
