"----------------Vundle---------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" !! write plugins here !!
Plugin 'vim-python/python-syntax'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'patstockwell/vim-monokai-tasty'
Plugin 'dense-analysis/ale'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"--------------------------------------

"----------python-syntax----------
let g:python_highlight_all = 1
"---------------------------------


set nocompatible
set backspace=indent,eol,start
noremap!  
colorscheme vim-monokai-tasty
set autoread
set showcmd
set nobackup
set noswapfile

syntax on
set number
set autoindent
set smartindent
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set visualbell
set virtualedit=onemore
set showmatch
set laststatus=2
set title
set whichwrap=b,s,h,l,<,>,[,],~
set scrolloff=5
set hlsearch
set mouse=a
nnoremap <ESC><ESC> :noh<CR>
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
inoremap jj <Esc>

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'violet'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab

let g:airline#extensions#ale#enabled = 1

nnoremap <silent><C-e> :NERDTreeToggle<CR>
let g:NERDTreeQuitOnOpen=1

highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight LineNr ctermbg=none
highlight Folded ctermbg=none
highlight EndOfBuffer ctermbg=none


let g:python_highlight_all = 1
