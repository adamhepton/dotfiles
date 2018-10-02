" Syntax highlighting, go!
syntax on

" Lots of history
set history=50

" So deets at the bottom
set showmode
set showcmd
set modeline

" Don't wrap long lines
set nowrap

" Auto indent what you can
set autoindent
set smartindent

" Make searching a little nicer
set ignorecase
set smartcase
set hlsearch
set incsearch

"Match gt and lt as braces
" set matchpairs+=<:>
set showmatch

" Make backspace a bit nicer
set backspace=eol,start,indent

" Give me a ruler
set ruler

" Don't try to be compatible with vi
set nocompatible

" Two spaces for a tab
set shiftwidth=2
set shiftround
set tabstop=2
set softtabstop=2
set expandtab

" Stop the mouse from interfering
set mouse=

" I want to be able to read my comments
highlight Comment ctermfg=2

" Switch tabs
map 8 <Esc>:tabe
map 9 gT
map 0 gt

" Show the file title
set title

" Line numbers
set nu!
map <F7> <Esc>:set nu!<CR>

" Toggle wrap
map <F6> <Esc>:set wrap!<CR>

" Direction keys for wrapped lines
nnoremap <silent> k gk
nnoremap <silent> j gj
nnoremap <silent> <Up> gk
nnoremap <silent> <Down> gj
inoremap <silent> <Up> <Esc>gka
inoremap <silent> <Down> <Esc>gja

" Begone, backups
set nobackup
set nowb
set noswapfile

" Formatting, Menu, Colours etc
set wildmenu
set mat=2
colorscheme zellner
set background=dark

set encoding=utf8
set lbr
set tw=500

execute pathogen#infect()

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = "\uE0B5"
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline_left_sep = "\uE0B4"
let g:airline_right_sep = "\uE0B6"
let g:airline_section_z = airline#section#create(["\uE0A1" . '%{line(".")}' . " \uE0A3" . '%{col(".")}'])

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:airline#extensions#syntastic#enabled = 1
