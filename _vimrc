set t_Co=256
syntax on
set background=dark
colorscheme peaksea
"colorscheme distinguished
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/vimfiles/bundle/Vundle.vim
call vundle#begin('~/vimfiles/')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
"Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
"Plugin 'file:///home/gmarik/path/to/plugin'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"Plugin 'user/L9', {'name': 'newL9'}
Plugin 'flazz/vim-colorschemes'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'
"Plugin 'klen/python-mode'
" These are the tweaks I apply to YCM's config, you don't need them but they might help.
" YCM gives you popups and splits by default that some people might not like, so these should tidy it up a bit for you.
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview





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
"
autocmd filetype python set expandtab
set guifont=Consolas:h10
set directory=.,$TEMP
set tabstop=4
set shiftwidth=4
set expandtab
set cursorline
set showmatch
set number
set autoindent
let python_highlight_all = 1

set noswapfile
set nobackup


set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar


" mappings
"
"map ; :
"noremap ;; ;
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;
inoremap jk <esc>
inoremap kj <esc>
let mapleader = ","
"inoremap <esc> <nop>
nnoremap <leader>d dd
" Quickly edit/reload the vimrc file
nmap <leader>ev ;e $MYVIMRC<CR>
nmap <silent> <leader>sv ;so $MYVIMRC<CR>
set pastetoggle=<F2>
set mouse=a
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
vmap Q gq
nmap Q gq
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
nmap <leader>ff gg=G<Ctrl-O><Ctrl-O>
nmap <c-s> ;w<CR>
imap <c-s> <Esc>;w<CR>
nmap <leader>s ;w<CR>
imap <leader>s <C-c>;w<CR>
nmap <leader>q ;q<cr>
