set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" ack.vim
Plugin 'mileszs/ack.vim'

" airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" vim-fugitive (git integration)
Plugin 'tpope/vim-fugitive'

" Nerdtree
Plugin 'scrooloose/nerdtree'

" Command-T
Plugin 'wincent/command-t'

" CtrlP
Plugin 'kien/ctrlp.vim'

" vim-multiple-cursors
Plugin 'terryma/vim-multiple-cursors'

" Better Whitespace
Plugin 'ntpeters/vim-better-whitespace'

" ConqueTerm
Plugin 'oplatek/Conque-Shell'

" Elixir-vim
Plugin 'elixir-lang/vim-elixir'

" Vim-javascript
Plugin 'pangloss/vim-javascript'

" Vim-coffee-script
Plugin 'kchmck/vim-coffee-script'

" Monokai-phoenix (theme)
Plugin 'reewr/vim-monokai-phoenix'

" Google
Plugin 'szw/vim-g'

" Vue
Plugin 'posva/vim-vue'

" Python's PEP8 recommends weird indentation rules
" Plugin 'vim-python-pep8-indent' " Didn't work for some reason

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

syntax on
colorscheme monokai-phoenix
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set autoindent
set clipboard=unnamed
set number
set hlsearch
set ruler
set title
set laststatus=2

" Ignore case when search is
set ignorecase
set smartcase

 " Show partial command in status line
set showcmd

set mouse=a
set backspace=2
autocmd BufWritePre * StripWhitespace
cnoreabbrev t tabnew
cnoreabbrev W w
cnoreabbrev Wq wq
cnoreabbrev Q q
cnoreabbrev ct ConqueTermSplit
cnoreabbrev ctb ConqueTermSplit bash
cnoreabbrev ctbv ConqueTermVSplit bash

" Make double-<Esc> clear search highlights
nnoremap <silent> <Esc><Esc> <Esc>:nohlsearch<CR><Esc>

" Easy NERDTree opening
map <Leader>n :NERDTree<CR>
let NERDTreeWinPos = 'left'

" New line adding
map <Leader>o o<Esc>
map <Leader>O O<Esc>

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Don't skip rows of wrapped lines
nnoremap j gj
nnoremap k gk

" Get back to normal mode when pressing jj while in insert mode
inoremap jj <Esc>

" vim-airline related config
let g:airline#extensions#tabline#enabled = 1 " prettier tabs
let g:airline_theme='simple'

" vim-g (Google) plugin config
let g:vim_g_open_command = "open"
let g:vim_g_command = "Go"
let g:vim_g_f_command = "Gf"

" ack.vim config
" use ag if available
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
nnoremap <Leader>a :Ack!<Space>

" wildignore to ignore files in listings Command-T uses it
" Binary ignore
set wildignore +=*.o,*.obj

" Log ignore
set wildignore +=*/log

" Web projects ignore
set wildignore +=*.min.js

" Node ignore
set wildignore +=*/node_modules

" Elixir/Phoenix ignore
set wildignore +=*/_build

" Sane Ignore For ctrlp (not sure if it sees wildignore)
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\.git$\|log\|tmp$',
      \ 'file': '\.exe$\|\.so$\|\.dat$\|\.png$\|\.min.js$'
      \ }
