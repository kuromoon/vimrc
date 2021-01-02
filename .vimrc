" vim plugin
call plug#begin('~/.vim/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'xavierd/clang_complete', { 'dir': '~/.vim/plugged/clang_complete', 'do': 'make install'  }
call plug#end()


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

set cursorline

" don't save backups
set nobackup
set nowritebackup

""""""""""""""""""""""""""""""""""
" COLORS/FONTS
""""""""""""""""""""""""""""""""""

syntax on
colorscheme nord


set encoding=utf8

"""""""""""""""""""""""""""""""""""
" TEXT
"""""""""""""""""""""""""""""""""""

set expandtab
set smarttab

set shiftwidth=4
set tabstop=4


set wrap



" Move between windows easier
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l



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


" Fast quit
nmap <leader>q : q!<cr>

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

"" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

"" Git
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gsh :Gpush<CR>
noremap <Leader>gll :Gpull<CR>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>
noremap <Leader>gr :Gremove<CR>



""" Clean search (highlight)
nnoremap <silent> <leader><space> :noh<cr>




" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

"*****************************************************************************
" Commands
"*****************************************************************************
" remove trailing whitespaces
command! FixWhitespace :%s/\s\+$//e




" Configurations

" Nord
let g:nord_cursor_line_number_background = 1
let g:nord_bold_vertical_split_line = 1


" Clang Complete
let g:clang_library_path='/usr/lib/llvm-6.0/lib/libclang.so.1'
let g:clang_complete_auto=2
let g:clang_auto_select=1
let g:clang_complete_macros=1
"let g:clang_snippets=1
