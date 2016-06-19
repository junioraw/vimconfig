set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Autocompletion
Plugin 'Valloric/YouCompleteMe'

" Syntax Checker
Plugin 'scrooloose/syntastic'

" Auto closing parenthesis, brackets, etc
Plugin 'jiangmiao/auto-pairs'

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

" Alternative color schemes
"color molokai
"color badwolf

color xcode-default

" Line numbers
set number

" This is so tabs behave nicely, there's a nice explanation here: http://stackoverflow.com/questions/1878974/redefine-tab-as-4-spaces 
set tabstop=4
set shiftwidth=4
set softtabstop=0
set noexpandtab

" highlights the currrent line
set cursorline
