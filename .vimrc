" plugs

call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'pgdouyon/vim-yin-yang'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'mattn/vim-goimports'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-vinegar'
Plug 'cocopon/iceberg.vim'
Plug 'gkeep/iceberg-dark'
call plug#end()

" vim configuration
" theme
color iceberg 
let g:lightline = { 'colorscheme': 'icebergDark' }

" syntax and shortcuts

syntax on
set autoread
set scrolloff=5
set laststatus=2
set backspace=indent,eol,start
let mapleader = ","
inoremap <leader>w <Esc>:w<cr>
nmap <leader>p :FZF<CR>
nmap <leader>f :Rg<CR>