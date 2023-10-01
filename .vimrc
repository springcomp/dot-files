set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin     'Yggdroot/indentLine'
Plugin     'phanviet/vim-monokai-pro' 
Plugin  'christoomey/vim-tmux-navigator'
Plugin     'pedrohdz/vim-yaml-folds'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
"
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
"
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
"
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
"
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
"
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin on           " required
filetype indent on           " required
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

" Yggdroot/indentline
" ======================= 

let g:indentLine_enabled = 0
let g:indentLine_char = '|'

set noswapfile
set nobackup
set nowritebackup

set number
set relativenumber

set hlsearch
set incsearch
set ignorecase
set smartcase

set shiftwidth=4
set tabstop=4
set expandtab
set smarttab
set autoindent

set foldmethod=syntax
set foldlevelstart=99
set foldenable

"nnoremap <Esc> :nohl<CR>

inoremap jk <esc>

nnoremap + $
nnoremap ’ _

vnoremap + $
vnoremap ’ _

" Simplify navigating help
" https://vim.fandom.com/wiki/Learn_to_use_help
" =============================================

nnoremap <S-F1>  :cc<CR>
nnoremap <F2>    :cnext<CR>
nnoremap <S-F2>  :cprev<CR>
nnoremap <F3>    :cnfile<CR>
nnoremap <S-F3>  :cpfile<CR>
nnoremap <F4>    :cfirst<CR>
nnoremap <S-F4>  :clast<CR>

" Powerline Status
" ======================= 

set rtp+=~/.local/lib/python3.8/site-packages/powerline/bindings/vim/
set laststatus=2 " Always display the status line in all windows
set showtabline=2 " Always display the tabline even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the status line)

" File types
" ======================= 

colorscheme monokai_pro
