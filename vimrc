inoremap jk <ESC>
set nocompatible             " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Autocompletion
" Plugin 'Valloric/YouCompleteMe'

" Syntax Checker
" Plugin 'scrooloose/syntastic'

" Auto closing parenthesis, brackets, etc
Plugin 'jiangmiao/auto-pairs'

" Highlighting git changes
"Plugin 'airblade/vim-gitgutter'

" Mostly for clojure
"Plugin 'rainbow_parentheses.vim'

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

"gruvbox colorscheme
Plugin 'morhetz/gruvbox'

" gocode
Plugin 'nsf/gocode', {'rtp': 'vim/'}

" deoplete
Plugin 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}

" deoplete-go
Plugin 'zchee/deoplete-go', {'do': 'make'}

" todo.txt
Plugin 'freitass/todo.txt-vim'

" snippets
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'

" vim fugitive (for git)
"Plugin 'tpope/vim-fugitive'

" clang completion
Plugin 'zchee/deoplete-clang'

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
" color kalahari
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

" For vim go
set autowrite
" Automatically formats import. Disable on large code base
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1

" Display buffers
let g:airline#extensions#tabline#enabled = 1
"let g:ycm_autoclose_preview_window_after_insertion = 0

" colorscheme background (looks nice with gruvbox)
set background=dark

" Airline
"let g:airline_powerline_fonts=1
" set laststatus=2

" remap leader to space
let mapleader = "\<Space>"
" save/quit with leader
nnoremap <Leader>w :w<CR>
nnoremap <Leader>wq :wq<CR>
nnoremap <Leader>q :q<CR>

" use buffers with leader
nnoremap <Leader>e :e<CR>
nnoremap <Leader>bn :bn<CR>
nnoremap <Leader>bp :bp<CR>
nnoremap <Leader>bd :bd<CR>
nnoremap <Leader>j :

" Key mappings for vim-go
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>tb <Plug>(go-test-compile)
au FileType go nmap <leader>c <Plug>(go-coverage)

au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

au FileType go nmap <Leader>e <Plug>(go-rename)

" Key mapping for vim-fireplace
"au FileType clj nmap <Leader>ev :%Eval<CR>

let g:deoplete#enable_at_startup = 1

" deoplete go settings
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
"smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
"if has('conceal')
"  set conceallevel=2 concealcursor=niv
"endif

" Rainbow parantheses settings always on
" au VimEnter * RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
" au Syntax * RainbowParenthesesLoadBraces
"

" Save folding
" autocmd BufWinLeave *.* mkview
" autocmd BufWinEnter *.* silent loadview
