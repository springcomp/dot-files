
set number
set relativenumber

set hlsearch
set incsearch

set shiftwidth=2
set tabstop=2
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

