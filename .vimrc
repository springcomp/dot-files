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

" Yggdroot/indentline
" ======================= 

let g:indentLine_enabled = 0
let g:indentLine_char = '|'

set number
set relativenumber

set hlsearch
set incsearch

set shiftwidth=4
set tabstop=4
set expandtab

"nnoremap <Esc> :nohl<CR>

nnoremap + $
nnoremap ’ _

vnoremap + $
vnoremap ’ _

" Powerline Status
" ======================= 

set rtp+=~/.local/lib/python3.8/site-packages/powerline/bindings/vim/
set laststatus=2 " Always display the status line in all windows
set showtabline=2 " Always display the tabline even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the status line)

" File types
" ======================= 

colorscheme monokai_pro

autocmd Filetype yaml setlocal tabstop=2 shiftwidth=2 expandtab
autocmd Filetype yaml let g:indentLine_enabled=1
autocmd Filetype yaml set foldmethod=indent
autocmd Filetype yaml set foldlevel=20
