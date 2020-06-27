source $VIMRUNTIME/vimrc_example.vim

" include custom plugin settings
source ~/.vim/customize/plugin.vim

" set dictionary
set dictionary+=/usr/share/dict/words

" core config for bare vim
"
syntax on

filetype plugin indent on

set nobackup
set noundofile
set nobomb

set mouse=a

set backspace=indent,eol,start
set ruler
set number
set showcmd
set cursorline
set colorcolumn=80

set autoindent
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4

set incsearch
set hlsearch

" file encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,gbk,big5,euc-jp,euc-kr,latin1

" default to unfold all code
set foldmethod=indent
set foldlevel=99

