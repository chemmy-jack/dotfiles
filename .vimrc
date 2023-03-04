" ~/vimrc
set encoding=UTF-8
set nocompatible              " be iMproved, required


"" for plugins
call plug#begin()
" Plugin 'VundleVim/Vundle.vim'
Plug 'tpope/vim-commentary'
" Plug 'othree/html5.vim'
" Plug 'mattn/emmet-vim'
Plug 'preservim/nerdtree'
" Plug 'uiiaoo/java-syntax.vim'
" Plug 'artur-shaik/vim-javacomplete2'
" Plug 'bfrg/vim-cpp-modern'
Plug 'tpope/vim-surround'
" Plug 'moll/vim-node'
" Plug 'pangloss/vim-javascript'
" Plug 'hdima/python-syntax'
Plug 'jiangmiao/auto-pairs'
" Plug 'c.vim'

" for theme
Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'neoclide/coc.nvim' , {'branch': 'release'}
" below are for coc.nvim
Plug 'rafi/awesome-vim-colorschemes'
Plug 'ap/vim-css-color'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-unimpaired'
" Plug 'ryanoasis/vim-devicons'
call plug#end()




filetype plugin indent on    " required

" Coc setups
source ~/.config/nvim/coc.vim
" NERDtree setups
source ~/.config/nvim/nerdtree.vim
" java complete2
source ~/.config/nvim/java_complete.vim
" emmet setup, only load in html and css and js, use prefix ctr-m
let g:user_emmet_install_global = 0
autocmd FileType html,css,js EmmetInstall
let g:user_emmet_leader_key='<C-M>'
" gruvbox
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_transparent_bg=1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1


"" for key mapping
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



"" for set split default
set splitbelow
set splitright


"" for number
set number "relativenumber


"" for tab indent
" set autoindent 
" set indentexpr
set noexpandtab tabstop=2 shiftwidth=2
set smartindent
set smarttab
set shiftround
" set softtabstop=2
" " set preserveindent
" set cindent


"" for folding
set foldenable
set foldmethod=indent


"" for highlight & cuser
" highlight CursorLine cterm=underline ctermbg=none ctermfg=none
set cursorline


"" for syntax
set showmatch
syntax enable


"" for search
set hlsearch
highlight search cterm=reverse ctermbg=none ctermfg=none
set incsearch
set smartcase


"" for color scheme
set background=dark
colorscheme gruvbox
set ruler
" set termguicolors


"" for status bar and command bar
set showmode
set wildmenu "autocomplete command
set wildmode=list:full "audocomplete file name, full means will cycle through all choices
" set laststatus=2
" set showcmd
" :set statusline=%2*%n%m%r%h%w%*\ %F\ %1*[FORMAT=%2*%{&ff}:%{&fenc!=''?&fenc:&enc}%1*]\ [TYPE=%2*%Y%1*]\ [COL=%2*%03v%1*]\ [ROW=%2*%03l%1*/%3*%L(%p%%)%1*]\
" hi User1 guifg=gray
" hi User2 guifg=red
" hi User3 guifg=white


"" for blanks like spaces
" set list
" set listchars=trail:-
" set listchars=nbsp:_
" set listchars=tab:>-


"" for mouse
" set mouse=a
" set mousef


"" for wrap
set textwidth=80
set wrap
set linebreak


"" for others
" set exrc
" set secure
" set fileformats=unix,dos,mac
" set noshowmode
set autochdir
set display=lastline,uhex
set errorbells "beep of flash screen when error occurs
set scrolloff=2
set title
set history=1000
set spell "Enable spellchecking.
" set showtabline=2
set winheight=5


" py3 from powerline.vim import setup as powerline_setup
" py3 powerline_setup()
" py3 del powerline_setup


