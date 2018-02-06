set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
"   Plugin 'Valloric/YouCompleteMe'
    Plugin 'ap/vim-css-color'
    Plugin 'chrisbra/unicode.vim'
    Plugin 'editorconfig/editorconfig-vim'
    Plugin 'godlygeek/tabular'
    Plugin 'kien/ctrlp.vim'
    Plugin 'marijnh/tern_for_vim'
    Plugin 'mattn/emmet-vim'
    Plugin 'mattn/webapi-vim'
    Plugin 'nathanaelkane/vim-indent-guides'
    Plugin 'othree/html5.vim'
    Plugin 'plasticboy/vim-markdown'
    Plugin 'raimondi/delimitmate'
    Plugin 'scrooloose/nerdtree'
    Plugin 'scrooloose/syntastic'
    Plugin 'shougo/neocomplcache.vim'
    Plugin 'shougo/neosnippet'
    Plugin 'shougo/neosnippet-snippets'
    Plugin 'shutnik/jshint2.vim'
    Plugin 'tomtom/tcomment_vim'
    Plugin 'tpope/vim-commentary'
    Plugin 'tpope/vim-fugitive'
    Plugin 'tpope/vim-repeat'
    Plugin 'tpope/vim-surround'
    Plugin 'wavded/vim-stylus'
    Plugin 'digitaltoad/vim-jade'
    Plugin 'pangloss/vim-javascript'
    Plugin 'guns/vim-clojure-static'
    Bundle 'mxw/vim-jsx'
    Plugin 'itchyny/lightline.vim'
    Plugin 'fatih/vim-go'
    Plugin 'scrooloose/nerdcommenter'
    Plugin 'maralla/completor.vim'
call vundle#end()
"colorscheme xoria256
"set relativenumber
set expandtab
"set tabstop=2
"set shiftwidth=2
set cindent
set virtualedit=all
set shiftwidth=4
set tabstop=4
set softtabstop=4
set shiftround
set autoindent
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_auto_loc_list=1
"let g:syntastic_loc_list_height=5

" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
" Plugin 'VundleVim/Vundle.vim'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" " Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
" " Plugin 'ascenator/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
" call vundle#end()            " required
" filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
set shell=/bin/zsh
syntax enable
syntax on
colorscheme monokai
autocmd CompleteDone * pclose
set nonu
"set ruler
"set rulerformat=%l,%v
execute pathogen#infect()
call pathogen#helptags()
filetype plugin indent on
syntax on
"autocmd vimenter * NERDTree
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
let g:pymode_python = 'python'
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
set cursorline
set ruler
let g:jsx_ext_required = 0
let g:jsx_pragma_required = 1
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype json setlocal ts=2 sts=2 sw=2
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype yml setlocal ts=2 sts=2 sw=2
