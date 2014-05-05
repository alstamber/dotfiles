"
" NeoBundle
"
let $VIM = expand('~/.vim')
let $BUNDLE = $VIM.'/bundle'
let s:neobundle_dir = $BUNDLE.'/neobundle.vim'
if !isdirectory(s:neobundle_dir)
    if executable('git')
        echo 'Initializing neobundle'
        execute '!mkdir -p '.$BUNDLE
            \.' && git clone https://github.com/Shougo/neobundle.vim '.$BUNDLE.'/neobundle.vim'
    else
        echo 'git not found! Sorry, this .vimrc cannot be completely used without git.'
    endif
else
    if has('vim_starting')
        execute 'set runtimepath+='.expand(s:neobundle_dir)
    endif
    call neobundle#rc(expand($BUNDLE))
    NeoBundle 'Shougo/neobundle.vim'


    NeoBundle 'tomasr/molokai'
    NeoBundle 'yuroyoro/yuroyoro256.vim'
    NeoBundle 'ruby.vim'
    NeoBundle 'banyan/recognize_charcode.vim'

    NeoBundle 'itchyny/lightline.vim'

    filetype plugin indent on
endif

"
" Basic Configuration
"

set autoread
set backspace=indent,eol,start
set clipboard=unnamed,unnamedplus
set formatoptions=lmoq
set hidden
set mouse=a
set ttymouse=xterm2
set nobackup
set nocompatible
set noswapfile
set notitle
set nowrap
set scrolloff=5
set showcmd
set showmode
set textwidth=0
set vb t_vb=
set viminfo='50,<1000,s100,\"50
set whichwrap=b,s,h,l,<,>,[,]


"
" Appearance Configuration
"
set showmatch
set laststatus=2
set number
set list
set listchars=tab:>.,trail:_,extends:>,precedes:<
set lazyredraw
set display=uhex

highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /　/

set cursorline


"
" Color Configuration
"
let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai

if &term =~ "xterm-256color" || "screen-256color"
    set t_Co=256
    set t_Sf=[3%dm
    set t_sb=[4%dm
elseif &term =~ "xterm-debian" || &term =~ "xterm-xfree86"
    set t_Co=16
    set t_Sf=[3%dm
    set t_Sb=[4%dm
elseif &term =~ "xterm-color"
    set t_Co=8
    set t_Sf=[3%dm
    set t_Sb=[4%dm
endif

if !has('gui_running')
    set t_Co=256
endif

syntax enable


"
" Edit Configuration
"
set noimdisable
set iminsert=0 imsearch=0
set noimcmdline
inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>

set expandtab
autocmd BufWritePre * :%s/\s\+$//ge

augroup MyXML
    autocmd!
    autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
augroup END


"
" Encoding Configuration
"
set ffs=unix,dos,mac
set encoding=utf-8


"
" Indent Configuration
"
set smartindent
set cindent
set tabstop=2 shiftwidth=2 softtabstop=0

if has("autocmd")
  filetype plugin on
  filetype indent on

  autocmd FileType apache     setlocal sw=4 sts=4 ts=4 et
  autocmd FileType aspvbs     setlocal sw=4 sts=4 ts=4 et
  autocmd FileType c          setlocal sw=4 sts=4 ts=4 et
  autocmd FileType cpp        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType cs         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType css        setlocal sw=2 sts=2 ts=2 et
  autocmd FileType diff       setlocal sw=4 sts=4 ts=4 et
  autocmd FileType eruby      setlocal sw=4 sts=4 ts=4 et
  autocmd FileType html       setlocal sw=2 sts=2 ts=2 et
  autocmd FileType java       setlocal sw=4 sts=4 ts=4 et
  autocmd FileType javascript setlocal sw=2 sts=2 ts=2 et
  autocmd FileType perl       setlocal sw=4 sts=4 ts=4 et
  autocmd FileType php        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType python     setlocal sw=4 sts=4 ts=4 et
  autocmd FileType ruby       setlocal sw=2 sts=2 ts=2 et
  autocmd FileType haml       setlocal sw=2 sts=2 ts=2 et
  autocmd FileType sh         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType sql        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType vb         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType vim        setlocal sw=2 sts=2 ts=2 et
  autocmd FileType wsh        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType xhtml      setlocal sw=4 sts=4 ts=4 et
  autocmd FileType xml        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType yaml       setlocal sw=2 sts=2 ts=2 et
  autocmd FileType zsh        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType scala      setlocal sw=2 sts=2 ts=2 et
endif


"
" Misc Configuration
"
set ruler
noremap ; :


"
" Move Configuration
"
nnoremap h <Left>
nnoremap j gj
nnoremap k gk
nnoremap l <Right>
nnoremap <Down> gj
nnoremap <Up>   gk


"
" Search Configuration
"
set wrapscan
set ignorecase
set smartcase
set incsearch
set hlsearch

