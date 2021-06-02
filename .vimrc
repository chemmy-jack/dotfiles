" ~/vimrc
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-commentary'
Plugin 'othree/html5.vim'
Plugin 'mattn/emmet-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" key mapping start
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
nnoremap J 5j
nnoremap K 5k
nnoremap <C-j> 5<C-e>
nnoremap <C-k> 5<C-y>
nnoremap <C-n> <C-w>
nnoremap <C-n><C-n> <C-w><C-w>
nnoremap <C-;> <C-w><C-w>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" key mapping end

" hybrid number
set number relativenumber

" Let clangd fully control code completion
let g:ycm_clangd_uses_ycmd_caching = 0
" Use installed clangd, not YCM-bundled clangd which doesn't get updates.
let g:ycm_clangd_binary_path = exepath("clangd")

" set split default
set splitbelow
set splitright

" emmet setup, only load in html and css and js, use prefix ctr-m
let g:user_emmet_install_global = 0
autocmd FileType html,css,js EmmetInstall
let g:user_emmet_leader_key='<C-M>'

" for tab indent only
set autoindent noexpandtab tabstop=4 shiftwidth=4

" for folding
set foldenable
set foldmethod=indent
" below is still organizing

set softtabstop=4
set exrc
set secure
set ruler
set hlsearch
highlight search cterm=reverse ctermbg=none ctermfg=none
set incsearch
" enter the current millenuim
set nocompatible

" enable syntax and plugins (for netrw)
syntax enable
filetype plugin on

highlight CursorLine cterm=underline ctermbg=none ctermfg=none
set cursorline
colorscheme ron

" powerline  source: https://dev.to/ahferroin7/comment/h892
set ambiwidth=double
set autochdir
set autoread
set background=dark
set nocompatible
" set copyindent
set display=lastline,uhex
set errorbells
set expandtab
set fileformats=unix,dos,mac
set incsearch
set laststatus=2
set list
set listchars=trail:-,tab:>-,nbsp:_
set modeline
set mouse=a
set mousef
set number
" set preserveindent
set scrolloff=2
set shiftround
set showcmd
set showmatch
set noshowmode
set showtabline=2
" set smartindent
set smarttab
set splitbelow
set splitright
set wildmenu
set winheight=5

" py3 from powerline.vim import setup as powerline_setup
" py3 powerline_setup()
" py3 del powerline_setup


