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
" Plugin 'scrooloose/syntastic'

" Auto closing parenthesis, brackets, etc
Plugin 'jiangmiao/auto-pairs'

" Highlighting git changes
Plugin 'airblade/vim-gitgutter'

" Mostly for clojure
Plugin 'rainbow_parentheses.vim'

" Clojure REPL
" Plugin 'tpope/vim-fireplace'

" Plugin 'vim-scripts/vim-auto-save'

" Vimgo 
Plugin 'fatih/vim-go'
" Split and join
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'ctrlpvim/ctrlp.vim'

" vim status/tabline 
Plugin 'vim-airline/vim-airline'

" airline themes
Plugin 'vim-airline/vim-airline-themes'
Plugin 'morhetz/gruvbox'

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

" Color schemes
"color kalahari
"color molokai
"color badwolf
"color xcode-default
color gruvbox

" Line numbers
set number

" This is so tabs behave nicely, there's a nice explanation here: http://stackoverflow.com/questions/1878974/redefine-tab-as-4-spaces 
set tabstop=4
set shiftwidth=4
set softtabstop=0
set noexpandtab

" highlights the currrent line
set cursorline
set showcmd
set incsearch

" =====================================
" Syntastic settings

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_go_checkers = ['go']

" ====================================
" Rainbow parantheses settings always on
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" For vim go
set autowrite
" Automatically formats import. Disable on large code base
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1

" So airline shows everytime
" set laststatus=2

" Display buffers
let g:airline#extensions#tabline#enabled = 1
let g:ycm_autoclose_preview_window_after_insertion = 0

" gruvbox background
