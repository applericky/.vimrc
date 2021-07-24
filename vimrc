syntax on
set noerrorbells
set guicursor=
set tabstop=4 softtabstop=4
set shiftwidth=4
set nohlsearch
set hidden
set expandtab
set clipboard=unnamed
set autoindent
set scrolloff=8
set number
set backspace=indent,eol,start
set fileformat=unix
set listchars=tab:\|\
set list
set foldmethod=manual
set background=dark
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set colorcolumn=88
highlight ColorColumn ctermbg=0 guibg=lightgrey


call plug#begin('nvim')

Plug 'arcticicestudio/nord-vim' " Nord theme
Plug 'mhinz/vim-startify' " Start screen for Neovim
Plug 'preservim/nerdtree' " Shows folders for navigation
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'arzg/vim-colors-xcode'

call plug#end()

colorscheme nord

" NERD Commenter
nmap <C-/> :NERDCommenterToggle<CR>gv

" NERDTree
let NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI=1
nmap <F2> :NERDTreeToggle<CR>

" Tabs
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=':t'
nmap <leader>1 :bp<CR>
nmap <leader>2 :bn<CR>
nmap <leader>w :bd<CR>



let mapleader = " " " Maps spacebar as the leader key.
nnoremap <leader>s :wr <CR>
nnoremap <leader>q :q <CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
inoremap jk <esc>


set mouse=a
