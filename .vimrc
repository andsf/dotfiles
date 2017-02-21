set tabstop=4
set autoindent
set expandtab
set shiftwidth=4
set number
set showmatch
set backspace=indent,eol,start
set noswapfile
set cursorline
set ignorecase
set encoding=utf-8

set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'chriskempson/vim-tomorrow-theme'

call neobundle#end()
filetype plugin indent on
NeoBundleCheck

set runtimepath+=~/.vim/bundle/vim-tomorrow-theme/colors/Tomorrow-Night-Bright.vim
colorscheme Tomorrow-Night-Bright
syntax on
