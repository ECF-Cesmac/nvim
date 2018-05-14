""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim-plug
"
call plug#begin('~/.config/nvim/plugged')
    " Auto complete
    Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
    "File explorer
    Plug 'scrooloose/nerdtree', {'on':  'NERDTreeToggle'}
    " Linting
    Plug 'w0rp/ale'
    " javascript language 
    Plug 'carlitux/deoplete-ternjs'
    Plug 'ternjs/tern_for_vim'
    Plug 'jiangmiao/auto-pairs'
    " status bar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " buffer swap
    Plug 'zefei/vim-wintabs'
    " emmet
    Plug 'mattn/emmet-vim'
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basics configurations
"
filetype plugin indent on
syntax on

set number
set showcmd
set showmode
set showmatch
set incsearch
set hlsearch
set ignorecase
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set expandtab
set autoindent
set smartindent
set autoread
set cursorline
set tabline=1
set splitright
set splitbelow
set clipboard=unnamedplus
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maps
"
" Window buffer navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Nnoremaps
"
map <F9> :bnext<CR>
map <F8> :bprev<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Deoplete
"
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Deoplete-ternjs
"
" Use tern_for_vim.
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ale
"
let g:ale_fixers = {
 \'javascript': ['eslint']
 \}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
"
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['node_modules', 'bower_components', 'tmp', 'vendor', 'tags']
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airline
"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme = "papercolor"
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_nr = 1
