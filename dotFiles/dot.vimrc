se nu
syntax on	
se ai
colorscheme elflord
se laststatus=0
set mouse=a
filetype plugin indent on
set ttymouse=sgr
let g:go_highlight_trailing_whitespace_error=0
let g:go_highlight_space_tab_error=0
"set paste
"set backspace=indent,eol,start


call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'arcticicestudio/nord-vim'
call plug#end()
