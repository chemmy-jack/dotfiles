" ~/vimrc

set softtabstop=4
set shiftwidth=4
set exrc
set secure
set noexpandtab
set ruler
set hlsearch
highlight search cterm=reverse ctermbg=none ctermfg=none
set incsearch
set autoindent
" enter the current millenuim
set nocompatible

" hybrid number
set number relativenumber

" enable syntax and plugins (for netrw)
syntax enable
filetype plugin on

" Let clangd fully control code completion
let g:ycm_clangd_uses_ycmd_caching = 0
" Use installed clangd, not YCM-bundled clangd which doesn't get updates.
let g:ycm_clangd_binary_path = exepath("clangd")

highlight CursorLine cterm=underline ctermbg=none ctermfg=none
set cursorline
colorscheme ron

" copy to buffer
vmap <C-c> :w! ~/.vimbuffer<CR>
nmap <C-c> :.w! ~/.vimbuffer<CR>
" paste from buffer
map <C-p> :r ~/.vimbuffer<CR>

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

" for html
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags


" for split default
set splitbelow
set splitright

" for fortran
let fortran_have_tabs=1
let fortran_fold=1
let fortran_fold_conditionals=1
set foldmethod=indent

" a setup in in https://www.youtube.com/watch?v=XA2WjJbmmoM&t=2491s
" let g:netrw_banner=0        " disable annoying banner
" let g:netrw_browse_split=4  " open in prior window
" let g:netrw_altv=1          " open splits to the right
" let g:netrw_liststyle=3     " tree view
" let g:netrw_list_hide=netrw_gitignore#Hide()
" let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" https://shapeshed.com/vim-netrw/
" the NERDtree setup
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 0
let g:netrw_altv = 1
let g:netrw_winsize = 15
" augroup ProjectDrawer
"   autocmd!
"     autocmd VimEnter * :Vexplore
" augroup END

" powerline  source: https://dev.to/ahferroin7/comment/h892
set ambiwidth=double
set autochdir
set autoindent
set autoread
set background=dark
set nocompatible
set copyindent
set display=lastline,uhex
set errorbells
set expandtab
set fileformats=unix,dos,mac
set foldenable
" set foldmethod=syntax
set incsearch
set laststatus=2
set list
set listchars=trail:-,tab:>-,nbsp:_
set modeline
set mouse=a
set mousef
set number
set preserveindent
set scrolloff=2
set shiftround
set shiftwidth=4
set showcmd
set showmatch
set noshowmode
set showtabline=2
set smartindent
set smarttab
set splitbelow
set splitright
set wildmenu
set winheight=5

" syntax on
" filetype on

py3 from powerline.vim import setup as powerline_setup
py3 powerline_setup()
py3 del powerline_setup


" try to solve problem
let bclose_multiple = 15

" for vundle (package manager)
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'mattn/emmet-vim'

call vundle#end()            " required
filetype plugin indent on    " required

" enl for vundle
