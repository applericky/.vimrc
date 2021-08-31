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
Plug 'voldikss/vim-floaterm'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

colorscheme no

" NERD Commenter
nmap <C-/> :NERDCommenterToggle<CR>gv

" NERDTree
let NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI=1
nmap <F2> :NERDTreeToggle<CR>

" Tabs
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=':t'
let g:airline#extensions#tabline#buffer_nr_show = 1
nnoremap <leader>1 :bp <CR>
nnoremap <leader>2 :bn<CR>
nnoremap <leader>w :bd<CR>


let mapleader = " " " Maps spacebar as the leader key.
nnoremap <leader>s :wr <CR> 
nnoremap <leader>q :q <CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>hhhhhhhhh
inoremap jk <esc>
nnoremap <leader>term :FloatermNew --height=0.6 --width=1.0 --wintype=float<CR>



" CoC - Tab to be remapped for autocompletion
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()



set mouse=nvic
