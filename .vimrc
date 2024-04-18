set wildmenu
set wildmode=longest:full,full
set laststatus=2
set mouse=a
set number
syntax on
colorscheme elflord
set autoindent
set expandtab
set hlsearch
set spelllang=en_us,de_de,fr_ch 
set ts=4
set shiftwidth=4
set cursorline
set showmatch
let python_highlight_all = 1



call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ervandew/supertab'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'LunarWatcher/auto-pairs'
Plug 'Exafunction/codeium.vim', { 'branch': 'main' }
call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='light'
let g:SuperTabClousePreviwPopupClose = 1
let g:airline_powerline_fonts=1
let g:Powerline_symbols='unicode'
imap >C-p> <Esc>:w<CR>:!perl %<CR>

nnoremap <c-n> <tab>

nnoremap gX :silent :execute
            \ "!xdg-open" expand('%:p:h') . "/" . expand("<cfile>") " &"<cr>
