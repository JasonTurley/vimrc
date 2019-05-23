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
colorscheme desert
set background=dark

" Set utf8 as standard encoding
set encoding=utf8

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files, backups and undo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is pushed to git anyways
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text, tab and indent
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Be smart when using tabs
set smarttab

" 1 tab == # spaces
set shiftwidth=8
set tabstop=8

" Linebreak on # characters
set lbr
set tw=79	" 0 for no text wrap

set ai 		" Auto indent
set si		" Smart indent
set wrap	" Wrap lines

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Movement options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Scrollable editor
set mouse=a

" Remap jj to escape in insert mode
inoremap jj <Esc>

" swapping : and ; saves a lot of unneeded shiftin
noremap ; :
noremap : ;

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

