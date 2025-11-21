set number
set relativenumber
set cursorline

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

set novb
set autoread
set encoding=utf-8
set fileencoding=utf-8

call plug#begin()

    " File manager
    Plug 'preservim/nerdtree'

    " Buffer lines
    Plug 'jlanzarotta/bufexplorer'

    " Icons
    Plug 'ryanoasis/vim-devicons'

    " Line bars status
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " LSP manager
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    
    " Theme
    Plug 'ajmwagar/vim-deus'

call plug#end()
filetype plugin indent on

syntax on
set t_Co=256
set termguicolors

colorscheme deus

let g:mapleader = ' '

" Save files
nnoremap <leader>w :w!<CR>

" nerdtree
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" bufexplorer
nnoremap <silent> <C-L> :bnext<CR>
nnoremap <silent> <C-H> :bprevious<CR>
nnoremap <silent> <C-X> :bdelete<CR>

" Exit with INSERT mode
inoremap jk <Esc>

" nerdtree
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif

" vim-airline
let g:airline_powerline_fonts = 1

" coc.nvim
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
