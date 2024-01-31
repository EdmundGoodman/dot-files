" Don't try to be vi compatible
set nocompatible

" Turn off before loading plugins, then back one later
filetype off

""" LOAD ANY PLUGINS HERE

" Turn on syntax highlighting, line numbers, and of QOL features
syntax on
filetype plugin indent on
set number
set nowrap
set list
set showbreak=↪\ \
 set listchars=tab:\ \ ,nbsp:␣,precedes:«,extends:»
" Optional more aggressive modes:
" set listchars=tab:→\ ,nbsp:␣,trail:·,precedes:«,extends:»,eol:¶
" set listchars=tab:→\ ,space:␣,nbsp:·,trail:¬,precedes:«,extends:»,eol:↲

" Configure the status bar
set showmode
" set showcm
" set ruler
" set laststatus=2

" Configure tab behaviour
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
autocmd FileType make setlocal noexpandtab

" Configure searching
set showmatch
set hlsearch

" General configuration
set hidden
set backspace=indent,eol,start
" set visualbell

" In vimdiff mode, set some additional keybindings, and wrap text by default
noremap <expr> <C-A> &diff ? ':qa!<cr>' : ''
noremap <expr> <C-S> &diff ? ':wqa!<cr>' : ''
noremap <expr> <C-Q> &diff ? ':cq!<cr>' : ''
au VimEnter * if &diff | execute 'windo set wrap' | endif

" Set the colour scheme
colorscheme monokai

