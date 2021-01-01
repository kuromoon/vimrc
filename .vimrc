" set line numbers
set nu 

" show current position at bottom of screen
set ruler 

" remove error bells
set noerrorbells 
set novisualbell

" show menu for autocomplete in cmd line
set wildmenu 
set wildmode=list:longest,full

" highlight search results
set hlsearch

" highlight incremental matches
set incsearch

" show matching braces
set showmatch



""""""""""""""""""""""""""""""""""
" COLORS/FONTS
""""""""""""""""""""""""""""""""""

syntax on

colorscheme desert


set encoding=utf8







" Turn off backups
set backup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""
" TEXT
"""""""""""""""""""""""""""""""""""

set expandtab
set smarttab

set shiftwidth=4
set tabstop=4


set wrap



" Move between windows easier
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l



""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2







" mappings
inoremap jj <ESC>
cnoremap jj <ESC>
nnoremap ; :

let mapleader = " "

" Fast save
nmap <leader>w : wq<cr>

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm
