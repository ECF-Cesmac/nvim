""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim-plug
"
call plug#begin('~/.config/nvim/plugged')
    " Auto complete
    Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
    "File explorer
    Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
    "Code commenter
    Plug 'scrooloose/nerdcommenter'
    " status bar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " buffer swap
    Plug 'zefei/vim-wintabs'
    " emmet
    Plug 'mattn/emmet-vim'
    " auto-close
    Plug 'jiangmiao/auto-pairs'
    " Indentation
    Plug 'Yggdroot/indentLine'
    Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
    Plug 'roxma/LanguageServer-php-neovim', {'do': 'composer install && composer run-script parse-stubs'}
    "
    Plug 'junegunn/fzf'
    "
    " typescript
    Plug 'leafgarland/typescript-vim'
    Plug 'tpope/vim-surround'
    "
    Plug 'pangloss/vim-javascript'

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
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" IndentLine
"
"let g:indentLine_char = "│"
"let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 0
"set conceallevel=0
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Deoplete
"
let g:deoplete#enable_at_startup = 1
let g:neosnippet#enable_completed_snippet = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Javascript Language
"
au filetype javascript set tabstop=2 shiftwidth=2 softtabstop=2
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Language Client Neovim
"
let g:LanguageClient_serverCommands = {
    \'javascript': ['node',
    \$HOME . '/.npm-global/bin/javascript-typescript-stdio'
    \],
    \'php': [ 'php',
    \$HOME . '/.config/nvim/plugged/LanguageServer-php-neovim/vendor/bin/php-language-server.php'
    \]
\}
let g:LanguageClient_autoStart = 1

set completefunc=LanguageClient#complete
set formatexpr=LanguageClient#textDocument_rangeFormatting_sync()
